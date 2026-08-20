--[[
    Wings of the Goddess - Mission Database
    ==========================================

    M.MISSIONS:
        Official numeric mission IDs used by the mission tracker.

    M.STEPS:
        Walkthrough entries using the same mission IDs.

    The two tables must use the same identifiers so that each
    mission resolves to its corresponding walkthrough.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'Cavernous Maws',
    [1] = 'Back to the Beginning',
    [2] = 'Cait Sith',
    [3] = 'The Queen of the Dance',
    [4] = 'While the Cat Is Away',
    [5] = 'A Timeswept Butterfly',
    [6] = 'Purple, The New Black',
    [7] = 'In the Name of the Father',
    [8] = 'Dancers in Distress',
    [9] = 'Daughter of a Knight',
    [10] = 'A Spoonful of Sugar',
    [11] = 'Affairs of State',
    [12] = 'Borne by the Wind',
    [13] = 'A Nation on the Brink',
    [14] = 'Crossroads of Time',
    [15] = 'Sandswept Memories',
    [16] = 'Northland Exposure',
    [17] = 'Traitor in the Midst',
    [18] = 'Betrayal at Beaucedine',
    [19] = 'On Thin Ice',
    [20] = 'Proof of Valor',
    [21] = 'A Sanguinary Prelude',
    [22] = 'Dungeons and Dancers',
    [23] = 'Distorter of Time',
    [24] = 'The Will of the World',
    [25] = 'Fate in Haze',
    [26] = 'The Scent of Battle',
    [27] = 'Another World',
    [28] = 'A Hawk in Repose',
    [29] = 'The Battle of Xarcabard',
    [30] = 'Prelude to a Storm',
    [31] = 'Storm\'s Crescendo',
    [32] = 'Into the Beast\'s Maw',
    [33] = 'The Hunter Ensnared',
    [34] = 'Flight of the Lion',
    [35] = 'Fall of the Hawk',
    [36] = 'Darkness Descends',
    [37] = 'Adieu, Lilisette',
    [38] = 'By the Fading Light',
    [39] = 'Edge of Existence',
    [40] = 'Her Memories',
    [41] = 'Forget Me Not',
    [42] = 'Pillar of Hope',
    [43] = 'Glimmer of Life',
    [44] = 'Time Slips Away',
    [45] = 'When Wills Collide',
    [46] = 'Whispers of Dawn',
    [47] = 'A Dreamy Interlude',
    [48] = 'Cait in the Woods',
    [49] = 'Fork in the Road',
    [50] = 'Maiden of the Dusk',
    [51] = 'Where It All Began',
    [52] = 'A Token of Troth',
    [53] = 'Lest We Forget',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- MISSIONS 0-7
    -- ========================================================

    [0] = {
        name = "Cavernous Maws",
        steps = {
            "Examine one of the three Cavernous Maws:",
            "Batallia Downs: " .. ACTOR.MAW_BATALLIA.text .. ".",
            "Rolanberry Fields: " .. ACTOR.MAW_ROLANBERRY.text .. ".",
            "Sauromugue Champaign: " .. ACTOR.MAW_SAUROMUGUE.text .. ", beyond Banishing Gate #3 in Garlaige Citadel.",
            "The first Maw you examine carries you to the past.",
            "After arriving in the past, examine the other two Maws to open their passages between the past and present.",
            "If you leave the past before opening another Maw, return to the first Maw you used.",
        },
    },

    [1] = {
        name = "Back to the Beginning",
        steps = {
            "Travel to Garlaige Citadel [S], Crawlers' Nest [S], or The Eldieme Necropolis [S].",
            "Obtain a recommendation letter from the Allied fortress.",
            "Choose a nation and enlist with its Allied forces.",
            "San d'Oria: speak with " .. ACTOR.MAINCHELITE.text .. " in Southern San d'Oria [S] and complete Gifts of the Griffon and Claws of the Griffon.",
            "Bastok: speak with " .. ACTOR.ADELBRECHT.text .. " in Bastok Markets [S] and complete The Fighting Fourth, Better Part of Valor, and Fires of Discontent.",
            "Windurst: speak with " .. ACTOR.MIAH_RIYUH.text .. " in Windurst Waters [S] and complete Snake on the Plains, The Tigress Stirs, and The Tigress Strikes.",
            "Your allegiance does not prevent you from helping the other nations.",
            "After completing one of the three national storylines, examine a Cavernous Maw in the past near Jeuno.",
            "Present-day Maws surrounding Jeuno can also be used after they have been opened from the past.",
        },
    },

    [2] = {
        name = "Cait Sith",
        steps = {
            "San d'Oria: complete Boy and the Beast and Wrath of the Griffon.",
            "Bastok: complete Light in the Darkness and Burden of Suspicion.",
            "Windurst: complete Knot Quite There and A Manifest Problem.",
            "After completing one pair of national storylines, enter Southern San d'Oria [S] by walking from East Ronfaure [S].",
        },
    },

    [3] = {
        name = "The Queen of the Dance",
        steps = {
            "Travel to Southern San d'Oria [S].",
            "Examine " .. ACTOR.LION_SPRINGS_DOOR.text .. " at the Lion Springs Tavern.",
            "Speak with " .. ACTOR.TURLOUGH.text .. " in Upper Jeuno.",
            "Return to " .. ACTOR.LION_SPRINGS_DOOR.text .. " and examine the tavern door again.",
        },
    },

    [4] = {
        name = "While the Cat is Away",
        steps = {
            "Travel from Southern San d'Oria [S] to East Ronfaure [S].",
            "Enter East Ronfaure [S].",
        },
    },

    [5] = {
        name = "A Timeswept Butterfly",
        steps = {
            "Travel to Jugner Forest [S].",
            "Enter La Vaule [S] at (G-11).",
        },
    },

    [6] = {
        name = "Purple, The New Black",
        steps = {
            "Travel to La Vaule [S].",
            "Reach the Reinforced Gateway at (F-9).",
            "Examine the Reinforced Gateway.",
            "Examine it again to enter the battle against Galarhigg.",
            "Your buffs are removed upon entering the battlefield, so summon Trusts after entering.",
            "Defeat Galarhigg.",
        },
    },

    [7] = {
        name = "In the Name of the Father",
        steps = {
            "Bastok: complete Storm on the Horizon and Fire in the Hole.",
            "San d'Oria: complete Perils of the Griffon and In a Haze of Glory.",
            "Windurst: complete When One Man Is Not Enough and In a Haze of Glory.",
            "Return to Southern San d'Oria [S].",
            "Examine " .. ACTOR.LION_SPRINGS_DOOR.text .. " at the Lion Springs Tavern.",
        },
    },

    -- ========================================================
    -- MISSIONS 8-17
    -- ========================================================

    [8] = {
        name = "Dancers in Distress",
        steps = {
            "Travel to Southern San d'Oria [S] and speak with " .. ACTOR.RAUSTIGNE.text .. ".",
            "Travel to Jugner Forest [S] and examine " .. ACTOR.JUGNER_ELEGANT_FOOTPRINTS_I6.text .. ".",
            "Answer the questions presented there.",
            "Obtain the requested item: Gold Beastcoin, Lynx Meat, or Nyumomo Doll.",
            "Leave the area after obtaining the requested item.",
            "Return to " .. ACTOR.JUGNER_ELEGANT_FOOTPRINTS_I6.text .. " and trade the requested item.",
        },
    },

    [9] = {
        name = "Daughter of a Knight",
        steps = {
            "Travel to Southern San d'Oria [S] and speak with " .. ACTOR.AMAURA.text .. ".",
            "Obtain a Cernunnos Bulb from Wandering Saplings in Jugner Forest [S] if necessary.",
            "Trade the Cernunnos Bulb to Amaura.",
            "Travel to Jugner Forest [S] and trade the bulb to " .. ACTOR.JUGNER_HUMUS_RICH_EARTH_E6.text .. ".",
            "Travel to present-day Jugner Forest and examine " .. ACTOR.JUGNER_HUMUS_RICH_EARTH_E6.text .. " to spawn Cernunnos.",
            "Defeat Cernunnos.",
            "Examine " .. ACTOR.JUGNER_HUMUS_RICH_EARTH_E6.text .. " again to obtain Cernunnos Resin.",
            "After the required interval has passed, change zones and return to " .. ACTOR.AMAURA.text .. ".",
            "Speak with Amaura again to receive the Bottle of Treant Tonic.",
        },
    },

    [10] = {
        name = "A Spoonful of Sugar",
        steps = {
            "Travel to Southern San d'Oria [S].",
            "Speak with " .. ACTOR.RAUSTIGNE.text .. ".",
        },
    },

    [11] = {
        name = "Affairs of State",
        steps = {
            "Travel to Bastok Markets [S].",
            "Speak with Radford near the Metalworks.",
            "Travel to Windurst Waters [S] and speak with " .. ACTOR.VELDA_GALDA.text .. ".",
            "Receive Count Borel's letter.",
        },
    },

    [12] = {
        name = "Borne by the Wind",
        steps = {
            "Travel to Sauromugue Champaign [S].",
            "Examine " .. ACTOR.BULWARK_GATE.text .. ".",
            "Receive the Underpass Hatch Key.",
            "Choose the first dialogue option.",
        },
    },

    [13] = {
        name = "A Nation on the Brink",
        steps = {
            "Travel to Batallia Downs [S].",
            "Examine " .. ACTOR.UNDERPASS_HATCH.text .. ".",
            "Examine it again with the Underpass Hatch Key to enter Everbloom Hollow.",
            "Defeat the three beastmen waves.",
            "Defeat One-eyed Gwajboj.",
            "Receive the Jeunoan Flag.",
            "If there is no room for the flag, retrieve it from the reward object near the battlefield exit.",
        },
    },

    [14] = {
        name = "Crossroads of Time",
        steps = {
            "Complete the required national storyline for your nation.",
            "Enter Southern San d'Oria [S] by walking from East Ronfaure [S].",
        },
    },

    [15] = {
        name = "Sandswept Memories",
        steps = {
            "Travel to Southern San d'Oria [S].",
            "Examine " .. ACTOR.LION_SPRINGS_DOOR.text .. " at the Lion Springs Tavern.",
        },
    },

    [16] = {
        name = "Northland Exposure",
        steps = {
            "Enter Beaucedine Glacier [S].",
            "A Campaign Arbiter provides a convenient route to the area.",
        },
    },

    [17] = {
        name = "Traitor in the Midst",
        steps = {
            "Travel to Beaucedine Glacier [S].",
            "Visit the five northernmost Pso'Xja towers and examine their Regal Pawprints.",
            "Complete the Cait Sith minigame at each tower.",
            "Cait Sith Ceithir: use the tower around (G-9).",
            "Cait Sith Aon: use the tower around (H-8).",
            "Cait Sith Tri: use the tower around (F-7).",
            "Complete the remaining two tower minigames in the required sequence.",
            "After all five Shadow Bugs have been planted, examine " .. ACTOR.BEAUCEDINE_REGAL_PAWPRINTS_H10.text .. " near the broken tree.",
        },
    },

    -- ========================================================
    -- MISSIONS 18-27
    -- ========================================================

    [18] = {
        name = "Betrayal at Beaucedine",
        steps = {
            "Examine " .. ACTOR.BEAUCEDINE_REGAL_PAWPRINTS_H9.text .. ".",
            "Examine it again to spawn Count Halphas and four Dark Demons.",
            "Defeat Count Halphas.",
            "Examine " .. ACTOR.BEAUCEDINE_REGAL_PAWPRINTS_H9.text .. " again.",
        },
    },

    [19] = {
        name = "On Thin Ice",
        steps = {
            "Travel to Southern San d'Oria [S].",
            "Speak with " .. ACTOR.RAUSTIGNE.text .. ".",
        },
    },

    [20] = {
        name = "Proof of Valor",
        steps = {
            "Collect the required signatures from NPCs throughout Southern San d'Oria [S].",
            "Complete the question-and-answer requirements at the appropriate NPCs.",
            "Return to " .. ACTOR.RAUSTIGNE.text .. " with all required signatures.",
        },
    },

    [21] = {
        name = "A Sanguinary Prelude",
        steps = {
            "Enter Beaucedine Glacier [S].",
        },
    },

    [22] = {
        name = "Dungeons and Dancers",
        steps = {
            "Travel to Beaucedine Glacier [S] and examine " .. ACTOR.BEAUCEDINE_REGAL_PAWPRINTS_G9.text .. ".",
            "Examine the Regal Pawprints again to enter the Everbloom Hollow battlefield.",
            "The battlefield has a 30-minute time limit.",
            "Proceed northwest while keeping to the right-hand wall.",
            "Use a Ratstail Explosive on " .. ACTOR.DUNGEONS_DANCERS_EXPLOSIVE_WALL_HI9.text .. ".",
            "Use another Ratstail Explosive on " .. ACTOR.DUNGEONS_DANCERS_EXPLOSIVE_WALL_H8.text .. ".",
            "Defeat the Goblin Reaver.",
            "Examine " .. ACTOR.DUNGEONS_DANCERS_REAVER_MARK.text .. " to obtain Ratstail Explosives.",
            "Repeat the examination as needed, up to three explosives in your inventory.",
            "Use a Ratstail Explosive on " .. ACTOR.DUNGEONS_DANCERS_EXPLOSIVE_WALL_I9.text .. ".",
            "Examine " .. ACTOR.DUNGEONS_DANCERS_DEAD_END_J7.text .. ".",
            "Examine it again and place the jar of Firesand.",
            "Return to " .. ACTOR.DUNGEONS_DANCERS_GREEN_SWITCH_I7.text .. " and activate the switch.",
            "Return to " .. ACTOR.DUNGEONS_DANCERS_DEAD_END_J7.text .. " and pass through the opened route.",
            "Use a Ratstail Explosive on " .. ACTOR.DUNGEONS_DANCERS_EXPLOSIVE_WALL_G89.text .. ".",
            "Travel east and use another Ratstail Explosive on " .. ACTOR.DUNGEONS_DANCERS_EXPLOSIVE_WALL_I9_MAP2.text .. ".",
            "Examine " .. ACTOR.DUNGEONS_DANCERS_EXIT_QQ.text .. " to leave the battlefield.",
        },
    },

    [23] = {
        name = "Distorter of Time",
        steps = {
            "Travel north from the Beaucedine Glacier [S] Campaign Arbiter.",
            "Enter the hole in the ground on the southeast side of the area.",
            "Examine " .. ACTOR.BEAUCEDINE_REGAL_PAWPRINTS_H7.text .. " to warp to Ruhotz Silvermines.",
            "Defeat Cait Sith Ceithir while keeping Lilisette alive.",
            "After a failed attempt, obtain another Umbra Bug from the Regal Pawprints near the broken tree after the required interval.",
        },
    },

    [24] = {
        name = "The Will of the World",
        steps = {
            "Travel to Southern San d'Oria [S].",
            "Speak with " .. ACTOR.RAUSTIGNE.text .. ".",
        },
    },

    [25] = {
        name = "Fate in Haze",
        steps = {
            "Complete the required national storyline for your nation.",
            "Travel to Southern San d'Oria [S].",
            "Examine " .. ACTOR.LION_SPRINGS_DOOR.text .. " at the Lion Springs Tavern.",
        },
    },

    [26] = {
        name = "The Scent of Battle",
        steps = {
            "Travel to Sauromugue Champaign [S].",
            "Examine " .. ACTOR.BULWARK_GATE.text .. ".",
        },
    },

    [27] = {
        name = "Another World",
        steps = {
            "Enter Southern San d'Oria [S] from East Ronfaure [S].",
            "Travel to Chateau d'Oraguille and speak with " .. ACTOR.HALVER.text .. ".",
            "If Halver directs you to Rahal, follow the requested storyline before returning.",
        },
    },

    -- ========================================================
    -- MISSIONS 28-37
    -- ========================================================

    [28] = {
        name = "A Hawk in Repose",
        steps = {
            "Travel to Batallia Downs.",
            "Trade a Lilac to " .. ACTOR.WEATHERED_GRAVESTONE.text .. ".",
        },
    },

    [29] = {
        name = "The Battle of Xarcabard",
        steps = {
            "Enter Xarcabard [S].",
            "Proceed to " .. ACTOR.RALLY_RED.text .. ".",
        },
    },

    [30] = {
        name = "Prelude to a Storm",
        steps = {
            "Proceed to " .. ACTOR.RALLY_GREEN.text .. ".",
            "Examine " .. ACTOR.SPELL_WORKED_SNOW.text .. ".",
            "Speak with Pesoso inside to begin the three-wave battle.",
            "Defeat all three waves.",
            "Return to Pesoso.",
        },
    },

    [31] = {
        name = "Storm's Crescendo",
        steps = {
            "Proceed to " .. ACTOR.RALLY_BLUE.text .. ".",
            "Speak with Antje at " .. ACTOR.EXCAVATED_SNOW.text .. ".",
            "Reach all 24 Republic Operatives while maintaining Flee.",
            "Allow each operative to detonate its charge.",
            "After all 24 charges have detonated, report to Captain Antje.",
            "Return to " .. ACTOR.RALLY_RED.text .. ".",
        },
    },

    [32] = {
        name = "Into the Beast's Maw",
        steps = {
            "Proceed from " .. ACTOR.RALLY_RED.text .. " and enter Castle Zvahl Baileys [S].",
            "Examine " .. ACTOR.PECULIAR_GLINT.text .. ".",
            "Examine it again to enter the battlefield against Count Bifrons and four Orcs.",
            "Defeat Count Bifrons.",
        },
    },

    [33] = {
        name = "The Hunter Ensnared",
        steps = {
            "Proceed to " .. ACTOR.RALLY_RED.text .. ".",
            "Examine the Rally Point.",
        },
    },

    [34] = {
        name = "Flight of the Lion",
        steps = {
            "Travel to Sauromugue Champaign [S].",
            "Examine " .. ACTOR.BULWARK_GATE.text .. ".",
        },
    },

    [35] = {
        name = "Fall of the Hawk",
        steps = {
            "Enter Castle Zvahl Baileys [S].",
        },
    },

    [36] = {
        name = "Darkness Descends",
        steps = {
            "Travel through Castle Zvahl Baileys [S] and Castle Zvahl Keep [S].",
            "Enter Throne Room [S].",
            "Examine the Throne Room door to enter the battlefield against Aquila and Haudrale.",
            "Lilisette joins the battle after approximately three minutes.",
            "Defeat Aquila and Haudrale while keeping Lilisette alive.",
        },
    },

    [37] = {
        name = "Adieu, Lilisette",
        steps = {
            "Complete the required national objectives for your nation.",
            "Travel to Southern San d'Oria [S].",
            "Examine " .. ACTOR.LION_SPRINGS_DOOR.text .. " at the Lion Springs Tavern.",
        },
    },

    -- ========================================================
    -- MISSIONS 38-47
    -- ========================================================

    [38] = {
        name = "By the Fading Light",
        steps = {
            "Proceed to " .. ACTOR.RALLY_RED.text .. ".",
        },
    },

    [39] = {
        name = "Edge of Existence",
        steps = {
            "Examine one of the Cavernous Maws:",
            "Batallia Downs: " .. ACTOR.MAW_BATALLIA.text .. ".",
            "Rolanberry Fields: " .. ACTOR.MAW_ROLANBERRY.text .. ".",
            "Sauromugue Champaign: " .. ACTOR.MAW_SAUROMUGUE.text .. ".",
            "Use the appropriate Maw to continue.",
        },
    },

    [40] = {
        name = "Her Memories",
        steps = {
            "Complete Her Memories: Homecoming Queen to obtain the first Large Memory Fragment.",
            "Complete Her Memories: Of Malign Maladies to obtain the second Large Memory Fragment.",
            "Complete Her Memories: Operation Cupid to obtain the third Large Memory Fragment.",
            "Complete the required national storyline to obtain the fourth Large Memory Fragment.",
            "Return to Cait Sith after obtaining all four Large Memory Fragments.",
        },
    },

    [41] = {
        name = "Forget Me Not",
        steps = {
            "Examine one of the Cavernous Maws:",
            "Batallia Downs: " .. ACTOR.MAW_BATALLIA.text .. ".",
            "Rolanberry Fields: " .. ACTOR.MAW_ROLANBERRY.text .. ".",
            "Sauromugue Champaign: " .. ACTOR.MAW_SAUROMUGUE.text .. ".",
            "Use the appropriate Maw to continue.",
        },
    },

    [42] = {
        name = "Pillar of Hope",
        steps = {
            "Unequip all weapons and your shield.",
            "Examine " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. ".",
        },
    },

    [43] = {
        name = "Glimmer of Life",
        steps = {
            "After the required time has passed, change zones.",
            "Return to " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. ".",
            "Examine the Veridical Conflux again.",
            "A Punch Bug can be obtained while waiting.",
        },
    },

    [44] = {
        name = "Time Slips Away",
        steps = {
            "Obtain a Punch Bug from Lou Carcolhs, Ancient Quadavs, Vajra Quadavs, or Gold Quadavs in Pashhow Marshlands [S] or Beadeaux [S].",
            "Trade the Punch Bug to " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. " in Grauberg [S].",
            "Receive the Bottled Punch Bug.",
        },
    },

    [45] = {
        name = "When Wills Collide",
        steps = {
            "Examine " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. " to enter the Walk of Echoes.",
            "Examine " .. ACTOR.WALK_ORNATE_DOOR.text .. " north of the Veridical Conflux.",
            "Examine the Ornate Door again to enter the battlefield.",
            "Defeat the four Spitewardens.",
            "The Bottled Punch Bug is consumed upon entry.",
        },
    },

    [46] = {
        name = "Whispers of Dawn",
        steps = {
            "Unequip all weapons and your shield.",
            "Examine " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. ".",
            "After the required time has passed, change zones before examining the Veridical Conflux again.",
        },
    },

    [47] = {
        name = "A Dreamy Interlude",
        steps = {
            "After the required time has passed, change zones.",
            "Return to " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. ".",
            "Examine the Veridical Conflux again.",
        },
    },

    -- ========================================================
    -- MISSIONS 48-53
    -- ========================================================

    [48] = {
        name = "Cait in the Woods",
        steps = {
            "Travel to East Ronfaure [S].",
            "Examine " .. ACTOR.BLACK_TARGET_EAST_RONFAURE.text .. " to obtain the Ronfaure dawndrop.",
        },
    },

    [49] = {
        name = "Fork in the Road",
        steps = {
            "The Ronfaure dawndrop is obtained automatically.",
            "Collect the remaining dawndrops:",
            ACTOR.JUGNER_DAWNDROP.text,
            ACTOR.LA_VAULE_DAWNDROP.text,
            ACTOR.SAN_DORIA_DAWNDROP.text,
            ACTOR.BEAUCEDINE_DAWNDROP.text,
            ACTOR.XARCABARD_DAWNDROP.text,
            ACTOR.THRONE_ROOM_DAWNDROP.text,
            ACTOR.WALK_DAWNDROP.text,
            "After all eight dawndrops have been obtained, they combine into the Primal glow.",
        },
    },

    [50] = {
        name = "Maiden of the Dusk",
        steps = {
            "Examine " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. " to enter the Walk of Echoes.",
            "Examine " .. ACTOR.WALK_ORNATE_DOOR.text .. " north of the Veridical Conflux.",
            "Examine the Ornate Door again to enter the battlefield.",
            "Defeat Lilith in her first form.",
            "Defeat Lilith Ascendant in her second form.",
        },
    },

    [51] = {
        name = "Where It All Began",
        steps = {
            "Travel to Southern San d'Oria [S].",
            "Examine " .. ACTOR.LION_SPRINGS_DOOR.text .. " to receive the Wedding Invitation key item.",
        },
    },

    [52] = {
        name = "A Token of Troth",
        steps = {
            "Unequip your weapons and shield.",
            "Travel to Sauromugue Champaign [S].",
            "Examine " .. ACTOR.BULWARK_GATE.text .. ".",
            "Examine the Bulwark Gate again.",
        },
    },

    [53] = {
        name = "Lest We Forget",
        steps = {
            "Examine " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. ".",
            "Receive the mission rewards.",
        },
    },

}

return M