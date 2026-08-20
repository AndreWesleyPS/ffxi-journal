local M = {}

require('common')

local imgui = require('imgui')
local ffi = require('ffi')
local d3d = require('d3d8')
local logic = require('logic')

local d3d8dev = d3d.get_device()
local controller = logic

function M.SetController(value)
    controller = value or logic
end

local mission_font
local ui_button_height = 42
local ui_bar_height = 48
local ui_header_height = 100

local mission_restore_window = true
local quest_restore_window = true
local journal_restore_window = true
local journal_mini_restore_window = true

local journal_mode_popup_open = false
local journal_area_popup_open = false
local journal_category_popup_open = false

local journal_help_window = false
local journal_help_width = 500
local journal_help_height = 360
local journal_help_restore = true

local controller_repeat_button
local controller_repeat_time = 0
local controller_repeat_delay = 0.40
local controller_repeat_interval = 0.12

local keyboard_repeat_key
local keyboard_repeat_time = 0
local keyboard_repeat_delay = 0.40
local keyboard_repeat_interval = 0.12

local list_last_selection = {}

local log_collapsed = {
    ['Mission Log'] = false,
    ['Quest Log'] = false,
}

local log_expanded_height = {
    ['Mission Log'] = nil,
    ['Quest Log'] = nil,
}

local pGameMenu = 0
local pEventSystem = 0
local pInterfaceHidden = 0
local game_visibility_initialized = false
local game_ui_visible = false
local visibility_cache_time = 0
local visibility_cache_interval = 0.05

local journal_cover_files = {
    sandoria = 'Sandorian_Iconv2.png',
    bastok = 'Bastok_Iconv2.png',
    windurst = 'Windurst_Iconv2.png',
    zilart = 'Zilart_Icon.png',
    cop = 'Chainsofpromathia_Icon.png',
    toau = 'AhtUrghan_Icon.png',
    wotg = 'Wingsofthegoddess_Icon.png',
    acp = 'CrystallineProphecy_Icon.png',
    mkd = 'Mooglekupodetat_Icon.png',
    asa = 'ShantottoAscension_Icon.png',
    abyssea = 'Abyssea_Icon.png',
    adoulin = 'Seekersofadoulin_Icon.png',
    rov = 'Rhapsodies_Icon.png',
    tvr = 'VoraciousResurgence_Icon.png',
    assault = 'Assault_Icon.PNG',
    campaign = 'Campaign_Iconv2.png',
}

local journal_cover_cache = {}
local d3d_image_info = ffi.new('D3DXIMAGE_INFO')
local journal_mini_texture

local empty_log = {
    id = '',
    name = '',
    steps = {},
}

local colors = {
    window_bg = { 0.123, 0.136, 0.247, 0.88 },
    child_bg = { 0.111, 0.123, 0.225, 0.85 },
    header_bg = { 0.080, 0.087, 0.173, 1.00 },
    header_active = { 0.094, 0.102, 0.196, 1.00 },
    border = { 0.55, 0.62, 0.80, 0.16 },
    text = { 0.930, 0.930, 0.940, 1.00 },
    text_dim = { 0.640, 0.660, 0.740, 1.00 },
    gold = { 0.850, 0.700, 0.400, 1.00 },
    button = { 0.098, 0.109, 0.200, 1.00 },
    button_hover = { 0.128, 0.140, 0.247, 1.00 },
    button_active = { 0.149, 0.162, 0.272, 1.00 },
    active_status = { 0.50, 0.75, 0.96, 1.00 },
    completed = { 0.45, 0.70, 0.48, 1.00 },
    not_started = { 0.59, 0.64, 0.71, 1.00 },

    panel = { 20 / 255, 17 / 255, 48 / 255, 1.00 },
    stripe_dark = { 16 / 255, 12 / 255, 44 / 255, 1.00 },
    stripe = { 24 / 255, 22 / 255, 52 / 255, 1.00 },

    frame = { 0.55, 0.62, 0.80, 0.20 },
    frame_inner = { 0.35, 0.40, 0.55, 0.16 },
    arrow = { 0.80, 0.30, 0.24, 0.95 },

    selector_dot = { 0.30, 0.68, 0.94, 1.00 },
    selector_dot_highlight = { 0.85, 0.95, 1.00, 0.80 },
    selector_text = { 1.00, 1.00, 1.00, 1.00 },
    selector_text_selected = { 1.00, 0.48, 0.68, 1.00 },

    scrollbar_bg = { 0.080, 0.087, 0.173, 0.60 },
    scrollbar_grab = { 0.90, 0.72, 0.82, 0.90 },
    scrollbar_grab_hovered = { 0.95, 0.78, 0.87, 0.95 },
    scrollbar_grab_active = { 1.00, 0.85, 0.92, 1.00 },

    panel_alpha_top = 0.55,
    panel_alpha_mid = 0.88,
    panel_alpha_bottom = 1.00,
}

local transparent = { 0, 0, 0, 0 }

local theme_colors = {
    { ImGuiCol_WindowBg, colors.window_bg },
    { ImGuiCol_ChildBg, colors.child_bg },
    { ImGuiCol_PopupBg, colors.window_bg },
    { ImGuiCol_Border, colors.border },
    { ImGuiCol_FrameBg, colors.button },
    { ImGuiCol_FrameBgHovered, colors.button_hover },
    { ImGuiCol_FrameBgActive, colors.button_active },
    { ImGuiCol_Button, colors.button },
    { ImGuiCol_ButtonHovered, colors.button_hover },
    { ImGuiCol_ButtonActive, colors.button_active },
    { ImGuiCol_Header, transparent },
    { ImGuiCol_HeaderHovered, transparent },
    { ImGuiCol_HeaderActive, transparent },
    { ImGuiCol_Text, colors.text },
    { ImGuiCol_TitleBg, colors.header_bg },
    { ImGuiCol_TitleBgActive, colors.header_active },
    { ImGuiCol_ScrollbarBg, colors.scrollbar_bg },
    { ImGuiCol_ScrollbarGrab, colors.scrollbar_grab },
    { ImGuiCol_ScrollbarGrabHovered, colors.scrollbar_grab_hovered },
    { ImGuiCol_ScrollbarGrabActive, colors.scrollbar_grab_active },
}

local mode_items = { 'Missions', 'Quests' }
local mode_names = {
    Missions = 'Missions',
    Quests = 'Quests',
}

local KEY = {
    UP = 0xC8,
    DOWN = 0xD0,
    LEFT = 0xCB,
    RIGHT = 0xCD,
}

local DPAD = {
    UP = 0,
    DOWN = 1,
    LEFT = 2,
    RIGHT = 3,
}

local BUTTON_A = 12
local BUTTON_B = 13

local function reset_repeat()
    controller_repeat_button = nil
    controller_repeat_time = 0
    keyboard_repeat_key = nil
    keyboard_repeat_time = 0
end

local function close_popups()
    journal_mode_popup_open = false
    journal_area_popup_open = false
    journal_category_popup_open = false
end

local function initialize_game_visibility()
    if game_visibility_initialized then
        return
    end

    game_visibility_initialized = true

    pGameMenu = ashita.memory.find(
        'FFXiMain.dll',
        0,
        '8B480C85C974??8B510885D274??3B05',
        16,
        0
    )

    pEventSystem = ashita.memory.find(
        'FFXiMain.dll',
        0,
        'A0????????84C0741AA1????????85C0741166A1????????663B05????????0F94C0C3',
        0,
        0
    )

    pInterfaceHidden = ashita.memory.find(
        'FFXiMain.dll',
        0,
        '8B4424046A016A0050B9????????E8????????F6D81BC040C3',
        0,
        0
    )
end

local function get_game_menu_name()
    if pGameMenu == 0 then
        return ''
    end

    local menu_pointer = ashita.memory.read_uint32(pGameMenu)
    if menu_pointer == 0 then
        return ''
    end

    local menu_val = ashita.memory.read_uint32(menu_pointer)
    if menu_val == 0 then
        return ''
    end

    local menu_header = ashita.memory.read_uint32(menu_val + 4)
    if menu_header == 0 then
        return ''
    end

    local name = ashita.memory.read_string(menu_header + 0x46, 16)
    if not name then
        return ''
    end

    return name:gsub('\x00', ''):gsub('menu[%s]+', ''):trimex():lower()
end

local function update_game_ui_visibility()
    initialize_game_visibility()

    local now = os.clock()
    if now - visibility_cache_time < visibility_cache_interval then
        return
    end

    visibility_cache_time = now
    game_ui_visible = GetPlayerEntity() ~= nil

    if not game_ui_visible then
        return
    end

    if pEventSystem ~= 0 then
        local ptr = ashita.memory.read_uint32(pEventSystem + 1)
        if ptr ~= 0 and ashita.memory.read_uint8(ptr) == 1 then
            game_ui_visible = false
            return
        end
    end

    if pInterfaceHidden ~= 0 then
        local ptr = ashita.memory.read_uint32(pInterfaceHidden + 10)
        if ptr ~= 0 and ashita.memory.read_uint8(ptr + 0xB4) == 1 then
            game_ui_visible = false
            return
        end
    end

    local menu = get_game_menu_name()
    if menu ~= ''
        and (
            menu:find('map', 1, true)
            or menu:find('regioninfo', 1, true)
            or menu:find('region', 1, true)
            or menu:find('cnqframe', 1, true)
            or menu:find('widescan', 1, true)
        ) then
        game_ui_visible = false
    end
end

local function can_draw_ui()
    return game_ui_visible
end

local function load_journal_cover(area)
    local cached = journal_cover_cache[area]
    if cached ~= nil then
        return cached ~= false and cached or nil
    end

    local filename = journal_cover_files[area]
    if not filename then
        journal_cover_cache[area] = false
        return nil
    end

    local path = addon.path .. '/assets/covers/' .. filename
    if not ashita.fs.exists(path) then
        journal_cover_cache[area] = false
        return nil
    end

    if ffi.C.D3DXGetImageInfoFromFileA(path, d3d_image_info) ~= ffi.C.S_OK then
        journal_cover_cache[area] = false
        return nil
    end

    local texture_ptr = ffi.new('IDirect3DTexture8*[1]')
    if ffi.C.D3DXCreateTextureFromFileA(d3d8dev, path, texture_ptr) ~= ffi.C.S_OK then
        journal_cover_cache[area] = false
        return nil
    end

    local texture = {
        ptr = d3d.gc_safe_release(
            ffi.cast('IDirect3DTexture8*', texture_ptr[0])
        ),
        width = tonumber(d3d_image_info.Width),
        height = tonumber(d3d_image_info.Height),
    }

    journal_cover_cache[area] = texture
    return texture
end

local function load_journal_mini_texture()
    if journal_mini_texture ~= nil then
        return
    end

    local path = addon.path .. '/assets/journal.jpg'
    if not ashita.fs.exists(path) then
        return
    end

    local texture_ptr = ffi.new('IDirect3DTexture8*[1]')
    if ffi.C.D3DXCreateTextureFromFileA(d3d8dev, path, texture_ptr) ~= ffi.C.S_OK then
        return
    end

    journal_mini_texture = d3d.gc_safe_release(
        ffi.cast('IDirect3DTexture8*', texture_ptr[0])
    )
end

local function draw_journal_cover(cover, width, height)
    if not cover or not cover.ptr then
        return
    end

    local texture_id = tonumber(ffi.cast('uint32_t', cover.ptr))
    if not texture_id then
        return
    end

    imgui.SetCursorPosX((imgui.GetWindowWidth() - width) * 0.5)
    imgui.Image(
        texture_id,
        { width, height },
        { 0, 0 },
        { 1, 1 },
        { 1, 1, 1, 1 }
    )
end

local function get_log(kind)
    if not controller then
        return empty_log
    end

    local getter = controller['Get' .. kind]
    return getter and getter() or empty_log
end

function M.GetMission()
    return get_log('Mission')
end

function M.GetQuest()
    return get_log('Quest')
end

local function set_log(kind, id, name, steps, visible)
    if not controller then
        return
    end

    local set_data = controller['Set' .. kind .. 'Data']
    local set_main = controller['Set' .. kind]

    if visible ~= nil and set_data then
        set_data(id, name, steps, visible)
    elseif set_main then
        set_main(id, name, steps)

        if visible ~= nil then
            local set_visible = controller['Set' .. kind .. 'LogVisible']
            if set_visible then
                set_visible(visible == true)
            end
        end
    else
        return
    end

    if kind == 'Mission' then
        mission_restore_window = true
    else
        quest_restore_window = true
    end
end

function M.SetMission(id, name, steps)
    set_log('Mission', id, name, steps)
end

function M.SetMissionData(id, name, steps, visible)
    set_log('Mission', id, name, steps, visible)
end

function M.SetQuest(id, name, steps)
    set_log('Quest', id, name, steps)
end

function M.SetQuestData(id, name, steps, visible)
    set_log('Quest', id, name, steps, visible)
end

local function set_window_visible(kind, visible)
    if not controller then
        return
    end

    local fn = controller[(visible and 'Show' or 'Hide') .. kind]
    if fn then
        fn()
        return
    end

    fn = controller['Set' .. kind .. 'Visible']
    if fn then
        fn(visible)
    end
end

local function toggle_window(kind)
    if not controller then
        return
    end

    local fn = controller['Toggle' .. kind]
    if not fn then
        return
    end

    fn()

    if kind == 'Journal' then
        journal_restore_window = true
    elseif kind == 'MissionLog' then
        mission_restore_window = true
    elseif kind == 'QuestLog' then
        quest_restore_window = true
    end
end

function M.ShowJournal()
    set_window_visible('Journal', true)

    if controller and controller.SetJournalMini then
        controller.SetJournalMini(false)
    end

    journal_restore_window = true
    journal_mini_restore_window = true
end

function M.HideJournal()
    set_window_visible('Journal', false)
    close_popups()
    reset_repeat()
end

function M.ToggleJournal()
    toggle_window('Journal')
end

function M.Toggle()
    toggle_window('MissionLog')
end

function M.ToggleQuestLog()
    toggle_window('QuestLog')
end

function M.ShowQuestLog()
    set_window_visible('QuestLog', true)
    quest_restore_window = true
end

function M.HideQuestLog()
    set_window_visible('QuestLog', false)
end

function M.ShowHelp()
    journal_help_window = true
    journal_help_restore = true
end

function M.HideHelp()
    journal_help_window = false
end

function M.ToggleHelp()
    journal_help_window = not journal_help_window

    if journal_help_window then
        journal_help_restore = true
    end
end

local function push_theme()
    for _, entry in ipairs(theme_colors) do
        imgui.PushStyleColor(entry[1], entry[2])
    end

    imgui.PushStyleVar(ImGuiStyleVar_WindowPadding, { 12, 12 })
    imgui.PushStyleVar(ImGuiStyleVar_FramePadding, { 8, 6 })
    imgui.PushStyleVar(ImGuiStyleVar_ItemSpacing, { 7, 7 })
    imgui.PushStyleVar(ImGuiStyleVar_ItemInnerSpacing, { 6, 5 })
end

local function pop_theme()
    imgui.PopStyleVar(4)
    imgui.PopStyleColor(#theme_colors)
end

local function push_log_style()
    imgui.PushStyleColor(ImGuiCol_WindowBg, transparent)
    imgui.PushStyleColor(ImGuiCol_Border, transparent)
    imgui.PushStyleColor(ImGuiCol_TitleBg, transparent)
    imgui.PushStyleColor(ImGuiCol_TitleBgActive, transparent)
    imgui.PushStyleColor(ImGuiCol_TitleBgCollapsed, transparent)
end

local function pop_log_style()
    imgui.PopStyleColor(5)
end

local function draw_panel(draw, x, y, width, height, double_line)
    if not draw then
        return
    end

    local top = imgui.GetColorU32({
        colors.panel[1],
        colors.panel[2],
        colors.panel[3],
        colors.panel_alpha_top,
    })

    local mid = imgui.GetColorU32({
        colors.panel[1],
        colors.panel[2],
        colors.panel[3],
        colors.panel_alpha_mid,
    })

    local bottom = imgui.GetColorU32({
        colors.panel[1],
        colors.panel[2],
        colors.panel[3],
        colors.panel_alpha_bottom,
    })

    local mid_y = y + height * 0.5

    draw:AddRectFilledMultiColor(
        { x, y },
        { x + width, mid_y },
        top, top, mid, mid
    )

    draw:AddRectFilledMultiColor(
        { x, mid_y },
        { x + width, y + height },
        mid, mid, bottom, bottom
    )

    local light = imgui.GetColorU32(colors.stripe)
    local dark = imgui.GetColorU32(colors.stripe_dark)

    for row_y = y, y + height, 5 do
        local row = math.floor((row_y - y) / 5)

        draw:AddLine(
            { x, row_y },
            { x + width, row_y },
            row % 2 == 0 and light or dark,
            2.0
        )
    end

    draw:AddRect(
        { x + 0.5, y + 0.5 },
        { x + width - 0.5, y + height - 0.5 },
        imgui.GetColorU32(colors.frame),
        0, 0, 1
    )

    if double_line then
        draw:AddRect(
            { x + 2.5, y + 2.5 },
            { x + width - 2.5, y + height - 2.5 },
            imgui.GetColorU32(colors.frame_inner),
            0, 0, 1
        )
    end
end

local function draw_selection_arrow(draw, x, y, height)
    if not draw then
        return
    end

    local cy = y + height * 0.5
    local left = x + 3

    draw:AddTriangleFilled(
        { left, cy - 6 },
        { left + 9, cy },
        { left, cy + 6 },
        imgui.GetColorU32(colors.arrow)
    )
end

local function draw_selector_item(text, selected)
    imgui.PushStyleColor(ImGuiCol_Text, transparent)

    local clicked = imgui.Selectable(text, selected)
    local hovered = imgui.IsItemHovered()

    imgui.PopStyleColor()

    local draw = imgui.GetWindowDrawList()
    local min_x, min_y = imgui.GetItemRectMin()
    local max_x, max_y = imgui.GetItemRectMax()
    local height = max_y - min_y

    if hovered and not selected then
        draw:AddRectFilled(
            { min_x + 2, min_y + 1 },
            { max_x - 2, max_y - 1 },
            imgui.GetColorU32({
                colors.button_hover[1],
                colors.button_hover[2],
                colors.button_hover[3],
                0.55,
            }),
            2
        )
    end

    if selected then
        draw_selection_arrow(draw, min_x, min_y, height)
    end

    draw:AddCircleFilled(
        { min_x + 19, min_y + height * 0.5 },
        6.1,
        imgui.GetColorU32(colors.selector_dot),
        14
    )

    draw:AddCircleFilled(
        { min_x + 17.4, min_y + height * 0.5 - 1.6 },
        1.9,
        imgui.GetColorU32(colors.selector_dot_highlight),
        10
    )

    local text_x = min_x + 32
    local text_y = min_y + (height - imgui.GetTextLineHeight()) * 0.5

    if selected then
        text_x = text_x + 2
        text_y = text_y - 1
    end

    draw:AddText(
        { text_x, text_y },
        imgui.GetColorU32(
            selected
                and colors.selector_text_selected
                or colors.selector_text
        ),
        text
    )

    return clicked
end

local wrapped_cache = {}
local wrapped_cache_count = 0
local wrapped_cache_limit = 512

local function wrap_text(text, max_chars)
    text = tostring(text or '')

    local key = text .. '\0' .. tostring(max_chars)
    local cached = wrapped_cache[key]

    if cached then
        return cached
    end

    local lines = {}

    if text == '' then
        lines[1] = ''
    else
        local current = ''

        for word in text:gmatch('%S+') do
            if current == '' then
                current = word
            else
                local test = current .. ' ' .. word

                if #test > max_chars then
                    lines[#lines + 1] = current
                    current = word
                else
                    current = test
                end
            end
        end

        if current ~= '' then
            lines[#lines + 1] = current
        end
    end

    wrapped_cache[key] = lines
    wrapped_cache_count = wrapped_cache_count + 1

    if wrapped_cache_count > wrapped_cache_limit then
        wrapped_cache = {}
        wrapped_cache_count = 0
    end

    return lines
end

local function draw_right_text(draw, right_x, y, text, max_chars)
    for _, line in ipairs(wrap_text(text, max_chars)) do
        local width = imgui.CalcTextSize(line)

        draw:AddText(
            { right_x - width + 2, y + 2 },
            0xCC000000,
            line
        )

        draw:AddText(
            { right_x - width, y },
            0xFFFFFFFF,
            line
        )

        y = y + 35
    end

    return y
end

local function restore_window(state, restore)
    if not restore then
        return false
    end

    if state.width ~= nil and state.height ~= nil then
        imgui.SetNextWindowSize({ state.width, state.height })
    end

    if state.x ~= nil and state.y ~= nil then
        imgui.SetNextWindowPos({ state.x, state.y })
    end

    return false
end

local function draw_log_titlebar(title, state, set_geometry)
    local draw = imgui.GetWindowDrawList()
    local window_x, window_y = imgui.GetWindowPos()
    local width = imgui.GetWindowWidth()
    local title_width = imgui.CalcTextSize(title)

    local arrow_width = 9
    local arrow_x = window_x + width - 12 - arrow_width
    local title_x = arrow_x - 7 - title_width
    local title_y = window_y + 8

    draw:AddText(
        { title_x, title_y },
        imgui.GetColorU32(colors.selector_text),
        title
    )

    local collapsed = log_collapsed[title]

    if collapsed then
        draw:AddTriangleFilled(
            { arrow_x, title_y + 2 },
            { arrow_x, title_y + 13 },
            { arrow_x + arrow_width, title_y + 7.5 },
            imgui.GetColorU32(colors.arrow)
        )
    else
        draw:AddTriangleFilled(
            { arrow_x, title_y + 3 },
            { arrow_x + arrow_width, title_y + 3 },
            { arrow_x + arrow_width * 0.5, title_y + 13 },
            imgui.GetColorU32(colors.arrow)
        )
    end

    imgui.SetCursorPos({
        width - arrow_width - 18,
        3,
    })

    if imgui.InvisibleButton(
        '##LogCollapseButton',
        { arrow_width + 12, 22 }
    ) then
        if not collapsed then
            log_expanded_height[title] = state.height
        end

        collapsed = not collapsed
        log_collapsed[title] = collapsed

        local height = collapsed
            and 38
            or log_expanded_height[title]
            or state.height
            or 600

        imgui.SetWindowSize({
            state.width or width,
            height,
        })

        if not collapsed and set_geometry then
            set_geometry(state.x, state.y, state.width, height)
        end
    end
end

local function draw_log_window(
    title,
    state_getter,
    log_getter,
    set_geometry,
    set_visible,
    restore
)
    if not can_draw_ui() or not controller or not state_getter then
        return restore
    end

    local state = state_getter()
    if not state or not state.visible then
        return restore
    end

    if restore then
        restore = restore_window(state, restore)
    end

    push_log_style()

    local font_pushed = mission_font ~= nil
    if font_pushed then
        imgui.PushFont(mission_font)
    end

    local open = { state.visible }

    if imgui.Begin(
        title .. '###' .. title,
        open,
        ImGuiWindowFlags_NoSavedSettings + ImGuiWindowFlags_NoTitleBar
    ) then
        draw_log_titlebar(title, state, set_geometry)

        if not log_collapsed[title] then
            local draw = imgui.GetWindowDrawList()
            local window_x, window_y = imgui.GetWindowPos()
            local width = imgui.GetWindowWidth()
            local right_x = window_x + width - 15
            local max_chars = math.max(10, math.floor((width - 30) / 16))
            local y = window_y + 45
            local log = log_getter()

            if title == 'Mission Log' then
                y = draw_right_text(
                    draw,
                    right_x,
                    y,
                    tostring(log.id or ''),
                    max_chars
                ) + 5
            end

            y = draw_right_text(
                draw,
                right_x,
                y,
                tostring(log.name or ''),
                max_chars
            ) + 10

            for i, step in ipairs(log.steps or {}) do
                y = draw_right_text(
                    draw,
                    right_x,
                    y,
                    tostring(i) .. '. ' .. tostring(step),
                    max_chars
                ) + 5
            end
        end

        if not log_collapsed[title] then
            local x, y = imgui.GetWindowPos()
            local width, height = imgui.GetWindowSize()

            if x ~= state.x
                or y ~= state.y
                or width ~= state.width
                or height ~= state.height then

                if set_geometry then
                    set_geometry(x, y, width, height)
                end
            end
        end
    end

    imgui.End()

    if not open[1] then
        if set_visible then
            set_visible(false)
        end

        log_collapsed[title] = false
        log_expanded_height[title] = nil
    end

    if font_pushed then
        imgui.PopFont()
    end

    pop_log_style()

    return restore
end

local function get_status_display(status)
    if status == 'active' then
        return 'Active', colors.active_status
    elseif status == 'completed' then
        return 'Completed', colors.completed
    end

    return 'Not Started', colors.not_started
end

local function toggle_selected_log(kind, selected)
    if not selected then
        return
    end

    local state
    local log

    if kind == 'Mission' then
        state = controller.GetMissionLogState()
        log = M.GetMission()
    else
        state = controller.GetQuestLogState()
        log = M.GetQuest()
    end

    local same =
        state
        and state.visible
        and tostring(log.id or '') == tostring(selected.id or '')
        and tostring(log.name or '') == tostring(selected.name or '')

    if same then
        if kind == 'Mission' then
            controller.SetMissionLogVisible(false)
        else
            controller.SetQuestLogVisible(false)
        end
        return
    end
end

local function draw_status_at_item_end(status)
    local text, color = get_status_display(status)
    local _, min_y = imgui.GetItemRectMin()
    local max_x = select(1, imgui.GetItemRectMax())
    local width = imgui.CalcTextSize(text)
    local draw = imgui.GetWindowDrawList()

    if draw then
        draw:AddText(
            { max_x - width - 12, min_y + 4 },
            imgui.GetColorU32(color),
            text
        )
    end
end

local function draw_selectable_status_list(
    child_id,
    width,
    items,
    selection_index,
    hide_label,
    hide_getter,
    hide_setter,
    label_getter,
    select_callback,
    empty_top_spacing
)
    imgui.PushStyleColor(ImGuiCol_ChildBg, transparent)

    if imgui.BeginChild(child_id, { width, -1 }, true) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local w, h = imgui.GetWindowSize()

        draw_panel(draw, x, y, w, h, true)

        local checkbox = {
            hide_getter and hide_getter() == true or false,
        }

        if imgui.Checkbox(hide_label, checkbox) and hide_setter then
            hide_setter(checkbox[1] == true)
        end

        imgui.Separator()

        if empty_top_spacing then
            imgui.Spacing()
            imgui.Spacing()
        else
            imgui.Spacing()
        end

        if #items == 0 then
            imgui.TextColored(
                colors.text_dim,
                empty_top_spacing
                    and 'No quests available.'
                    or 'No missions available.'
            )
        else
            local last_selection = list_last_selection[child_id]
            local selection_changed = last_selection ~= selection_index

            for i, item in ipairs(items) do
                local selected = i == selection_index
                local clicked = draw_selector_item(
                    tostring(label_getter(item)),
                    selected
                )

                if clicked then
                    select_callback(i)
                end

                if selected
                    and selection_changed
                    and not imgui.IsItemVisible() then
                    imgui.SetScrollHereY(0.5)
                end

                draw_status_at_item_end(
                    item.status or 'not_started'
                )
            end

            list_last_selection[child_id] = selection_index
        end

        imgui.EndChild()
    end

    imgui.PopStyleColor()
end

local function draw_steps(steps, child_id, no_steps_text)
    if #steps == 0 then
        imgui.TextColored(colors.text_dim, no_steps_text)
        return
    end

    imgui.PushStyleColor(ImGuiCol_ChildBg, transparent)

    if imgui.BeginChild(child_id, { -1, -76 }, true) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local w, h = imgui.GetWindowSize()

        draw_panel(draw, x, y, w, h, true)

        for i, step in ipairs(steps) do
            imgui.TextWrapped(tostring(i) .. '. ' .. tostring(step))
            imgui.Spacing()
        end

        imgui.EndChild()
    end

    imgui.PopStyleColor()
end

local function draw_selected_status(status)
    local text, color = get_status_display(status)
    imgui.TextColored(color, '[' .. text .. ']')
end

local function draw_metadata(selected)
    local fields = {
        { 'Zone: ', selected.zone },
        { 'NPC: ', selected.npc },
        { 'Location: ', selected.loc },
        { 'Requires: ', selected.req },
        { 'Prereq: ', selected.prereq },
        { 'Items: ', selected.items },
    }

    for _, field in ipairs(fields) do
        if field[2] ~= nil and field[2] ~= '' then
            imgui.TextColored(
                colors.text_dim,
                field[1] .. tostring(field[2])
            )
        end
    end

    if selected.reward ~= nil and selected.reward ~= '' then
        imgui.TextColored(
            colors.gold,
            'Reward: ' .. tostring(selected.reward)
        )
    end
end

local function draw_details_button(label, width, callback)
    local button_width = math.max(120, width - 24)

    imgui.SetCursorPosX(
        (imgui.GetWindowWidth() - button_width) * 0.5
    )

    if imgui.Button(label, { button_width, ui_button_height }) then
        callback()
    end
end

local function draw_details_panel(kind, width, area)
    imgui.PushStyleColor(ImGuiCol_ChildBg, transparent)

    local selected =
        kind == 'Mission'
        and controller.GetSelectedMission()
        or controller.GetSelectedQuest()

    if imgui.BeginChild(
        '##Journal' .. kind .. 'Details',
        { width, -1 },
        true
    ) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local w, h = imgui.GetWindowSize()

        draw_panel(draw, x, y, w, h, true)

        if selected then
            local steps = selected.steps or {}

            if kind == 'Mission' and area then
                local cover = load_journal_cover(area)

                if cover then
                    local cover_width = width - 24
                    local ratio = 1.0

                    if cover.width and cover.height and cover.height > 0 then
                        ratio = cover.width / cover.height
                    end

                    draw_journal_cover(
                        cover,
                        cover_width,
                        math.floor(cover_width / ratio)
                    )

                    imgui.Spacing()
                end
            end

            imgui.TextColored(
                colors.gold,
                tostring(selected.name or '')
            )

            imgui.Spacing()
            draw_selected_status(selected.status or 'not_started')
            imgui.Spacing()

            if kind == 'Quest' then
                draw_metadata(selected)
                imgui.Spacing()
            end

            imgui.Separator()
            imgui.Spacing()

            imgui.TextColored(colors.text, 'Objectives')
            imgui.Spacing()

            draw_steps(
                steps,
                '##Journal' .. kind .. 'Steps',
                'No objectives available.'
            )

            imgui.Spacing()

            draw_details_button(
                kind == 'Mission'
                    and 'Show in Mission Log'
                    or 'Show in Quest Log',
                width,
                function()
                    if kind == 'Mission' then
                        M.SetMission(selected.id, selected.name, steps)
                    else
                        M.SetQuest(selected.id, selected.name, steps)
                    end
                end
            )
        else
            imgui.TextColored(
                colors.text_dim,
                'No ' .. kind:lower() .. ' selected.'
            )
        end

        imgui.EndChild()
    end

    imgui.PopStyleColor()
end

local function get_journal_context(is_mission_mode)
    if is_mission_mode then
        local areas = controller.GetMissionAreas()
        local names = controller.GetMissionAreaNames()
        local selection = controller.GetMissionSelection()
        local area = areas[selection.area_index]

        return areas, names, selection, area, 'Questline', names[area] or ''
    end

    local categories = controller.GetQuestCategories()
    local names = controller.GetQuestCategoryNames()
    local selection = controller.GetQuestSelection()
    local category = categories[selection.category_index]

    return categories, names, selection, category, 'Region', names[category] or ''
end

local function selector_popup_width(items, names)
    local max_width = 0

    for _, item in ipairs(items) do
        max_width = math.max(
            max_width,
            imgui.CalcTextSize(tostring(names[item] or item))
        )
    end

    return max_width + 58
end

local function draw_selector_popup(
    popup_id,
    items,
    names,
    selected_index,
    on_select
)
    imgui.SetNextWindowSize({
        selector_popup_width(items, names),
        0,
    })

    if not imgui.BeginPopup(popup_id) then
        return false
    end

    for i, item in ipairs(items) do
        if draw_selector_item(
            tostring(names[item] or item),
            i == selected_index
        ) then
            on_select(i)
            imgui.CloseCurrentPopup()
        end
    end

    imgui.EndPopup()
    return true
end

local function draw_journal_selector(is_mission_mode)
    local _, _, _, _, label, value =
        get_journal_context(is_mission_mode)

    imgui.PushStyleColor(ImGuiCol_ChildBg, transparent)

    if imgui.BeginChild(
        '##JournalSecondaryBar',
        { -1, ui_bar_height },
        true,
        ImGuiWindowFlags_NoScrollbar
        + ImGuiWindowFlags_NoScrollWithMouse
    ) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local w, h = imgui.GetWindowSize()

        draw_panel(draw, x, y, w, h, false)

        imgui.SetCursorPosY(5)
        imgui.TextColored(colors.gold, label)
        imgui.SameLine()
        imgui.SetCursorPosY(3)

        local button_width = imgui.GetContentRegionAvail()
        if imgui.Button(value, { button_width, ui_button_height }) then
            if is_mission_mode then
                journal_area_popup_open = true
                imgui.OpenPopup('##JournalAreaPopup')
            else
                journal_category_popup_open = true
                imgui.OpenPopup('##JournalCategoryPopup')
            end
        end

        local items, names, index

        if is_mission_mode then
            items = controller.GetMissionAreas()
            names = controller.GetMissionAreaNames()
            index = controller.GetMissionSelection().area_index
        else
            items = controller.GetQuestCategories()
            names = controller.GetQuestCategoryNames()
            index = controller.GetQuestSelection().category_index
        end

        local popup_id =
            is_mission_mode
            and '##JournalAreaPopup'
            or '##JournalCategoryPopup'

        local opened = draw_selector_popup(
            popup_id,
            items,
            names,
            index,
            function(i)
                if is_mission_mode then
                    controller.SetMissionSelection(i, 1)
                    journal_area_popup_open = false
                else
                    controller.SetQuestSelection(i, 1)
                    journal_category_popup_open = false
                end
            end
        )

        if is_mission_mode then
            journal_area_popup_open = opened
        else
            journal_category_popup_open = opened
        end

        imgui.EndChild()
    end

    imgui.PopStyleColor()
end

local function draw_journal_mode_selector(is_mission_mode)
    imgui.PushStyleColor(ImGuiCol_ChildBg, transparent)

    if imgui.BeginChild(
        '##JournalModeBar',
        { -1, ui_bar_height },
        true,
        ImGuiWindowFlags_NoScrollbar
        + ImGuiWindowFlags_NoScrollWithMouse
    ) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local w, h = imgui.GetWindowSize()

        draw_panel(draw, x, y, w, h, false)

        imgui.SetCursorPosY(5)
        imgui.TextColored(colors.gold, 'Category')
        imgui.SameLine()
        imgui.SetCursorPosY(3)

        local mode_name = is_mission_mode and 'Missions' or 'Quests'
        local button_width = imgui.GetContentRegionAvail()

        if imgui.Button(mode_name, { button_width, ui_button_height }) then
            journal_mode_popup_open = true
            imgui.OpenPopup('##JournalModePopup')
        end

        imgui.SetNextWindowSize({
            selector_popup_width(mode_items, mode_names),
            0,
        })

        if imgui.BeginPopup('##JournalModePopup') then
            journal_mode_popup_open = true

            if draw_selector_item('Missions', is_mission_mode) then
                controller.SetJournalMode(1)
                journal_mode_popup_open = false
                imgui.CloseCurrentPopup()
            end

            if draw_selector_item('Quests', not is_mission_mode) then
                controller.SetJournalMode(2)
                journal_mode_popup_open = false
                imgui.CloseCurrentPopup()
            end

            imgui.EndPopup()
        else
            journal_mode_popup_open = false
        end

        imgui.EndChild()
    end

    imgui.PopStyleColor()
end

local function draw_journal_header(is_mission_mode)
    local _, names, _, key = get_journal_context(is_mission_mode)

    imgui.PushStyleColor(ImGuiCol_ChildBg, transparent)

    if imgui.BeginChild(
        '##JournalHeader',
        { -1, ui_header_height },
        true,
        ImGuiWindowFlags_NoScrollbar
        + ImGuiWindowFlags_NoScrollWithMouse
    ) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local w, h = imgui.GetWindowSize()

        draw_panel(draw, x, y, w, h, true)

        imgui.SetCursorPosY(5)
        imgui.TextColored(
            colors.gold,
            is_mission_mode and 'MISSION JOURNAL' or 'QUEST JOURNAL'
        )

        imgui.SetCursorPosY(36)
        imgui.TextColored(colors.text, names[key] or '')

        imgui.SetCursorPosY(67)
        imgui.TextColored(
            colors.text_dim,
            is_mission_mode
                and 'Select a mission to view its objectives.'
                or 'Select a quest to view its objectives.'
        )

        imgui.EndChild()
    end

    imgui.PopStyleColor()
end

local function draw_journal_list(is_mission_mode, width)
    local items, selection
    local hide_label, getter, setter, callback
    local id, spacing

    if is_mission_mode then
        items = controller.GetMissionList()
        selection = controller.GetMissionSelection()
        hide_label = 'Hide complete missions'
        getter = controller.GetHideCompleteMissions
        setter = controller.SetHideCompleteMissions

        callback = function(index)
            controller.SetMissionSelection(selection.area_index, index)
            toggle_selected_log('Mission', items[index])
        end

        id = '##JournalMissionList'
        spacing = false
    else
        items = controller.GetQuestList()
        selection = controller.GetQuestSelection()
        hide_label = 'Hide complete quests'
        getter = controller.GetHideCompleteQuests
        setter = controller.SetHideCompleteQuests

        callback = function(index)
            controller.SetQuestSelection(selection.category_index, index)
            toggle_selected_log('Quest', items[index])
        end

        id = '##JournalQuestList'
        spacing = true
    end

    draw_selectable_status_list(
        id,
        width,
        items,
        is_mission_mode and selection.mission_index or selection.quest_index,
        hide_label,
        getter,
        setter,
        function(item)
            return tostring(item.name or '')
        end,
        callback,
        spacing
    )
end

local function draw_journal_mini()
    if not can_draw_ui() or not controller or not controller.GetJournalMiniState then
        return
    end

    local state = controller.GetJournalMiniState()
    if not state or not state.visible then
        return
    end

    local journal_state = controller.GetJournalWindowState()
    if journal_state and journal_state.visible then
        return
    end

    load_journal_mini_texture()

    if journal_mini_restore_window then
        if state.x ~= nil and state.y ~= nil then
            imgui.SetNextWindowPos({ state.x, state.y })
        end

        imgui.SetNextWindowSize({ 72, 72 })
        journal_mini_restore_window = false
    end

    push_theme()

    if imgui.Begin(
        'Journal Mini###JournalMini',
        { true },
        ImGuiWindowFlags_NoTitleBar
        + ImGuiWindowFlags_NoResize
        + ImGuiWindowFlags_NoScrollbar
        + ImGuiWindowFlags_NoScrollWithMouse
        + ImGuiWindowFlags_NoCollapse
    ) then
        local texture_id

        if journal_mini_texture ~= nil then
            texture_id = tonumber(
                ffi.cast('uint32_t', journal_mini_texture)
            )
        end

        imgui.SetCursorPos({ 6, 6 })

        local opened
        if texture_id ~= nil then
            opened = imgui.ImageButton(
                texture_id,
                { 60, 60 },
                { 0, 0 },
                { 1, 1 },
                -1,
                { 0, 0, 0, 0 },
                { 1, 1, 1, 1 }
            )
        else
            opened = imgui.Button('Open', { 60, 60 })
        end

        if opened then
            controller.SetJournalMini(false)
            controller.SetJournalVisible(true)
            journal_restore_window = true
        end

        local x, y = imgui.GetWindowPos()
        if x ~= state.x or y ~= state.y then
            controller.SetJournalMiniGeometry(x, y)
        end
    end

    imgui.End()
    pop_theme()
end

local function draw_journal()
    if not can_draw_ui() or not controller or not controller.GetJournalWindowState then
        return
    end

    local state = controller.GetJournalWindowState()
    if not state or not state.visible then
        return
    end

    if journal_restore_window then
        journal_restore_window = restore_window(state, journal_restore_window)
    end

    push_theme()

    local font_pushed = mission_font ~= nil
    if font_pushed then
        imgui.PushFont(mission_font)
    end

    local is_mission_mode = controller.GetJournalMode() == 1
    local open = { state.visible }
    local title = is_mission_mode and 'Mission Journal' or 'Quest Journal'

    if imgui.Begin(
        title .. '###JournalWindow',
        open,
        ImGuiWindowFlags_NoSavedSettings
        + ImGuiWindowFlags_NoScrollbar
        + ImGuiWindowFlags_NoScrollWithMouse
        + ImGuiWindowFlags_NoCollapse
    ) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local width, height = imgui.GetWindowSize()

        draw_panel(draw, x, y, width, height, true)

        draw_journal_mode_selector(is_mission_mode)
        imgui.Spacing()

        draw_journal_header(is_mission_mode)
        imgui.Spacing()

        draw_journal_selector(is_mission_mode)
        imgui.Spacing()

        local content_width = imgui.GetWindowWidth()
        local spacing = 10
        local details_width = math.floor(content_width * 0.32)
        local list_width = content_width - details_width - spacing

        draw_journal_list(is_mission_mode, list_width)
        imgui.SameLine(0, spacing)

        if is_mission_mode then
            local areas = controller.GetMissionAreas()
            local selection = controller.GetMissionSelection()

            draw_details_panel(
                'Mission',
                details_width,
                areas[selection.area_index]
            )
        else
            draw_details_panel('Quest', details_width)
        end

        local wx, wy = imgui.GetWindowPos()
        local ww, wh = imgui.GetWindowSize()

        if wx ~= state.x
            or wy ~= state.y
            or ww ~= state.width
            or wh ~= state.height then

            if controller.SetJournalGeometry then
                controller.SetJournalGeometry(wx, wy, ww, wh)
            end
        end
    end

    imgui.End()

    if not open[1] then
        controller.SetJournalVisible(false)
        controller.SetJournalMini(true)

        journal_mini_restore_window = true
        close_popups()
        reset_repeat()
    end

    if font_pushed then
        imgui.PopFont()
    end

    pop_theme()
end

local function controller_vertical(direction)
    if not controller then
        return
    end

    if journal_mode_popup_open then
        controller.SetJournalMode(
            controller.GetJournalMode() == 1 and 2 or 1
        )
        return
    end

    if journal_area_popup_open then
        if direction < 0 then
            controller.SelectPreviousMissionArea()
        else
            controller.SelectNextMissionArea()
        end
        return
    end

    if journal_category_popup_open then
        if direction < 0 then
            controller.SelectPreviousQuestCategory()
        else
            controller.SelectNextQuestCategory()
        end
        return
    end

    local state = controller.GetJournalWindowState()
    if not state or not state.visible then
        return
    end

    if controller.GetJournalMode() == 1 then
        if direction < 0 then
            controller.SelectPreviousMission()
        else
            controller.SelectNextMission()
        end
    else
        if direction < 0 then
            controller.SelectPreviousQuest()
        else
            controller.SelectNextQuest()
        end
    end
end

local function controller_horizontal(direction)
    if not controller then
        return
    end

    local state = controller.GetJournalWindowState()
    if not state or not state.visible then
        return
    end

    if journal_mode_popup_open
        or journal_area_popup_open
        or journal_category_popup_open then
        return
    end

    if controller.GetJournalMode() == 1 then
        if direction < 0 then
            controller.SelectPreviousMissionArea()
        else
            controller.SelectNextMissionArea()
        end
    else
        if direction < 0 then
            controller.SelectPreviousQuestCategory()
        else
            controller.SelectNextQuestCategory()
        end
    end
end

local function controller_move(button)
    if button == DPAD.UP then
        controller_vertical(-1)
    elseif button == DPAD.DOWN then
        controller_vertical(1)
    elseif button == DPAD.LEFT then
        controller_horizontal(-1)
    elseif button == DPAD.RIGHT then
        controller_horizontal(1)
    end
end

local function controller_confirm()
    if not controller then
        return
    end

    local state = controller.GetJournalWindowState()
    if not state or not state.visible then
        return
    end

    if journal_mode_popup_open
        or journal_area_popup_open
        or journal_category_popup_open then

        close_popups()
        imgui.CloseCurrentPopup()
        return
    end

    if controller.GetJournalMode() == 1 then
        local selected = controller.GetSelectedMission()

        if selected then
            M.SetMission(
                selected.id,
                selected.name,
                selected.steps or {}
            )
        end
    else
        local selected = controller.GetSelectedQuest()

        if selected then
            M.SetQuest(
                selected.id,
                selected.name,
                selected.steps or {}
            )
        end
    end
end

local function controller_cancel()
    if not controller then
        return
    end

    if journal_mode_popup_open
        or journal_area_popup_open
        or journal_category_popup_open then

        close_popups()
        imgui.CloseCurrentPopup()
        return
    end

    controller.SetJournalVisible(false)
    controller.SetJournalMini(true)

    journal_mini_restore_window = true
    journal_help_window = false
    reset_repeat()
end

local function update_controller_repeat()
    if controller_repeat_button == nil then
        return
    end

    if not controller then
        reset_repeat()
        return
    end

    local state = controller.GetJournalWindowState()
    if not state or not state.visible then
        controller_repeat_button = nil
        controller_repeat_time = 0
        return
    end

    local now = os.clock()
    if now < controller_repeat_time then
        return
    end

    controller_move(controller_repeat_button)
    controller_repeat_time = now + controller_repeat_interval
end

local function update_keyboard_repeat()
    if keyboard_repeat_key == nil then
        return
    end

    if not controller then
        keyboard_repeat_key = nil
        keyboard_repeat_time = 0
        return
    end

    local state = controller.GetJournalWindowState()
    if not state or not state.visible then
        keyboard_repeat_key = nil
        keyboard_repeat_time = 0
        return
    end

    local now = os.clock()
    if now < keyboard_repeat_time then
        return
    end

    if keyboard_repeat_key == KEY.UP then
        controller_vertical(-1)
    elseif keyboard_repeat_key == KEY.DOWN then
        controller_vertical(1)
    elseif keyboard_repeat_key == KEY.LEFT then
        controller_horizontal(-1)
    elseif keyboard_repeat_key == KEY.RIGHT then
        controller_horizontal(1)
    end

    keyboard_repeat_time = now + keyboard_repeat_interval
end

local function controller_enabled()
    if controller == nil then
        return journal_help_window
    end

    local state = controller.GetJournalWindowState()

    return (state ~= nil and state.visible) or journal_help_window
end

local function sync_journal_mini()
    if not controller
        or not controller.GetJournalWindowState
        or not controller.GetJournalMiniState
        or not controller.SetJournalMini then
        return
    end

    local state = controller.GetJournalWindowState()
    local mini = controller.GetJournalMiniState()

    if not state or not mini then
        return
    end

    local visible = not state.visible

    if mini.visible ~= visible then
        controller.SetJournalMini(visible)

        if visible then
            journal_mini_restore_window = true
        end
    end
end

ashita.events.register('xinput_button', 'journal_ui_xinput_button', function(e)
    if not controller_enabled() then
        return
    end

    if e.state == 0 then
        if controller_repeat_button == e.button then
            controller_repeat_button = nil
            controller_repeat_time = 0
        end
        return
    end

    if e.button == DPAD.UP
        or e.button == DPAD.DOWN
        or e.button == DPAD.LEFT
        or e.button == DPAD.RIGHT then

        controller_move(e.button)
        controller_repeat_button = e.button
        controller_repeat_time = os.clock() + controller_repeat_delay

        e.blocked = true
        return
    end

    if e.button == BUTTON_A then
        controller_confirm()
        e.blocked = true
        return
    end

    if e.button == BUTTON_B then
        controller_cancel()
        e.blocked = true
    end
end)

ashita.events.register('key_data', 'journal_ui_key_data', function(e)
    if not controller then
        return
    end

    local state = controller.GetJournalWindowState()

    if (not state or not state.visible) and not journal_help_window then
        return
    end

    if not e.down then
        if (
            e.key == KEY.UP
            or e.key == KEY.DOWN
            or e.key == KEY.LEFT
            or e.key == KEY.RIGHT
        ) and keyboard_repeat_key == e.key then
            keyboard_repeat_key = nil
            keyboard_repeat_time = 0
        end

        return
    end

    if e.key == 0x01 then
        controller.SetJournalVisible(false)
        journal_help_window = false
        close_popups()
        reset_repeat()

        e.blocked = true
        return
    end

    if not state or not state.visible then
        return
    end

    if e.key == KEY.UP
        or e.key == KEY.DOWN
        or e.key == KEY.LEFT
        or e.key == KEY.RIGHT then

        if keyboard_repeat_key ~= e.key then
            if e.key == KEY.UP then
                controller_vertical(-1)
            elseif e.key == KEY.DOWN then
                controller_vertical(1)
            elseif e.key == KEY.LEFT then
                controller_horizontal(-1)
            else
                controller_horizontal(1)
            end

            keyboard_repeat_key = e.key
            keyboard_repeat_time = os.clock() + keyboard_repeat_delay
        end

        e.blocked = true
        return
    end

    if e.key == 0x1C or e.key == 0x9C then
        controller_confirm()
        e.blocked = true
    end
end)

local function draw_journal_help()
    if not journal_help_window or not game_ui_visible then
        return
    end

    if journal_help_restore then
        imgui.SetNextWindowSize({
            journal_help_width,
            journal_help_height,
        })

        journal_help_restore = false
    end

    push_theme()

    local font_pushed = mission_font ~= nil
    if font_pushed then
        imgui.PushFont(mission_font)
    end

    local open = { journal_help_window }

    if imgui.Begin('Journal Help', open) then
        local draw = imgui.GetWindowDrawList()
        local x, y = imgui.GetWindowPos()
        local width, height = imgui.GetWindowSize()

        draw_panel(draw, x, y, width, height, true)

        imgui.TextColored(colors.gold, 'MISSION JOURNAL COMMANDS')
        imgui.Spacing()
        imgui.Separator()
        imgui.Spacing()

        local help = {
            { '/journal', 'Open the Mission Journal.' },
            { '/journal help', 'Show this command list in chat.' },
            { '/journal log', 'Toggle the Mission Log.' },
            { '/journal quest', 'Open the Quest Journal.' },
            { '/journal quest log', 'Toggle the Quest Log.' },
        }

        for i, entry in ipairs(help) do
            imgui.Text(entry[1])
            imgui.TextColored(colors.text_dim, entry[2])

            if i < #help then
                imgui.Spacing()
            end
        end
    end

    imgui.End()

    if not open[1] then
        journal_help_window = false
    end

    if font_pushed then
        imgui.PopFont()
    end

    pop_theme()
end

function M.Draw()
    update_game_ui_visibility()
    update_controller_repeat()
    update_keyboard_repeat()
    sync_journal_mini()

    if controller then
        mission_restore_window = draw_log_window(
            'Mission Log',
            controller.GetMissionLogState,
            M.GetMission,
            controller.SetMissionLogGeometry,
            controller.SetMissionLogVisible,
            mission_restore_window
        )

        quest_restore_window = draw_log_window(
            'Quest Log',
            controller.GetQuestLogState,
            M.GetQuest,
            controller.SetQuestLogGeometry,
            controller.SetQuestLogVisible,
            quest_restore_window
        )
    end

    draw_journal()
    draw_journal_mini()
    draw_journal_help()
end

ashita.events.register('load', 'journal_ui_load', function()
    initialize_game_visibility()
    load_journal_mini_texture()

    mission_font = imgui.AddFontFromFileTTF(
        addon.path .. 'assets/fonts/CarroisGothicSC-Regular.ttf',
        30
    )
end)

ashita.events.register('unload', 'journal_ui_unload', function()
    reset_repeat()
    list_last_selection = {}

    log_collapsed = {
        ['Mission Log'] = false,
        ['Quest Log'] = false,
    }

    log_expanded_height = {
        ['Mission Log'] = nil,
        ['Quest Log'] = nil,
    }

    for _, cover in pairs(journal_cover_cache) do
        if cover ~= nil and cover ~= false then
            cover.ptr = nil
        end
    end

    journal_mini_texture = nil
    journal_cover_cache = {}
    wrapped_cache = {}
    wrapped_cache_count = 0
    mission_font = nil

    pGameMenu = 0
    pEventSystem = 0
    pInterfaceHidden = 0

    game_visibility_initialized = false
    game_ui_visible = false
    visibility_cache_time = 0
end)

return M