--[[
    San d'Oria - Mission Database
    ===============================

    Mission IDs and walkthrough IDs are intentionally kept
    as separate identifiers:

    - M.MISSIONS uses the official numeric mission IDs consumed
      by the mission tracker.
    - M.STEPS uses the original walkthrough IDs such as 1-1,
      1-2, 2-1, etc.

    Both databases are kept in this single file.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'Smash the Orcish Scouts',
    [1] = 'Bat Hunt',
    [2] = 'Save the Children',
    [3] = 'The Rescue Drill',
    [4] = 'The Davoi Report',
    [5] = 'Journey Abroad',
    [6] = 'Journey to Bastok',
    [7] = 'Journey to Windurst',
    [8] = 'Journey to Bastok',
    [9] = 'Journey to Windurst',
    [10] = 'Infiltrate Davoi',
    [11] = 'The Crystal Spring',
    [12] = 'Appointment to Jeuno',
    [13] = 'Magicite',
    [14] = 'The Ruins of Fei\'Yin',
    [15] = 'The Shadow Lord',
    [16] = 'Leaute\'s Last Wishes',
    [17] = 'Ranperre\'s Final Rest',
    [18] = 'Prestige of the Papsque',
    [19] = 'The Secret Weapon',
    [20] = 'Coming of Age',
    [21] = 'Lightbringer',
    [22] = 'Breaking Barriers',
    [23] = 'The Heir to the Light',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- RANK 1
    -- ========================================================

    ['1-1'] = {
        name = "Smash the Orcish Scouts",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Hunt Orcish Fodders in East or West Ronfaure for an Orcish Axe.",
            "Trade the Orcish Axe to any Gate Guard in San d'Oria.",
        },
    },

    ['1-2'] = {
        name = "Bat Hunt",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Enter King Ranperre's Tomb from East Ronfaure at (H-11) and hunt Ding Bats at night for Orcish Mail Scales.",
            "Examine " .. ACTOR.RANPERRE_TOMBSTONE_H10.text .. ".",
            "The Ding Bats and tombstone can be handled in either order.",
            "Trade the Orcish Mail Scales to any Gate Guard in San d'Oria.",
        },
    },

    ['1-3'] = {
        name = "Save the Children",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Northern San d'Oria and speak with " .. ACTOR.ARNAU.text .. " in the Cathedral.",
            "Travel through West Ronfaure and enter Ghelsba Outpost.",
            "Make your way to " .. ACTOR.GHELSBA_HUT_DOOR.text .. " in the large open area.",
            "Examine the Hut Door to enter the battlefield.",
            "Defeat Fodderchief Vokdek, Strongarm Zodvad, and Sureshot Snatgat.",
            "Examine " .. ACTOR.GHELSBA_HUT_DOOR.text .. " again after the battle.",
            "Return to any Gate Guard in San d'Oria.",
        },
    },

    -- ========================================================
    -- RANK 2
    -- ========================================================

    ['2-1'] = {
        name = "The Rescue Drill",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to La Theine Plateau and speak with " .. ACTOR.GALAIHAURAT.text .. ".",
            "Continue down the canyon and speak with " .. ACTOR.EQUESOBILLOT.text .. " at (F-6).",
            "Enter Ordelle's Caves and follow the left wall to " .. ACTOR.RUILLONT.text .. " by the pond.",
            "Return to La Theine Plateau. " .. ACTOR.DEAUFRAIN.text .. ", " .. ACTOR.EQUESOBILLOT.text .. ", and " .. ACTOR.GALAIHAURAT.text .. " are the three who may provide the Bronze Sword.",
            "Speak with them again until you find the one carrying the Bronze Sword, then trade it to " .. ACTOR.RUILLONT.text .. " in Ordelle's Caves.",
            "Return to La Theine Plateau and speak with " .. ACTOR.VICORPASSE.text .. " to receive the Rescue Training Certificate.",
            "Return to any Gate Guard in San d'Oria.",
        },
    },

    ['2-2'] = {
        name = "The Davoi Report",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to La Theine Plateau and enter Jugner Forest at (M-8), then follow the right side of Jugner Forest to Davoi at (G-12).",
            "Find " .. ACTOR.ZANTAVIAT.text .. " just inside Davoi.",
            "Walk south to the pond around (J-8).",
            "Examine " .. ACTOR.DAVOI_REPORT_QQ_J8.text .. " on the south bank to obtain the Lost Document.",
            "Return to " .. ACTOR.ZANTAVIAT.text .. " to receive the Temple Knights' Davoi Report.",
            "Return to any Gate Guard in San d'Oria.",
            "Enter the " .. ACTOR.PAPAL_CHAMBERS.text .. " on the top floor of the Cathedral in Northern San d'Oria.",
        },
    },

    ['2-3'] = {
        name = "Journey Abroad",
        steps = {
            "Speak with " .. ACTOR.HALVER.text .. " at Chateau d'Oraguille.",
            "Choose whether to visit Bastok or Windurst first. The two paths can be completed in either order.",

            "Bastok First:",
            "Travel to Bastok and speak with " .. ACTOR.SAVAE_E_PALEADE.text .. ", " .. ACTOR.PIUS.text .. ", and " .. ACTOR.GROHM.text .. ".",
            "In Palborough Mines, trade a Pickaxe to a Mythril Seam to obtain Mine Gravel.",
            "On the third floor, trade the Gravel to the Refiner, pull the lever, drop to the second floor, pull the second lever, and obtain Mythril Sand.",
            "Return to " .. ACTOR.SAVAE_E_PALEADE.text .. " and trade the Mythril Sand.",
            "Travel to Windurst Woods and speak with " .. ACTOR.MOURICES.text .. ".",
            "Enter Heavens Tower and speak with " .. ACTOR.KUPIPI.text .. " in the Clerical Chamber to receive the Dark Key.",
            "Travel through Giddeus to Balga's Dais and enter the Rank 2 Final Mission battlefield.",
            "Defeat Searcher and Black Dragon.",
            "Return to Windurst Woods and speak with " .. ACTOR.MOURICES.text .. " to receive the Kindred Report.",

            "Windurst First:",
            "Travel to Windurst Woods and speak with " .. ACTOR.MOURICES.text .. ".",
            "Enter Heavens Tower and speak with " .. ACTOR.KUPIPI.text .. " in the Clerical Chamber to receive the Shield Offering.",
            "Enter Giddeus from West Sarutabaruta at (F-8), then drop through the hole at (G-8) and head north to (G/H-7).",
            "Defeat Zhuu Buxu the Silent twice to obtain two Parana Shields.",
            "Travel west to (F-7) and speak with " .. ACTOR.UU_ZHOUMO.text .. " to offer the Shield Offering.",
            "Return to " .. ACTOR.MOURICES.text .. " and trade the two Parana Shields.",
            "Travel to Bastok and speak with " .. ACTOR.SAVAE_E_PALEADE.text .. ", " .. ACTOR.PIUS.text .. ", and " .. ACTOR.GROHM.text .. ".",
            "Travel through Palborough Mines, obtain Mine Gravel and turn it into Mythril Sand, then return to " .. ACTOR.SAVAE_E_PALEADE.text .. ".",
            "Enter Waughroon Shrine and complete the Rank 2 Final Mission against Seeker and Dark Dragon.",
            "Return to " .. ACTOR.SAVAE_E_PALEADE.text .. " to receive the Kindred Report.",

            "Return to " .. ACTOR.HALVER.text .. " at Chateau d'Oraguille after both national paths are complete.",
        },
    },

    -- ========================================================
    -- RANK 3
    -- ========================================================

    ['3-1'] = {
        name = "Infiltrate Davoi",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Chateau d'Oraguille and examine " .. ACTOR.PRINCES_ROYAL_ROOM.text .. ".",
            "Travel through Jugner Forest and enter Davoi from (G-12).",
            "Follow the right wall until the path turns north, then take the left path at the three-way intersection to reach the bridge.",
            "Wait on the bridge and speak with " .. ACTOR.QUEMARICOND.text .. " to receive the Royal Knights' Davoi Report.",
            "Return to Chateau d'Oraguille and speak with Prince Trion in " .. ACTOR.PRINCES_ROYAL_ROOM.text .. ".",
        },
    },

    ['3-2'] = {
        name = "The Crystal Spring",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Crystalwater Spring at (J-9) in Jugner Forest and obtain a Crystal Bass.",
            "Trade the Crystal Bass to any Gate Guard in San d'Oria.",
            "Enter Chateau d'Oraguille and speak with " .. ACTOR.CHALVATOT.text .. ".",
        },
    },

    ['3-3'] = {
        name = "Appointment to Jeuno",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Speak with " .. ACTOR.HALVER.text .. " at Chateau d'Oraguille.",
            "Examine the " .. ACTOR.GREAT_HALL.text .. " behind Halver.",
            "Travel to the San d'Orian Embassy in Ru'Lude Gardens and speak with " .. ACTOR.NELCABRIT.text .. ".",
            "Travel to Lower Delkfutt's Tower and enter the basement through the Cermet Door at (E-8) if you already have a Delkfutt's Key.",
            "If you do not have a Delkfutt's Key, climb the tower to the tenth floor. Use the teleports and stairways to reach Upper Delkfutt's Tower, then go to (H-7), defeat Mimas if necessary, and enter Porphyrion's room.",
            "Defeat Porphyrion and obtain a Delkfutt's Key.",
            "Use the elevator beside Porphyrion at (H-8) to descend, then take the long staircase down to the basement.",
            "In the basement, head east to the large room and use the Delkfutt's Key on the Cermet Door at (L-8).",
            "Return to the San d'Orian Embassy in Ru'Lude Gardens and examine the Embassy door to complete the mission.",
        },
    },

    -- ========================================================
    -- RANK 4
    -- ========================================================

    ['4-1'] = {
        name = "Magicite",
        steps = {
            "Speak with " .. ACTOR.NELCABRIT.text .. " and enter the " .. ACTOR.SAN_DORIAN_EMBASSY_DOOR.text .. " in Ru'Lude Gardens.",
            "Examine the " .. ACTOR.AUDIENCE_CHAMBER.text .. " to receive the Letter to Aldo.",
            "Enter Neptune's Spire in Lower Jeuno and speak with " .. ACTOR.ALDO.text .. " to receive the Silver Bell.",
            "If you still need the Yagudo Torch, speak with " .. ACTOR.PAYA_SABYA.text .. " at (I-8) in Upper Jeuno, then speak with " .. ACTOR.MUCKVIX.text .. " at (H-9) in Lower Jeuno.",
            "Speak with " .. ACTOR.SATTAL_MANSAL.text .. " at (J-8): trade a Quadav Charm for the Coruscant Rosary, then trade a Quadav Augury Shell for the Black Matinee Necklace.",
            "In Upper Jeuno, speak with " .. ACTOR.BAUDIN.text .. " at (G-8) and trade him Coeurl Meat for the Crest of Davoi.",
            "The prerequisite key items are shared between the three nations' Magicite missions, so only missing items need to be obtained.",

            "The three Magicite locations can be completed in any order.",
            "Davoi: travel to (G-7), avoid or defeat the Orcs, use Sneak if needed, and pass through the Wall of Dark Arts into Monastic Cavern to obtain Optistone.",
            "Castle Oztroja: follow the right wall to the Brass Door at (H-9), light the torch, continue south, turn right to the next Brass Door, and enter the Altar Room to obtain Orastone.",
            "Beadeaux: follow the left wall to (H-7), enter Qulun Dome, open the inner door, and obtain Aurastone.",

            "Return to the " .. ACTOR.AUDIENCE_CHAMBER.text .. " after obtaining all three Magicites.",
            "Return to " .. ACTOR.NELCABRIT.text .. " at the San d'Orian Embassy.",
        },
    },

    -- ========================================================
    -- RANK 5
    -- ========================================================

    ['5-1'] = {
        name = "The Ruins of Fei'Yin",
        steps = {
            "Travel to Chateau d'Oraguille.",
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria and accept the mission.",
            "Speak with " .. ACTOR.HALVER.text .. " to receive the New Fei'Yin Seal.",
            "Travel to Fei'Yin and enter " .. ACTOR.QU_BIA_ARENA.text .. ".",
            "Enter the Rank 5 battlefield and defeat Archlich Taber'quoan. Ancient Sorcerers and Ancient Warriors will also appear during the battle.",
            "Return to " .. ACTOR.HALVER.text .. ".",
        },
    },

    ['5-2'] = {
        name = "The Shadow Lord",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria to accept the mission.",
            "Speak with " .. ACTOR.HALVER.text .. " at Chateau d'Oraguille.",
            "Examine the " .. ACTOR.PRINCES_ROYAL_ROOM.text .. ".",
            "Travel to Castle Zvahl Keep and proceed to the " .. ACTOR.THRONE_ROOM.text .. ".",
            "Enter the Throne Room battlefield and defeat the Shadow Lord in both forms.",
            "Return to Chateau d'Oraguille and speak with " .. ACTOR.HALVER.text .. " to complete the mission.",
            "Examine the " .. ACTOR.GREAT_HALL.text .. ".",
            "Examine the " .. ACTOR.PRINCES_ROYAL_ROOM.text .. " again to unlock Trust: Trion.",
        },
    },

    -- ========================================================
    -- RANK 6
    -- ========================================================

    ['6-1'] = {
        name = "Leaute's Last Wishes",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Speak with " .. ACTOR.HALVER.text .. " at Chateau d'Oraguille.",
            "Enter the " .. ACTOR.GREAT_HALL.text .. " and receive the King's request for a Dreamrose.",
            "Speak with " .. ACTOR.HALVER.text .. " again.",
            "Travel to Western Altepa Desert and examine " .. ACTOR.DREAMROSE_G7.text .. " at (G-7) to face Sabotender Enamorado.",
            "Defeat Sabotender Enamorado.",
            "Examine " .. ACTOR.DREAMROSE_G7.text .. " again to receive the Dreamrose.",
            "Return to " .. ACTOR.HALVER.text .. ".",
            "Travel to " .. ACTOR.QUEEN_LEAUTE_GARDEN.text .. " at (F-8).",
            "Receive the Piece of Paper after completing the event at the Garden.",
        },
    },

    ['6-2'] = {
        name = "Ranperre's Final Rest",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Chateau d'Oraguille and speak with Prince Trion in " .. ACTOR.PRINCES_ROYAL_ROOM.text .. ".",
            "Travel to King Ranperre's Tomb and make your way to " .. ACTOR.HEAVY_STONE_DOOR.text .. ".",
            "Examine the Heavy Stone Door to face Corrupted Soffeil, Corrupted Yorgos, and Corrupted Ulbrig.",
            "Defeat all three Skeletons.",
            "Examine " .. ACTOR.HEAVY_STONE_DOOR.text .. " again and enter the chamber.",
            "Examine the tombstone inside to receive the Ancient San d'Orian Book.",
            "Return to any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Speak with the Gate Guard three times about the book; after the guard says it will take time to decipher, return later and speak with the guard again.",
            "Follow the Gate Guard's instructions and return to Prince Trion in " .. ACTOR.PRINCES_ROYAL_ROOM.text .. ".",
            "Return to " .. ACTOR.HEAVY_STONE_DOOR.text .. " in King Ranperre's Tomb and examine it again.",
            "Return to any Gate Guard in San d'Oria.",
        },
    },

    -- ========================================================
    -- RANK 7
    -- ========================================================

    ['7-1'] = {
        name = "Prestige of the Papsque",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Northern San d'Oria and enter the " .. ACTOR.PAPAL_CHAMBERS.text .. " on the third floor of the Cathedral.",
            "Travel to Chateau d'Oraguille and enter Bostaunieux Oubliette.",
            "Reach the Sewer Lid around (E-7/E-8) and speak with the attendant beside it to descend.",
            "Follow the right wall through the lower area and zone into West Ronfaure.",
            "Examine " .. ACTOR.WEST_RONFAURE_PAPSQUE_QQ_E8.text .. " to face Marauder Dvogzog.",
            "Defeat Marauder Dvogzog.",
            "Examine the same target again to receive the Ancient San d'Orian Tablet.",
            "Return to Northern San d'Oria and enter the " .. ACTOR.PAPAL_CHAMBERS.text .. ".",
        },
    },

    ['7-2'] = {
        name = "The Secret Weapon",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Chateau d'Oraguille and head toward (F-7).",
            "Return to any Gate Guard in San d'Oria to receive the mission.",
            "Travel through Ghelsba Outpost to Yughott Grotto and enter " .. ACTOR.HORLAIS_PEAK.text .. ".",
            "Enter the battlefield and defeat Darokbok of Clan Reaper, Derakbak of Clan Wolf, Jagidbod of Clan Reaper, Wolf Clan Warmachine, and Reaper Clan Warmachine.",
            "Receive the Crystal Dowser, then return to any Gate Guard in San d'Oria.",
        },
    },

    -- ========================================================
    -- RANK 8
    -- ========================================================

    ['8-1'] = {
        name = "Coming of Age",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Chateau d'Oraguille and speak with " .. ACTOR.HALVER.text .. ".",
            "Examine the two doors to the Princes' quarters if you want to hear their additional dialogue.",
            "Travel to Eastern Altepa Desert and enter Quicksand Caves at (H-10).",
            "Reach Map 2, drop through the hole at (E-11), and continue to " .. ACTOR.FOUNTAIN_OF_KINGS.text .. ".",
            "Examine " .. ACTOR.FOUNTAIN_OF_KINGS.text .. " to face Honor and Valor.",
            "Defeat Honor and Valor, then examine the Fountain again to receive the Drops of Amnio.",
            "Return to " .. ACTOR.HALVER.text .. ".",
            "Wait until after Japanese midnight, then zone into Northern San d'Oria.",
        },
    },

    ['8-2'] = {
        name = "Lightbringer",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Chateau d'Oraguille and examine the " .. ACTOR.GREAT_HALL.text .. ".",
            "Speak with " .. ACTOR.RAHAL.text .. " at (H-9) to receive the Crystal Dowser and instructions.",
            "Travel to Temple of Uggalepih and obtain a Prelate Key from the required Tonberries.",
            "Reach Map 2 and continue to the door at (I-10).",
            "If the Temple Guardian blocks the route, defeat it to open the way, then continue through the nearby passage.",
            "Pass through the door at (J-10).",
            "Examine " .. ACTOR.UGGALEPIH_LIGHTBRINGER_QQ_G10.text .. ", " .. ACTOR.UGGALEPIH_LIGHTBRINGER_QQ_H10_1.text .. ", and " .. ACTOR.UGGALEPIH_LIGHTBRINGER_QQ_I10.text .. " to collect the three Pieces of a Broken Key.",
            "After obtaining all three pieces, examine the second door at (H-10), then examine " .. ACTOR.UGGALEPIH_LIGHTBRINGER_QQ_H10_2.text .. ".",
            "Defeat Nio-Hum and Nio-A.",
            "Examine " .. ACTOR.UGGALEPIH_LIGHTBRINGER_QQ_H10_2.text .. " again.",
            "Return to Chateau d'Oraguille and examine the " .. ACTOR.GREAT_HALL.text .. ".",
        },
    },

    -- ========================================================
    -- RANK 9
    -- ========================================================

    ['9-1'] = {
        name = "Breaking Barriers",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Travel to Chateau d'Oraguille and examine the " .. ACTOR.GREAT_HALL.text .. ".",
            "The three objectives must be completed in order. Before entering Eldieme Necropolis alone, obtain a Magicked Astrolabe from Churano-Shurano in Windurst Waters (F-8) to open the required doors.",
            "First, travel to Cape Terrigan and reach the Valley of Sorrows entrance at (J-8). Cross to (I-8) and examine " .. ACTOR.VALLEY_OF_SORROWS_QQ_I8.text .. " to receive the Figure of Titan.",
            "Next, travel to Xarcabard and reach (H-7). Examine " .. ACTOR.XARCABARD_QQ_H7.text .. " near the clustered trees to receive the Figure of Garuda.",
            "Finally, enter the southern Eldieme Necropolis entrance from Batallia Downs at (I-10).",
            "Reach the southern room and drop through the center hole at (G-9), then follow the route through Maps 2 and 3 and exit back to Batallia Downs at (J-9).",
            "Reach " .. ACTOR.BATALLIA_BREAKING_BARRIERS_QQ_J11.text .. " near the Stone Monument and examine it to face Suparna and Suparna Fledgling.",
            "Defeat both, then examine the same target again to receive the Figure of Leviathan.",
            "Return to Chateau d'Oraguille and examine the " .. ACTOR.GREAT_HALL.text .. ".",
        },
    },

    ['9-2'] = {
        name = "The Heir to the Light",
        steps = {
            "Speak with any " .. ACTOR.GATE_GUARD.text .. " in San d'Oria.",
            "Zone into Northern San d'Oria for the Rites of Succession.",
            "Zone into Chateau d'Oraguille.",
            "Travel to Fei'Yin and continue to " .. ACTOR.QU_BIA_ARENA.text .. ".",
            "Enter The Heir to the Light battlefield. The first battle consists of Death Clan Destroyer, Yukvok of Clan Death, three Worgbut of Clan Death, three Rallbrog of Clan Death, and three Vangknok of Clan Death.",
            "Defeat the first group, then continue to the second battle with Prince Trion. Defeat Warlord Rojgnoj, Rojgnoj's Left Hand, and Rojgnoj's Right Hand.",
            "Zone into Northern San d'Oria.",
            "Return to Chateau d'Oraguille and examine the " .. ACTOR.GREAT_HALL.text .. ".",
            "Travel to King Ranperre's Tomb and examine " .. ACTOR.HEAVY_STONE_DOOR.text .. ".",
            "Return to Chateau d'Oraguille and speak with " .. ACTOR.HALVER.text .. ".",
            "Return to Northern San d'Oria and visit the Papal Chambers to learn what happened to Shamonde.",
            "Zone into Southern San d'Oria for the final epilogue.",
        },
    },

}

return M
