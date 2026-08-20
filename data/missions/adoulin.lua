--[[
    Seekers of Adoulin - Mission Database
    =======================================

    Mission IDs and walkthrough IDs are kept separate.

    M.MISSIONS:
        Official numeric mission IDs extracted from DAT 0xD9BA.
        These are consumed by the mission tracker.

    M.STEPS:
        Walkthrough entries using the existing numeric mission IDs.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [110] = 'Rumors from the West',
    [112] = 'The Geomagnetron',
    [116] = 'Onward to Adoulin',
    [120] = 'Heartwings and the Kindhearted',
    [122] = 'Pioneer Registration',
    [124] = 'Life on the Frontier',
    [126] = 'Meeting of the Minds',
    [128] = 'Arciela Appears Again',
    [132] = 'Budding Prospects',
    [134] = 'The Light Shining in Your Eyes',
    [136] = 'The Heirloom',
    [138] = 'An Aimless Journey',
    [140] = 'Ortharsyne',
    [142] = 'In the Presence of Royalty',
    [144] = 'The Twin World Trees',
    [146] = 'Honor and Audacity',
    [148] = 'The Watergarden Coliseum',
    [150] = 'Friction and Fissures',
    [152] = 'The Celennia Memorial Library',
    [156] = 'For Whom Do We Toil?',
    [162] = 'Aiming for Ygnas',
    [164] = 'Calamity in the Kitchen',
    [168] = 'Arciela\'s Promise',
    [170] = 'Predators and Prey',
    [172] = 'Behind the Sluices',
    [178] = 'The Leafkin Monarch',
    [180] = 'Yggdrasil',
    [184] = 'Return of the Exorcist',
    [186] = 'The Merciless One',
    [188] = 'A Curse from the Past',
    [190] = 'The Purgation',
    [192] = 'The Key',
    [194] = 'The Princess\'s Dilemma',
    [196] = 'Dark Clouds Ahead',
    [198] = 'The Smallest of Favors',
    [200] = 'Summoned by Spirits',
    [202] = 'Evil Entities',
    [204] = 'Adoulin Calling',
    [206] = 'The Disappearance of Nyline',
    [208] = 'Shared Consciousness',
    [210] = 'Clear Skies',
    [212] = 'The Man in Black',
    [214] = 'To the Victor...',
    [216] = 'An Extraordinary Gentleman',
    [220] = 'The Order\'s Treasures',
    [222] = 'August\'s Heirloom',
    [224] = 'Beauty and the Beast',
    [226] = 'Wildcat with a Gold Pelt',
    [228] = 'In Search of Arciela',
    [232] = 'Looking For Leads',
    [234] = 'Drifting Northwest',
    [236] = 'Kumhau, the Flashfrost Naakual',
    [242] = 'Soul Siphon',
    [244] = 'Stonewalled',
    [248] = 'Salvation',
    [250] = 'Glimmer of Portent',
    [252] = '...Into the Fire',
    [254] = 'Melvien de Malecroix',
    [256] = 'Courier Catastrophe',
    [258] = 'Done and Delivered',
    [260] = 'Ministerial Whispers',
    [262] = 'A Day in the Life of a Pioneer',
    [264] = 'Lighting the Way',
    [266] = 'Sajj\'aka',
    [268] = 'Studying Up',
    [270] = 'A Vow of Truth',
    [272] = 'Darrcuiln',
    [274] = 'The Gates',
    [278] = 'Morimar',
    [280] = 'A New Force Arises',
    [282] = 'The Sacred Sapling',
    [284] = 'Tree Grafting',
    [286] = 'A Shrouded Canopy',
    [288] = 'Leafallia',
    [290] = 'Rosulatia\'s Promise',
    [292] = 'The Lightsland',
    [294] = 'The Light of Dawn Comes...',
    [296] = 'Cries from the Deep',
    [298] = 'Seeds of Doubt',
    [300] = 'The Tomatoes of Wrath',
    [302] = 'A Grave Mistake',
    [306] = 'An Emergency Convocation',
    [308] = 'Balamor, the Deathborne Xol',
    [310] = 'Anagnorisis',
    [312] = 'Just the Thing',
    [314] = 'Sugarcoated Salvation',
    [316] = 'Arciela\'s Resolve',
    [318] = 'Balamor\'s Ruse',
    [320] = 'The Charlatan',
    [324] = 'Royal Blessings',
    [326] = 'Arboreal Rumors',
    [328] = 'Arciela\'s Missive',
    [330] = 'Heroes, Unite!',
    [332] = 'A Portent Most Ominous',
    [334] = 'Yggdrasil Beckons',
    [336] = 'Returning to the Trees',
    [338] = 'The Key to the Turris',
    [342] = 'Teodor\'s Summons',
    [344] = 'The Seventh Guardian',
    [346] = 'Watery Grave',
    [350] = 'Blood for Blood',
    [352] = 'Reckoning',
    [356] = 'Abomination',
    [360] = 'Undying Light',
    [368] = 'The Light Within',
    [999] = 'fin',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- CHAPTER 1
    -- ========================================================

    [110] = {
        name = 'Rumors from the West',
        steps = {
            "Travel to Lower Jeuno and speak with " .. ACTOR.DARCIA.text .. ".",
            "Choose to begin the Seekers of Adoulin storyline.",
        },
    },

    [112] = {
        name = 'The Geomagnetron',
        steps = {
            "Speak with " .. ACTOR.DARCIA.text .. " to receive the Geomagnetron and the list of possible attunement sites.",
            "Travel to one of the listed Geomagnetic Founts.",
            "Attune the Geomagnetron to the required energy source.",
            "Return to " .. ACTOR.DARCIA.text .. ".",
        },
    },

    [116] = {
        name = 'Onward to Adoulin',
        steps = {
            "Travel west through Ceizak Battlegrounds.",
            "Reach Western Adoulin at (K-7).",
        },
    },

    [120] = {
        name = 'Heartwings and the Kindhearted',
        steps = {
            "Travel northeast through Ceizak Battlegrounds.",
            "Reach Western Adoulin at (K-7).",
        },
    },

    [122] = {
        name = 'Pioneer Registration',
        steps = {
            "Travel to the Pioneers' Coalition in Western Adoulin at (E-8).",
            "Speak with " .. ACTOR.BRENTON.text .. ".",
            "Receive the Pioneer's Badge, Map of Adoulin, and 1,000 Bayld.",
        },
    },

    [124] = {
        name = 'Life on the Frontier',
        steps = {
            "Use at least 15 Imprimaturs on completed Coalition Assignments.",
            "Return to " .. ACTOR.BRENTON.text .. " in the Pioneers' Coalition.",
            "Receive the Dinner invitation and access to Wildskeeper Reives.",
        },
    },

    [126] = {
        name = 'Meeting of the Minds',
        steps = {
            "Travel to the Gates of Castle Adoulin in Eastern Adoulin.",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " at (K-9) between 15:00 and 22:00.",
        },
    },

    [128] = {
        name = 'Arciela Appears Again',
        steps = {
            "Meet the required imprimatur and fame progression for the mission.",
            "Return to the Pioneers' Coalition and speak with " .. ACTOR.LEVIL.text .. ".",
        },
    },

    [132] = {
        name = 'Budding Prospects',
        steps = {
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " at the Gates of Castle Adoulin.",
            "Speak with " .. ACTOR.ARCIELA.text .. ".",
            "Wait until the next Vana'diel day before continuing to The Light Shining in Your Eyes.",
        },
    },

    [134] = {
        name = 'The Light Shining in Your Eyes',
        steps = {
            "Speak with " .. ACTOR.ARCIELA.text .. ".",
            "Complete the resulting event.",
        },
    },

    -- ========================================================
    -- CHAPTER 2
    -- ========================================================

    [136] = {
        name = 'The Heirloom',
        steps = {
            "Speak with " .. ACTOR.ARCIELA.text .. " and follow her request.",
            "Continue to the required event involving the royal heirloom.",
        },
    },

    [138] = {
        name = 'An Aimless Journey',
        steps = {
            "Travel to Cirdas Caverns.",
            "Proceed to the Ergon Locus around (E-9).",
            "Complete the cutscene involving Arciela.",
        },
    },

    [140] = {
        name = 'Ortharsyne',
        steps = {
            "Travel to Yorcia Weald.",
            "Enter Yorcia Weald.",
        },
    },

    [142] = {
        name = 'In the Presence of Royalty',
        steps = {
            "Travel to Yorcia Weald.",
            "Examine " .. ACTOR.YORCIA_ERGON_QQ_I8.text .. " to obtain Yorcia's Tear.",
            "Do not use the northern Ergon Locus ???; it is not the correct target.",
            "Travel to the required pure water font.",
            "Complete the royal sequence and obtain Rosulatia's Pome.",
        },
    },

    [144] = {
        name = 'The Twin World Trees',
        steps = {
            "Wait until the next Vana'diel day after the previous mission.",
            "Speak with Oscairn at (G-7) in Eastern Adoulin, northeast of the Peacekeepers' Coalition.",
        },
    },

    [146] = {
        name = 'Honor and Audacity',
        steps = {
            "Travel to Eastern Adoulin.",
            "Enter Rala Waterways from the Eastern Adoulin entrance at (F-7).",
        },
    },

    [148] = {
        name = 'The Watergarden Coliseum',
        steps = {
            "Travel to Rala Waterways.",
            "Speak with " .. ACTOR.YEGGHA_DOLASHI.text .. ".",
            "Continue to the Watergarden Coliseum.",
        },
    },

    [150] = {
        name = 'Friction and Fissures',
        steps = {
            "Continue the Arciela sequence through Rala Waterways.",
            "Proceed through the required events.",
        },
    },

    [152] = {
        name = 'The Celennia Memorial Library',
        steps = {
            "Enter the " .. ACTOR.LIBRARY.text .. ".",
            "Complete the event inside the library.",
        },
    },

    [156] = {
        name = 'For Whom Do We Toil?',
        steps = {
            "Enter Rala Waterways.",
            "Examine " .. ACTOR.SLUICE_GATE.text .. ".",
            "Continue through the required investigation.",
        },
    },

    [162] = {
        name = 'Aiming for Ygnas',
        steps = {
            "Travel to the Gates of Castle Adoulin in Eastern Adoulin at (K-9).",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. ".",
        },
    },

    [164] = {
        name = 'Calamity in the Kitchen',
        steps = {
            "Continue from Aiming for Ygnas into Rala Waterways.",
            "Complete the kitchen-related event.",
            "Return to " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [168] = {
        name = "Arciela's Promise",
        steps = {
            "Follow Arciela into the required wilderness sequence.",
            "Return to " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [170] = {
        name = 'Predators and Prey',
        steps = {
            "Enter Rala Waterways from Western Adoulin at (F-5).",
            "Reach " .. ACTOR.SLUICE_GATE.text .. " at (C-6).",
        },
    },

    [172] = {
        name = 'Behind the Sluices',
        steps = {
            "Travel to Rala Waterways.",
            "Examine " .. ACTOR.RALA_STORAGE_CONTAINER_H6.text .. " at (H-6) to obtain the Waterway facility crank.",
            "Return to " .. ACTOR.SLUICE_GATE.text .. " at (C-6).",
            "Use the crank at the Sluice Gate to open the route.",
            "Proceed to the Antiquated Sluice Gate and enter the battlefield.",
            "Defeat the enemies in Behind the Sluices.",
        },
    },

    [178] = {
        name = 'The Leafkin Monarch',
        steps = {
            "Return to the Gates of Castle Adoulin at (K-9).",
        },
    },

    [180] = {
        name = 'Yggdrasil',
        steps = {
            "Wait until the next Vana'diel day if necessary.",
            "Speak with " .. ACTOR.LEVIL.text .. " in the Pioneers' Coalition at (E-8).",
        },
    },

    -- ========================================================
    -- CHAPTER 3
    -- ========================================================

    [184] = {
        name = 'Return of the Exorcist',
        steps = {
            "Travel to the Western Adoulin Airship Docks.",
            "Complete the event introducing Ingrid.",
        },
    },

    [186] = {
        name = 'The Merciless One',
        steps = {
            "Travel to Eastern Adoulin at (K-9).",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. ".",
        },
    },

    [188] = {
        name = 'A Curse from the Past',
        steps = {
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " at the Castle Adoulin gates.",
            "Speak with " .. ACTOR.RIGOBERTINE.text .. " at (J-7).",
            "Examine " .. ACTOR.FONTIS_XANIRA_H8.text .. " to obtain the Vial of untainted holy water.",
            "Examine " .. ACTOR.SUNRISE_BEACON_J4.text .. " to obtain the Piece of a stone wall.",
            "Speak with " .. ACTOR.ERMINOLD.text .. " to obtain the Weather vane wings.",
        },
    },

    [190] = {
        name = 'The Purgation',
        steps = {
            "Continue with the four required items from A Curse from the Past.",
            "Complete the purification sequence.",
            "Return to " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [192] = {
        name = 'The Key',
        steps = {
            "Continue the investigation into the key.",
            "Return to " .. ACTOR.ARCIELA.text .. " when directed.",
        },
    },

    [194] = {
        name = "The Princess's Dilemma",
        steps = {
            "Speak with " .. ACTOR.ARCIELA.text .. ".",
            "Proceed to the " .. ACTOR.PALACE_ADOULIN.text .. ".",
            "Complete the royal event.",
        },
    },

    [196] = {
        name = 'Dark Clouds Ahead',
        steps = {
            "Continue the royal investigation.",
            "Proceed to the required encounter.",
        },
    },

    [198] = {
        name = 'The Smallest of Favors',
        steps = {
            "Complete the requested favor in Adoulin.",
            "Return to " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [200] = {
        name = 'Summoned by Spirits',
        steps = {
            "Enter the " .. ACTOR.LIBRARY.text .. ".",
            "Complete the cutscene there.",
        },
    },

    [202] = {
        name = 'Evil Entities',
        steps = {
            "Travel to Ceizak Battlegrounds.",
            "Speak with " .. ACTOR.ELMRIC.text .. " at Frontier Station.",
        },
    },

    [204] = {
        name = 'Adoulin Calling',
        steps = {
            "Examine " .. ACTOR.BOARDING_HOUSE_H9.text .. " at (H-9) in Eastern Adoulin.",
        },
    },

    [206] = {
        name = 'The Disappearance of Nyline',
        steps = {
            "Travel to Foret de Hennetiel.",
            "Approach the Ergon Locus (Torchbloom) at (J-7)/(K-7), near the Frontier Station Waypoint.",
            "Examine " .. ACTOR.TORCHBLOOM_J7.text .. ".",
        },
    },

    [208] = {
        name = 'Shared Consciousness',
        steps = {
            "Return to " .. ACTOR.BOARDING_HOUSE_H9.text .. " at (H-9).",
        },
    },

    [210] = {
        name = 'Clear Skies',
        steps = {
            "Wait until the next Vana'diel day after the previous mission if necessary.",
            "Speak with " .. ACTOR.LEVIL.text .. " in the Pioneers' Coalition.",
        },
    },

    -- ========================================================
    -- CHAPTER 4
    -- ========================================================

    [212] = {
        name = 'The Man in Black',
        steps = {
            "Travel to the Mummers' Coalition in Western Adoulin.",
            "Speak with Masad.",
            "Win 3 rounds of Boom or Bust.",
            "If you lose, speak with Masad twice to try again.",
        },
    },

    [214] = {
        name = 'To the Victor...',
        steps = {
            "Continue the Teodor sequence from the Mummers' Coalition.",
            "Complete the resulting event.",
        },
    },

    [216] = {
        name = 'An Extraordinary Gentleman',
        steps = {
            "Continue the investigation into the Gentleman.",
            "Complete the required event.",
        },
    },

    [220] = {
        name = "The Order's Treasures",
        steps = {
            "Enter the " .. ACTOR.LIBRARY.text .. ".",
            "Complete the cutscene inside the library.",
        },
    },

    [222] = {
        name = "August's Heirloom",
        steps = {
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " at the Castle Adoulin gates in Eastern Adoulin at (K-9).",
        },
    },

    [224] = {
        name = 'Beauty and the Beast',
        steps = {
            "Continue the storyline following Ingrid's appearance.",
            "Complete the required event.",
        },
    },

    [226] = {
        name = 'Wildcat with a Gold Pelt',
        steps = {
            "Return to the Gates of Castle Adoulin in Eastern Adoulin.",
        },
    },

    [228] = {
        name = 'In Search of Arciela',
        steps = {
            "Speak with " .. ACTOR.LEVIL.text .. " in the Pioneers' Coalition.",
        },
    },

    [232] = {
        name = 'Looking For Leads',
        steps = {
            "Continue the search for Arciela.",
            "Follow the leads through Adoulin.",
        },
    },

    [234] = {
        name = 'Drifting Northwest',
        steps = {
            "Travel northwest through Ulbuka.",
            "Follow the trail to the required location.",
        },
    },

    [236] = {
        name = 'Kumhau, the Flashfrost Naakual',
        steps = {
            "Travel to Kamihr Drifts.",
            "Reach the Wildskeeper Reive area.",
            "Defeat Kumhau.",
        },
    },

    [242] = {
        name = 'Soul Siphon',
        steps = {
            "Continue the investigation following Kumhau.",
            "Proceed to the required encounter.",
        },
    },

    [244] = {
        name = 'Stonewalled',
        steps = {
            "Enter the Stonewalled battlefield.",
            "Defeat the required enemies.",
        },
    },

    [248] = {
        name = 'Salvation',
        steps = {
            "Continue the events after Stonewalled.",
            "Complete the cutscene.",
            "Wait until the next Vana'diel day before Glimmer of Portent.",
        },
    },

    [250] = {
        name = 'Glimmer of Portent',
        steps = {
            "Wait until the next Vana'diel day.",
            "Speak with " .. ACTOR.LEVIL.text .. " at the Pioneers' Coalition.",
        },
    },

    [252] = {
        name = '...Into the Fire',
        steps = {
            "Travel to the Mummers' Coalition.",
            "Speak with the relevant coalition representative to continue the Teodor sequence.",
        },
    },

    [254] = {
        name = 'Melvien de Malecroix',
        steps = {
            "Speak with " .. ACTOR.MELVIEN.text .. ".",
            "Continue the investigation into Melvien.",
        },
    },

    [256] = {
        name = 'Courier Catastrophe',
        steps = {
            "Complete the required Courier Coalition task.",
            "Deliver the requested item.",
            "Return and report the result.",
        },
    },

    [258] = {
        name = 'Done and Delivered',
        steps = {
            "Complete the delivery requested by the mission.",
            "Return to the issuing NPC.",
        },
    },

    [260] = {
        name = 'Ministerial Whispers',
        steps = {
            "Proceed to the " .. ACTOR.PALACE_ADOULIN.text .. ".",
            "Complete the royal event.",
            "Wait until the next Vana'diel day before continuing if necessary.",
        },
    },

    [262] = {
        name = 'A Day in the Life of a Pioneer',
        steps = {
            "Complete the required Pioneer Coalition assignments.",
            "Return to the Pioneers' Coalition and speak with " .. ACTOR.BRENTON.text .. ".",
        },
    },

    [264] = {
        name = 'Lighting the Way',
        steps = {
            "Enter the " .. ACTOR.LIBRARY.text .. ".",
            "Research the required history.",
            "Continue to the designated Ulbukan area.",
        },
    },

    [266] = {
        name = "Sajj'aka",
        steps = {
            "Travel to Kamihr Drifts.",
            "Meet Sajj'aka near " .. ACTOR.KAMIHR_PEAK.text .. ".",
            "Return to the " .. ACTOR.LIBRARY.text .. ".",
            "Research August Adoulin's history.",
        },
    },

    [268] = {
        name = 'Studying Up',
        steps = {
            "Enter the " .. ACTOR.LIBRARY.text .. ".",
            "Read the required history concerning August and his retinue.",
        },
    },

    [270] = {
        name = 'A Vow of Truth',
        steps = {
            "Continue the investigation following the library research.",
            "Complete the event with " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [272] = {
        name = 'Darrcuiln',
        steps = {
            "Travel to the required Ulbukan area.",
            "Meet Darrcuiln.",
        },
    },

    [274] = {
        name = 'The Gates',
        steps = {
            "Travel to Woh Gates.",
            "Examine " .. ACTOR.DARKENED_CREVICE_G8.text .. ".",
            "Enter the battlefield.",
            "Defeat the waves of Umbrils.",
        },
    },

    -- ========================================================
    -- CHAPTER 5
    -- ========================================================

    [278] = {
        name = 'Morimar',
        steps = {
            "Travel to Kamihr Drifts.",
            "Continue Morimar's storyline.",
        },
    },

    [280] = {
        name = 'A New Force Arises',
        steps = {
            "Travel to Outer Ra'Kaznar through Kamihr Drifts.",
            "Continue the investigation with " .. ACTOR.MORIMAR.text .. ".",
        },
    },

    [282] = {
        name = 'The Sacred Sapling',
        steps = {
            "Travel to the designated forest area.",
            "Investigate the Sacred Sapling.",
            "Continue the World Tree sequence.",
        },
    },

    [284] = {
        name = 'Tree Grafting',
        steps = {
            "Continue the World Tree sequence.",
            "Collect the required grafting materials.",
            "Complete the grafting sequence.",
        },
    },

    [286] = {
        name = 'A Shrouded Canopy',
        steps = {
            "Travel through the forest canopy.",
            "Investigate the disturbance.",
        },
    },

    [288] = {
        name = 'Leafallia',
        steps = {
            "Travel to " .. ACTOR.LEAFALLIA.text .. ".",
            "Enter Leafallia.",
        },
    },

    [290] = {
        name = "Rosulatia's Promise",
        steps = {
            "Continue through " .. ACTOR.LEAFALLIA.text .. ".",
            "Complete Rosulatia's event.",
        },
    },

    [292] = {
        name = 'The Lightsland',
        steps = {
            "Continue through the Leafallia sequence.",
        },
    },

    [294] = {
        name = 'The Light of Dawn Comes...',
        steps = {
            "Continue the Leafallia sequence.",
            "Proceed to the World Tree.",
        },
    },

    [296] = {
        name = 'Cries from the Deep',
        steps = {
            "Travel to " .. ACTOR.OUTER_RAKAZNAR.text .. ".",
            "Investigate the disturbance from the depths.",
        },
    },

    [298] = {
        name = 'Seeds of Doubt',
        steps = {
            "Continue the investigation into the mysterious seeds.",
        },
    },

    [300] = {
        name = 'The Tomatoes of Wrath',
        steps = {
            "Obtain the requested tomatoes.",
            "Deliver them to the requested NPC.",
        },
    },

    [302] = {
        name = 'A Grave Mistake',
        steps = {
            "Examine " .. ACTOR.SAINENE.text .. ".",
            "Examine " .. ACTOR.WATERWAYS_OVERLOOK_I6.text .. ".",
            "Examine " .. ACTOR.STOUT_WEIR.text .. ".",
            "Return to the Castle Adoulin gates and report to " .. ACTOR.POHL_TRISHBAHK.text .. ".",
        },
    },

    [306] = {
        name = 'An Emergency Convocation',
        steps = {
            "Proceed to the " .. ACTOR.PALACE_ADOULIN.text .. ".",
            "Attend the emergency convocation.",
        },
    },

    [308] = {
        name = 'Balamor, the Deathborne Xol',
        steps = {
            "Proceed to the Balamor encounter.",
            "Enter the battlefield.",
            "Defeat Balamor.",
        },
    },

    [310] = {
        name = 'Anagnorisis',
        steps = {
            "Continue after the Balamor encounter.",
            "Complete the revelation event.",
        },
    },

    [312] = {
        name = 'Just the Thing',
        steps = {
            "Obtain the requested item.",
            "Deliver it to " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [314] = {
        name = 'Sugarcoated Salvation',
        steps = {
            "Complete the requested preparation.",
            "Deliver the requested item to " .. ACTOR.ARCIELA.text .. ".",
        },
    },

    [316] = {
        name = "Arciela's Resolve",
        steps = {
            "Speak with " .. ACTOR.ARCIELA.text .. ".",
            "Follow the required sequence.",
        },
    },

    [318] = {
        name = "Balamor's Ruse",
        steps = {
            "Defeat enemies in Rala Waterways until you obtain a Consummate simulacrum.",
            "Travel to the Augural Conveyor at (B-6).",
            "Use the Consummate simulacrum at the Augural Conveyor to enter the battlefield.",
            "Defeat Balamor and the three Dullahan.",
        },
    },

    [320] = {
        name = 'The Charlatan',
        steps = {
            "Continue the investigation into the charlatan.",
            "Follow " .. ACTOR.TEODOR.text .. "'s instructions.",
        },
    },

    [324] = {
        name = 'Royal Blessings',
        steps = {
            "Attend the royal ceremony at the " .. ACTOR.PALACE_ADOULIN.text .. ".",
        },
    },

    [326] = {
        name = 'Arboreal Rumors',
        steps = {
            "Travel to " .. ACTOR.LEAFALLIA.text .. ".",
            "Investigate the latest arboreal rumors.",
        },
    },

    [328] = {
        name = "Arciela's Missive",
        steps = {
            "Read the Hastily scribbled note in Temporary Key Items.",
            "Examine " .. ACTOR.SUNRISE_BEACON_J4.text .. ".",
        },
    },

    [330] = {
        name = 'Heroes, Unite!',
        steps = {
            "Gather the required allies.",
            "Proceed to the royal meeting at the " .. ACTOR.PALACE_ADOULIN.text .. ".",
        },
    },

    [332] = {
        name = 'A Portent Most Ominous',
        steps = {
            "Travel to " .. ACTOR.LEAFALLIA.text .. ".",
            "Examine " .. ACTOR.AGED_STUMP_H8.text .. " at (H-8).",
            "Receive the required pome key items.",
        },
    },

    [334] = {
        name = 'Yggdrasil Beckons',
        steps = {
            "Return to " .. ACTOR.YGGDRASIL.text .. ".",
        },
    },

    [336] = {
        name = 'Returning to the Trees',
        steps = {
            "Return to " .. ACTOR.YGGDRASIL.text .. ".",
        },
    },

    [338] = {
        name = 'The Key to the Turris',
        steps = {
            "Reach the bottom of " .. ACTOR.TURRIS.text .. ".",
            "Examine the Ominous Postern.",
            "If the route requires the Silvery Plate, travel to Outer Ra'Kaznar and examine " .. ACTOR.OUTER_RAKAZNAR_QQ_C7.text .. ".",
        },
    },

    -- ========================================================
    -- FINAL CHAPTER
    -- ========================================================

    [342] = {
        name = "Teodor's Summons",
        steps = {
            "Follow " .. ACTOR.TEODOR.text .. "'s summons.",
        },
    },

    [344] = {
        name = 'The Seventh Guardian',
        steps = {
            "Travel to " .. ACTOR.OUTER_RAKAZNAR.text .. ".",
            "Continue to the Seventh Guardian.",
        },
    },

    [346] = {
        name = 'Watery Grave',
        steps = {
            "Enter " .. ACTOR.RAKAZNAR_INNER.text .. ".",
            "Proceed to the Watery Grave battlefield.",
            "Defeat Teodor.",
        },
    },

    [350] = {
        name = 'Blood for Blood',
        steps = {
            "Continue through " .. ACTOR.RAKAZNAR_INNER.text .. ".",
            "Reach the bottom of " .. ACTOR.TURRIS.text .. ".",
            "Examine the Ominous Postern.",
            "Complete the required battle.",
        },
    },

    [352] = {
        name = 'Reckoning',
        steps = {
            "Enter the Reckoning battlefield in " .. ACTOR.RAKAZNAR_INNER.text .. ".",
            "Defeat the required enemy.",
        },
    },

    [356] = {
        name = 'Abomination',
        steps = {
            "Enter the Abomination battlefield in " .. ACTOR.RAKAZNAR_INNER.text .. ".",
            "Defeat Hades.",
        },
    },

    [360] = {
        name = 'Undying Light',
        steps = {
            "Enter Western Adoulin from Ceizak Battlegrounds.",
            "Proceed to the Castle Gates in Eastern Adoulin.",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " and complete the final sequence.",
        },
    },

    [368] = {
        name = 'The Light Within',
        steps = {
            "Wait until the next Vana'diel day after Undying Light.",
            "Zone into Ceizak Battlegrounds for the final event.",
            "Return to the Castle Gates in Eastern Adoulin.",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " for the final reward sequence.",
            "Choose your ring reward.",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " again afterward to obtain Trust: Arciela.",
        },
    },
}

return M