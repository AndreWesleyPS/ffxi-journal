--[[
    Chains of Promathia - Mission Database
    ========================================

    M.MISSIONS:
        Official numeric mission IDs extracted from DAT 0xD9A7.

    M.STEPS:
        Existing walkthrough identifiers used by the Journal.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [101] = 'Ancient Flames Beckon',
    [110] = 'The Rites of Life',
    [118] = 'Below the Arks',
    [128] = 'The Mothercrystals',
    [137] = 'The Isle of Forgotten Saints',
    [138] = 'An Invitation West',
    [218] = 'The Lost City',
    [228] = 'Distant Beliefs',
    [238] = 'An Eternal Melody',
    [248] = 'Ancient Vows',
    [257] = 'A Transient Dream',
    [258] = 'The Call of the Wyrmking',
    [318] = 'A Vessel Without a Captain',
    [325] = 'The Road Forks',
    [330] = 'Emerald Waters',
    [331] = 'Vicissitudes',
    [335] = 'Descendants of a Line Lost',
    [339] = 'Louverance',
    [340] = 'Memories of a Maiden',
    [341] = 'Comedy of Errors, Act I',
    [345] = 'Comedy of Errors, Act II',
    [349] = 'Exit Stage Left',
    [350] = 'Tending Aged Wounds',
    [358] = 'Darkness Named',
    [367] = 'The Cradles of Children Lost',
    [368] = 'Sheltering Doubt',
    [418] = 'The Savage',
    [428] = 'The Secrets of Worship',
    [438] = 'Slanderous Utterings',
    [447] = 'The Return Home',
    [448] = 'The Enduring Tumult of War',
    [518] = 'Desires of Emptiness',
    [530] = 'Three Paths',
    [540] = 'Past Sins',
    [542] = 'Southern Legend',
    [543] = 'Partners Without Fame',
    [546] = 'A Century of Hardship',
    [549] = 'Departures',
    [550] = 'The Pursuit of Paradise',
    [552] = 'Spiral',
    [553] = 'Branded',
    [556] = 'Pride and Honor',
    [559] = 'And the Compass Guides',
    [560] = 'Where Messengers Gather',
    [562] = 'Entanglement',
    [564] = 'Head Wind',
    [568] = 'Flames for the Dead',
    [577] = 'Echoes of Time',
    [578] = 'For Whom the Verse Is Sung',
    [618] = 'A Place to Return',
    [628] = 'More Questions Than Answers',
    [638] = 'One to Be Feared',
    [647] = 'In the Light of the Crystal',
    [648] = 'Chains and Bonds',
    [718] = 'Flames in the Darkness',
    [728] = 'Fire in the Eyes of Men',
    [738] = 'Calm Before the Storm',
    [748] = 'The Warrior\'s Path',
    [758] = 'Emptiness Bleeds',
    [800] = 'Garden of Antiquity',
    [818] = 'A Fate Decided',
    [828] = 'When Angels Fall',
    [840] = 'Dawn',
    [850] = 'The Last Verse',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- CHAPTER 1
    -- ========================================================

    ['1-1'] = {
        name = "The Rites of Life",
        steps = {
            "Enter Lower Delkfutt's Tower in Qufim Island.",
            "Travel to Upper Jeuno.",
            "Speak with " .. ACTOR.MONBERAUX.text .. " in the Infirmary at (G-10).",
            "Receive the Mysterious Amulet.",
        },
    },

    ['1-2'] = {
        name = "Below the Arks",
        steps = {
            "Travel to Ru'Lude Gardens and speak with " .. ACTOR.PHERIMOCIEL.text .. " at (G-6) in the Grand Duke's Palace.",
            "Visit the three Halls of Transference and enter Promyvion-Dem, Promyvion-Mea, and Promyvion-Holla in any order.",
            "Examine " .. ACTOR.LARGE_APPARATUS.text .. " when entering a Promyvion for the first time.",
            "Progress through the Promyvions by defeating Memory Receptacles and following the Memory Stream portals.",
            "Return to Ru'Lude Gardens and speak with " .. ACTOR.HARITH.text .. " at (H-5) for additional information about the Emptiness.",
        },
    },

    ['1-3'] = {
        name = "The Mothercrystals",
        steps = {
            "Examine a Shattered Telepoint at one of the three Crags.",
            "At La Theine Plateau, examine " .. ACTOR.CRAG_HOLLA.text .. ".",
            "At Konschtat Highlands, examine " .. ACTOR.CRAG_DEM.text .. ".",
            "At Tahrongi Canyon, examine " .. ACTOR.CRAG_MEA.text .. ".",
            "Complete Promyvion-Dem, Promyvion-Mea, and Promyvion-Holla.",
            "Progress through each Promyvion by defeating Memory Receptacles and following the Memory Stream portals.",
            "Reach the Spire of Dem and defeat Progenerator. Obtain the Light of Dem.",
            "Reach the Spire of Holla and defeat Wreaker. Obtain the Light of Holla.",
            "Reach the Spire of Mea and defeat Delver. Obtain the Light of Mea.",
            "Obtain all three lights to gain access to the Tavnazian Archipelago.",
        },
    },

    -- ========================================================
    -- CHAPTER 2
    -- ========================================================

    ['2-1'] = {
        name = "An Invitation West",
        steps = {
            "Travel to Lufaise Meadows.",
            "Head toward the west side of the zone around (K-9).",
            "Travel west through Lufaise Meadows toward Tavnazian Safehold.",
            "Enter Tavnazian Safehold.",
        },
    },

    ['2-2'] = {
        name = "The Lost City",
        steps = {
            "Travel to the top floor of Tavnazian Safehold.",
            "Examine " .. ACTOR.TAVNAZIAN_WALNUT_DOOR_K9.text .. ".",
            "Enter the room and speak with " .. ACTOR.DESPACHIAIRE.text .. ".",
            "Examine " .. ACTOR.SEWER_ENTRANCE.text .. " to enter the Phomiuna Aqueducts.",
        },
    },

    ['2-3'] = {
        name = "Distant Beliefs",
        steps = {
            "Enter the Phomiuna Aqueducts through " .. ACTOR.SEWER_ENTRANCE.text .. " in Tavnazian Safehold.",
            "Use Sneak and Invisible while traveling through the aqueducts.",
            "Travel to the Minotaur on the second map around (J-2).",
            "Defeat the Minotaur.",
            "Open the Iron Gate at (G-8) using a Bronze Key, Skeleton Key, or Thief's Tools.",
            "Examine " .. ACTOR.WOODEN_LADDER.text .. " around (E-8).",
            "Climb the ladder and enter the upper room.",
            "Examine the correct ??? behind the bookshelf in the southwest corner.",
            "A secret door opens to the south.",
            "Follow the hallway and examine the two oil lamps corresponding to the current Vana'diel day.",
            "Examine both lamps within the short time window.",
            "The western door opens once the correct pair has been activated.",
            "Proceed through the opened passage and examine " .. ACTOR.ORNATE_GATE.text .. ".",
            "Return to Tavnazian Safehold and speak with " .. ACTOR.JUSTINIUS.text .. " at (J-6).",
        },
    },

    ['2-4'] = {
        name = "An Eternal Melody",
        steps = {
            "Travel to the top floor of Tavnazian Safehold.",
            "Examine " .. ACTOR.TAVNAZIAN_WALNUT_DOOR_K7.text .. " at (K-7).",
            "Speak with " .. ACTOR.JUSTINIUS.text .. " at (J-6) for additional information about Ulmia.",
            "Travel to Misareaux Coast.",
            "Examine " .. ACTOR.DILAPIDATED_GATE.text .. " at (I-11).",
            "Return to Tavnazian Safehold and approach the bridge around (H/I-8).",
        },
    },

    ['2-5'] = {
        name = "Ancient Vows",
        steps = {
            "Head to the Dilapidated Gate in Misareaux Coast at (F-7).",
            "Examine " .. ACTOR.DILAPIDATED_GATE.text .. ".",
            "Travel through Riverne - Site #A01.",
            "Use the " .. ACTOR.SPATIAL_DISPLACEMENT.text .. " to progress through the area.",
            "Defeat Firedrakes and obtain two Giant Scales.",
            "Use Prism Powder while traveling through areas guarded by True Sight Hippogryphs.",
            "Trade one Giant Scale to " .. ACTOR.UNSTABLE_DISPLACEMENT_G10.text .. " at (G-10).",
            "Trade the second Giant Scale to " .. ACTOR.UNSTABLE_DISPLACEMENT_E10.text .. " at (E-10).",
            "Continue north through the opened route into Monarch Linn.",
            "Enter the Ancient Vows battlefield.",
            "Defeat the three Mammet-19 Epsilon.",
        },
    },

    -- ========================================================
    -- CHAPTER 3
    -- ========================================================

    ['3-1'] = {
        name = "The Call of the Wyrmking",
        steps = {
            "Travel to Port Bastok.",
            "Approach " .. ACTOR.AIRSHIP_DEPARTURES.text .. ".",
            "Enter the Metalworks and speak with " .. ACTOR.CID.text .. " on the second floor.",
        },
    },

    ['3-2'] = {
        name = "A Vessel Without a Captain",
        steps = {
            "Travel to Lower Jeuno.",
            "Enter Neptune's Spire and examine " .. ACTOR.NEPTUNES_SPIRE_TENSHODO_DOOR.text .. ".",
            "Travel to Ru'Lude Gardens.",
            "Approach the " .. ACTOR.AUDIENCE_CHAMBER.text .. " in the Grand Duke's Palace.",
        },
    },

    ['3-3'] = {
        name = "The Road Forks",
        steps = {
            "Speak with " .. ACTOR.CID.text .. " in Bastok Metalworks and complete the San d'Oria and Windurst paths in either order.",

            "San d'Oria Path: enter Northern San d'Oria and speak with " .. ACTOR.ARNAU.text .. " at (M-6), then speak with " .. ACTOR.CHASALVIGE.text .. " in the Cathedral's Manuscript Room.",
            "Travel to Carpenters' Landing through the (E-6) entrance from Jugner Forest and speak with " .. ACTOR.GUILLOUD.text .. " at (H-10) to face Overgrown Ivy.",
            "Defeat Overgrown Ivy, then speak with " .. ACTOR.GUILLOUD.text .. " again before leaving Carpenters' Landing.",
            "Travel to Southern San d'Oria and speak with " .. ACTOR.HINAREE.text .. " at (B-6) in the Count's Manor.",

            "Windurst Path: enter Windurst Waters and speak with " .. ACTOR.OHBIRU_DOHBIRU.text .. " at (J-9), then speak with " .. ACTOR.YORAN_ORAN.text .. " at (E-5) and " .. ACTOR.KYUME_ROMEH.text .. " at (F-10).",
            "Speak with " .. ACTOR.HONOI_GOMOI.text .. " at (E-7) to obtain the Cracked Mimeo Mirror, then return to " .. ACTOR.YORAN_ORAN.text .. " at (E-5).",
            "Travel to Attohwa Chasm and examine the Loose Sand around (K-8), defeat Lioumere, then examine the Loose Sand again to obtain the Mimeo Jewel.",
            "Climb Parradamo Tor and reach the Cradle of Rebirth within 12 Vana'diel hours and 30 Vana'diel minutes. Obtain the Mimeo Feather, Second Mimeo Feather, and Third Mimeo Feather.",
            "Return to " .. ACTOR.YORAN_ORAN.text .. ", then speak with " .. ACTOR.YUJUJU.text .. " at (M-6) in Port Windurst and " .. ACTOR.TOSUKA_PORUKA.text .. " at (G-8) in Windurst Waters.",
            "Return to " .. ACTOR.YORAN_ORAN.text .. " at (E-5) to complete the Windurst path.",
            "Return to " .. ACTOR.CID.text .. " in the Metalworks after both paths are complete.",
        },
    },

    ['3-4'] = {
        name = "Tending Aged Wounds",
        steps = {
            "Travel to Lower Jeuno.",
            "Enter Neptune's Spire and examine " .. ACTOR.NEPTUNES_SPIRE_TENSHODO_DOOR.text .. ".",
        },
    },

    ['3-5'] = {
        name = "Darkness Named",
        steps = {
            "Travel to Upper Jeuno and speak with " .. ACTOR.MONBERAUX.text .. " in the Infirmary at (G-10).",
            "Travel to Lower Jeuno and speak with " .. ACTOR.GHEBI_DAMOMOHE.text .. " inside Neptune's Spire.",
            "Travel to Pso'Xja through one of the Beaucedine Glacier entrances.",
            "Defeat the monsters inside Pso'Xja until you obtain a colored chip.",
            "Return to " .. ACTOR.GHEBI_DAMOMOHE.text .. " in Lower Jeuno and trade her the chip for the Pso'Xja Pass.",
            "Return to Pso'Xja through the (H-8) entrance.",
            "Pass through the colored walls at (H-7) and (I-7) in this order: Red, Black/Purple, Red, Black/Purple.",
            "Take the elevator at (H-8) to the bottom level.",
            "Follow the northwestern path to the Stone Gate leading to The Shrouded Maw.",
            "Register the Home Point immediately beyond the Stone Gate.",
            "Rest and prepare for the battlefield.",
            "Examine " .. ACTOR.MEMENTO_CIRCLE.text .. " when you are ready.",
            "Defeat Diabolos.",
            "Return to Upper Jeuno and speak with " .. ACTOR.MONBERAUX.text .. ".",
        },
    },

    -- ========================================================
    -- CHAPTER 4
    -- ========================================================

    ['4-1'] = {
        name = "Sheltering Doubt",
        steps = {
            "Travel to Tavnazian Safehold.",
            "Speak with " .. ACTOR.DESPACHIAIRE.text .. ".",
            "Speak with " .. ACTOR.JUSTINIUS.text .. " for additional information.",
            "Travel to Misareaux Coast and examine " .. ACTOR.DILAPIDATED_GATE.text .. " at (I-11).",
        },
    },

    ['4-2'] = {
        name = "The Savage",
        steps = {
            "Travel to Misareaux Coast.",
            "Examine the " .. ACTOR.SPATIAL_DISPLACEMENT.text .. " around (D-6).",
            "Travel through Riverne - Site B01.",
            "Obtain one Giant Scale if necessary.",
            "Trade the Giant Scale to " .. ACTOR.UNSTABLE_DISPLACEMENT_B01_G8.text .. " at (G-8).",
            "Continue through Riverne until you reach " .. ACTOR.SPATIAL_DISPLACEMENT.text .. ".",
            "Examine the Spatial Displacement to enter the Ouryu battlefield.",
            "Defeat Ouryu.",
            "Use Mistmelts when Ouryu takes flight.",
            "Return to Tavnazian Safehold and speak with " .. ACTOR.JUSTINIUS.text .. ".",
        },
    },

    ['4-3'] = {
        name = "The Secrets of Worship",
        steps = {
            "Speak with " .. ACTOR.JUSTINIUS.text .. " in Tavnazian Safehold.",
            "Examine " .. ACTOR.TAVNAZIAN_WALNUT_DOOR_K7.text .. ".",
            "Travel to Misareaux Coast and examine the Iron Gate around (G-4) to enter the Sacrarium.",
            "Obtain two Coral Crest Keys and a Sealion Crest Key.",
            "Use the required keys on " .. ACTOR.CORAL_KEY_DOOR.text .. " at (H-7).",
            "Examine " .. ACTOR.WOODEN_GATE.text .. " at (G-8).",
            "Search the six classrooms for the active ???.",
            "Check " .. ACTOR.SACRARIUM_QQ_F5.text .. ".",
            "Check " .. ACTOR.SACRARIUM_QQ_G5.text .. ".",
            "Check " .. ACTOR.SACRARIUM_QQ_H5.text .. ".",
            "Check " .. ACTOR.SACRARIUM_QQ_F11.text .. ".",
            "Check " .. ACTOR.SACRARIUM_QQ_G11.text .. ".",
            "Check " .. ACTOR.SACRARIUM_QQ_H11.text .. ".",
            "Examine the correct ???.",
            "Defeat Old Professor Mariselle and the two Mariselle's Pupil.",
            "Examine the same ??? again to receive the Reliquiarium Key.",
            "Return to " .. ACTOR.CORAL_KEY_DOOR.text .. " at (H-7) and open it again with a Coral Crest Key and the Sealion Crest Key.",
            "Enter the opened passage and examine " .. ACTOR.WOODEN_GATE.text .. " again.",
        },
    },

    ['4-4'] = {
        name = "Slanderous Utterings",
        steps = {
            "Travel to Tavnazian Safehold and speak with " .. ACTOR.DESPACHIAIRE.text .. ".",
            "Proceed to Sealion's Den.",
            "Examine " .. ACTOR.SEALION_IRON_GATE.text .. ".",
        },
    },

    -- ========================================================
    -- CHAPTER 5
    -- ========================================================

    ['5-1'] = {
        name = "The Enduring Tumult of War",
        steps = {
            "Travel to Port Bastok.",
            "Speak with " .. ACTOR.CID.text .. " in Metalworks.",
            "Enter Pso'Xja from the (F-7) entrance in Beaucedine Glacier.",
            "Follow the path without dropping down until you reach " .. ACTOR.PSOXJA_STONE_DOOR_H8.text .. " around (H-8).",
            "Examine the Stone Door to face Nunyunuwi.",
            "Defeat Nunyunuwi, then examine " .. ACTOR.PSOXJA_STONE_DOOR_H8.text .. " again.",
            "Take the elevator to the bottom level.",
            "Follow the hallway to the next Stone Door.",
            "Examine the Stone Door to enter Promyvion-Vahzl.",
        },
    },

    ['5-2'] = {
        name = "Desires of Emptiness",
        steps = {
            "Enter Promyvion-Vahzl.",
            "Progress through the Memory Receptacles and Memory Streams.",
            "Reach the Memory Flux around (J-8) on the third floor.",
            "Examine " .. ACTOR.MEMORY_FLUX.text .. ".",
            "Defeat Propagator.",
            "Examine the Memory Flux again.",
            "Use the Memory Receptacle to reach the fourth floor.",
            "Reach the Memory Flux around (M-6).",
            "Examine the Memory Flux.",
            "Defeat Solicitor.",
            "Examine the Memory Flux again.",
            "Use the Memory Receptacle to reach the fifth floor.",
            "Reach the Memory Flux around (D-6).",
            "Examine the Memory Flux.",
            "Defeat Ponderer.",
            "Examine the Memory Flux again.",
            "Reach the Spire of Vahzl.",
            "Enter the Desires of Emptiness battlefield.",
            "Defeat Procreator, Cumulator, and Agonizer.",
            "Return to " .. ACTOR.CID.text .. ".",
        },
    },

    ['5-3'] = {
        name = "Three Paths",
        steps = {
            "Travel to Bastok Metalworks and speak with " .. ACTOR.CID.text .. ". Complete the three paths in any order.",

            "Past Sins: travel to Tavnazian Safehold and speak with " .. ACTOR.DESPACHIAIRE.text .. " at (K-10), then travel to Windurst Woods and speak with Perih Vashai at (K-7).",
            "Travel to Bibiki Bay, reach Purgonorgo Isle, and examine " .. ACTOR.PURGONORGO_QQ.text .. " at (H-11). Speak with Yoran-Oran at (E-5) in Windurst Walls for additional dialogue.",
            "Zone into Oldton Movalpolos, then travel to Mine Shaft #2716 and face Chekochuk, Movamuq, Swipostik, Trikotrak, and Bugbby.",
            "Defeat all five opponents, return to " .. ACTOR.CID.text .. ", then travel to Newton Movalpolos and obtain a Gold Key.",
            "Return to " .. ACTOR.MINE_SHAFT_2716.text .. " and trade the Gold Key to the Shaft Entrance, then return to " .. ACTOR.CID.text .. ".",

            "The Pursuit of Paradise: travel to La Theine Plateau and examine " .. ACTOR.LA_THEINE_COP_QQ_G6.text .. " at (G-6).",
            "Enter Pso'Xja through the tower at (J-8) in Beaucedine Glacier, pass through the sixteen Stone Doors, descend the elevator, and examine the Avatar Gate.",
            "Travel to Upper Jeuno and speak with " .. ACTOR.MONBERAUX.text .. " at (G-10) to receive the Envelope, then travel to Ru'Lude Gardens and speak with " .. ACTOR.PHERIMOCIEL.text .. " at (G-6).",
            "Return to Upper Jeuno and speak with " .. ACTOR.MONBERAUX.text .. " again. Enter Batallia Downs and examine the ??? near (K-8) twice to obtain the Delkfutt Recognition Device.",
            "Enter Lower Delkfutt's Tower, examine the Cermet Door at (H-5), defeat Disaster Idol, and examine the Cermet Door again.",
            "Return to Pso'Xja through the (H-10) entrance in Beaucedine Glacier, follow the right wall to (I-8), pass through the wall, drop down, take the elevator to the Avatar Gate, and examine it before returning to " .. ACTOR.CID.text .. ".",

            "Where Messengers Gather: travel to Southern San d'Oria and speak with " .. ACTOR.HINAREE.text .. " at (B-6), then zone into Port San d'Oria and speak with " .. ACTOR.CHASALVIGE.text .. " in Northern San d'Oria.",
            "Travel to Windurst Waters and speak with " .. ACTOR.KERUTOTO.text .. " at (J-8), then speak with " .. ACTOR.YORAN_ORAN.text .. " at (E-5) in Windurst Walls.",
            "Enter Boneyard Gully in Attohwa Chasm and defeat Shikaree X, Shikaree Y, and Shikaree Z.",
            "Travel to Uleguerand Range and enter Bearclaw Pinnacle through the hole at (J-9). Enter the Flames for the Dead battlefield and defeat Snoll Tzar.",
            "Use Shu'Meyo Salt during the battle to extend the time available when needed, then return to " .. ACTOR.CID.text .. " after all three paths are complete.",
        },
    },

    -- ========================================================
    -- CHAPTER 6
    -- ========================================================

    ['6-1'] = {
        name = "For Whom the Verse Is Sung",
        steps = {
            "Travel to Ru'Lude Gardens.",
            "Speak with " .. ACTOR.PHERIMOCIEL.text .. " at (G-6).",
            "Travel to Upper Jeuno and examine " .. ACTOR.MARBLE_BRIDGE.text .. ".",
            "Return to Ru'Lude Gardens.",
        },
    },

    ['6-2'] = {
        name = "A Place to Return",
        steps = {
            "Travel to Ru'Lude Gardens.",
            "Approach the " .. ACTOR.PALACE.text .. ".",
            "Speak with " .. ACTOR.PHERIMOCIEL.text .. " at (G-6).",
            "Travel to Misareaux Coast at (I-11).",
            "Examine " .. ACTOR.DILAPIDATED_GATE.text .. ".",
            "Defeat Warder Thalia, Warder Aglaia, and Warder Euphrosyne.",
            "Examine " .. ACTOR.DILAPIDATED_GATE.text .. " again.",
        },
    },

    ['6-3'] = {
        name = "More Questions Than Answers",
        steps = {
            "Travel to Ru'Lude Gardens.",
            "Speak with " .. ACTOR.PHERIMOCIEL.text .. " at (G-6).",
            "Go upstairs and examine the " .. ACTOR.AUDIENCE_CHAMBER.text .. ".",
            "Travel to Selbina.",
            "Speak with " .. ACTOR.MATHILDE.text .. " at (H-9) in the Weaver's Guild.",
        },
    },

    ['6-4'] = {
        name = "One to Be Feared",
        steps = {
            "Travel to Bastok Metalworks and speak with " .. ACTOR.CID.text .. ".",
            "Travel to Tavnazian Safehold and enter Sealion's Den.",
            "Examine " .. ACTOR.SEALION_IRON_GATE.text .. ".",
            "Examine the door again after the airship sequence.",
            "Enter the battlefield and defeat the five Mammet-22 Zeta.",
            "Defeat Omega.",
            "Defeat Ultima.",
            "Receive the Ducal Guard's Ring.",
        },
    },

    -- ========================================================
    -- CHAPTER 7
    -- ========================================================

    ['7-1'] = {
        name = "Chains and Bonds",
        steps = {
            "Travel to Tavnazian Safehold.",
            "Complete the three objectives in any order.",
            "Enter Sealion's Den.",
            "Exit Sealion's Den and examine the Phomiuna Aqueducts entrance on the bottom floor.",
            "Return to the top floor of Tavnazian Safehold.",
            "Examine " .. ACTOR.TAVNAZIAN_WALNUT_DOOR_K7.text .. ".",
        },
    },

    ['7-2'] = {
        name = "Flames in the Darkness",
        steps = {
            "Travel to Misareaux Coast.",
            "Examine " .. ACTOR.DILAPIDATED_GATE.text .. " around (F-7).",
            "Return to Tavnazian Safehold and enter Sealion's Den.",
            "Speak with " .. ACTOR.SUELEEN.text .. ".",
            "Travel to Ru'Lude Gardens and approach the " .. ACTOR.PALACE.text .. ".",
            "Travel to Upper Jeuno.",
            "Examine " .. ACTOR.MARBLE_BRIDGE.text .. ".",
        },
    },

    ['7-3'] = {
        name = "Fire in the Eyes of Men",
        steps = {
            "Travel to Oldton or Newton Movalpolos.",
            "Examine " .. ACTOR.MINE_SHAFT_2716.text .. ".",
            "Return to Bastok Metalworks and speak with " .. ACTOR.CID.text .. ".",
            "Wait one Vana'diel day.",
            "Speak with " .. ACTOR.CID.text .. " again.",
        },
    },

    ['7-4'] = {
        name = "Calm Before the Storm",
        steps = {
            "Travel to Bastok Metalworks and speak with " .. ACTOR.CID.text .. ".",
            "Complete the three battles in any order.",

            "Travel to Misareaux Coast and examine " .. ACTOR.STORAGE_COMPARTMENT_E7.text .. " at (E-7).",
            "Defeat Boggelmann, then examine " .. ACTOR.STORAGE_COMPARTMENT_E7.text .. " again.",

            "Travel to Carpenters' Landing and examine " .. ACTOR.CARPENTERS_LANDING_QQ_I9.text .. " at (I-9).",
            "Defeat Cryptonberry Executor and the three Cryptonberry Assassins, then examine " .. ACTOR.CARPENTERS_LANDING_QQ_I9.text .. " again.",

            "Travel to Bibiki Bay and examine " .. ACTOR.BIBIKI_BAY_QQ_F6.text .. " at (F-6).",
            "Defeat Dalham, then examine " .. ACTOR.BIBIKI_BAY_QQ_F6.text .. " again.",

            "Return to Bastok Metalworks and speak with " .. ACTOR.CID.text .. " at (H-8).",
            "Return to Sealion's Den and speak with " .. ACTOR.SUELEEN.text .. ".",
        },
    },

    ['7-5'] = {
        name = "The Warrior's Path",
        steps = {
            "Travel to Sealion's Den.",
            "Examine " .. ACTOR.SEALION_IRON_GATE.text .. ".",
            "Enter The Warrior's Path battlefield.",
            "Defeat Tenzen.",
            "Continue to Al'Taieu.",
        },
    },

    -- ========================================================
    -- CHAPTER 8
    -- ========================================================

    ['8-1'] = {
        name = "Garden of Antiquity",
        steps = {
            "Travel to Al'Taieu.",
            "Examine " .. ACTOR.CRYSTALLINE_FIELD.text .. " at (H-11).",

            "First Rubious Crystal:",
            "Travel to the Rubious Crystal at (D-10).",
            "Examine " .. ACTOR.RUBIOUS_CRYSTAL_D10.text .. ".",
            "Defeat the three Ru'aern.",
            "Examine the Rubious Crystal again.",

            "Second Rubious Crystal:",
            "Travel to the Rubious Crystal at (H-13).",
            "Examine " .. ACTOR.RUBIOUS_CRYSTAL_H13.text .. ".",
            "Defeat the three Ru'aern.",
            "Examine the Rubious Crystal again.",

            "Third Rubious Crystal:",
            "Travel to the Rubious Crystal at (L-10).",
            "Examine " .. ACTOR.RUBIOUS_CRYSTAL_L10.text .. ".",
            "Defeat the three Ru'aern.",
            "Examine the Rubious Crystal again.",

            "Return to " .. ACTOR.CRYSTALLINE_FIELD.text .. " and enter the Grand Palace of Hu'Xzoi.",
            "Examine " .. ACTOR.GATE_OF_THE_GODS.text .. ".",
            "Examine " .. ACTOR.PARTICLE_GATE.text .. " on the eastern side at (H-8).",
        },
    },

    ['8-2'] = {
        name = "A Fate Decided",
        steps = {
            "Enter the Grand Palace of Hu'Xzoi.",
            "Examine " .. ACTOR.PARTICLE_GATE.text .. " at (H-8).",
            "Escort the Quasilumin from (J-8) to the transporter at (L-7).",
            "Continue to the escort point at (L-8) on the second map.",
            "Continue to the escort point at (I-10).",
            "Follow the route to the transporter at (G-12).",
            "Continue to the escort point at (G-10) on the first map.",
            "Use the transporter at (G-4) to return to the second map.",
            "Continue to (H-8) and examine " .. ACTOR.CERMET_PORTAL.text .. ".",
            "Defeat Ix'ghrah.",
            "Examine the Cermet Portal again.",
            "Continue to " .. ACTOR.GATE_OF_THE_GODS.text .. " and travel toward the Garden of Ru'Hmet.",
        },
    },

    ['8-3'] = {
        name = "When Angels Fall",
        steps = {
            "Enter the Garden of Ru'Hmet.",
            "Examine " .. ACTOR.GATE_OF_THE_GODS.text .. ".",
            "Ascend to the fourth floor of your race's tower.",
            "Examine " .. ACTOR.EBON_PANEL.text .. " twice to obtain the race-specific key item.",
            "Reach the central elevator and descend to the second floor.",
            "Obtain Brand of Twilight and Brand of Dawn.",
            "Use both brands to reach the third floor.",
            "Examine " .. ACTOR.PARTICLE_GATE.text .. ".",
            "Defeat the four Ix'zdei Notorious Monsters.",
            "Examine " .. ACTOR.LUMINOUS_CONVERGENCE.text .. ".",
            "Exit through the southern Particle Gate.",
            "Travel to Al'Taieu.",
        },
    },

    ['8-4'] = {
        name = "Dawn",
        steps = {
            "Travel to the Garden of Ru'Hmet.",
            "Pass through the Cermet Portal into Empyreal Paradox.",
            "Examine " .. ACTOR.TRANSCENDENTAL_RADIANCE.text .. ".",
            "Examine the Transcendental Radiance again to enter the Dawn battlefield.",
            "Defeat Promathia in the two-phase battlefield.",

            "-- EPILOGUE --",
            "Wait until after Japanese midnight.",
            "Travel to Southern San d'Oria and speak with " .. ACTOR.HINAREE.text .. " at (B-6).",
            "Travel to Uleguerand Range for the next event, then return to Southern San d'Oria and approach Count Caffaule's Manor.",
            "Travel to Port Windurst and speak with " .. ACTOR.CHIPMY_POPMY.text .. " at (C-8).",
            "Travel to Purgonorgo Isle and examine " .. ACTOR.PURGONORGO_QQ.text .. " at (H-11).",
            "Enter Mhaura.",
            "Zone into Oldton Movalpolos.",
            "Return to Bastok Metalworks and speak with " .. ACTOR.CID.text .. ".",
            "Return to Ru'Lude Gardens and approach the " .. ACTOR.PALACE.text .. ".",
            "Travel to Upper Jeuno and examine " .. ACTOR.MARBLE_BRIDGE.text .. ".",
            "Examine " .. ACTOR.MARBLE_BRIDGE.text .. " again and choose one of the final ring rewards: Rajas, Sattva, or Tamas.",
            "Return to Tavnazian Safehold and examine " .. ACTOR.TAVNAZIAN_WALNUT_DOOR_K7.text .. ".",
            "Travel to Lufaise Meadows and approach Blueblade Fell at (J-6).",
        },
    },

    ['8-5'] = {
        name = "The Last Verse",
        steps = {
            "The Last Verse is recorded after completing Dawn.",
        },
    },
}

return M