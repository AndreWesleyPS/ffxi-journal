local M = {}

-- Mission modules in the addon do not all use the same layout.
-- Normalize them here so the rest of the addon only sees one format.
-- Each individual mission module may use either: 
-- 1) M.MISSIONS + M.STEPS 
-- or:  
-- 2) Direct mission table: 
-- [id] = { 
-- name = '...', 
-- steps = { ... }, -- }

local function normalize_mission_module(module)
    if type(module) ~= 'table' then
        return {}
    end

    local result = {}

    -- Older mission files use M.MISSIONS + M.STEPS.
    if type(module.MISSIONS) == 'table' then
        local mission_list = module.MISSIONS
        local step_list = type(module.STEPS) == 'table' and module.STEPS or {}
        local steps_by_name = {}

        -- Keep the original STEPS table untouched.
        for _, step_data in pairs(step_list) do
            if type(step_data) == 'table' and step_data.name ~= nil then
                local name = tostring(step_data.name)

                if steps_by_name[name] == nil then
                    steps_by_name[name] = step_data
                end
            end
        end

        for raw_id, mission_data in pairs(mission_list) do
            local numeric_id = tonumber(raw_id)
            local name
            local mission_steps
            local step_data

            if type(mission_data) == 'table' then
                numeric_id = numeric_id or tonumber(mission_data.id)
                name = mission_data.name
                mission_steps = mission_data.steps
            else
                name = mission_data
            end

            if numeric_id ~= nil then
                -- Embedded steps always win when present.
                if mission_steps == nil then
                    step_data = step_list[raw_id]
                        or step_list[numeric_id]
                        or step_list[tostring(numeric_id)]

                    if type(step_data) == 'table' then
                        mission_steps = step_data.steps
                    end
                end

                -- Some older files identify the step by mission name.
                if mission_steps == nil and name ~= nil then
                    step_data = steps_by_name[tostring(name)]

                    if type(step_data) == 'table' then
                        mission_steps = step_data.steps
                    end
                end

                result[numeric_id] = {
                    name = name,
                    steps = mission_steps,
                }
            end
        end

        return result
    end

    -- Newer files can expose the mission table directly.
    for raw_id, mission_data in pairs(module) do
        local numeric_id = tonumber(raw_id)

        if type(mission_data) == 'table' then
            numeric_id = numeric_id or tonumber(mission_data.id)

            if numeric_id ~= nil then
                result[numeric_id] = {
                    name = mission_data.name,
                    steps = mission_data.steps,
                }
            end
        elseif numeric_id ~= nil then
            result[numeric_id] = {
                name = mission_data,
                steps = nil,
            }
        end
    end

    return result
end

local function load_mission_area(path)
    return normalize_mission_module(require(path))
end

M.MISSIONS = {
    sandoria = load_mission_area('data/missions/sandy'),
    bastok = load_mission_area('data/missions/bastok'),
    windurst = load_mission_area('data/missions/windurst'),
    zilart = load_mission_area('data/missions/roz'),
    cop = load_mission_area('data/missions/cop'),
    toau = load_mission_area('data/missions/toau'),
    wotg = load_mission_area('data/missions/wotg'),
    acp = load_mission_area('data/missions/acp'),
    mkd = load_mission_area('data/missions/mkd'),
    asa = load_mission_area('data/missions/asa'),
    abyssea = load_mission_area('data/missions/abyssea'),
    adoulin = load_mission_area('data/missions/adoulin'),
    rov = load_mission_area('data/missions/rov'),
    tvr = load_mission_area('data/missions/tvr'),
    assault = load_mission_area('data/missions/assault'),
    campaign = load_mission_area('data/missions/campaign'),
}

-- Kept for compatibility with older code that still uses aliases.
M.ALIASES = {
    s = 'sandoria',
    san = 'sandoria',
    sandy = 'sandoria',
    sandoria = 'sandoria',

    b = 'bastok',
    bas = 'bastok',
    bastok = 'bastok',

    w = 'windurst',
    win = 'windurst',
    windurst = 'windurst',

    r = 'zilart',
    roz = 'zilart',
    zilart = 'zilart',
    zm = 'zilart',

    c = 'cop',
    cop = 'cop',
    prom = 'cop',
    promathia = 'cop',

    t = 'toau',
    toau = 'toau',
    aht = 'toau',

    wg = 'wotg',
    wotg = 'wotg',
    wings = 'wotg',
    wog = 'wotg',
}

M.LINE_NAMES = {
    sandoria = "San d'Oria",
    bastok = 'Bastok',
    windurst = 'Windurst',
    zilart = 'Rise of the Zilart',
    cop = 'Chains of Promathia',
    toau = 'Treasures of Aht Urhgan',
    wotg = 'Wings of the Goddess',
}

M.NATION_BY_ID = {
    [0] = 'sandoria',
    [1] = 'bastok',
    [2] = 'windurst',
}

return M