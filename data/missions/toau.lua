--[[
    Treasures of Aht Urhgan - Mission Database
    ============================================

    Mission IDs and walkthrough IDs are intentionally kept
    as separate identifiers.

    M.MISSIONS:
        Numeric mission IDs consumed by the mission tracker.

    M.STEPS:
        Existing walkthrough IDs used by the Journal.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'Land of Sacred Serpents',
    [1] = 'Immortal Sentries',
    [2] = 'President Salaheem',
    [3] = 'Knight of Gold',
    [4] = 'Confessions of Royalty',
    [5] = 'Easterly Winds',
    [6] = 'Westerly Winds',
    [7] = 'A Mercenary Life',
    [8] = 'Undersea Scouting',
    [9] = 'Astral Waves',
    [10] = 'Imperial Schemes',
    [11] = 'Royal Puppeteer',
    [12] = 'Lost Kingdom',
    [13] = 'The Dolphin Crest',
    [14] = 'The Black Coffin',
    [15] = 'Ghosts of the Past',
    [16] = 'Guests of the Empire',
    [17] = 'Passing Glory',
    [18] = 'Sweets for the Soul',
    [19] = 'Teahouse Tumult',
    [20] = 'Finders Keepers',
    [21] = 'Shield of Diplomacy',
    [22] = 'Social Graces',
    [23] = 'Foiled Ambition',
    [24] = 'Playing the Part',
    [25] = 'Seal of the Serpent',
    [26] = 'Misplaced Nobility',
    [27] = 'Bastion of Knowledge',
    [28] = 'Puppet in Peril',
    [29] = 'Prevalence of Pirates',
    [30] = 'Shades of Vengeance',
    [31] = 'In the Blood',
    [32] = "Sentinel's Honor",
    [33] = 'Testing the Waters',
    [34] = 'Legacy of the Lost',
    [35] = 'Gaze of the Saboteur',
    [36] = 'Path of Blood',
    [37] = 'Stirrings of War',
    [38] = 'Allied Rumblings',
    [39] = 'Unraveling Reason',
    [40] = 'Light of Judgment',
    [41] = 'Path of Darkness',
    [42] = 'Fangs of the Lion',
    [43] = "Nashmeira's Plea",
    [44] = 'Ragnarok',
    [45] = 'Imperial Coronation',
    [46] = 'The Empress Crowned',
    [47] = 'Eternal Mercenary',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    [0] = {
        name = "Land of Sacred Serpents",
        steps = {
            "Obtain a Boarding Permit through The Road to Aht Urhgan or the Rhapsodies of Vana'diel progression.",
            "Travel to Aht Urhgan Whitegate.",
            "Enter Salaheem's Sentinels and speak with " .. ACTOR.NAJA.text .. " at (I-10).",
            "Receive the Supplies Package.",
        },
    },

    [1] = {
        name = "Immortal Sentries",
        steps = {
            "Speak with " .. ACTOR.NAJA.text .. " and receive the Supplies Package.",
            "Take the package to any Imperial staging point except Nyzul Isle.",
            "At the staging point, speak with the Immortal beside the Runic Portal and deliver the package.",
            "The available staging points are Azouph Isle, Dvucca Isle, Mamool Ja, Halvung, and Ilrusi Atoll.",
            "Use the Runic Portal to return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. " to complete the mission.",
        },
    },

    [2] = {
        name = "President Salaheem",
        steps = {
            "Leave Aht Urhgan Whitegate and return after completing Immortal Sentries.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene to gain access to Assault and the Mog Locker.",
        },
    },

    [3] = {
        name = "Knight of Gold",
        steps = {
            "Travel to Nashmau and speak with " .. ACTOR.CACAROON.text .. ".",
            "Give Cacaroon either 1,000 gil or one Imperial Bronze Piece.",
            "Travel to Walahra Temple and continue to the Shararat Teahouse.",
            "Complete the events there and continue through the resulting cutscenes.",
        },
    },

    [4] = {
        name = "Confessions of Royalty",
        steps = {
            "Travel to Chateau d'Oraguille in San d'Oria.",
            "Speak with " .. ACTOR.HALVER.text .. ".",
            "Deliver Raillefal's letter and complete the royal event.",
        },
    },

    [5] = {
        name = "Easterly Winds",
        steps = {
            "Travel to Aht Urhgan Whitegate and enter the Palace.",
            "Choose the affirmative response when asked for assistance.",
            "Receive 10 Imperial Bronze Pieces.",
        },
    },

    [6] = {
        name = "Westerly Winds",
        steps = {
            "Travel to the Shararat Teahouse.",
            "Complete the cutscene.",
            "Return to " .. ACTOR.NAJA.text .. ".",
        },
    },

    [7] = {
        name = "A Mercenary Life",
        steps = {
            "Leave Aht Urhgan Whitegate and return after the required transition.",
            "Speak with " .. ACTOR.NAJA.text .. " to continue the mercenary storyline.",
        },
    },

    [8] = {
        name = "Undersea Scouting",
        steps = {
            "If the Nyzul Isle staging point is not yet accessible, trade one Imperial Silver Piece to Kamih Mapokhalam in Bhaflau Thickets (F-6) to open the route.",
            "Travel to the Alzadaal Undersea Ruins through Bhaflau Thickets.",
            "Reach the Gilded Doors at (H-8) and trigger the cutscene.",
            "Proceed through the ruins and reach the Nyzul Isle staging point.",
            "If the staging point was just unlocked, return to Aht Urhgan Whitegate and use the Runic Portal to reach Nyzul Isle.",
            "Take the transport device at (H-9), then use the eastern transport device to enter the Alzadaal Undersea Ruins.",
            "Complete the scouting event upon entering the ruins.",
        },
    },

    [9] = {
        name = "Astral Waves",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
            "Wait until the next Vana'diel day before continuing.",
        },
    },

    [10] = {
        name = "Imperial Schemes",
        steps = {
            "After the required Vana'diel day has passed, leave the area and return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
            "Wait until the next Vana'diel day before continuing.",
        },
    },

    [11] = {
        name = "Royal Puppeteer",
        steps = {
            "After the required Vana'diel day has passed, return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Travel to Nashmau and speak with " .. ACTOR.PYOPYOROON.text .. ".",
            "Obtain Jody's Acid from Ameretats in Bhaflau Thickets or Wajaom Woodlands.",
            "Trade Jody's Acid to " .. ACTOR.PYOPYOROON.text .. ".",
            "Complete the resulting event and receive the Vial of Spectral Scent.",
        },
    },

    [12] = {
        name = "Lost Kingdom",
        steps = {
            "Travel to Caedarva Mire through the western exit of Nashmau.",
            "Reach " .. ACTOR.JAZARATT_HEADSTONE.text .. " at (E-10).",
            "Examine the headstone to begin the event.",
            "Examine the headstone again to face Jazaraat.",
            "Defeat Jazaraat.",
            "Examine the headstone a third time to receive the Ephramadian Gold Coin.",
        },
    },

    [13] = {
        name = "The Dolphin Crest",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
        },
    },

    [14] = {
        name = "The Black Coffin",
        steps = {
            "Travel through Caedarva Mire and enter Arrapago Reef.",
            "Approach " .. ACTOR.CUTTER.text .. " at (H-8).",
            "Complete the opening event.",
            "Enter The Black Coffin battlefield.",
            "Defeat the Ashu Talif Captain.",
            "Reduce the Ashu Talif Captain to 20% HP or below to complete the battle.",
        },
    },

    [15] = {
        name = "Ghosts of the Past",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
        },
    },

    [16] = {
        name = "Guests of the Empire",
        steps = {
            "Speak with " .. ACTOR.NAJA.text .. " and prepare for the palace visit.",
            "Equip an accepted chest piece for the ceremony.",
            "Equip gloves, leg armor, and boots as well.",
            "Return to " .. ACTOR.NAJA.text .. " after changing your equipment.",
            "Approach " .. ACTOR.IMPERIAL_GATE.text .. " to enter the palace event.",
        },
    },

    [17] = {
        name = "Passing Glory",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
        },
    },

    [18] = {
        name = "Sweets for the Soul",
        steps = {
            "Travel to the Shararat Teahouse.",
            "Complete the cutscene.",
        },
    },

    [19] = {
        name = "Teahouse Tumult",
        steps = {
            "Enter Aydeewa Subterrane from Wajaom Woodlands.",
            "Reach Map 5 and enter the room containing the large tree root.",
            "Examine " .. ACTOR.AYDEEWA_TARGET.text .. ".",
            "Complete the cutscene.",
        },
    },

    [20] = {
        name = "Finders Keepers",
        steps = {
            "Return to Salaheem's Sentinels.",
            "Speak with " .. ACTOR.SALAHEEMS_SENTINELS.text .. ".",
            "Complete the cutscene.",
        },
    },

    [21] = {
        name = "Shield of Diplomacy",
        steps = {
            "Travel to Mount Zhayolm.",
            "Reach the Navukgo Execution Chamber.",
            "Examine " .. ACTOR.DECORATIVE_BRONZE_GATE.text .. " to enter the battlefield.",
            "Defeat Khimaira 13.",
            "Keep Karababa alive throughout the battle.",
        },
    },

    [22] = {
        name = "Social Graces",
        steps = {
            "Return to Salaheem's Sentinels.",
            "Complete the cutscene.",
            "Wait until the required transition has passed before continuing.",
        },
    },

    [23] = {
        name = "Foiled Ambition",
        steps = {
            "Leave the area and return to Salaheem's Sentinels after the required transition.",
            "Complete the cutscene.",
            "Receive five Imperial Gold Pieces.",
            "Wait until the next Vana'diel day before continuing.",
        },
    },

    [24] = {
        name = "Playing the Part",
        steps = {
            "Return to " .. ACTOR.NAJA.text .. " after the required transition.",
            "Choose Aphmau when prompted.",
            "Complete the cutscene.",
        },
    },

    [25] = {
        name = "Seal of the Serpent",
        steps = {
            "Remove your weapon and shield.",
            "Examine " .. ACTOR.IMPERIAL_GATE.text .. ".",
            "Complete the cutscene.",
        },
    },

    [26] = {
        name = "Misplaced Nobility",
        steps = {
            "Enter Aydeewa Subterrane from Wajaom Woodlands.",
            "Reach Map 5 and enter the room containing the large tree root.",
            "Examine " .. ACTOR.AYDEEWA_TARGET.text .. ".",
            "Complete the cutscene.",
        },
    },

    [27] = {
        name = "Bastion of Knowledge",
        steps = {
            "Travel to Walahra Temple.",
            "Choose the second dialogue option.",
            "Complete the cutscene.",
        },
    },

    [28] = {
        name = "Puppet in Peril",
        steps = {
            "Travel to Jade Sepulcher through the Mamool Ja staging point.",
            "Examine " .. ACTOR.ORNAMENTAL_DOOR.text .. ".",
            "Examine the door again to enter the battlefield.",
            "Defeat Lancelord Gaheel Ja.",
        },
    },

    [29] = {
        name = "Prevalence of Pirates",
        steps = {
            "Enter Arrapago Reef.",
            "Complete the opening cutscene.",
            "Approach " .. ACTOR.CUTTER.text .. " at (H-8).",
            "Complete the following cutscene to obtain the Periqia Assault access.",
        },
    },

    [30] = {
        name = "Shades of Vengeance",
        steps = {
            "Travel to the Dvucca Isle staging point in Caedarva Mire.",
            "Enter Periqia through the Runic Seal beside the staging point.",
            "Defeat the K23H1-LAMIA gathered around (H-9).",
            "Continue defeating the Lamia until the battle ends.",
            "Complete the cutscene after winning the battle.",
            "If the battle is failed, return after one Vana'diel day and obtain another permit from Nahshib.",
        },
    },

    [31] = {
        name = "In the Blood",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
            "Wait until the required transition has passed before continuing.",
        },
    },

    [32] = {
        name = "Sentinel's Honor",
        steps = {
            "Return to the mission area after the required transition.",
            "Complete the cutscene.",
        },
    },

    [33] = {
        name = "Testing the Waters",
        steps = {
            "Travel to Arrapago Reef.",
            "Approach " .. ACTOR.CUTTER.text .. ".",
            "Complete the cutscene.",
        },
    },

    [34] = {
        name = "Legacy of the Lost",
        steps = {
            "Travel to Talacca Cove.",
            "Examine " .. ACTOR.ROCK_SLAB.text .. " to enter the battlefield.",
            "Defeat Gessho.",
            "Gessho withdraws after being reduced to approximately 10% HP.",
        },
    },

    [35] = {
        name = "Gaze of the Saboteur",
        steps = {
            "Travel to the Hazhalm Testing Grounds entrance in Caedarva Mire.",
            "Examine " .. ACTOR.ENTRY_GATE.text .. ".",
            "Complete the resulting cutscene.",
        },
    },

    [36] = {
        name = "Path of Blood",
        steps = {
            "Return to Salaheem's Sentinels.",
            "Complete the cutscene.",
            "Wait until the required transition has passed before continuing.",
        },
    },

    [37] = {
        name = "Stirrings of War",
        steps = {
            "After the required Vana'diel day has passed, travel to the Shararat Teahouse.",
            "Complete the cutscene.",
            "Receive the Allied Council Summons.",
        },
    },

    [38] = {
        name = "Allied Rumblings",
        steps = {
            "Travel to Aht Urhgan Whitegate.",
            "Enter the Palace and complete the royal cutscene.",
        },
    },

    [39] = {
        name = "Unraveling Reason",
        steps = {
            "After the required transition, travel to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.PHERIMOCIEL.text .. ".",
            "Complete the cutscene.",
        },
    },

    [40] = {
        name = "Light of Judgment",
        steps = {
            "Travel to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.RODIN_COMIDIN.text .. " outside the Automaton Workshop at (I-7).",
            "Prepare for the battle and travel to the Nyzul Isle staging point.",
        },
    },

    [41] = {
        name = "Path of Darkness",
        steps = {
            "At the Nyzul Isle staging point, examine " .. ACTOR.NYZUL_BLANK.text .. " at (J-9).",
            "Choose to proceed.",
            "Examine " .. ACTOR.RUNIC_SEAL.text .. " at (I-9) to enter the battlefield.",
            "Keep Naja alive throughout the battle.",
            "Defeat the enemies and rescue Luzaf.",
        },
    },

    [42] = {
        name = "Fangs of the Lion",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
        },
    },

    [43] = {
        name = "Nashmeira's Plea",
        steps = {
            "Travel to the Nyzul Isle staging point.",
            "Examine " .. ACTOR.NYZUL_BLANK.text .. " for the opening event.",
            "Examine " .. ACTOR.RUNIC_SEAL.text .. " to enter the battlefield.",
            "Defeat Raubahn three times as he re-raises twice.",
            "Continue through the remaining battles of the mission.",
            "Complete all three battles within the 45-minute limit.",
        },
    },

    [44] = {
        name = "Ragnarok",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Approach " .. ACTOR.NAJA.text .. ".",
            "Complete the cutscene.",
        },
    },

    [45] = {
        name = "Imperial Coronation",
        steps = {
            "Equip one of the accepted chest pieces for the imperial ceremony.",
            "Equip gloves, leg armor, and boots.",
            "Remove all main-hand and off-hand equipment.",
            "Examine " .. ACTOR.IMPERIAL_GATE.text .. " at (L-8).",
            "Complete the coronation cutscene.",
        },
    },

    [46] = {
        name = "The Empress Crowned",
        steps = {
            "Complete the coronation event.",
            "Choose one of the three rings: Balrahn's Ring, Jalzahn's Ring, or Ulthalam's Ring.",
            "Receive the Imperial Standard.",
        },
    },

    [47] = {
        name = "Eternal Mercenary",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Speak with " .. ACTOR.NAJA.text .. ".",
            "Complete the final cutscene.",
            "Receive the Glory Crown.",
        },
    },

}

return M