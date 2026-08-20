--[[
    Rhapsodies of Vana'diel - Mission Database
    ============================================

    M.MISSIONS:
        Official mission IDs extracted from DAT 0xD9BD.

    M.STEPS:
        Walkthrough entries organized by chapter/mission position.

    The numeric mission IDs and walkthrough IDs are intentionally
    kept as separate systems.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'Rhapsodies of Vana\'diel',
    [110] = 'Resonance',
    [111] = 'Emissary from the Seas',
    [112] = 'Set Free',
    [114] = 'The Beginning',
    [118] = 'Flames of Prayer',
    [120] = 'The Path Untraveled',
    [126] = 'At the Heavens\' Door',
    [128] = 'The Lion\'s Roar',
    [130] = 'Eddies of Despair',
    [134] = 'A Land After Time',
    [136] = 'Fate\'s Call',
    [138] = 'What Lies Beyond',
    [140] = 'The Ties That Bind',
    [142] = 'Impurity',
    [144] = 'The Lost Avatar',
    [148] = 'Volto Oscuro',
    [150] = 'Ring My Bell',
    [152] = 'Spirits Awoken',
    [154] = 'Crashing Waves',
    [156] = 'Call to Serve',
    [158] = 'Numbering Days',
    [160] = 'Inescapable Binds',
    [162] = 'Desert Winds',
    [164] = 'Ever Forward',
    [168] = 'The Endless Sky',
    [170] = 'Aphmau\'s Light',
    [172] = 'Reunited',
    [174] = 'Take Wing',
    [176] = 'Prime Number',
    [178] = 'From the Ruins',
    [180] = 'Cauterize',
    [186] = 'Uncertain Destinations',
    [188] = 'Ganged Up On',
    [191] = 'Sacrifice',
    [194] = 'Somber Dreams',
    [200] = 'Of Light and Darkness',
    [202] = 'Temporary Farewells',
    [204] = 'Brushing Up',
    [206] = 'Keep On Giving',
    [208] = 'Past Imperfect',
    [209] = 'The Cursed Temple',
    [211] = 'Wisdom of Our Forefathers',
    [212] = 'Where Divinities Collide',
    [214] = 'Visions of Dread',
    [216] = 'To the Skies',
    [218] = 'Escha - Ru\'Aun',
    [222] = 'The Decisive Heroine',
    [224] = 'Fall from Grace',
    [226] = 'Banishing the Darkness',
    [228] = 'Over the Rainbow',
    [230] = 'Cacophonous Discord',
    [232] = 'Eddies of Despair',
    [234] = 'Pretender to the Throne',
    [238] = 'Banished',
    [240] = 'Call of the Void',
    [244] = 'Both Paths Taken',
    [250] = 'The Man Behind the Mask',
    [252] = 'Uncertain Futures',
    [254] = 'Darkness Beckons',
    [258] = 'The Brewing Storm',
    [260] = 'The River Runs Red',
    [262] = 'The Crucible',
    [263] = 'Forward Thinking',
    [264] = 'Tears of the Generals',
    [266] = 'What He Left Behind',
    [268] = 'Gone but Not Forgotten',
    [269] = 'August Artifacts',
    [270] = 'Solemnity',
    [272] = 'Eyes on You',
    [274] = 'Exploring the Ruins',
    [278] = 'Become Something More',
    [280] = 'Unshakable Nightmares',
    [282] = 'What Remains of Hope',
    [286] = 'Death Cares Not',
    [288] = 'No Time like the Future',
    [292] = 'Sin',
    [296] = 'Penance',
    [298] = 'Vessel of Light',
    [300] = 'The Lifestream of Reisenjima',
    [302] = 'From West to East',
    [304] = 'Good Things Come in Threes',
    [306] = 'Tackling the Problem',
    [308] = 'Way to Divinity',
    [310] = 'The Winds of Time',
    [314] = 'Calm After the Storm',
    [318] = 'Nary a Cloud in Sight',
    [320] = 'An Unending Song',
    [324] = 'A Deep Sleep',
    [326] = 'Guardians',
    [328] = 'Iroha in Distress',
    [330] = 'Absolute Trust',
    [332] = 'The Orb\'s Radiance',
    [334] = 'A Rhapsody for the Ages',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- CHAPTER 1
    -- Creation and Rebirth
    -- ========================================================

    ['1-1'] = {
        name = "Rhapsodies of Vana'diel",
        steps = {
            "Enter your home nation after reaching level 3.",
            "San d'Oria: Southern San d'Oria (H-8), Northern San d'Oria (J-10), or Port San d'Oria (H-9).",
            "Bastok: Bastok Mines (I-9), Bastok Markets (I-8), or Port Bastok (D-7).",
            "Windurst: Windurst Waters (F-5), Windurst Walls (C-6), Port Windurst (B-5), or Windurst Woods (J-10).",
            "If the opening event does not occur, examine a Tales' Beginning at one of those locations.",
        },
    },

    ['1-2'] = {
        name = "Resonance",
        steps = {
            "Enter Selbina or Mhaura.",
            "The town you choose determines which path you will follow in Emissary from the Seas.",
        },
    },

    ['1-3'] = {
        name = "Emissary from the Seas",
        steps = {
            "Selbina: speak with Naillina at (F-9) in the Mayor's Residence.",
            "Selbina: choose the first dialogue option, \"You wanted an adventurer?\"",
            "Mhaura: speak with Numi Adaligo at (F-9) in the Governor's House.",
            "Mhaura: choose the first dialogue option, \"You're searching for adventurers?\"",
        },
    },

    ['1-4'] = {
        name = "Set Free",
        steps = {
            "Selbina: obtain 3 Bee Pollen from Huge Wasps in La Theine Plateau or Konschtat Highlands, or purchase them from the Auction House.",
            "Selbina: return to Selbina and trade all 3 Bee Pollen to Abelard.",
            "Mhaura: obtain 3 Mandragora Dewdrops from Pygmaioi in Tahrongi Canyon, or purchase them from the Auction House.",
            "Mhaura: return to Mhaura and trade all 3 Mandragora Dewdrops to Ekokoko.",
            "If your Support Job is not unlocked, the mission awards Gilgamesh's introductory letter instead of a Copper Voucher.",
        },
    },

    ['1-5'] = {
        name = "The Beginning",
        steps = {
            "Selbina: speak with Pacomart at (H-10) to travel to Norg.",
            "Selbina: examine " .. ACTOR.NORG_OAKEN_DOOR.text .. " in Norg.",
            "Mhaura: speak with Tonasav at (H-9) to travel to Norg.",
            "Mhaura: examine " .. ACTOR.NORG_OAKEN_DOOR.text .. " in Norg.",
        },
    },

    ['1-6'] = {
        name = "Flames of Prayer",
        steps = {
            "Examine " .. ACTOR.NORG_OAKEN_DOOR.text .. " in Norg again.",
            "Receive Rhapsody in White.",
        },
    },

    ['1-7'] = {
        name = "The Path Untraveled",
        steps = {
            "Reach Rank 3 in your home nation.",
            "Examine a Shattered Telepoint at the Crag of Holla, Dem, or Mea.",
            "Choose the Qufim Island response to continue.",
            "If the relevant rank missions were already completed, speak with Halver at Chateau d'Oraguille (I-9) for Cipher: Halver's Alter Ego.",
            "If the relevant rank missions were already completed, speak with Kupipi in Heavens Tower for Cipher: Semih's Alter Ego.",
            "Receive Rhapsody in White.",
        },
    },

    ['1-8'] = {
        name = "At the Heavens' Door",
        steps = {
            "Travel to Qufim Island and head to Home Point #1 at (G-8).",
            "Examine " .. ACTOR.QUFIM_UNDULATING_CONFLUENCE.text,
        },
    },

    ['1-9'] = {
        name = "The Lion's Roar",
        steps = {
            "Return to Home Point #1 at (G-8) in Qufim Island.",
            "Prepare for the battle and examine " .. ACTOR.QUFIM_UNDULATING_CONFLUENCE.text,
            "Defeat Ophiotaurus.",
        },
    },

    ['1-10'] = {
        name = "Eddies of Despair",
        steps = {
            "After defeating Ophiotaurus, examine " .. ACTOR.QUFIM_UNDULATING_CONFLUENCE.text .. " again.",
        },
    },

    ['1-11'] = {
        name = "A Land After Time",
        steps = {
            "Return to the Shattered Telepoint at the Crag of Holla, Dem, or Mea.",
            "Examine the Shattered Telepoint.",
            "Receive Rhapsody in Umber and Cipher: Lion's Alter Ego II.",
        },
    },

    ['1-12'] = {
        name = "Fate's Call",
        steps = {
            "Reach Rank 6 in your home nation by completing the required Rank missions through The Shadow Lord.",
            "San d'Oria: complete The Shadow Lord.",
            "Bastok: complete Xarcabard, Land of Truths.",
            "Windurst: complete The Shadow Awaits.",
            "After reaching Rank 6, enter your home nation.",
            "Continue to Norg and examine the Oaken Door if the Rank 6 event does not advance your progression.",
        },
    },

    ['1-13'] = {
        name = "What Lies Beyond",
        steps = {
            "Examine " .. ACTOR.NORG_GILGAMESH_OAKEN_DOOR.text .. " in Norg.",
        },
    },

    ['1-14'] = {
        name = "The Ties That Bind",
        steps = {
            "Travel to (J-12) in Sea Serpent Grotto.",
            "Examine " .. ACTOR.SEA_SERPENT_GROTTO_QQ_J12.text .. ".",
        },
    },

    ['1-15'] = {
        name = "Impurity",
        steps = {
            "Travel to Yuhtunga Jungle.",
            "Examine " .. ACTOR.YUHTUNGA_QQ_F11.text .. " at (F-11).",
        },
    },

    ['1-16'] = {
        name = "The Lost Avatar",
        steps = {
            "Examine " .. ACTOR.YUHTUNGA_QQ_F11.text .. " to begin the battle against Siren.",
            "Defeat Siren within 15 minutes.",
            "After the battle, examine " .. ACTOR.YUHTUNGA_QQ_F11.text .. " again.",
            "If you called for help during the battle, wait about one minute and examine the target again.",
            "Receive Rhapsody in Azure.",
        },
    },

    ['1-17'] = {
        name = "Volto Oscuro",
        steps = {
            "Examine " .. ACTOR.NORG_OAKEN_DOOR.text .. " in Norg.",
            "Receive Cipher: Zeid II.",
        },
    },

    ['1-18'] = {
        name = "Ring My Bell",
        steps = {
            "Examine " .. ACTOR.NORG_GILGAMESH_OAKEN_DOOR.text .. " in Norg multiple times.",
            "Enter Gilgamesh's room and speak with him at (K-8).",
        },
    },

    -- ========================================================
    -- CHAPTER 2
    -- Revitalization
    -- ========================================================

    ['2-1'] = {
        name = "Spirits Awoken",
        steps = {
            "Travel to Lower Delkfutt's Tower.",
            "Enter Lower Delkfutt's Tower.",
        },
    },

    ['2-2'] = {
        name = "Crashing Waves",
        steps = {
            "Complete Chains of Promathia through The Road Forks.",
            "Travel to Ru'Lude Gardens.",
            "Approach the Palace and Audience Chamber area around (H-7).",
        },
    },

    ['2-3'] = {
        name = "Call to Serve",
        steps = {
            "Travel to Port Jeuno.",
            "Enter Port Jeuno.",
            "Receive Cipher: Prishe's Alter Ego II.",
        },
    },

    ['2-4'] = {
        name = "Numbering Days",
        steps = {
            "Travel to Upper Jeuno.",
            "Examine " .. ACTOR.MARBLE_BRIDGE.text .. " at (F-7).",
        },
    },

    ['2-5'] = {
        name = "Inescapable Binds",
        steps = {
            "Travel to Aht Urhgan Whitegate.",
            "Enter Aht Urhgan Whitegate.",
            "If you do not have access, speak with Faursel in the Tenshodo in Lower Jeuno and obtain Aht Urhgan access.",
        },
    },

    ['2-6'] = {
        name = "Desert Winds",
        steps = {
            "Obtain an Aht Urhgan boarding permit through the Tenshodo.",
            "Once the permit is obtained, travel to Aht Urhgan Whitegate.",
            "Complete the meeting with Tenzen.",
        },
    },

    ['2-7'] = {
        name = "Ever Forward",
        steps = {
            "If Treasures of Aht Urhgan is complete through Royal Puppeteer, examine " .. ACTOR.IMPERIAL_WHITEGATE.text .. ".",
            "If Treasures of Aht Urhgan is not yet complete, continue that storyline until Royal Puppeteer.",
            "If the home-nation event appears during this progression, return there and continue to Aht Urhgan Whitegate afterward.",
            "Speak with Abquhbah after the event to receive Cipher: Abquhbah.",
        },
    },

    ['2-8'] = {
        name = "The Endless Sky",
        steps = {
            "Continue Treasures of Aht Urhgan until Royal Puppeteer is complete.",
            "Continue into Aphmau's Light when the storyline advances.",
        },
    },

    ['2-9'] = {
        name = "Aphmau's Light",
        steps = {
            "Continue Treasures of Aht Urhgan until Aphmau's storyline has advanced far enough for Rhapsodies to proceed.",
            "Examine " .. ACTOR.IMPERIAL_WHITEGATE.text .. " when directed.",
            "Receive Cipher: Nashmeira's Alter Ego II.",
        },
    },

    ['2-10'] = {
        name = "Reunited",
        steps = {
            "Examine " .. ACTOR.IMPERIAL_WHITEGATE.text .. " after Aphmau's return.",
        },
    },

    ['2-11'] = {
        name = "Take Wing",
        steps = {
            "Continue the Tenzen and Aphmau events until the next Rhapsodies mission becomes available.",
        },
    },

    ['2-12'] = {
        name = "Prime Number",
        steps = {
            "Travel to Alzadaal Undersea Ruins.",
            "Enter through the Chamber of Passage and reach the Nyzul Isle Staging Point.",
            "Use 200 Imperial Standing to travel to the staging point, or use an Assault tag to enter Nyzul Isle Investigation and reach Alzadaal Undersea Ruins.",
            "Enter Alzadaal Undersea Ruins.",
        },
    },

    ['2-13'] = {
        name = "From the Ruins",
        steps = {
            "Return to Aht Urhgan Whitegate.",
            "Examine " .. ACTOR.IMPERIAL_WHITEGATE.text .. " at the Palace Door.",
            "Receive Rhapsody in Crimson.",
        },
    },

    ['2-14'] = {
        name = "Cauterize",
        steps = {
            "Examine the sparkling ??? beside a Cavernous Maw in Batallia Downs, Rolanberry Fields, or Sauromugue Champaign.",
            "The corresponding [S] Cavernous Maw locations can also be used.",
        },
    },

    ['2-15'] = {
        name = "Uncertain Destinations",
        steps = {
            "Examine the sparkling ??? beside a Cavernous Maw in Batallia Downs, Rolanberry Fields, or Sauromugue Champaign.",
            "The corresponding [S] locations can also be used.",
            "If Wings of the Goddess has not been started, receive Lightsworm here.",
        },
    },

    ['2-16'] = {
        name = "Ganged Up On",
        steps = {
            "If Wings of the Goddess is complete, examine the sparkling ??? beside a Cavernous Maw in Batallia Downs, Rolanberry Fields, or Sauromugue Champaign.",
            "If Wings of the Goddess is incomplete, progress to at least In the Name of the Father and zone into Southern San d'Oria (S).",
            "If the Southern San d'Oria (S) event does not occur, first examine the sparkling ??? beside a present-day Cavernous Maw.",
            "Receive Lightsworm if your Wings of the Goddess progression requires it.",
            "Receive Cipher: Lilisette's Alter Ego II.",
        },
    },

    ['2-17'] = {
        name = "Sacrifice",
        steps = {
            "Enter the Walk of Echoes.",
            "Reach the top of the stairs and examine " .. ACTOR.ORNATE_DOOR_WALK.text .. ".",
            "Continue through the event into Grauberg (S).",
        },
    },

    ['2-18'] = {
    name = "Somber Dreams",
    steps = {
        "Continue from Grauberg (S) at (F-5) after the previous mission's event.",
        "Examine " .. ACTOR.GRAUBERG_QQ_H6.text .. " to face Cetus.",
        "Defeat Cetus.",
        "Examine " .. ACTOR.GRAUBERG_QQ_H6.text .. " again.",
        "Examine the ??? beside " .. ACTOR.VERIDICAL_CONFLUX_WOTG.text .. " to enter the Walk of Echoes.",
    },
},

    ['2-19'] = {
        name = "Of Light and Darkness",
        steps = {
            "Travel to Norg.",
            "Examine " .. ACTOR.NORG_GILGAMESH_OAKEN_DOOR.text .. ".",
        },
    },

    ['2-20'] = {
        name = "Temporary Farewells",
        steps = {
            "Travel to Misareaux Coast (G-5).",
            "Examine " .. ACTOR.MISAREAUX_UNDULATING_CONFLUENCE.text .. " and the nearby sparkling ???.",
        },
    },

    ['2-21'] = {
        name = "Brushing Up",
        steps = {
            "Return to Misareaux Coast (G-5).",
            "Examine the ??? next to " .. ACTOR.MISAREAUX_UNDULATING_CONFLUENCE.text .. ".",
            "Choose one training focus for Iroha: Strength, Endurance, or Style.",
        },
    },

    ['2-22'] = {
        name = "Keep On Giving",
        steps = {
            "Trade the requested training item to the ??? near " .. ACTOR.MISAREAUX_UNDULATING_CONFLUENCE.text .. " at (G-5).",
            "Strength training: trade a Beef Stewpot.",
            "Endurance training: trade a serving of Zaru Soba.",
            "Style training: trade 30 Spicy Crackers.",
            "Choose the dialogue option concerning Altana's help when prompted.",
        },
    },

    ['2-23'] = {
        name = "Past Imperfect",
        steps = {
            "Travel to Norg.",
            "Examine " .. ACTOR.NORG_GILGAMESH_OAKEN_DOOR.text .. ".",
            "If Gilgamesh directs you to Jakoh Wahcondalo, speak with " .. ACTOR.JAKOH.text .. " at (J-9) in Kazham.",
            "Return to Norg and examine " .. ACTOR.NORG_OAKEN_DOOR.text .. " again.",
        },
    },

    ['2-24'] = {
        name = "The Cursed Temple",
        steps = {
            "Progress Rise of the Zilart through Headstone Pilgrimage.",
            "Travel to Temple of Uggalepih.",
            "Enter Temple of Uggalepih and reach the Granite Door at (J-6).",
            "Examine " .. ACTOR.GRANITE_DOOR_ROV.text .. ".",
        },
    },

    ['2-25'] = {
        name = "Wisdom of Our Forefathers",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Enter the Hall of Transference through the Shattered Telepoint.",
        },
    },

    ['2-26'] = {
        name = "Where Divinities Collide",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Enter the Hall of Transference.",
        },
    },

    ['2-27'] = {
        name = "Visions of Dread",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Enter the Hall of Transference.",
        },
    },

    ['2-28'] = {
        name = "To the Skies",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Enter the Hall of Transference.",
        },
    },

    ['2-29'] = {
        name = "Escha - Ru'Aun",
        steps = {
            "Enter Escha - Ru'Aun.",
        },
    },

    ['2-30'] = {
        name = "The Decisive Heroine",
        steps = {
            "Enter Escha - Ru'Aun.",
            "Head north up the ramp, then take the first left and continue west-northwest toward (H-10).",
            "Examine the blue ??? at the top of the stairs.",
            "Receive Siren's plume and Rhapsody in Emerald.",
        },
    },

    ['2-31'] = {
        name = "Fall from Grace",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Enter the Hall of Transference through the Shattered Telepoint.",
        },
    },

    ['2-32'] = {
        name = "Banishing the Darkness",
        steps = {
            "Travel to Norg.",
            "Examine " .. ACTOR.NORG_OAKEN_DOOR.text .. ".",
        },
    },

    ['2-33'] = {
        name = "Over the Rainbow",
        steps = {
            "Travel to Windurst Walls.",
            "Speak with " .. ACTOR.SHANTOTTO.text .. " at Shantotto's Manor.",
            "Receive Most curious curio.",
        },
    },

    ['2-34'] = {
        name = "Cacophonous Discord",
        steps = {
            "Travel to Misareaux Coast.",
            "Examine " .. ACTOR.MISAREAUX_UNDULATING_CONFLUENCE.text .. " and enter Escha - Ru'Aun.",
        },
    },

    ['2-35'] = {
        name = "Eddies of Despair",
        steps = {
            "Enter Escha - Ru'Aun.",
            "Collect an Eschan Droplet at each required location and use the corresponding Eschan Portal to reach the next area.",
            "Continue through the portals until you reach Portal #15.",
            "Examine the shining ??? at " .. ACTOR.ESCHAN_PORTAL_15.text .. ".",
        },
    },

    ['2-36'] = {
        name = "Pretender to the Throne",
        steps = {
            "Reach " .. ACTOR.ESCHAN_PORTAL_15.text .. ".",
            "Examine " .. ACTOR.ESCHA_QQ_15.text .. " to begin the battle against Bala-bee.",
            "Defeat Bala-bee.",
            "Examine " .. ACTOR.ESCHA_QQ_15.text .. " again.",
            "Receive Cipher: Balamor's Alter Ego.",
        },
    },

    ['2-37'] = {
        name = "Banished",
        steps = {
            "Travel to Norg.",
            "Examine " .. ACTOR.NORG_OAKEN_DOOR.text .. ".",
        },
    },

    ['2-38'] = {
        name = "Call of the Void",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Examine the Dimensional Portal.",
            "Receive Cipher: Selh'teus.",
        },
    },

    ['2-39'] = {
        name = "Both Paths Taken",
        steps = {
            "Travel to Empyreal Paradox.",
            "Walk to " .. ACTOR.TRANSCENDENTAL_RADIANCE.text .. ".",
            "Enter the battlefield and defeat Disjoined One within 15 minutes.",
        },
    },

    ['2-40'] = {
        name = "The Man Behind the Mask",
        steps = {
            "Return to Norg.",
            "Examine " .. ACTOR.NORG_OAKEN_DOOR.text .. ".",
            "Receive Rhapsody in Mauve.",
        },
    },

    ['2-41'] = {
        name = "Uncertain Futures",
        steps = {
            "Enter the Walk of Echoes through a sparkling blue ??? beside a Cavernous Maw.",
            "Complete the required event there.",
            "Receive Lightsworm if your Wings of the Goddess progression has already been completed.",
        },
    },

    -- ========================================================
    -- CHAPTER 3
    -- Reckoning
    -- ========================================================

    ['3-1'] = {
        name = "Darkness Beckons",
        steps = {
            "Travel to the Crag of Holla, Dem, or Mea.",
            "Examine the Dimensional Portal and choose to travel to Reisenjima.",
            "Enter Reisenjima.",
        },
    },

    ['3-2'] = {
        name = "The Brewing Storm",
        steps = {
            "Travel to Reisenjima.",
            "Defeat 3 Perfervid Narakas near Ethereal Ingress #6 between 20:00 and 04:00.",
        },
    },

    ['3-3'] = {
        name = "The River Runs Red",
        steps = {
            "Examine " .. ACTOR.CEIZAK_ETCHED_ROCK.text .. ".",
            "Receive Rhapsody in Fuchsia.",
        },
    },

    ['3-4'] = {
        name = "The Crucible",
        steps = {
            "Complete Seekers of Adoulin through Meeting of the Minds.",
            "Complete The Geomagnetron.",
            "Speak with Darcia in Lower Jeuno.",
            "Enter Ceizak Battlegrounds.",
        },
    },

    ['3-5'] = {
        name = "Forward Thinking",
        steps = {
            "Enter Ceizak Battlegrounds.",
        },
    },

    ['3-6'] = {
        name = "Tears of the Generals",
        steps = {
            "Complete Seekers of Adoulin through An Aimless Journey.",
            "Speak with " .. ACTOR.POHL_TRISHBAHK.text .. " at the gates of Castle Adoulin.",
        },
    },

    ['3-7'] = {
        name = "What He Left Behind",
        steps = {
            "Travel to the Augural Conveyor room in Rala Waterways (B-6).",
            "Examine " .. ACTOR.RALA_AUGURAL_CONVEYOR_QQ.text .. ".",
            "Receive Cipher: Arciela II.",
        },
    },

    ['3-8'] = {
        name = "Gone but Not Forgotten",
        steps = {
            "Enter Rala Waterways from Western Adoulin or use the Rala Waterways Waypoint.",
            "Examine " .. ACTOR.SLUICE_GATE.text .. ".",
            "Examine " .. ACTOR.INCONSPICUOUS_BARREL.text .. " to obtain the Founder king's orb.",
        },
    },

    ['3-9'] = {
        name = "August Artifacts",
        steps = {
            "Return to the ??? near the Augural Conveyor at (C-6)/(B-6).",
            "Examine " .. ACTOR.RALA_AUGURAL_CONVEYOR_QQ.text .. ".",
        },
    },

    ['3-10'] = {
        name = "Solemnity",
        steps = {
            "Travel to Eastern Adoulin.",
            "Enter the Celennia Memorial Library.",
        },
    },

    ['3-11'] = {
        name = "Eyes on You",
        steps = {
            "Travel to Ro'Maeve.",
            "Enter the Hall of the Gods.",
        },
    },

    ['3-12'] = {
        name = "Exploring the Ruins",
        steps = {
            "Remain in the Hall of the Gods.",
            "Examine " .. ACTOR.HALL_OF_GODS_LOCATION.text .. ".",
        },
    },

    ['3-13'] = {
        name = "Become Something More",
        steps = {
            "Return to the Reisenjima Sanctorium through a Dimensional Portal at the Crag of Holla, Dem, or Mea.",
            "Receive the Dimensional Compass.",
        },
    },

    ['3-14'] = {
        name = "Unshakable Nightmares",
        steps = {
            "Enter the Walk of Echoes.",
            "If the Batallia Downs [H-5] Maw route leaves you in the wrong section for the next mission, exit and use one of the other Walk of Echoes entrances.",
            "If Champion of the Dawn blocks your progress, enter Walk of Echoes from Xarcabard (S) and complete the required Wings of the Goddess progression first.",
        },
    },

    ['3-15'] = {
        name = "What Remains of Hope",
        steps = {
            "Enter the correct section of Walk of Echoes.",
            "Examine " .. ACTOR.WALK_OF_ECHOES_GLOWING_QQ.text .. " to obtain Cait Sith's whisker.",
            "Continue to Desuetia - Empyreal Paradox.",
        },
    },

    ['3-16'] = {
        name = "Death Cares Not",
        steps = {
            "Examine " .. ACTOR.TRANSCENDENTAL_RADIANCE.text .. ".",
        },
    },

    ['3-17'] = {
        name = "No Time like the Future",
        steps = {
            "Examine " .. ACTOR.TRANSCENDENTAL_RADIANCE.text .. " to enter the battlefield.",
            "Defeat Sempurne.",
        },
    },

    ['3-18'] = {
        name = "Sin",
        steps = {
            "Examine " .. ACTOR.TRANSCENDENTAL_RADIANCE.text .. ".",
        },
    },

    ['3-19'] = {
        name = "Penance",
        steps = {
            "Continue through the events following Sin.",
            "Receive Rhapsody in Puce.",
        },
    },

    ['3-20'] = {
        name = "Vessel of Light",
        steps = {
            "Return to the Reisenjima Sanctorium.",
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. ".",
        },
    },

    ['3-21'] = {
        name = "The Lifestream of Reisenjima",
        steps = {
            "Travel to the ??? at (H-5), immediately beside the large ruins.",
            "Examine " .. ACTOR.REISENJIMA_QQ_H5.text .. ".",
        },
    },

    ['3-22'] = {
        name = "From West to East",
        steps = {
            "Travel to Reisenjima.",
            "Defeat 11 Obstreperous Panopts around (F-11), north of Ethereal Ingress #1.",
            "Remain in the area until all 11 have been defeated, as zoning resets your progress.",
        },
    },

    ['3-23'] = {
        name = "Good Things Come in Threes",
        steps = {
            "Examine " .. ACTOR.CEIZAK_ETCHED_ROCK.text .. ".",
        },
    },

    ['3-24'] = {
        name = "Tackling the Problem",
        steps = {
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. ".",
        },
    },

    ['3-25'] = {
        name = "Way to Divinity",
        steps = {
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. ".",
        },
    },

    ['3-26'] = {
        name = "The Winds of Time",
        steps = {
            "Examine " .. ACTOR.TRANSCENDENTAL_RADIANCE.text .. " to enter the battlefield.",
            "Defeat Metus.",
        },
    },

    ['3-27'] = {
        name = "Calm After the Storm",
        steps = {
            "Continue through the events following Metus's defeat.",
        },
    },

    ['3-28'] = {
        name = "Nary a Cloud in Sight",
        steps = {
            "Continue through the remaining events with Iroha.",
            "Receive Cipher: Iroha and Rhapsody in Ochre.",
        },
    },

    ['3-29'] = {
        name = "An Unending Song",
        steps = {
            "Enter an area adjoining a Mog House in San d'Oria, Bastok, or Windurst.",
        },
    },

    ['3-30'] = {
        name = "A Deep Sleep",
        steps = {
            "Return to the Reisenjima Sanctorium.",
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. ".",
        },
    },

    ['3-31'] = {
        name = "Guardians",
        steps = {
            "Travel to the Stone Circle at (G-6) in La Theine Plateau.",
            "Examine " .. ACTOR.LA_THEINE_QQ_G6.text .. ".",
            "Receive Breath of the avatars.",
        },
    },

    ['3-32'] = {
        name = "Iroha in Distress",
        steps = {
            "Return to the Reisenjima Sanctorium.",
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. ".",
        },
    },

    ['3-33'] = {
        name = "Absolute Trust",
        steps = {
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. ".",
        },
    },

    ['3-34'] = {
        name = "The Orb's Radiance",
        steps = {
            "Examine " .. ACTOR.REISENJIMA_CRYSTAL.text .. " again to enter the battlefield.",
            "Defeat the Cloud of Darkness.",
            "If you fail, return to the Stone Circle in La Theine Plateau at (G-6) and obtain another Breath of the avatars.",
            "Receive Phoenix's blessing, Scintillating Rhapsody, and Cipher: Iroha II.",
        },
    },

    ['3-35'] = {
        name = "A Rhapsody for the Ages",
        steps = {
            "Complete the final events of the Rhapsodies of Vana'diel story.",
        },
    },
}

return M