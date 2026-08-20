addon.name    = 'Journal'
addon.author  = 'AndreYMods'
addon.version = 'alpha'
addon.desc    = 'Journal for FFXI'

--[[
Journal
Copyright (c) 2026 AndreYMods

Credits:

1. Mission
   Original author: Lexia

   Used as a reference for the organization of mission entries,
   mission-step structure, and existing mission data.

   Original authorship of the referenced project remains with its
   original author.

2. XiQlog
   Original author: Lexia

   Used as a reference for quest logging, quest organization,
   regional categorization, and presentation concepts.

   Original authorship of the referenced project remains with its
   original author.

3. Chronicle
   Author: Jintawk

   Repository:
   https://github.com/jintawk/ffxi-chronicle

   Chronicle was used as a reference for mission and quest tracking,
   progression-state handling, tracker architecture, data organization,
   and related implementation concepts.

5. BG-Wiki
   Used as a factual source for Final Fantasy XI gameplay information,
   including missions, quests, progression, requirements, NPCs,
   items, locations, coordinates, battlefields, objectives, and
   related data.

   BG-Wiki is a source of gameplay information and is not an author
   of Journal.

6. AI ASSISTANCE
  AI tools were used during development as an assistance tool for code
  review, debugging, refactoring, troubleshooting, research, and
  development guidance.

  Final implementation, integration, testing, and project decisions
  were made by myself.
]]--

require('common')

local ui = require('ui')
local logic = require('logic')

--------------------------------- INITIALIZATION

if logic.Initialize ~= nil then
    logic.Initialize()
end

if ui.SetController ~= nil then
    ui.SetController(logic)
end

---------------------------------- COMMANDS

ashita.events.register('command', 'journal_command', function(e)
    if logic.HandleCommand ~= nil then
        logic.HandleCommand(e)
    end
end)

ashita.events.register('d3d_present', 'journal_present', function()
    if logic.Update ~= nil then
        logic.Update()
    end

    ui.Draw()
end)

ashita.events.register('load', 'journal_load', function()
    if logic.Load ~= nil then
        logic.Load()
    end
end)

ashita.events.register('unload', 'journal_unload', function()
    if logic.Unload ~= nil then
        logic.Unload()
    end
end)

return true