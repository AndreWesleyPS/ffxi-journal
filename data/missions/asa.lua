--[[
    A Shantotto Ascension - Mission Database
    ==========================================

    Mission IDs and walkthrough IDs are kept separate.

    M.MISSIONS:
        Official numeric mission IDs extracted from DAT 0xD9B9.

    M.STEPS:
        Walkthrough entries using the same mission IDs.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'A Shantotto Ascension',
    [1] = 'Burgeoning Dread',
    [2] = 'That Which Curdles Blood',
    [3] = 'Sugar-coated Directive',
    [4] = 'Enemy of the Empire (I)',
    [5] = 'Enemy of the Empire (II)',
    [6] = 'Sugar-coated Subterfuge',
    [7] = 'Shantotto in Chains',
    [8] = 'Fountain of Trouble',
    [9] = 'Battaru Royale',
    [10] = 'Romancing the Clone',
    [11] = 'Sisters in Arms',
    [12] = 'Project: Shantottofication',
    [13] = 'An Uneasy Peace',
    [14] = 'A Shantotto Ascension (Fin)',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- MISSION 1 / TRACKER ID 0
    -- ========================================================

    [0] = {
        name = "A Shantotto Ascension",
        steps = {
            "Reach level 10.",
            "Enter Windurst Walls from Windurst Woods or Windurst Waters.",
        },
    },

    -- ========================================================
    -- MISSION 2 / TRACKER ID 1
    -- ========================================================

    [1] = {
        name = "Burgeoning Dread",
        steps = {
            "Enter East Sarutabaruta or West Sarutabaruta through one of Windurst's gates.",
            "Complete the cutscene and note which Enfeeblement Kit you are instructed to create.",
        },
    },

    -- ========================================================
    -- MISSION 3 / TRACKER ID 2
    -- ========================================================

    [2] = {
        name = "That Which Curdles Blood",
        steps = {
            "Create the Enfeeblement Kit requested during Burgeoning Dread. The required kit is one of Silence, Sleep, Poison, or Blindness.",
            "If you need the recipe, speak with " .. ACTOR.KUROIDO_MOIDO.text .. " in Port Windurst, or with Faulpie in Southern San d'Oria or Abd-al-Raziq in Bastok Mines.",
            "Gather the required components and synthesize the completed Enfeeblement Kit yourself.",
            "Travel to Qufim Island and trade the completed kit to " .. ACTOR.QUFIM_TRODDEN_SNOW.text .. " at (H-7).",
        },
    },

    -- ========================================================
    -- MISSION 4 / TRACKER ID 3
    -- ========================================================

    [3] = {
        name = "Sugar-coated Directive",
        steps = {
            "After the Qufim Island event, receive six seals.",
            "Take the seals to their corresponding protocrystals and defeat the avatars.",

            "At the " .. ACTOR.IFRITS_CAULDRON_PROTOCRYSTAL.text .. ", defeat Ifrit Prime.",
            "At the " .. ACTOR.FEIYIN_PROTOCRYSTAL.text .. ", defeat Shiva Prime.",
            "At the " .. ACTOR.CAPE_TERIGGAN_PROTOCRYSTAL.text .. ", defeat Garuda Prime.",
            "At the " .. ACTOR.BOYAHDA_PROTOCRYSTAL.text .. ", defeat Ramuh Prime.",
            "At the " .. ACTOR.DEN_OF_RANCOR_PROTOCRYSTAL.text .. ", defeat Leviathan Prime.",
            "At the " .. ACTOR.QUICKSAND_PROTOCRYSTAL.text .. ", defeat Titan Prime.",

            "Defeat at least three of the six avatars to complete the required progression.",
            "After each victory, examine the corresponding protocrystal again to receive its counterseal.",
            "Return to Qufim Island and examine " .. ACTOR.QUFIM_TRODDEN_SNOW.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 5 / TRACKER ID 4
    -- ========================================================

    [4] = {
        name = "Enemy of the Empire (I)",
        steps = {
            "Travel to Norg.",
            "Speak with " .. ACTOR.ANDRAUSE.text .. " to receive the Black Book.",
            "Travel to Gustav Tunnel.",
            "Examine " .. ACTOR.GUSTAV_OUTCROPPING.text .. " at (F-10).",
        },
    },

    -- ========================================================
    -- MISSION 6 / TRACKER ID 5
    -- ========================================================

    [5] = {
        name = "Enemy of the Empire (II)",
        steps = {
            "Return to " .. ACTOR.GUSTAV_OUTCROPPING.text .. " at (F-10).",
            "Examine the Outcropping again to begin the battle.",
            "Defeat Renfred, Bompupu, and Gorattz. Their clones will continue to appear during the fight.",
            "Trust Magic is unavailable during the battle.",
            "Receive the Cactuar key after defeating all three agents.",
            "Examine " .. ACTOR.GUSTAV_OUTCROPPING.text .. " again for the final event.",
        },
    },

    -- ========================================================
    -- MISSION 7 / TRACKER ID 6
    -- ========================================================

    [6] = {
        name = "Sugar-coated Subterfuge",
        steps = {
            "Travel to Lower Jeuno.",
            "Enter Tenshodo Headquarters and speak with " .. ACTOR.ALDO_TENSHODO.text .. " at (J-8).",
        },
    },

    -- ========================================================
    -- MISSION 8 / TRACKER ID 7
    -- ========================================================

    [7] = {
        name = "Shantotto in Chains",
        steps = {
            "Travel to Ro'Maeve.",
            "Examine " .. ACTOR.RO_MAEVE_ENSORCELLED_DOOR.text .. " at (B-10) to learn about the hexagonal depression.",
            "Collect the six Luminous Fragments by defeating the required Notorious Monsters.",

            "Defeat " .. ACTOR.LODE_GOLEM.text .. " around (E-9/E-10) to obtain the Luminous blue fragment.",
            "Defeat " .. ACTOR.FIRED_URN.text .. " around (K-9/K-10) to obtain the Luminous purple fragment.",
            "Defeat " .. ACTOR.STEELY_WEAPON.text .. " around (G-10/G-11) to obtain the Luminous yellow fragment.",
            "Defeat " .. ACTOR.HOLEY_HORROR.text .. " at (H-8) in the Sanctuary of Zi'Tah to obtain the Luminous green fragment.",
            "Defeat " .. ACTOR.SKELETON_SCUFFLER.text .. " at (F-8) in the Sanctuary of Zi'Tah to obtain the Luminous red fragment.",
            "Defeat " .. ACTOR.BLEST_BONES.text .. " at (F-7) in the Sanctuary of Zi'Tah to obtain the Luminous beige fragment.",

            "Return to " .. ACTOR.RO_MAEVE_ENSORCELLED_DOOR.text .. " after obtaining all six fragments.",
        },
    },

    -- ========================================================
    -- MISSION 9 / TRACKER ID 8
    -- ========================================================

    [8] = {
        name = "Fountain of Trouble",
        steps = {
            "Travel to Toraimarai Canal through Inner Horutoto Ruins or Windurst Walls.",
            "Collect at least one elemental Sap Key Item.",

            "Obtain the Dark Sap crystal at (F-8), Map 1.",
            "Obtain the Earth Sap crystal at (J-8) or (H-7), Map 1.",
            "Obtain the Water Sap crystal at (H-7) or (J-9), Map 1.",
            "Obtain the Fire Sap crystal at (J-9), Map 1, or (F-10)/(J-8), Map 2.",
            "Obtain the Ice Sap crystal at (I-8) or (H-7), Map 2.",
            "Obtain the Light Sap crystal at (G-8), Map 2; there are two possible positions.",
            "Obtain the Lightning Sap crystal at (H-7), Map 1, or (G-10/G-11), Map 2.",
            "Obtain the Wind Sap crystal at (H-9) or (J-9), Map 2.",

            "The eight Sap types weaken the corresponding elemental Astral Flow abilities in the next battlefield.",
            "If you only need to advance the story at high level, one Sap is enough.",
            "Travel to Full Moon Fountain and examine " .. ACTOR.MOON_SPIRAL.text .. " with at least one Sap Key Item.",
        },
    },

    -- ========================================================
    -- MISSION 10 / TRACKER ID 9
    -- ========================================================

    [9] = {
        name = "Battaru Royale",
        steps = {
            "After the Fountain of Trouble event, examine " .. ACTOR.MOON_SPIRAL.text .. " again while possessing at least one elemental Sap.",
            "Enter the Battaru Royale battlefield.",
            "Defeat the eight elemental Tarutaru Fomor clones: Boulders, Torrents, Gusts, Flames, Glaciers, Sparks, Lights, and Shadows.",
            "Each clone can summon the corresponding avatar at around 50% HP and use its Astral Flow.",
            "The battlefield has a 30-minute time limit.",
            "Receive the Chocobo key after victory.",
        },
    },

    -- ========================================================
    -- MISSION 11 / TRACKER ID 10
    -- ========================================================

    [10] = {
        name = "Romancing the Clone",
        steps = {
            "Return to Tenshodo Headquarters in Lower Jeuno.",
            "Speak with " .. ACTOR.ALDO_TENSHODO.text .. " at (J-8).",
        },
    },

    -- ========================================================
    -- MISSION 12 / TRACKER ID 11
    -- ========================================================

    [11] = {
        name = "Sisters in Arms",
        steps = {
            "Travel through the Temple of Uggalepih to the Den of Rancor and reach the Sacrificial Chamber.",
            "Obtain at least one Tablet of Hexes to receive credit for the following battlefield. Collecting all 16 grants the full set of battle enhancements.",

            "Obtain the Tablet of Hexes - Malice.",
            "Obtain the Tablet of Hexes - Deceit.",
            "Obtain the Tablet of Hexes - Envy.",
            "Obtain the Tablet of Hexes - Greed.",
            "Obtain the Tablet of Hexes - Pride.",
            "Obtain the Tablet of Hexes - Bale.",
            "Obtain the Tablet of Hexes - Strife.",
            "Obtain the Tablet of Hexes - Regret.",
            "Obtain the Tablet of Hexes - Dolor.",
            "Obtain the Tablet of Hexes - Agony.",
            "Obtain the Tablet of Hexes - Rancor.",
            "Obtain the Tablet of Hexes - Rage.",
            "Obtain the Tablet of Hexes - Despair.",
            "Obtain the Tablet of Hexes - Penury.",
            "Obtain the Tablet of Hexes - Death.",
            "Obtain the Tablet of Hexes - Blight.",

            "Obtain four Rancor Flames to pass through the Sacrificial Chamber entrance unless its Home Point is already unlocked.",
            "Examine " .. ACTOR.SACRIFICIAL_CHAMBER_MAHOGANY_DOOR.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 13 / TRACKER ID 12
    -- ========================================================

    [12] = {
        name = "Project: Shantottofication",
        steps = {
            "After the event at " .. ACTOR.SACRIFICIAL_CHAMBER_MAHOGANY_DOOR.text .. ", examine the door again.",
            "Enter the Project: Shantottofication battlefield.",
            "Defeat Shantotto and D. Shantotto.",
            "Any Tablets of Hexes you possess are consumed upon entry and grant battle enhancements.",
            "Receive the Tonberry key after victory.",
        },
    },

    -- ========================================================
    -- MISSION 14 / TRACKER ID 13
    -- ========================================================

    [13] = {
        name = "An Uneasy Peace",
        steps = {
            "Zone into Windurst Walls from an adjacent area.",
            "Complete the event with " .. ACTOR.SHANTOTTO.text .. ".",
            "Receive the Behemoth key.",
        },
    },

    -- ========================================================
    -- MISSION 15 / TRACKER ID 14
    -- ========================================================

    [14] = {
        name = "A Shantotto Ascension (Fin)",
        steps = {
            "Travel to Tenshodo Headquarters in Lower Jeuno.",
            "Redeem the Behemoth key for your final reward.",
            "Choose one: Blitzer Poleyn, Desultor Tassets, or Tatsumaki Sitagoromo.",
            "The final reward also unlocks the ability to purchase Atma of Ambition.",
        },
    },
}

return M