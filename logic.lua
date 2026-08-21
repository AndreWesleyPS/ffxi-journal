local M = {}

local settings = require('settings')
local tracker = require('tracker')

-- Data

local mission_areas = {
    'sandoria',
    'bastok',
    'windurst',
    'zilart',
    'cop',
    'toau',
    'wotg',
    'acp',
    'mkd',
    'asa',
    'abyssea',
    'adoulin',
    'rov',
    'tvr',
    'assault',
    'campaign',
}

local mission_area_names = {
    sandoria = "San d'Oria",
    bastok = 'Bastok',
    windurst = 'Windurst',
    zilart = 'Rise of the Zilart',
    cop = 'Chains of Promathia',
    toau = 'Treasures of Aht Urhgan',
    wotg = 'Wings of the Goddess',
    acp = 'A Crystalline Prophecy',
    mkd = "A Moogle Kupo d'Etat",
    asa = 'A Shantotto Ascension',
    abyssea = 'Abyssea',
    adoulin = 'Seekers of Adoulin',
    rov = "Rhapsodies of Vana'diel",
    tvr = 'The Voracious Resurgence',
    assault = 'Assault',
    campaign = 'Campaign',
}

local function get_quest_categories()
    return tracker.GetQuestCategories()
end

local function get_quest_category_names()
    return tracker.GetQuestCategoryNames()
end

local function get_quest_list_from_tracker(category)
    return tracker.GetQuestArea(category) or {}
end

-- Journal state

local journal_mode = 1

local mission_area_index = 1
local mission_index = 1

local quest_category_index = 1
local quest_index = 1

-- Mission log

local mission_log_visible = false
local mission_log_width = 500
local mission_log_height = 600
local mission_log_x = nil
local mission_log_y = nil
local mission_log_id = ''
local mission_log_name = ''
local mission_log_steps = {}

-- Quest log

local quest_log_visible = false
local quest_log_width = 500
local quest_log_height = 600
local quest_log_x = nil
local quest_log_y = nil
local quest_log_id = ''
local quest_log_name = ''
local quest_log_steps = {}

-- Journal window

local journal_visible = false
local journal_width = 2000
local journal_height = 1600
local journal_x = nil
local journal_y = nil

local journal_mini = false
local journal_mini_x = nil
local journal_mini_y = nil

-- Help window

local journal_help_visible = false

-- Filters

local hide_complete_missions = false
local hide_complete_quests = false

-- Settings

local config = settings.load(T{})

local config_save_dirty = false
local config_save_time = 0
local config_save_delay = 0.75

local log_text_scale = 1.0
local log_text_scale_min = 0.50
local log_text_scale_max = 2.00

-- Status cache

local mission_status_cache = {}
local quest_status_cache = {}

-- Mission cache

local mission_cache = {}
local mission_cache_area = nil

-- Quest cache

local quest_cache = {}
local quest_cache_category = nil

-- Wait for mission packet bursts to settle.

local MISSION_DIRTY_QUIET_WINDOW = 0.5

-- Helpers

local function tracker_is_ready()
    if tracker.IsReady ~= nil then
        return tracker.IsReady()
    end

    return tracker.IsLoaded()
end

local function get_status_cache_key(area, id)
    return tostring(area) .. '_' .. tostring(id)
end

local function invalidate_mission_cache()
    mission_cache = {}
    mission_cache_area = nil
end

local function invalidate_quest_cache()
    quest_cache = {}
    quest_cache_category = nil
end

local function serialize_step(value)
    if type(value) ~= 'table' then
        return value
    end

    if value.actor_id ~= nil and value.text ~= nil then
        return tostring(value.text)
    end

    local result = T{}

    for key, child in pairs(value) do
        result[key] = serialize_step(child)
    end

    return result
end

local function serialize_steps(steps)
    if type(steps) ~= 'table' then
        return T{}
    end

    local result = T{}

    for index, step in ipairs(steps) do
        result[index] = serialize_step(step)
    end

    return result
end

-- Settings

local function apply_config()
    if config == nil then
        return
    end

    journal_mode = tonumber(config.journal_mode) or 1
    mission_area_index = tonumber(config.journal_area) or 1
    mission_index = tonumber(config.journal_index) or 1
    quest_category_index = tonumber(config.journal_quest_category) or 1
    quest_index = tonumber(config.journal_quest_index) or 1

    journal_width = tonumber(config.journal_width) or 2000
    journal_height = tonumber(config.journal_height) or 1600
    journal_visible = config.journal_open == true
    journal_x = config.journal_x
    journal_y = config.journal_y

    journal_mini = config.journal_mini == true
    journal_mini_x = config.journal_mini_x
    journal_mini_y = config.journal_mini_y

    mission_log_width = tonumber(config.mission_width) or 500
    mission_log_height = tonumber(config.mission_height) or 600
    mission_log_visible = config.mission_open == true
    mission_log_x = config.mission_x
    mission_log_y = config.mission_y
    mission_log_id = tostring(config.mission_id or '')
    mission_log_name = tostring(config.mission_name or '')
    mission_log_steps = config.mission_steps or {}

    quest_log_width = tonumber(config.quest_width) or 500
    quest_log_height = tonumber(config.quest_height) or 600
    quest_log_visible = config.quest_open == true
    quest_log_x = config.quest_x
    quest_log_y = config.quest_y
    quest_log_id = tostring(config.quest_id or '')
    quest_log_name = tostring(config.quest_name or '')
    quest_log_steps = config.quest_steps or {}

    hide_complete_missions = config.hide_complete_missions == true
    hide_complete_quests = config.hide_complete_quests == true

    log_text_scale = tonumber(config.log_text_scale) or 1.0

    log_text_scale =
        math.max(
            log_text_scale_min,
            math.min(
                log_text_scale_max,
                log_text_scale
            )
        )

    mission_status_cache = config.mission_status or {}
    quest_status_cache = config.quest_status or {}
end

local function update_config_values()
    config.journal_mode = journal_mode
    config.journal_area = mission_area_index
    config.journal_index = mission_index
    config.journal_quest_category = quest_category_index
    config.journal_quest_index = quest_index

    config.journal_width = journal_width
    config.journal_height = journal_height
    config.journal_open = journal_visible
    config.journal_x = journal_x
    config.journal_y = journal_y

    config.journal_mini = journal_mini
    config.journal_mini_x = journal_mini_x
    config.journal_mini_y = journal_mini_y

    config.mission_width = mission_log_width
    config.mission_height = mission_log_height
    config.mission_open = mission_log_visible
    config.mission_x = mission_log_x
    config.mission_y = mission_log_y
    config.mission_id = mission_log_id
    config.mission_name = mission_log_name
    config.mission_steps = serialize_steps(mission_log_steps)

    config.quest_width = quest_log_width
    config.quest_height = quest_log_height
    config.quest_open = quest_log_visible
    config.quest_x = quest_log_x
    config.quest_y = quest_log_y
    config.quest_id = quest_log_id
    config.quest_name = quest_log_name
    config.quest_steps = serialize_steps(quest_log_steps)

    config.hide_complete_missions = hide_complete_missions
    config.hide_complete_quests = hide_complete_quests
    config.log_text_scale = log_text_scale
    config.mission_status = mission_status_cache
    config.quest_status = quest_status_cache
end

local function save_config()
    update_config_values()
    return settings.save()
end

local function request_config_save()
    config_save_dirty = true
    config_save_time = os.clock()
end

local function update_config_save()
    if not config_save_dirty then
        return
    end

    if os.clock() - config_save_time < config_save_delay then
        return
    end

    if save_config() then
        config_save_dirty = false
    end
end

-- Log text scale API

function M.GetLogTextScale()
    return log_text_scale
end

function M.SetLogTextScale(value)
    value = tonumber(value)

    if value == nil then
        return false
    end

    value =
        math.max(
            log_text_scale_min,
            math.min(
                log_text_scale_max,
                value
            )
        )

    if log_text_scale == value then
        return true
    end

    log_text_scale = value
    request_config_save()

    return true
end

-- Status sync

local function sync_mission_status_cache()
    if not tracker_is_ready() then
        return false
    end

    local changed = false

    for _, area in ipairs(mission_areas) do
        for _, mission in ipairs(tracker.GetMissionArea(area) or {}) do
            local key = get_status_cache_key(area, mission.id)
            local status = mission.status or 'not_started'

            if mission_status_cache[key] ~= status then
                mission_status_cache[key] = status
                changed = true
            end
        end
    end

    if changed then
        invalidate_mission_cache()
        request_config_save()
    end

    return changed
end

local function sync_quest_status_cache()
    if not tracker_is_ready() then
        return false
    end

    local categories = get_quest_categories()

    if #categories == 0 then
        return false
    end

    local category = categories[quest_category_index]

    if category == nil then
        return false
    end

    local changed = false

    for _, quest in ipairs(
        get_quest_list_from_tracker(category)
    ) do
        local tracker_area = quest.tracker_area
        local tracker_id = quest.tracker_id

        if quest.trackable ~= false
            and tracker_area ~= nil
            and tracker_id ~= nil then

            local key =
                get_status_cache_key(
                    tracker_area,
                    tracker_id
                )

            local status =
                quest.status or 'not_started'

            local cached =
                quest_status_cache[key]

            if status == 'completed' then
                if cached ~= 'completed' then
                    quest_status_cache[key] =
                        'completed'

                    changed = true
                end

            elseif status == 'active' then
                if cached ~= 'active' then
                    quest_status_cache[key] =
                        'active'

                    changed = true
                end

            elseif cached == nil then
                quest_status_cache[key] =
                    'not_started'

                changed = true
            end
        end
    end

    if changed then
        invalidate_quest_cache()
        request_config_save()
    end

    return changed
end

local function apply_cached_statuses(
    area,
    missions_list
)
    for _, mission in ipairs(
        missions_list or {}
    ) do
        local key =
            get_status_cache_key(
                area,
                mission.id
            )

        mission.status =
            mission_status_cache[key]
            or mission.status
            or 'not_started'
    end

    return missions_list or {}
end

local function apply_cached_quest_statuses(
    category,
    quests_list
)
    for _, quest in ipairs(
        quests_list or {}
    ) do
        if quest.trackable ~= false
            and quest.tracker_area ~= nil
            and quest.tracker_id ~= nil then

            local key =
                get_status_cache_key(
                    quest.tracker_area,
                    quest.tracker_id
                )

            quest.status =
                quest_status_cache[key]
                or quest.status
                or 'not_started'
        end
    end

    return quests_list or {}
end

-- Validation

local function validate_state()
    if journal_mode ~= 1
        and journal_mode ~= 2 then

        journal_mode = 1
    end

    if mission_area_index < 1
        or mission_area_index > #mission_areas then

        mission_area_index = 1
    end

    if mission_index < 1 then
        mission_index = 1
    end

    local categories =
        get_quest_categories()

    if #categories > 0 then
        if quest_category_index < 1
            or quest_category_index > #categories then

            quest_category_index = 1
        end
    else
        quest_category_index = 1
    end

    if quest_index < 1 then
        quest_index = 1
    end
end

-- Mission cache

local function rebuild_mission_cache()
    local area =
        mission_areas[mission_area_index]

    if area == nil then
        mission_area_index = 1
        area = mission_areas[1]
    end

    local mission_list =
        apply_cached_statuses(
            area,
            tracker.GetMissionArea(area)
        )

    mission_cache = {}

    local first_mission

    for _, mission in ipairs(
        mission_list
    ) do
        if mission.status ~= 'hidden' then
            first_mission = mission
            break
        end
    end

    for _, mission in ipairs(
        mission_list
    ) do
        local status =
            mission.status
            or 'not_started'

        local show = false

        if mission == first_mission then
            show =
                status ~= 'completed'
                or not hide_complete_missions

        elseif status == 'active' then
            show = true

        elseif status == 'completed'
            and not hide_complete_missions then

            show = true
        end

        if show then
            mission_cache[
                #mission_cache + 1
            ] = mission
        end
    end

    mission_cache_area = area

    if #mission_cache == 0 then
        mission_index = 1
    else
        mission_index =
            math.max(
                1,
                math.min(
                    mission_index,
                    #mission_cache
                )
            )
    end
end

local function get_visible_missions()
    local area =
        mission_areas[mission_area_index]

    if mission_cache_area ~= area then
        rebuild_mission_cache()
    end

    return mission_cache
end

-- Quest cache

local function rebuild_quest_cache()
    local categories =
        get_quest_categories()

    local category =
        categories[quest_category_index]

    if category == nil then
        invalidate_quest_cache()
        quest_index = 1
        return
    end

    local quests_list =
        apply_cached_quest_statuses(
            category,
            get_quest_list_from_tracker(category)
        )

    quest_cache = {}

    for _, quest in ipairs(
        quests_list
    ) do
        local status =
            quest.status
            or 'not_started'

        if status == 'active'
            or (
                status == 'completed'
                and not hide_complete_quests
            ) then

            quest_cache[
                #quest_cache + 1
            ] = quest
        end
    end

    quest_cache_category =
        category

    if #quest_cache == 0 then
        quest_index = 1
    else
        quest_index =
            math.max(
                1,
                math.min(
                    quest_index,
                    #quest_cache
                )
            )
    end
end

local function get_visible_quests()
    local categories =
        get_quest_categories()

    local category =
        categories[quest_category_index]

    if quest_cache_category ~= category then
        rebuild_quest_cache()
    end

    return quest_cache
end

-- Filter API

function M.GetHideCompleteMissions()
    return hide_complete_missions
end

function M.SetHideCompleteMissions(value)
    value = value == true

    if hide_complete_missions == value then
        return
    end

    hide_complete_missions = value
    mission_index = 1

    invalidate_mission_cache()
    request_config_save()
end

function M.GetHideCompleteQuests()
    return hide_complete_quests
end

function M.SetHideCompleteQuests(value)
    value = value == true

    if hide_complete_quests == value then
        return
    end

    hide_complete_quests = value
    quest_index = 1

    invalidate_quest_cache()
    request_config_save()
end

-- Mission API

function M.GetMissionAreas()
    return mission_areas
end

function M.GetMissionAreaNames()
    return mission_area_names
end

function M.GetMissionList()
    return get_visible_missions()
end

function M.GetMissionSelection()
    local visible =
        get_visible_missions()

    if #visible == 0 then
        mission_index = 1
    else
        mission_index =
            math.max(
                1,
                math.min(
                    mission_index,
                    #visible
                )
            )
    end

    return {
        area_index = mission_area_index,
        mission_index = mission_index,
    }
end

function M.SetMissionSelection(
    area_index,
    selected_mission_index
)
    local new_area =
        tonumber(area_index)

    local new_index =
        tonumber(selected_mission_index)

    if new_area ~= nil
        and new_area >= 1
        and new_area <= #mission_areas then

        mission_area_index =
            new_area
    end

    invalidate_mission_cache()

    if new_index ~= nil then
        mission_index =
            new_index
    end

    get_visible_missions()
    request_config_save()
end

function M.GetSelectedMission()
    local visible =
        get_visible_missions()

    if #visible == 0 then
        return nil
    end

    return visible[mission_index]
end

function M.SelectPreviousMission()
    local visible =
        get_visible_missions()

    if #visible == 0 then
        return
    end

    mission_index =
        mission_index - 1

    if mission_index < 1 then
        mission_index =
            #visible
    end

    request_config_save()
end

function M.SelectNextMission()
    local visible =
        get_visible_missions()

    if #visible == 0 then
        return
    end

    mission_index =
        mission_index + 1

    if mission_index > #visible then
        mission_index = 1
    end

    request_config_save()
end

function M.SelectPreviousMissionArea()
    mission_area_index =
        mission_area_index - 1

    if mission_area_index < 1 then
        mission_area_index =
            #mission_areas
    end

    mission_index = 1

    invalidate_mission_cache()
    rebuild_mission_cache()
    request_config_save()
end

function M.SelectNextMissionArea()
    mission_area_index =
        mission_area_index + 1

    if mission_area_index > #mission_areas then
        mission_area_index = 1
    end

    mission_index = 1

    invalidate_mission_cache()
    rebuild_mission_cache()
    request_config_save()
end

-- Quest API

function M.GetQuestCategories()
    return get_quest_categories()
end

function M.GetQuestCategoryNames()
    return get_quest_category_names()
end

function M.GetQuestSelection()
    return {
        category_index =
            quest_category_index,

        quest_index =
            quest_index,
    }
end

function M.GetQuestList()
    return get_visible_quests()
end

function M.GetSelectedQuest()
    local quests =
        get_visible_quests()

    if #quests == 0 then
        quest_index = 1
        return nil
    end

    quest_index =
        math.max(
            1,
            math.min(
                quest_index,
                #quests
            )
        )

    return quests[quest_index]
end

function M.SetQuestSelection(
    category_index,
    selected_quest_index
)
    local categories =
        get_quest_categories()

    if #categories == 0 then
        quest_category_index = 1
        quest_index = 1
        invalidate_quest_cache()
        return
    end

    local new_category =
        tonumber(category_index)

    local new_index =
        tonumber(selected_quest_index)

    if new_category ~= nil
        and new_category >= 1
        and new_category <= #categories then

        quest_category_index =
            new_category
    end

    if new_index ~= nil then
        quest_index =
            new_index
    end

    invalidate_quest_cache()

    local quests =
        M.GetQuestList()

    if #quests == 0 then
        quest_index = 1
    else
        quest_index =
            math.max(
                1,
                math.min(
                    quest_index,
                    #quests
                )
            )
    end

    request_config_save()
end

function M.SelectPreviousQuestCategory()
    local categories =
        get_quest_categories()

    if #categories == 0 then
        return
    end

    quest_category_index =
        quest_category_index - 1

    if quest_category_index < 1 then
        quest_category_index =
            #categories
    end

    quest_index = 1

    invalidate_quest_cache()
    rebuild_quest_cache()
    request_config_save()
end

function M.SelectNextQuestCategory()
    local categories =
        get_quest_categories()

    if #categories == 0 then
        return
    end

    quest_category_index =
        quest_category_index + 1

    if quest_category_index > #categories then
        quest_category_index = 1
    end

    quest_index = 1

    invalidate_quest_cache()
    rebuild_quest_cache()
    request_config_save()
end

function M.SelectPreviousQuest()
    local quests =
        get_visible_quests()

    if #quests == 0 then
        return
    end

    quest_index =
        quest_index - 1

    if quest_index < 1 then
        quest_index =
            #quests
    end

    request_config_save()
end

function M.SelectNextQuest()
    local quests =
        get_visible_quests()

    if #quests == 0 then
        return
    end

    quest_index =
        quest_index + 1

    if quest_index > #quests then
        quest_index = 1
    end

    request_config_save()
end

-- Journal mode

function M.GetJournalMode()
    return journal_mode
end

function M.SetJournalMode(mode)
    mode = tonumber(mode)

    if mode ~= 1
        and mode ~= 2 then

        mode = 1
    end

    if journal_mode == mode then
        return
    end

    journal_mode = mode
    request_config_save()
end

-- Mission log API

function M.GetMission()
    return {
        id = mission_log_id,
        name = mission_log_name,
        steps = mission_log_steps,
    }
end

function M.GetMissionLogState()
    return {
        visible = mission_log_visible,
        x = mission_log_x,
        y = mission_log_y,
        width = mission_log_width,
        height = mission_log_height,
    }
end

function M.SetMission(
    id,
    name,
    steps
)
    mission_log_id =
        tostring(id or '')

    mission_log_name =
        tostring(name or '')

    mission_log_steps =
        steps or {}

    mission_log_visible =
        true

    request_config_save()
end

function M.SetMissionData(
    id,
    name,
    steps,
    visible
)
    mission_log_id =
        tostring(id or '')

    mission_log_name =
        tostring(name or '')

    mission_log_steps =
        steps or {}

    if visible ~= nil then
        mission_log_visible =
            visible == true
    end

    request_config_save()
end

function M.SetMissionLogVisible(
    visible
)
    mission_log_visible =
        visible == true

    request_config_save()
end

function M.ToggleMissionLog()
    mission_log_visible =
        not mission_log_visible

    request_config_save()
end

function M.ShowMissionLog()
    mission_log_visible = true
    request_config_save()
end

function M.HideMissionLog()
    mission_log_visible = false
    request_config_save()
end

function M.SetMissionLogGeometry(
    x,
    y,
    width,
    height
)
    mission_log_x = x
    mission_log_y = y
    mission_log_width = width
    mission_log_height = height

    request_config_save()
end

-- Quest log API

function M.GetQuest()
    return {
        id = quest_log_id,
        name = quest_log_name,
        steps = quest_log_steps,
    }
end

function M.GetQuestLogState()
    return {
        visible = quest_log_visible,
        x = quest_log_x,
        y = quest_log_y,
        width = quest_log_width,
        height = quest_log_height,
    }
end

function M.SetQuest(
    id,
    name,
    steps
)
    quest_log_id =
        tostring(id or '')

    quest_log_name =
        tostring(name or '')

    quest_log_steps =
        steps or {}

    quest_log_visible =
        true

    request_config_save()
end

function M.SetQuestData(
    id,
    name,
    steps,
    visible
)
    quest_log_id =
        tostring(id or '')

    quest_log_name =
        tostring(name or '')

    quest_log_steps =
        steps or {}

    if visible ~= nil then
        quest_log_visible =
            visible == true
    end

    request_config_save()
end

function M.SetQuestLogVisible(
    visible
)
    quest_log_visible =
        visible == true

    request_config_save()
end

function M.ToggleQuestLog()
    quest_log_visible =
        not quest_log_visible

    request_config_save()
end

function M.ShowQuestLog()
    quest_log_visible = true
    request_config_save()
end

function M.HideQuestLog()
    quest_log_visible = false
    request_config_save()
end

function M.SetQuestLogGeometry(
    x,
    y,
    width,
    height
)
    quest_log_x = x
    quest_log_y = y
    quest_log_width = width
    quest_log_height = height

    request_config_save()
end

-- Journal window API

function M.GetJournalWindowState()
    return {
        visible = journal_visible,
        x = journal_x,
        y = journal_y,
        width = journal_width,
        height = journal_height,
    }
end

function M.GetJournalState()
    return M.GetJournalWindowState()
end

function M.SetJournalVisible(
    visible
)
    journal_visible =
        visible == true

    request_config_save()
end

function M.ShowJournal()
    M.SetJournalVisible(true)
end

function M.HideJournal()
    M.SetJournalVisible(false)
end

function M.ToggleJournal()
    journal_visible =
        not journal_visible

    request_config_save()
end

function M.SetJournalGeometry(
    x,
    y,
    width,
    height
)
    journal_x = x
    journal_y = y
    journal_width = width
    journal_height = height

    request_config_save()
end

function M.GetJournalMiniState()
    return {
        visible = journal_mini,
        x = journal_mini_x,
        y = journal_mini_y,
    }
end

function M.SetJournalMini(
    visible
)
    journal_mini =
        visible == true

    request_config_save()
end

function M.ShowJournalMini()
    journal_mini = true
    request_config_save()
end

function M.HideJournalMini()
    journal_mini = false
    request_config_save()
end

function M.ToggleJournalMini()
    journal_mini =
        not journal_mini

    request_config_save()
end

function M.SetJournalMiniGeometry(
    x,
    y
)
    journal_mini_x = x
    journal_mini_y = y
    request_config_save()
end

-- Help window API

function M.GetHelpVisible()
    return journal_help_visible
end

function M.SetHelpVisible(
    visible
)
    journal_help_visible =
        visible == true
end

function M.ShowHelp()
    journal_help_visible = true
end

function M.HideHelp()
    journal_help_visible = false
end

function M.ToggleHelp()
    journal_help_visible =
        not journal_help_visible
end

-- Compatibility

function M.ToggleLog()
    M.ToggleMissionLog()
end

-- Automatic mission advance

local function set_log_mission(mission)
    if mission == nil then
        return
    end

    M.SetMission(
        mission.id,
        mission.name,
        mission.steps or {}
    )
end

local function find_log_mission(
    log_id,
    log_name
)
    local numeric_id =
        tonumber(log_id)

    for _, area in ipairs(
        mission_areas
    ) do
        for index, mission in ipairs(
            tracker.GetMissionArea(area)
                or {}
        ) do
            local id_matches =
                numeric_id ~= nil
                and tonumber(mission.id)
                    == numeric_id
                or tostring(mission.id)
                    == tostring(log_id)

            local name_matches =
                tostring(
                    mission.name or ''
                )
                == tostring(
                    log_name or ''
                )

            if id_matches
                and name_matches then

                return area,
                    mission,
                    index
            end
        end
    end

    return nil, nil, nil
end

local function find_next_mission(
    area,
    current_index
)
    local mission_list =
        tracker.GetMissionArea(area)

    if mission_list == nil then
        return nil
    end

    local start_index =
        tonumber(current_index)

    if start_index == nil then
        return nil
    end

    for index = start_index + 1,
        #mission_list do

        local mission =
            mission_list[index]

        if mission ~= nil
            and mission.status ~= 'hidden'
            and mission.status ~= 'completed' then

            return mission
        end
    end

    return nil
end

local function check_current_mission()
    local current_log =
        M.GetMission()

    if current_log.id == ''
        or current_log.name == '' then

        return
    end

    local area,
    mission,
    index =
        find_log_mission(
            current_log.id,
            current_log.name
        )

    if area == nil
        or mission == nil
        or index == nil then

        return
    end

    local key =
        get_status_cache_key(
            area,
            mission.id
        )

    local status =
        mission.status
        or 'not_started'

    if mission_status_cache[key]
        ~= status then

        mission_status_cache[key] =
            status

        invalidate_mission_cache()
        request_config_save()
    end

    if status ~= 'completed' then
        return
    end

    local next_mission =
        find_next_mission(
            area,
            index
        )

    if next_mission ~= nil then
        set_log_mission(
            next_mission
        )
    end
end

-- Automatic quest log watch

local function find_log_quest(
    log_id,
    log_name
)
    for _, category in ipairs(
        get_quest_categories()
    ) do
        for _, quest in ipairs(
            apply_cached_quest_statuses(
                category,
                get_quest_list_from_tracker(
                    category
                )
            )
        ) do
            local id_matches =
                tostring(
                    quest.id or ''
                )
                == tostring(
                    log_id or ''
                )

            local name_matches =
                tostring(
                    quest.name or ''
                )
                == tostring(
                    log_name or ''
                )

            if id_matches
                and name_matches then

                return category, quest
            end
        end
    end

    return nil, nil
end

local function check_current_quest()
    local current_log =
        M.GetQuest()

    if current_log.id == ''
        or current_log.name == '' then

        return
    end

    local category,
    quest =
        find_log_quest(
            current_log.id,
            current_log.name
        )

    if category == nil
        or quest == nil then

        return
    end

    if quest.status == 'completed' then
        M.SetQuestData(
            '',
            '',
            {},
            false
        )
    end
end

-- Settings character switch

settings.register(
    'settings',
    'journal_settings_update',
    function(s)
        if s == nil then
            return
        end

        config = s

        apply_config()
        validate_state()

        invalidate_mission_cache()
        invalidate_quest_cache()
    end
)

-- Commands

function M.HandleCommand(e)
    local args = e.command:args()

    if #args == 0
        or args[1]:lower()
            ~= '/journal' then

        return
    end

    e.blocked = true

    if #args == 1 then
        M.SetJournalMode(1)
        M.ShowJournal()
        return
    end

    local command =
        args[2]:lower()

    if command == 'help' then
        M.ToggleHelp()

        print('[Journal] Commands:')
        print('/journal - Open Mission Journal')
        print('/journal help - Show help')
        print('/journal log - Toggle Mission Log')
        print('/journal quest - Open Quest Journal')
        print('/journal quest log - Toggle Quest Log')
        print('/journal text scale - Show Log text scale')
        print('/journal text scale <value> - Set Log text scale (0.50x-2.00x)')

        return
    end

    if command == 'text'
        and args[3] ~= nil
        and args[3]:lower()
            == 'scale' then

        if args[4] == nil then
            print(string.format(
                '[Journal] Current Log text scale: %.2fx',
                log_text_scale
            ))

            print(string.format(
                '[Journal] Usage: /journal text scale <%.2f-%.2f>',
                log_text_scale_min,
                log_text_scale_max
            ))

            return
        end

        local value =
            tonumber(args[4])

        if value == nil then
            print('[Journal] Invalid Log text scale.')

            print(string.format(
                '[Journal] Usage: /journal text scale <%.2f-%.2f>',
                log_text_scale_min,
                log_text_scale_max
            ))

            return
        end

        local requested_value =
            value

        value =
            math.max(
                log_text_scale_min,
                math.min(
                    log_text_scale_max,
                    value
                )
            )

        M.SetLogTextScale(value)

        if value ~= requested_value then
            print(string.format(
                '[Journal] Log text scale clamped to %.2fx.',
                value
            ))
        else
            print(string.format(
                '[Journal] Log text scale set to %.2fx.',
                value
            ))
        end

        return
    end

    if command == 'log' then
        M.ToggleMissionLog()
        return
    end

    if command == 'quest' then
        if args[3] ~= nil
            and args[3]:lower()
                == 'log' then

            M.ToggleQuestLog()
        else
            M.SetJournalMode(2)
            M.ShowJournal()
        end
    end
end

-- Lifecycle

function M.Initialize()
    tracker.Initialize()
    apply_config()
    validate_state()
end

function M.Load()
    apply_config()
    validate_state()

    invalidate_mission_cache()
    invalidate_quest_cache()

    if tracker_is_ready() then
        sync_mission_status_cache()
        sync_quest_status_cache()

        if tracker.ClearMissionDirty ~= nil then
            tracker.ClearMissionDirty()
        end

        if tracker.ClearQuestDirty ~= nil then
            tracker.ClearQuestDirty()
        end

        rebuild_mission_cache()
    end
end

function M.Update()
    if not tracker_is_ready() then
        update_config_save()
        return
    end

    local mission_dirty =
        tracker.IsMissionDirty ~= nil
        and tracker.IsMissionDirty()

    local quest_dirty =
        tracker.IsQuestDirty ~= nil
        and tracker.IsQuestDirty()

    if mission_dirty then
        local mission_last_touch =
            tracker.GetMissionLastTouch ~= nil
            and tracker.GetMissionLastTouch()
            or 0

        local mission_quiet_for =
            os.clock()
            - mission_last_touch

        if mission_quiet_for
            >= MISSION_DIRTY_QUIET_WINDOW then

            local mission_changed =
                sync_mission_status_cache()

            if mission_changed then
                rebuild_mission_cache()
            end

            check_current_mission()

            if tracker.ClearMissionDirty ~= nil then
                tracker.ClearMissionDirty()
            end
        end
    end

    if quest_dirty then
        local quest_changed =
            sync_quest_status_cache()

        if quest_changed then
            invalidate_quest_cache()
        end

        check_current_quest()

        if tracker.ClearQuestDirty ~= nil then
            tracker.ClearQuestDirty()
        end
    end

    update_config_save()
end

function M.Unload()
    if tracker_is_ready() then
        if tracker.IsMissionDirty == nil
            or tracker.IsMissionDirty() then

            sync_mission_status_cache()

            if tracker.ClearMissionDirty ~= nil then
                tracker.ClearMissionDirty()
            end
        end

        if tracker.IsQuestDirty == nil
            or tracker.IsQuestDirty() then

            sync_quest_status_cache()

            if tracker.ClearQuestDirty ~= nil then
                tracker.ClearQuestDirty()
            end
        end
    end

    update_config_values()
    config_save_dirty = false
    settings.save()
end

return M