local M = {}

-- Quest files are kept separate so the actual data stays easier to
-- edit. This file just loads them and makes sure they all end up in
-- the same structure.

local function copy_quest(quest, category, zone_name)
    if type(quest) ~= 'table' then
        return nil
    end

    local result = {}

    -- Keep any extra fields from the quest file. Some quests use
    -- fields that the tracker/UI does not need directly.
    for key, value in pairs(quest) do
        result[key] = value
    end

    result.category = result.category or category

    if result.zone == nil and zone_name ~= nil then
        result.zone = zone_name
    end

    return result
end

local function load_step_file(module_name)
    local data = require(module_name)

    if type(data) ~= 'table' then
        return {}
    end

    return data.STEPS or data.steps or data
end

local quest_steps = {
    sandoria = load_step_file('data/quests/steps/sandoria'),
    bastok = load_step_file('data/quests/steps/bastok'),
    windurst = load_step_file('data/quests/steps/windurst'),
    jeuno = load_step_file('data/quests/steps/jeuno'),
    outlands = load_step_file('data/quests/steps/outlands'),
    other = load_step_file('data/quests/steps/other'),
    whitegate = load_step_file('data/quests/steps/whitegate'),
    crystal_war = load_step_file('data/quests/steps/crystal'),
}

local function apply_steps(quest, step_data)
    if quest == nil or quest.id == nil then
        return
    end

    local steps = step_data[quest.id]
    if steps ~= nil then
        quest.steps = steps
    end
end

local function load_quest_file(module_name, category)
    local data = require(module_name)

    if type(data) ~= 'table' then
        return {}
    end

    local result = {}
    local step_data = quest_steps[category]

    -- Most files are flat lists:
    --
    -- {
    --     { id = '...', name = '...' },
    --     ...
    -- }

    if #data > 0 then
        for _, quest in ipairs(data) do
            local normalized = copy_quest(quest, category)

            if normalized ~= nil then
                apply_steps(normalized, step_data)
                result[#result + 1] = normalized
            end
        end

        return result
    end

    -- Some files group quests under named zones:
    --
    -- zones = {
    --     {
    --         name = '...',
    --         quests = { ... },
    --     },
    -- }

    if type(data.zones) == 'table' then
        for _, zone in ipairs(data.zones) do
            if type(zone) == 'table' and type(zone.quests) == 'table' then
                for _, quest in ipairs(zone.quests) do
                    local normalized = copy_quest(
                        quest,
                        category,
                        zone.name
                    )

                    if normalized ~= nil then
                        apply_steps(normalized, step_data)
                        result[#result + 1] = normalized
                    end
                end
            end
        end

        return result
    end

    -- Older files can use the zone table directly:
    --
    -- {
    --     [1] = {
    --         name = '...',
    --         quests = { ... },
    --     },
    -- }

    for _, zone in pairs(data) do
        if type(zone) == 'table' and type(zone.quests) == 'table' then
            for _, quest in ipairs(zone.quests) do
                local normalized = copy_quest(
                    quest,
                    category,
                    zone.name
                )

                if normalized ~= nil then
                    apply_steps(normalized, step_data)
                    result[#result + 1] = normalized
                end
            end
        end
    end

    return result
end

M.QUESTS = {
    sandoria = load_quest_file('data/quests/sandoria', 'sandoria'),
    bastok = load_quest_file('data/quests/bastok', 'bastok'),
    windurst = load_quest_file('data/quests/windurst', 'windurst'),
    jeuno = load_quest_file('data/quests/jeuno', 'jeuno'),
    outlands = load_quest_file('data/quests/outlands', 'outlands'),
    other = load_quest_file('data/quests/other', 'other'),
    whitegate = load_quest_file('data/quests/whitegate', 'whitegate'),
    crystal_war = load_quest_file('data/quests/crystal', 'crystal_war'),
}

function M.GetCategoryCounts()
    local counts = {}

    for category, quests in pairs(M.QUESTS) do
        counts[category] = #quests
    end

    return counts
end

return M