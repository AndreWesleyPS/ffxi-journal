--[[
    A Crystalline Prophecy - Mission Database
    ===========================================

    Mission IDs and walkthrough IDs are kept separate.

    M.MISSIONS:
        Official numeric mission IDs used by the mission tracker.

    M.STEPS:
        Existing walkthrough IDs used by the Journal walkthrough
        system.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'A Crystalline Prophecy',
    [1] = 'The Echo Awakens',
    [2] = 'Gatherer of Light (I)',
    [3] = 'Gatherer of Light (II)',
    [4] = 'Those Who Lurk in Shadows (I)',
    [5] = 'Those Who Lurk in Shadows (II)',
    [6] = 'Those Who Lurk in Shadows (III)',
    [7] = 'Remember Me in Your Dreams',
    [8] = 'Born of Her Nightmares',
    [9] = 'Banishing the Echo',
    [10] = 'Ode of Life Bestowing',
    [11] = 'A Crystalline Prophecy (Fin.)',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- MISSION 1
    -- ========================================================

    ['1'] = {
        name = "A Crystalline Prophecy",
        steps = {
            "Reach level 10.",
            "Enter Lower Jeuno.",
            "Examine " .. ACTOR.LOWER_JEUNO_TALES_BEGINNING.text .. " to begin A Crystalline Prophecy.",
        },
    },

    -- ========================================================
    -- MISSION 2
    -- ========================================================

    ['2'] = {
        name = "The Echo Awakens",
        steps = {
            "Collect Seedspall Lux from Orcs in Jugner Forest around (G-11).",
            "Collect Seedspall Luna from Quadavs in Pashhow Marshlands around (K-10).",
            "Collect Seedspall Astrum from Yagudos in Meriphataud Mountains around (K-8).",
            "Trade all three Seedspalls to " .. ACTOR.QUFIM_ACP_QQ.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 3
    -- ========================================================

    ['3'] = {
        name = "Gatherer of Light (I)",
        steps = {
            "Obtain the Bowl of bland Goblin salad from Goblins in Batallia Downs.",
            "Examine " .. ACTOR.BATALLIA_ACP_QQ.text .. " to face Vegnix Greenthumb.",
            "Defeat Vegnix Greenthumb to obtain Seedspall Roseum.",

            "Obtain the Jug of greasy Goblin juice from Goblins in Rolanberry Fields.",
            "Examine " .. ACTOR.ROLANBERRY_ACP_QQ.text .. " to face Chuglix Berrypaws.",
            "Defeat Chuglix Berrypaws to obtain Seedspall Caerulum.",

            "Obtain the Chunk of smoked Goblin grub from Goblins in Sauromugue Champaign.",
            "Examine " .. ACTOR.SAUROMUGUE_ACP_QQ.text .. " to face Dribblix Greasemaw.",
            "Defeat Dribblix Greasemaw to obtain Seedspall Viridis.",

            "Return to " .. ACTOR.QUFIM_ACP_QQ.text .. " with all three Seedspalls.",
            "Afterward, speak with " .. ACTOR.SQUINTROX_DRYEYES.text .. " to receive the Viridian Key.",
        },
    },

    -- ========================================================
    -- MISSION 4
    -- ========================================================

    ['4'] = {
        name = "Gatherer of Light (II)",
        steps = {
            "Prepare for battle; you must fight without Trusts.",
            "Examine " .. ACTOR.QUFIM_ACP_QQ.text .. " to begin the battle.",
            "Defeat six waves of Seed Mandragoras, 30 enemies total.",
            "Receive the Amber Key when the battle ends.",
            "Examine " .. ACTOR.QUFIM_ACP_QQ.text .. " again.",
        },
    },

    -- ========================================================
    -- MISSION 5
    -- ========================================================

    ['5'] = {
        name = "Those Who Lurk in Shadows (I)",
        steps = {
            "Travel to Fei'Yin.",
            "Enter Fei'Yin from Beaucedine Glacier.",
        },
    },

    -- ========================================================
    -- MISSION 6
    -- ========================================================

    ['6'] = {
        name = "Those Who Lurk in Shadows (II)",
        steps = {
            "Collect the nine Seed Afterglows in Fei'Yin:",
            ACTOR.FEIYIN_AFTERGLOW_RED.text,
            ACTOR.FEIYIN_AFTERGLOW_ORANGE.text,
            ACTOR.FEIYIN_AFTERGLOW_YELLOW.text,
            ACTOR.FEIYIN_AFTERGLOW_GREEN.text,
            ACTOR.FEIYIN_AFTERGLOW_CERULEAN.text,
            ACTOR.FEIYIN_AFTERGLOW_BLUE.text,
            ACTOR.FEIYIN_AFTERGLOW_GOLDEN.text,
            ACTOR.FEIYIN_AFTERGLOW_SILVER.text,
            ACTOR.FEIYIN_AFTERGLOW_WHITE.text,
            "You have 12 Vana'diel hours and 30 Vana'diel minutes to collect all nine.",
            "The Seed Afterglows periodically move within their general areas.",
            "If the yellow Seed Afterglow is not at its usual location, check the circular room around (H-9)/(I-9).",
            "After collecting all nine, choose the Mark of Seed to continue or the Azure Key to open the level 60 treasure coffer in Lower Jeuno.",
        },
    },

    -- ========================================================
    -- MISSION 7
    -- ========================================================

    ['7'] = {
        name = "Those Who Lurk in Shadows (III)",
        steps = {
            "Examine " .. ACTOR.QUBIA_BURNING_CIRCLE.text .. " once.",
            "Examine it again to enter the battlefield.",
            "Defeat Seed Orc, Seed Yagudo, Seed Quadav, and Seed Goblin.",
            "Anyone seeking the Ivory Key must have a Mark of Seed.",
            "Receive the Ivory Key after winning.",
        },
    },

    -- ========================================================
    -- MISSION 8
    -- ========================================================

    ['8'] = {
        name = "Remember Me in Your Dreams",
        steps = {
            "Travel to Ro'Maeve.",
            "Enter the Hall of the Gods through " .. ACTOR.HALL_OF_GODS_ENTRANCE.text .. ".",
            "If you entered the Hall of the Gods from Ru'Aun Gardens, return to Ro'Maeve and enter the Hall of the Gods again.",
        },
    },

    -- ========================================================
    -- MISSION 9
    -- ========================================================

    ['9'] = {
        name = "Born of Her Nightmares",
        steps = {
            "Travel to Lower Delkfutt's Tower.",
            "Enter Lower Delkfutt's Tower.",
        },
    },

    -- ========================================================
    -- MISSION 10
    -- ========================================================

    ['10'] = {
        name = "Banishing the Echo",
        steps = {
            "Examine each Seed Fragment to receive the level 30 restriction before collecting the Seed Afterglows in its tower section.",

            "Examine " .. ACTOR.LOWER_DELFKUTT_SEED_FRAGMENT.text .. ".",
            "Collect " .. ACTOR.LOWER_DELFKUTT_AFTERGLOW_1.text .. ".",
            "Collect " .. ACTOR.LOWER_DELFKUTT_AFTERGLOW_2.text .. ".",
            "Collect " .. ACTOR.LOWER_DELFKUTT_AFTERGLOW_3.text .. ".",

            "Examine " .. ACTOR.MIDDLE_DELFKUTT_SEED_FRAGMENT.text .. ".",
            "Collect " .. ACTOR.MIDDLE_DELFKUTT_AFTERGLOW_1.text .. ".",
            "Collect " .. ACTOR.MIDDLE_DELFKUTT_AFTERGLOW_2.text .. ".",
            "Collect " .. ACTOR.MIDDLE_DELFKUTT_AFTERGLOW_3.text .. ".",
            "Collect " .. ACTOR.MIDDLE_DELFKUTT_AFTERGLOW_4.text .. ".",
            "Collect " .. ACTOR.MIDDLE_DELFKUTT_AFTERGLOW_5.text .. ".",
            "Collect " .. ACTOR.MIDDLE_DELFKUTT_AFTERGLOW_6.text .. ".",

            "Examine " .. ACTOR.UPPER_DELFKUTT_SEED_FRAGMENT.text .. ".",
            "Collect " .. ACTOR.UPPER_DELFKUTT_AFTERGLOW_1.text .. ".",
            "Collect " .. ACTOR.UPPER_DELFKUTT_AFTERGLOW_2.text .. ".",
            "Collect " .. ACTOR.UPPER_DELFKUTT_AFTERGLOW_3.text .. ".",

            "Collect all 12 stone key items, then examine " .. ACTOR.STELLAR_FULCRUM_SEED_FRAGMENT.text .. " to receive the Omnis Stone.",
        },
    },

    -- ========================================================
    -- MISSION 11
    -- ========================================================

    ['11'] = {
        name = "Ode of Life Bestowing",
        steps = {
            "Examine " .. ACTOR.STELLAR_FULCRUM_QEIOV_GATE.text .. ", then examine it again to enter the battlefield.",
            "Defeat the Seed Crystal.",
            "Receive the Ebon Key and Prismatic Key.",
        },
    },

    -- ========================================================
    -- MISSION 12
    -- ========================================================

    ['12'] = {
        name = "A Crystalline Prophecy (Fin.)",
        steps = {
            "Return to Lower Jeuno.",
            "Examine " .. ACTOR.TENSHODO_TREASURE_CHEST.text .. " to select your reward.",
            "Choose one: Nuevo Coselete, Mirke Wardecors, or Royal Redingote.",
            "Only one of the three body armors may be owned at a time.",
            "You can obtain the Atma of Echoes after clearing the scenario.",
        },
    },
}

return M