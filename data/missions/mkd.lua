--[[
    A Moogle Kupo d'Etat - Mission Database
    ========================================

    M.MISSIONS:
        Official numeric mission IDs extracted from DAT 0xD9B8.

    M.STEPS:
        Walkthrough entries using the same mission IDs.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'A Moogle Kupo d\'Etat',
    [1] = 'Drenched! It Began with a Raindrop',
    [2] = 'Hasten! In a Jam in Jeuno?',
    [3] = 'Welcome! To My Decrepit Domicile',
    [4] = 'Curses! A Horrifically Harrowing Hex',
    [5] = 'An Errand! The Professor\'s Price',
    [6] = 'Enemy of the Empire (I)',
    [7] = 'Enemy of the Empire (II)',
    [8] = 'Lender Beware! Read the Fine Print',
    [9] = 'Rescue! A Moogle\'s Labor of Love',
    [10] = 'Roar! A Cat Burglar Bares Her Fangs',
    [11] = 'Relief! A Triumphant Return',
    [12] = 'Joy! Summoned to a Fabulous Fete',
    [13] = 'A Challenge! You Could Be a Winner',
    [14] = 'A Moogle Kupo d\'Etat (Fin.)',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- MISSION 1
    -- ========================================================

    [0] = {
        name = "A Moogle Kupo d'Etat",
        steps = {
            "Reach level 10.",
            "Enter your home nation Mog House and speak with " .. ACTOR.HOME_MOG_HOUSE_MOOGLE.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 2
    -- ========================================================

    [1] = {
        name = "Drenched! It Began with a Raindrop",
        steps = {
            "Speak with " .. ACTOR.HOME_MOG_HOUSE_MOOGLE.text .. " in your home nation Mog House.",
            "Obtain an Orcish Armor Plate from Orcs in Yughott Grotto or King Ranperre's Tomb.",
            "Obtain a Quadav Backscale from Quadavs in Palborough Mines.",
            "Obtain a Yagudo Caulk from Yagudos in Giddeus.",
            "Return to your home nation Mog House and trade all three items to " .. ACTOR.HOME_MOG_HOUSE_MOOGLE.text .. " at once.",
        },
    },

    -- ========================================================
    -- MISSION 3
    -- ========================================================

    [2] = {
        name = "Hasten! In a Jam in Jeuno?",
        steps = {
            "Travel to Upper Jeuno.",
            "Examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. " at (H-8).",
        },
    },

    -- ========================================================
    -- MISSION 4
    -- ========================================================

    [3] = {
        name = "Welcome! To My Decrepit Domicile",
        steps = {
            "Examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. " in Upper Jeuno.",
            "Obtain a Sturdy Metal Strip through mining.",
            "Return to " .. ACTOR.INCONSPICUOUS_DOOR.text .. " and trade the Sturdy Metal Strip.",
            "Obtain a Piece of Rugged Tree Bark through logging.",
            "Return to " .. ACTOR.INCONSPICUOUS_DOOR.text .. " and trade the Piece of Rugged Tree Bark.",
            "Obtain a Savory Lamb Roast through harvesting.",
            "Return to " .. ACTOR.INCONSPICUOUS_DOOR.text .. " and trade the Savory Lamb Roast.",
        },
    },

    -- ========================================================
    -- MISSION 5
    -- ========================================================

    [4] = {
        name = "Curses! A Horrifically Harrowing Hex",
        steps = {
            "Travel to Windurst Walls and speak with " .. ACTOR.SHANTOTTO.text .. ".",
            "Learn that Shantotto requires a Ripe Starfruit.",
            "Return to " .. ACTOR.SHANTOTTO.text .. " for instructions concerning the Very Special Cardian in Outer Horutoto Ruins.",
        },
    },

    -- ========================================================
    -- MISSION 6
    -- ========================================================

    [5] = {
        name = "An Errand! The Professor's Price",
        steps = {
            "Obtain one or more Orb Key Items from the required Cardians in Outer Horutoto Ruins.",
            "The available Orbs are Orb of Batons, Orb of Cups, Orb of Coins, and Orb of Swords.",
            "Enter Outer Horutoto Ruins from East Sarutabaruta at (H-3).",
            "Examine " .. ACTOR.MAGICAL_GIZMO.text .. " to face the Custom Cardians.",
            "Defeat the Custom Cardians.",
            "With one or two Orbs, fifteen Custom Cardians appear; with three Orbs, ten appear; with all four, five appear.",
            "Each participant must carry at least one Orb Key Item before entering the battle.",
            "After the battle, receive the Ripe Starfruit and Peach Coral Key.",
            "Return to Windurst Walls and speak with " .. ACTOR.SHANTOTTO.text .. ".",
            "Pay Shantotto 5,000 gil.",
            "Return to Upper Jeuno and examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 7
    -- ========================================================

    [6] = {
        name = "Shock! Arrant Abuse of Authority",
        steps = {
            "Return to Upper Jeuno and examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. ".",
            "Learn which zone contains the Moldy, worm-eaten chest.",
            "Obtain Gysahl Greens and ride a Chocobo in the assigned zone.",
            "Follow the Chocobo digging clues until you find the Moldy, worm-eaten chest.",
            "The chest changes location when you leave the zone.",
            "Return to Upper Jeuno and examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. " with the Moldy, worm-eaten chest.",
        },
    },

    -- ========================================================
    -- MISSION 8
    -- ========================================================

    [7] = {
        name = "Lender Beware! Read the Fine Print",
        steps = {
            "Return to Upper Jeuno and examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. ".",
            "Obtain a Sahagin Key.",
            "Travel to Sea Serpent Grotto and reach the hidden area around (C-8).",
            "Examine " .. ACTOR.SHADY_SCONCE.text .. " and examine it again to complete the full event.",
            "Travel to (J-11) and use the Sahagin Key on " .. ACTOR.SEA_SERPENT_ORNAMENTAL_DOOR.text .. ".",
            "Proceed across the bridge to " .. ACTOR.WATERFALL_BASIN.text .. " at (H-6) and examine it.",
            "Return to Upper Jeuno and examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 9
    -- ========================================================

    [8] = {
        name = "Rescue! A Moogle's Labor of Love",
        steps = {
            "Obtain the Map of the Quicksand Caves.",
            "Enter Quicksand Caves through the hidden southern entrance from Western Altepa Desert at (D-12).",
            "Speak with " .. ACTOR.GOBLIN_GEOLOGIST.text .. " to mark nine locations on your map.",
            "Search the marked ??? in the Quicksand Caves and obtain the nine stones.",
            "Obtain Stone of Surya.",
            "Obtain Stone of Chandra.",
            "Obtain Stone of Mangala.",
            "Obtain Stone of Budha.",
            "Obtain Stone of Brihaspati.",
            "Obtain Stone of Shukra.",
            "Obtain Stone of Shani.",
            "Obtain Stone of Rahu.",
            "Obtain Stone of Ketu.",
            "Return to " .. ACTOR.GOBLIN_GEOLOGIST.text .. " after collecting all nine stones.",
            "Receive the Navaratna Talisman.",
            "Travel to the Chamber of Oracles and examine " .. ACTOR.CHAMBER_OF_ORACLES_SHIMMERING_CIRCLE.text .. ".",
        },
    },

    -- ========================================================
    -- MISSION 10
    -- ========================================================

    [9] = {
        name = "Roar! A Cat Burglar Bares Her Fangs",
        steps = {
            "Travel to the Chamber of Oracles and examine " .. ACTOR.CHAMBER_OF_ORACLES_SHIMMERING_CIRCLE.text .. ".",
            "Enter the battlefield and face Nanaa Mihgo, Goblin Repossessor, Goblin Intimidator, and Goblin Enforcer.",
            "Nanaa Mihgo summons either Bopa Greso or Cha Lebagta during the battle.",
            "Defeat Nanaa Mihgo to complete the battlefield.",
            "Receive the Red Coral Key and the following event.",
        },
    },

    -- ========================================================
    -- MISSION 11
    -- ========================================================

    [10] = {
        name = "Relief! A Triumphant Return",
        steps = {
            "Return to Upper Jeuno.",
            "Examine " .. ACTOR.INCONSPICUOUS_DOOR.text .. " at (H-8).",
        },
    },

    -- ========================================================
    -- MISSION 12
    -- ========================================================

    [11] = {
        name = "Joy! Summoned to a Fabulous Fete",
        steps = {
            "Travel to Castle Zvahl Baileys.",
            "Enter Castle Zvahl Baileys.",
        },
    },

    -- ========================================================
    -- MISSION 13
    -- ========================================================

    [12] = {
        name = "A Challenge! You Could Be a Winner",
        steps = {
            "Travel to Castle Zvahl Baileys and examine " .. ACTOR.SHADOWY_PILLAR.text .. " at (J-8).",
            "Travel to Beaucedine Glacier and examine " .. ACTOR.LONELY_EVERGREEN.text .. " at (G-7).",
            "Travel to the tower around (H-8) and speak with " .. ACTOR.GOBLIN_GRENADIER.text .. ".",
            "Examine the six Pip objects around the tower and follow the elemental day order to determine the number formed by their connections.",
            "Give the resulting number to " .. ACTOR.GOBLIN_GRENADIER.text .. " to receive the Pocket Mogbomb.",
            "Return to " .. ACTOR.LONELY_EVERGREEN.text .. " at (G-7) and exchange the Pocket Mogbomb for the Trivia Challenge Kupon.",
            "Travel to Xarcabard and answer three trivia questions correctly using the three answer locations: " .. ACTOR.XARCABARD_OPTION_1.text .. ", " .. ACTOR.XARCABARD_OPTION_2.text .. ", and " .. ACTOR.XARCABARD_OPTION_3.text .. ".",
            "Receive the Gauntlet Challenge Kupon.",
            "Return to Castle Zvahl Baileys and examine " .. ACTOR.SHADOWY_PILLAR.text .. ".",
            "Enter the gauntlet with your level reduced to 1 and reach " .. ACTOR.FLAMES_OF_FATE.text .. " at (G-8) before the 8-minute limit expires.",
            "Receive the Festival Souvenir Kupon at " .. ACTOR.FLAMES_OF_FATE.text .. ".",
            "Enter Castle Zvahl Keep and examine " .. ACTOR.OMINOUS_PILLAR.text .. ".",
            "Follow the beastmen beacon teleports and examine the Craggy Pillar in each room until you find the correct one.",
            "Examine " .. ACTOR.CRAGGY_PILLAR_1.text .. ".",
            "Examine " .. ACTOR.CRAGGY_PILLAR_2.text .. ".",
            "Examine " .. ACTOR.CRAGGY_PILLAR_3.text .. ".",
            "Examine " .. ACTOR.CRAGGY_PILLAR_4.text .. ".",
            "Receive the Mega Bonanza Kupon from the correct Craggy Pillar.",
            "Proceed through the Throne Room and examine the Throne Room door.",
        },
    },

    -- ========================================================
    -- MISSION 14
    -- ========================================================

    [13] = {
        name = "Smash! A Malevolent Menace",
        steps = {
            "Travel to Castle Zvahl Keep and examine " .. ACTOR.THRONE_ROOM_DOOR.text .. ".",
            "Examine " .. ACTOR.THRONE_ROOM_DOOR.text .. " again to enter the battlefield.",
            "Defeat Riko Kupenreich and his Henchman Moogles.",
            "The battlefield has a 30-minute time limit.",
            "Defeat Riko Kupenreich to complete the battle; his HP is reduced in phases during the fight.",
            "Receive the Angel Skin Key and Oxblood Key.",
            "The Mega Bonanza Kupon is consumed upon entry when the battle is used to obtain these keys.",
        },
    },

    -- ========================================================
    -- MISSION 15
    -- ========================================================

    [14] = {
        name = "A Moogle Kupo d'Etat (Fin.)",
        steps = {
            "Travel to Lower Jeuno and enter Tenshodo Headquarters.",
            "Examine the Treasure Coffer at (J-8).",
            "Use the Angel Skin Key to select your scenario reward.",
            "Choose one: Champion's Galea, Anwig Salade, or Selenian Cap.",
            "The Oxblood Key can be used at the same coffer for its separate reward.",
            "Completion unlocks the ability to purchase Atma of Dread.",
        },
    },
}

return M