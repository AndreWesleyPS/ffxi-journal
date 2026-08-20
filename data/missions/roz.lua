--[[
    Rise of the Zilart - Mission Database
    ======================================

    Mission IDs and walkthrough IDs are intentionally kept
    as separate identifiers:

    - M.MISSIONS uses the official numeric mission IDs consumed
      by the mission tracker.
    - M.STEPS uses the original walkthrough IDs.

    Both databases are kept in this single file.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'The New Frontier',
    [2] = 'The Outlands',
    [4] = 'Welcome t\'Norg',
    [6] = 'Kazham\'s Chieftainess',
    [8] = 'The Temple of Uggalepih',
    [10] = 'Headstone Pilgrimage',
    [12] = 'Through the Quicksand Caves',
    [14] = 'The Chamber of Oracles',
    [16] = 'Return to Delkfutt\'s Tower',
    [18] = 'Ro\'Maeve',
    [20] = 'The Temple of Desolation',
    [22] = 'The Hall of the Gods',
    [23] = 'The Mithra and the Crystal',
    [24] = 'The Gate of the Gods',
    [26] = 'Ark Angels',
    [27] = 'The Sealed Shrine',
    [28] = 'The Celestial Nexus',
    [30] = 'Awakening',
    [31] = 'The Last Verse',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- CHAPTER 1
    -- ========================================================

    ['0'] = {
        name = "The New Frontier",
        steps = {
            "Reach Rank 6 in your home nation.",
            "Enter Norg.",
        },
    },

    ['2'] = {
        name = "The Outlands",
        steps = {
            "Continue to Norg after reaching Rank 6 in your home nation.",
            "Enter " .. ACTOR.NORG_OAKEN_DOOR_L8.text .. " in Norg.",
        },
    },

    ['4'] = {
        name = "Welcome t'Norg",
        steps = {
            "Travel to Norg.",
            "Enter " .. ACTOR.NORG_OAKEN_DOOR_L8.text .. ".",
        },
    },

    ['6'] = {
        name = "Kazham's Chieftainness",
        steps = {
            "Travel to Kazham.",
            "Speak with " .. ACTOR.JAKOH.text .. " at (J-9) to receive the Sacrificial Chamber key.",
        },
    },

    ['8'] = {
        name = "The Temple of Uggalepih",
        steps = {
            "Travel to the Temple of Uggalepih and make your way to the Den of Rancor.",
            "Use the Den of Rancor Home Point or Unity Warp if available. Otherwise, enter through the Temple of Uggalepih and use the Paintbrush of Souls route.",
            "Obtain an Unlit Lantern unless another player can open the Rancor door for you.",
            "Trade the Unlit Lantern to the Altar of Rancor for a Rancor Flame, then use it to light the four lanterns outside the Sacrificial Chamber. Repeat as needed.",
            "Enter the Sacrificial Chamber.",
            "Enter the battlefield and defeat Grav'iton, Molyb'iton, and Tungs'iton.",
        },
    },

    ['10'] = {
        name = "Headstone Pilgrimage",
        steps = {
            "Examine the seven required Cermet Headstones in any order.",

            "Examine " .. ACTOR.HEADSTONE_W_ALTEPA.text .. " to obtain the Earth fragment.",
            "Examine " .. ACTOR.HEADSTONE_LA_THEINE.text .. " to obtain the Water fragment.",
            "Examine " .. ACTOR.CLOISTER_OF_FROST.text .. " to obtain the Ice fragment.",

            "Examine " .. ACTOR.HEADSTONE_YUHTUNGA.text .. ", defeat Carthi and Tipha, then examine it again to obtain the Fire fragment.",
            "Examine " .. ACTOR.HEADSTONE_BEHEMOTH.text .. ", defeat Legendary Weapon and Ancient Weapon, then examine it again to obtain the Lightning fragment.",
            "Examine " .. ACTOR.HEADSTONE_CAPE_TERRIGAN.text .. ", defeat Axesarion the Wanderer, then examine it again to obtain the Wind fragment.",
            "Examine " .. ACTOR.HEADSTONE_ZITAH.text .. ", defeat Doomed Pilgrims, then examine it again to obtain the Light fragment.",
        },
    },

    ['12'] = {
        name = "Through the Quicksand Caves",
        steps = {
            "Obtain the Loadstone from the Open Sesame quest if entering the weight doors solo.",
            "Enter Quicksand Caves from Western Altepa Desert through the southern entrance around (C/D-11).",
            "Reach " .. ACTOR.WEIGHTED_DOOR_I9.text .. " at (I-9) and use the weight pad to pass through.",
            "Proceed west to " .. ACTOR.WEIGHTED_DOOR_H7.text .. " at (H-7) and use the second weight pad to pass through.",
            "Drop through the hole in the next room and continue to the Chamber of Oracles.",
            "Enter " .. ACTOR.CHAMBER_OF_ORACLES.text .. ".",
            "Enter the battlefield and defeat Centurio V-III, Triarius V-VIII, and Princeps V-XI.",
        },
    },

    ['14'] = {
        name = "The Chamber of Oracles",
        steps = {
            "Examine all eight sections of " .. ACTOR.CHAMBER_OF_ORACLES.text .. " to place the eight fragments.",
        },
    },

    ['16'] = {
        name = "Return to Delkfutt's Tower",
        steps = {
            "Zone into Lower Delkfutt's Tower from Qufim Island.",
            "If you have a Delkfutt's Key, go to (E-8), pass through the Cermet Door, and continue to the next Cermet Door at (J-8).",
            "Proceed to (H-8) and examine the ??? in the spiral staircase to reach the 10th floor.",
            "If you do not have a Delkfutt's Key, climb the tower normally until you reach the 10th floor.",
            "From the 10th floor, go to (F-8) and continue through Upper Delkfutt's Tower to the 11th floor.",
            "Proceed to (J-6) to reach the 12th floor, then head to (F-10) and use the teleporter to enter " .. ACTOR.STELLAR_FULCRUM.text .. ".",
            "Walk forward and examine " .. ACTOR.QEVLOVE_GATE.text .. " to enter the battlefield.",
            "Defeat Kam'lanaut.",
        },
    },

    ['18'] = {
        name = "Ro'Maeve",
        steps = {
            "Travel to Norg.",
            "Speak with " .. ACTOR.GILGAMESH.text .. " and choose the option to open the Oaken Door.",
        },
    },

    ['20'] = {
        name = "The Temple of Desolation",
        steps = {
            "Travel to Ro'Maeve.",
            "Reach the Hall of the Gods at (H-5) and examine the Cermet Grate twice.",
        },
    },

    ['22'] = {
        name = "The Hall of the Gods",
        steps = {
            "Return to Norg after reaching the sealed grate in the Hall of the Gods.",
            "Open " .. ACTOR.NORG_OAKEN_DOOR.text .. " and speak with " .. ACTOR.GILGAMESH.text .. " about the Mithra carrying a mysterious crystal.",
        },
    },

    ['23'] = {
        name = "The Mithra and the Crystal",
        steps = {
            "Travel to Rabao.",
            "Speak with " .. ACTOR.MARYOH_COMYUJAH.text .. " at (G-7) and choose the top dialogue option.",
            "Enter Quicksand Caves through the secret entrance in Western Altepa Desert at (C/D-11).",
            "Reach " .. ACTOR.WEIGHTED_DOOR_K8.text .. " at (K-8) and use the pressure plate to pass through.",
            "Reach " .. ACTOR.WEIGHTED_DOOR_G8.text .. " at (G-8), pass through, and drop into the lower room.",
            "Examine " .. ACTOR.QUICKSAND_CAVES_MITHRA_QQ.text .. " and choose Yes to spawn Ancient Vessel.",
            "Defeat Ancient Vessel.",
            "Examine " .. ACTOR.QUICKSAND_CAVES_MITHRA_QQ.text .. " again to obtain the Scrap of Papyrus.",
            "Return to Rabao and speak with " .. ACTOR.MARYOH_COMYUJAH.text .. " again to receive the Cerulean crystal.",
            "Travel to the Hall of the Gods and examine " .. ACTOR.HALL_OF_GODS_CERMET_GATE.text .. " to pass through the gate.",
            "Proceed down the hallway and examine the Shimmering Circle.",
        },
    },

    ['24'] = {
        name = "The Gate of the Gods",
        steps = {
            "Return to the Hall of the Gods and examine " .. ACTOR.HALL_OF_GODS_CERMET_GATE.text .. " again.",
            "Pass through the gate and continue to the shimmering light at the far end.",
            "Examine the shimmering light.",
            "Zone into Ru'Aun Gardens to unlock access to Tu'Lia.",
        },
    },

    ['26'] = {
        name = "Ark Angels",
        steps = {
            "Zone into Ru'Aun Gardens.",
            "Enter the Shrine of Ru'Avitau.",
            "To face all five Ark Angels at once, examine " .. ACTOR.SHRINE_RUAVITAU_BLANK_TARGET_H11.text .. " twice, then obtain an Ark Pentasphere.",
            "Use the red portals in Ru'Aun Gardens to reach the five La'Loff Amphitheater battlefields.",
            "Defeat Ark Angel HM, Ark Angel TT, Ark Angel MR, Ark Angel EV, and Ark Angel GK.",
            "Alternatively, use the Ark Pentasphere at La'Loff Amphitheater and defeat all five Ark Angels in the same battle.",
        },
    },

    ['27'] = {
        name = "The Sealed Shrine",
        steps = {
            "Travel to Norg.",
            "Speak with " .. ACTOR.GILGAMESH.text .. ".",
            "Return to Ru'Aun Gardens.",
            "Enter " .. ACTOR.SHRINE_RUAVITAU.text .. ".",
        },
    },

    ['28'] = {
        name = "The Celestial Nexus",
        steps = {
            "Enter " .. ACTOR.SHRINE_RUAVITAU.text .. " from Ru'Aun Gardens at (I-6).",
            "Pass through the first yellow door at (J-7), then continue west through the second yellow door to reach the room with the two Monoliths at (H-7).",
            "Continue south around the square hallway to the room with the two Dark Elementals around (H-10).",
            "Go north and descend the stairs to " .. ACTOR.CELESTIAL_NEXUS.text .. " at (H-9).",
            "Enter the battlefield and defeat Eald'narche.",
        },
    },

    ['30'] = {
        name = "Awakening",
        steps = {
            "Enter Norg and speak with " .. ACTOR.GILGAMESH.text .. ".",
            "If the opening dialogue does not occur, proceed to the Captain's Chamber and speak with " .. ACTOR.GILGAMESH.text .. " there.",
            "Examine " .. ACTOR.NEPTUNES_SPIRE_TENSHODO_DOOR.text .. " in Lower Jeuno to speak with Aldo.",
            "Complete both conversations before zoning into Ru'Lude Gardens.",
        },
    },

    ['31'] = {
        name = "The Last Verse",
        steps = {
            "The Last Verse is recorded after completing Apocalypse Nigh.",
        },
    },

}

return M