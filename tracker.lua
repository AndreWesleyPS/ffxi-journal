local M = {}

local mission_data = require('data.missions')
local quest_data = require('data.quests')

-- Static data

local missions = mission_data.MISSIONS or {}
local quests = quest_data.QUESTS or {}

local quest_categories = {
    'sandoria',
    'bastok',
    'windurst',
    'jeuno',
    'outlands',
    'other',
    'whitegate',
    'crystal_war',
}

local quest_category_names = {
    sandoria = "San d'Oria",
    bastok = 'Bastok',
    windurst = 'Windurst',
    jeuno = 'Jeuno',
    outlands = 'Outlands',
    other = 'Other',
    whitegate = 'Whitegate',
    crystal_war = 'Crystal War',
}

-- The server's quest areas do not always match Journal categories.
-- This mapping is used when invalidating quest caches after packets.

local quest_tracker_categories = {
    sandoria = 'sandoria',
    bastok = 'bastok',
    windurst = 'windurst',
    jeuno = 'jeuno',
    outlands = 'outlands',
    other = 'other',
    toau = 'whitegate',
    wotg = 'crystal_war',
}

local function get_quest_category_from_tracker_area(area)
    if area == nil then
        return nil
    end

    return quest_tracker_categories[area] or area
end

-- State

local state = {
    loaded = false,
    ready = false,

    quest = {
        current = {},
        completed = {},
    },

    mission = {
        current = {},
        completed = {},
        fields = {},
    },
}

local initialized = false

-- Cache

local sorted_mission_ids_cache = {}
local mission_area_cache = {}
local mission_status_cache = {}

local quest_area_cache = {}
local quest_status_cache = {}

-- Dirty state

local dirty = {
    mission = false,
    quest = false,
}

local revisions = {
    mission = 0,
    quest = 0,
}

local last_touch = {
    mission = 0,
    quest = 0,
}

local function mark_mission_dirty()
    dirty.mission = true
    revisions.mission = revisions.mission + 1
    last_touch.mission = os.clock()
end

local function mark_quest_dirty()
    dirty.quest = true
    revisions.quest = revisions.quest + 1
    last_touch.quest = os.clock()
end

-- Cache invalidation

local function invalidate_mission_area(area)
    mission_area_cache[area] = nil
    mission_status_cache[area] = nil
end

local function invalidate_all_mission_areas()
    mission_area_cache = {}
    mission_status_cache = {}
end

local function invalidate_quest_category(category)
    quest_area_cache[category] = nil
    quest_status_cache[category] = nil
end

local function invalidate_quest_tracker_area(area)
    local category = get_quest_category_from_tracker_area(area)
    if category ~= nil then
        invalidate_quest_category(category)
    end
end

local function invalidate_all_quest_categories()
    quest_area_cache = {}
    quest_status_cache = {}
end

-- Story logs

local story_logs = {
    [0x0050] = { cat = 'quest', type = 'current', area = 'sandoria' },
    [0x0058] = { cat = 'quest', type = 'current', area = 'bastok' },
    [0x0060] = { cat = 'quest', type = 'current', area = 'windurst' },
    [0x0068] = { cat = 'quest', type = 'current', area = 'jeuno' },
    [0x0070] = { cat = 'quest', type = 'current', area = 'other' },
    [0x0078] = { cat = 'quest', type = 'current', area = 'outlands' },
    [0x0088] = { cat = 'quest', type = 'current', area = 'wotg' },
    [0x00E0] = { cat = 'quest', type = 'current', area = 'abyssea' },
    [0x00F0] = { cat = 'quest', type = 'current', area = 'adoulin' },
    [0x0100] = { cat = 'quest', type = 'current', area = 'coalition' },
    [0x0110] = { cat = 'quest', type = 'current', area = 'acp' },
    [0x0120] = { cat = 'quest', type = 'current', area = 'mkd' },
    [0x0130] = { cat = 'quest', type = 'current', area = 'asa' },

    [0x0090] = { cat = 'quest', type = 'completed', area = 'sandoria' },
    [0x0098] = { cat = 'quest', type = 'completed', area = 'bastok' },
    [0x00A0] = { cat = 'quest', type = 'completed', area = 'windurst' },
    [0x00A8] = { cat = 'quest', type = 'completed', area = 'jeuno' },
    [0x00B0] = { cat = 'quest', type = 'completed', area = 'other' },
    [0x00B8] = { cat = 'quest', type = 'completed', area = 'outlands' },
    [0x00C8] = { cat = 'quest', type = 'completed', area = 'wotg' },
    [0x00E8] = { cat = 'quest', type = 'completed', area = 'abyssea' },
    [0x00F8] = { cat = 'quest', type = 'completed', area = 'adoulin' },
    [0x0108] = { cat = 'quest', type = 'completed', area = 'coalition' },
    [0x0118] = { cat = 'quest', type = 'completed', area = 'acp' },
    [0x0128] = { cat = 'quest', type = 'completed', area = 'mkd' },
    [0x0138] = { cat = 'quest', type = 'completed', area = 'asa' },

    [0x0030] = {
        cat = 'mission',
        type = 'completed',
        area = 'campaign',
    },

    [0x0038] = {
        cat = 'mission',
        type = 'completed',
        area = 'campaign_2',
    },
}

-- Data access

local function get_mission_list(area)
    return missions[area]
end

local function get_mission_data(area, id)
    local mission_list = get_mission_list(area)
    if mission_list == nil then
        return nil
    end

    local numeric_id = tonumber(id)
    if numeric_id ~= nil then
        return mission_list[numeric_id] or mission_list[tostring(numeric_id)]
    end

    return mission_list[id]
end

local function get_quest_list(category)
    return quests[category] or {}
end

local function get_sorted_mission_ids(area)
    local cached = sorted_mission_ids_cache[area]
    if cached ~= nil then
        return cached
    end

    local mission_list = get_mission_list(area)
    local ids = {}

    if mission_list ~= nil then
        for id in pairs(mission_list) do
            local numeric_id = tonumber(id)
            if numeric_id ~= nil then
                ids[#ids + 1] = numeric_id
            end
        end
    end

    table.sort(ids)
    sorted_mission_ids_cache[area] = ids
    return ids
end

-- Packet helpers

local function read_u32(data, offset)
    local b1, b2, b3, b4 = data:byte(offset + 1, offset + 4)
    if not b1 or not b2 or not b3 or not b4 then
        return nil
    end

    return b1 + b2 * 0x100 + b3 * 0x10000 + b4 * 0x1000000
end

local function read_i32(data, offset)
    local value = read_u32(data, offset)
    if value == nil then
        return nil
    end

    if value >= 0x80000000 then
        return value - 0x100000000
    end

    return value
end

local function bytes_to_set(data, offset, length)
    local result = {}

    for i = 0, (length * 8) - 1 do
        local byte = data:byte(offset + math.floor(i / 8) + 1)
        if byte ~= nil then
            local bit = i % 8
            local mask = 2 ^ bit

            if byte % (mask * 2) >= mask then
                result[i + 1] = true
            end
        end
    end

    return result
end

local function numeric_to_set(value)
    if type(value) == 'table' then
        return value
    end

    local result = {}

    if type(value) ~= 'number' then
        return result
    end

    for bit_index = 0, 31 do
        local mask = 2 ^ bit_index

        if value % (mask * 2) >= mask then
            result[bit_index + 1] = true
        end
    end

    return result
end

-- Mission data sources

local quest_backed_mission_areas = {
    abyssea = true,
}

local function get_mission_current_data(area)
    if quest_backed_mission_areas[area] then
        return state.quest.current[area]
    end

    return state.mission.current[area]
end

local function get_mission_completed_data(area)
    if quest_backed_mission_areas[area] then
        return state.quest.completed[area]
    end

    return state.mission.completed[area]
end

-- Multi-field packets

local function mark_loaded()
    state.loaded = true
    state.ready = true
end

local function parse_0080(data)
    state.quest.current.toau = bytes_to_set(data, 0x04, 16)
    state.mission.current.assault = read_i32(data, 0x14)
    state.mission.current.toau = read_i32(data, 0x18)
    state.mission.current.wotg = read_i32(data, 0x1C)
    state.mission.current.campaign = read_i32(data, 0x20)

    invalidate_quest_tracker_area('toau')
    invalidate_mission_area('assault')
    invalidate_mission_area('toau')
    invalidate_mission_area('wotg')
    invalidate_mission_area('campaign')

    mark_quest_dirty()
    mark_mission_dirty()
    mark_loaded()
end

local function parse_00C0(data)
    state.quest.completed.toau = bytes_to_set(data, 0x04, 16)
    state.mission.completed.assault = bytes_to_set(data, 0x14, 16)

    invalidate_quest_tracker_area('toau')
    invalidate_mission_area('assault')

    mark_quest_dirty()
    mark_mission_dirty()
    mark_loaded()
end

local function parse_00D0(data)
    state.mission.completed.sandoria = bytes_to_set(data, 0x04, 8)
    state.mission.completed.bastok = bytes_to_set(data, 0x0C, 8)
    state.mission.completed.windurst = bytes_to_set(data, 0x14, 8)
    state.mission.completed.zilart = bytes_to_set(data, 0x1C, 8)

    invalidate_mission_area('sandoria')
    invalidate_mission_area('bastok')
    invalidate_mission_area('windurst')
    invalidate_mission_area('zilart')

    mark_mission_dirty()
    mark_loaded()
end

local function parse_00D8(data)
    state.mission.completed.toau = bytes_to_set(data, 0x04, 8)
    state.mission.completed.wotg = bytes_to_set(data, 0x0C, 8)

    invalidate_mission_area('toau')
    invalidate_mission_area('wotg')

    mark_mission_dirty()
    mark_loaded()
end

local function parse_fffe(data)
    local value = read_i32(data, 0x04)
    if value == nil then
        return
    end

    state.mission.current.tvr = value
    state.mission.fields.tvr_has_active_mission = value >= 0
    state.mission.fields.tvr_next_value = value < 0 and value + 2147483648 or value

    invalidate_mission_area('tvr')

    mark_mission_dirty()
    mark_loaded()
end

local function parse_ffff(data)
    state.mission.fields.nation = read_i32(data, 0x04)
    state.mission.current.nation = read_i32(data, 0x08)
    state.mission.current.zilart = read_i32(data, 0x0C)
    state.mission.current.cop = read_i32(data, 0x10)
    state.mission.fields.unknown1 = read_i32(data, 0x14)

    local acp_mkd_byte = data:byte(0x18 + 1)
    local asa_byte = data:byte(0x19 + 1)

    if acp_mkd_byte ~= nil then
        state.mission.current.acp = acp_mkd_byte % 16
        state.mission.current.mkd = math.floor(acp_mkd_byte / 16)
    end

    if asa_byte ~= nil then
        state.mission.current.asa = asa_byte % 16
    end

    state.mission.current.adoulin = read_i32(data, 0x1C)
    state.mission.current.rov = read_i32(data, 0x20)

    local nation_map = {
        [0] = 'sandoria',
        [1] = 'bastok',
        [2] = 'windurst',
    }

    local nation_area = nation_map[state.mission.fields.nation]
    if nation_area then
        state.mission.current[nation_area .. '_current_mission'] = state.mission.current.nation
    end

    invalidate_mission_area('sandoria')
    invalidate_mission_area('bastok')
    invalidate_mission_area('windurst')
    invalidate_mission_area('zilart')
    invalidate_mission_area('cop')
    invalidate_mission_area('acp')
    invalidate_mission_area('mkd')
    invalidate_mission_area('asa')
    invalidate_mission_area('adoulin')
    invalidate_mission_area('rov')

    mark_mission_dirty()
    mark_loaded()
end

-- Packet parser

local packet_parsers = {
    [0x0080] = parse_0080,
    [0x00C0] = parse_00C0,
    [0x00D0] = parse_00D0,
    [0x00D8] = parse_00D8,
    [0xFFFE] = parse_fffe,
    [0xFFFF] = parse_ffff,
}

local function parse_packet(e)
    if e.id ~= 0x056 or e.data == nil or e.size < 40 then
        return
    end

    local packet_type = read_u32(e.data, 0x24)
    if packet_type == nil then
        return
    end

    local log = story_logs[packet_type]
    if log ~= nil then
        state[log.cat][log.type][log.area] = bytes_to_set(e.data, 0x04, 32)

        if log.cat == 'mission' then
            if log.area == 'campaign' then
                invalidate_mission_area('campaign')
            elseif log.area == 'campaign_2' then
                invalidate_mission_area('campaign')
            else
                invalidate_mission_area(log.area)

                if log.area == 'abyssea' then
                    invalidate_mission_area('abyssea')
                end
            end

            mark_mission_dirty()
        else
            invalidate_quest_tracker_area(log.area)

            if log.area == 'abyssea' then
                invalidate_mission_area('abyssea')
                mark_mission_dirty()
            end

            mark_quest_dirty()
        end

        mark_loaded()
        return
    end

    local parser = packet_parsers[packet_type]
    if parser ~= nil then
        parser(e.data)
    end
end

-- Status helpers

local linear_mission_areas = {
    cop = true,
    adoulin = true,
    rov = true,
    acp = true,
    mkd = true,
    asa = true,
    tvr = true,
    assault = true,
}

local function active_means_completed(is_completed, is_current)
    if is_completed or is_current then
        return 'completed', false
    end

    return 'not_started', false
end

local function skip_override()
    return nil, true
end

local function nation_main_override(id, is_completed, is_current, completed_set)
    for _, sub_id in ipairs({ 6, 7, 8, 9 }) do
        if completed_set[sub_id + 1] then
            return 'completed', false
        end
    end

    if is_completed then
        return 'completed', false
    end

    if is_current then
        return 'active', false
    end

    return 'not_started', false
end

-- Mission overrides

local mission_overrides = {
    sandoria = {
        [5] = function(id, is_completed, is_current, ctx)
            return nation_main_override(id, is_completed, is_current, ctx.completed_set)
        end,

        [6] = skip_override,
        [7] = skip_override,
        [8] = skip_override,
        [9] = skip_override,
    },

    bastok = {
        [5] = function(id, is_completed, is_current, ctx)
            return nation_main_override(id, is_completed, is_current, ctx.completed_set)
        end,

        [6] = skip_override,
        [7] = skip_override,
        [8] = skip_override,
        [9] = skip_override,
    },

    windurst = {
        [5] = function(id, is_completed, is_current, ctx)
            return nation_main_override(id, is_completed, is_current, ctx.completed_set)
        end,

        [6] = skip_override,
        [7] = skip_override,
        [8] = skip_override,
        [9] = skip_override,
    },

    zilart = {
        [2] = skip_override,

        [31] = function(id, is_completed, is_current, ctx)
            if is_completed then
                return 'completed', false
            end

            if ctx.cop_current and ctx.cop_current >= 850 then
                return 'completed', false
            end

            if is_current then
                return 'active', false
            end

            return 'not_started', false
        end,
    },

    cop = {
        [101] = skip_override,
        [137] = skip_override,
        [257] = skip_override,
        [330] = skip_override,
        [331] = skip_override,
        [335] = skip_override,
        [339] = skip_override,
        [340] = skip_override,
        [341] = skip_override,
        [345] = skip_override,
        [349] = skip_override,
        [367] = skip_override,
        [447] = skip_override,
        [540] = skip_override,
        [542] = skip_override,
        [543] = skip_override,
        [546] = skip_override,
        [549] = skip_override,
        [550] = skip_override,
        [552] = skip_override,
        [553] = skip_override,
        [556] = skip_override,
        [559] = skip_override,
        [560] = skip_override,
        [562] = skip_override,
        [564] = skip_override,
        [568] = skip_override,
        [577] = skip_override,
        [647] = skip_override,
        [758] = skip_override,

        [850] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },

    wotg = {
        [53] = skip_override,
    },

    acp = {
        [11] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },

    mkd = {
        [14] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },

    asa = {
        [14] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },

    adoulin = {
        [368] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,

        [999] = skip_override,
    },

    rov = {
        [334] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },

    tvr = {
        [642] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },

    toau = {
        [47] = function(id, is_completed, is_current)
            return active_means_completed(is_completed, is_current)
        end,
    },
}

-- Linear mission context

local function get_linear_active_id(area)
    local current_value = tonumber(state.mission.current[area])
    if current_value == nil then
        return nil, false
    end

    local no_active_flag = false

    if current_value < 0 then
        no_active_flag = true
        current_value = current_value + 2147483648
    end

    local ids = get_sorted_mission_ids(area)
    local active_id = nil

    if current_value > 0 then
        for i = #ids, 1, -1 do
            if ids[i] <= current_value then
                active_id = ids[i]
                break
            end
        end
    end

    return active_id, no_active_flag
end

-- Mission status context

local function build_mission_status_context(area)
    local context = {
        area = area,
        completed_set = {},
        current_set = nil,
        active_id = nil,
        no_active = false,
        nation_current = nil,
        cop_current = state.mission.current.cop,
    }

    if linear_mission_areas[area] then
        context.active_id, context.no_active = get_linear_active_id(area)
        context.completed_set = numeric_to_set(get_mission_completed_data(area))
        return context
    end

    if area == 'campaign' then
        context.completed_set = numeric_to_set(state.mission.completed.campaign)
        context.current_set = numeric_to_set(state.mission.completed.campaign_2)
        return context
    end

    context.completed_set = numeric_to_set(get_mission_completed_data(area))

    local current_value = get_mission_current_data(area)

    if area == 'toau' or area == 'wotg' then
        if type(current_value) == 'number' then
            context.current_set = nil
        else
            context.current_set = numeric_to_set(current_value)
        end
    else
        context.current_set = numeric_to_set(current_value)
    end

    context.nation_current = state.mission.current[area .. '_current_mission']
    return context
end

-- Campaign status

local function get_campaign_completed(id, context)
    local numeric_id = tonumber(id)
    if numeric_id == nil then
        return false
    end

    if numeric_id >= 256 then
        return context.current_set[(numeric_id - 256) + 1] == true
    end

    if numeric_id >= 1 then
        return context.completed_set[numeric_id + 1] == true
    end

    return false
end

-- Mission status

local function get_mission_status_from_context(area, id, context)
    local numeric_id = tonumber(id)
    if numeric_id == nil then
        return 'not_started'
    end

    local area_overrides = mission_overrides[area]

    if linear_mission_areas[area] then
        local is_completed = false
        local is_current = false

        if context.active_id ~= nil then
            is_completed = numeric_id < context.active_id

            if not context.no_active then
                is_current = numeric_id == context.active_id
            end
        end

        if context.completed_set[numeric_id + 1] then
            is_completed = true
        end

        local override = area_overrides and area_overrides[numeric_id]

        if override ~= nil then
            local status_override, skip = override(
                numeric_id,
                is_completed,
                is_current,
                {
                    completed_set = context.completed_set,
                    cop_current = context.cop_current,
                }
            )

            if skip then
                return 'hidden'
            end

            if status_override ~= nil then
                return status_override
            end
        end

        if is_completed then
            return 'completed'
        end

        if is_current then
            return 'active'
        end

        return 'not_started'
    end

    if area == 'campaign' then
        if get_campaign_completed(numeric_id, context) then
            return 'completed'
        end

        return 'not_started'
    end

    local is_current = false

    if area == 'toau' or area == 'wotg' then
        if context.current_set == nil then
            is_current = tonumber(state.mission.current[area]) == numeric_id
        else
            is_current = context.current_set[numeric_id + 1] == true
        end
    else
        is_current = context.current_set[numeric_id + 1] == true
    end

    if context.nation_current ~= nil
        and tonumber(context.nation_current) == numeric_id then
        is_current = true
    end

    local is_completed = context.completed_set[numeric_id + 1] == true
    local override = area_overrides and area_overrides[numeric_id]

    if override ~= nil then
        local status_override, skip = override(
            numeric_id,
            is_completed,
            is_current,
            {
                completed_set = context.completed_set,
                current_set = context.current_set,
                cop_current = context.cop_current,
            }
        )

        if skip then
            return 'hidden'
        end

        if status_override ~= nil then
            return status_override
        end
    end

    if is_completed then
        return 'completed'
    end

    if is_current then
        return 'active'
    end

    return 'not_started'
end

-- Mission cache build

local function build_mission_area_cache(area)
    local cached = mission_area_cache[area]
    if cached ~= nil then
        return cached
    end

    local mission_list = get_mission_list(area)

    if mission_list == nil then
        mission_area_cache[area] = {}
        mission_status_cache[area] = {}
        return mission_area_cache[area]
    end

    local context = build_mission_status_context(area)
    local result = {}
    local status_map = {}

    for raw_id, data in pairs(mission_list) do
        local numeric_id = tonumber(raw_id)

        if numeric_id ~= nil then
            local name
            local steps

            if type(data) == 'table' then
                name = data.name
                steps = data.steps
            else
                name = data
            end

            local status = get_mission_status_from_context(
                area,
                numeric_id,
                context
            )

            status_map[numeric_id] = status

            if status ~= 'hidden' then
                result[#result + 1] = {
                    id = numeric_id,
                    area = area,
                    name = name,
                    steps = steps,
                    status = status,
                }
            end
        end
    end

    table.sort(result, function(a, b)
        return a.id < b.id
    end)

    mission_area_cache[area] = result
    mission_status_cache[area] = status_map

    return result
end

-- Quest cache build

local function build_quest_area_cache(category)
    local cached = quest_area_cache[category]
    if cached ~= nil then
        return cached
    end

    local quest_list = get_quest_list(category)
    local result = {}
    local status_map = {}

    for _, quest in ipairs(quest_list) do
        local tracker_area = quest.tracker_area
        local tracker_id = quest.tracker_id
        local status = 'not_started'

        if quest.trackable ~= false
            and tracker_area ~= nil
            and tracker_id ~= nil then
            status = M.GetQuestStatus(tracker_area, tracker_id)
        end

        local object = {}

        for key, value in pairs(quest) do
            object[key] = value
        end

        object.category = quest.category or category
        object.status = status
        result[#result + 1] = object

        if tracker_id ~= nil then
            status_map[tostring(tracker_id)] = status
        end
    end

    quest_area_cache[category] = result
    quest_status_cache[category] = status_map

    return result
end

-- Mission status API

function M.GetMissionStatus(area, id)
    local numeric_id = tonumber(id)
    if numeric_id == nil then
        return nil
    end

    local mission_list = get_mission_list(area)
    if mission_list == nil then
        return nil
    end

    if mission_list[numeric_id] == nil
        and mission_list[tostring(numeric_id)] == nil then
        return nil
    end

    build_mission_area_cache(area)

    local status_map = mission_status_cache[area]
    if status_map == nil then
        return nil
    end

    return status_map[numeric_id]
end

-- Quest status API

function M.GetQuestStatus(area, id)
    local numeric_id = tonumber(id)
    if numeric_id == nil then
        return 'not_started'
    end

    local completed = numeric_to_set(state.quest.completed[area])
    local current = numeric_to_set(state.quest.current[area])

    if completed[numeric_id + 1] then
        return 'completed'
    end

    if current[numeric_id + 1] then
        return 'active'
    end

    return 'not_started'
end

-- Quest API

function M.GetQuest(category, id)
    local target_id = tostring(id)

    for _, quest in ipairs(build_quest_area_cache(category)) do
        if tostring(quest.id) == target_id then
            return quest
        end
    end

    return nil
end

function M.GetQuestArea(category)
    return build_quest_area_cache(category)
end

function M.GetQuestList()
    local result = {}

    for _, category in ipairs(quest_categories) do
        for _, quest in ipairs(build_quest_area_cache(category)) do
            result[#result + 1] = quest
        end
    end

    return result
end

function M.GetQuestCategories()
    return quest_categories
end

function M.GetQuestCategoryNames()
    return quest_category_names
end

-- Mission API

function M.GetMission(area, id)
    local data = get_mission_data(area, id)

    if data == nil then
        return nil
    end

    local numeric_id = tonumber(id)

    return {
        id = numeric_id or id,
        area = area,
        name = type(data) == 'table' and data.name or data,
        steps = type(data) == 'table' and data.steps or nil,
        status = M.GetMissionStatus(area, numeric_id or id),
    }
end

function M.GetMissionArea(area)
    return build_mission_area_cache(area)
end

function M.GetMissionAreas()
    local result = {}

    for area in pairs(missions) do
        result[#result + 1] = area
    end

    table.sort(result)
    return result
end

function M.GetQuestAreas()
    return quest_categories
end

-- State API

function M.IsLoaded()
    return state.loaded
end

function M.IsReady()
    return state.ready
end

function M.IsMissionDirty()
    return dirty.mission
end

function M.IsQuestDirty()
    return dirty.quest
end

function M.ClearMissionDirty()
    dirty.mission = false
end

function M.ClearQuestDirty()
    dirty.quest = false
end

function M.GetMissionRevision()
    return revisions.mission
end

function M.GetQuestRevision()
    return revisions.quest
end

function M.GetMissionLastTouch()
    return last_touch.mission
end

function M.GetQuestLastTouch()
    return last_touch.quest
end

function M.GetState()
    return state
end

-- Initialize

function M.Initialize()
    if initialized then
        return
    end

    initialized = true
    ashita.events.register('packet_in', 'mission_tracker_packet_in', parse_packet)
end

return M