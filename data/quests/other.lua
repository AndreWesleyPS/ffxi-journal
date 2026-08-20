local M = {}

-- ============================================================
-- OTHER QUESTS
--
-- Source:
-- XiQlog / BG-Wiki quest data
--
-- Category:
-- Other
--
-- Status is intentionally NOT stored here.
-- Status is provided by the tracker at runtime.
--
-- tracker_area / tracker_id / trackable are part of the
-- individual quest definition because they identify how the
-- server tracks that quest.
-- ============================================================

M.zones = {

    -- ========================================================
    -- MHAURA
    -- ========================================================

    {
        name = 'Mhaura',

        quests = {

            {
                id = 'oth_mha_potters_preference',
                name = "A Potter's Preference",
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Nereus',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 9,
                trackable = true,
            },

            {
                id = 'oth_mha_expertise',
                name = 'Expertise',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Take',
                req = '',
                prereq = '',
                reward = '',
                items = 'Scream Fungus, Land Crab Meat',
                tracker_area = 'other',
                tracker_id = 4,
                trackable = true,
            },

            {
                id = 'oth_mha_fishermans_heart',
                name = "Fisherman's Heart",
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (H-9)',
                npc = 'Katsunaga',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = '',
                trackable = false,
            },

            {
                id = 'oth_mha_his_name_is_valgeir',
                name = 'His Name Is Valgeir',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Rycharde',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 3,
                trackable = true,
            },

            {
                id = 'oth_mha_raining_mannequins',
                name = "It's Raining Mannequins",
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (G-8)',
                npc = 'Fyi Chalmwoh',
                req = '',
                prereq = '',
                reward = '',
                items = 'Mannequin Body, Mannequin Feet, Mannequin Hands, Mannequin Head, Mannequin Legs',
                tracker_area = 'other',
                tracker_id = 29,
                trackable = true,
            },

            {
                id = 'oth_mha_orlandos_antiques',
                name = "Orlando's Antiques",
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (G-9)',
                npc = 'Orlando',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 7,
                trackable = true,
            },

            {
                id = 'oth_mha_recycling_rods',
                name = 'Recycling Rods',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (H-9)',
                npc = 'Keshab-Menjab',
                req = '',
                prereq = '',
                reward = '',
                items = 'Cleanly Snapped Rod',
                tracker_area = 'other',
                tracker_id = 30,
                trackable = true,
            },

            {
                id = 'oth_mha_rycharde_the_chef',
                name = 'Rycharde the Chef',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Rycharde',
                req = '',
                prereq = '',
                reward = '',
                items = '2x Dhalmel Meat',
                tracker_area = 'other',
                tracker_id = 0,
                trackable = true,
            },

            {
                id = 'oth_mha_trial_by_lightning',
                name = 'Trial by Lightning',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-9)',
                npc = 'Ripapa',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 27,
                trackable = true,
            },

            {
                id = 'oth_mha_trial_size_lightning',
                name = 'Trial-Size Trial by Lightning',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-9)',
                npc = 'Lacia',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 28,
                trackable = true,
            },

            {
                id = 'oth_mha_the_basics',
                name = 'The Basics',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Rycharde',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 6,
                trackable = true,
            },

            {
                id = 'oth_mha_the_clue',
                name = 'The Clue',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Rycharde',
                req = '',
                prereq = '',
                reward = '',
                items = '4x Crawler Egg',
                tracker_area = 'other',
                tracker_id = 5,
                trackable = true,
            },

            {
                id = 'oth_mha_the_old_lady',
                name = 'The Old Lady',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (G-8)',
                npc = 'Vera',
                req = '',
                prereq = '',
                reward = 'Unlock Support Job',
                tracker_area = 'other',
                tracker_id = 10,
                trackable = true,
            },

            {
                id = 'oth_mha_the_sand_charm',
                name = 'The Sand Charm',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-9)',
                npc = 'Blandine',
                req = '',
                prereq = '',
                reward = '',
                items = 'Sand Charm',
                tracker_area = 'other',
                tracker_id = 8,
                trackable = true,
            },

            {
                id = 'oth_mha_unending_chase',
                name = 'Unending Chase',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Rycharde',
                req = '',
                prereq = '',
                reward = '',
                items = 'Puffball',
                tracker_area = 'other',
                tracker_id = 2,
                trackable = true,
            },

            {
                id = 'oth_mha_way_of_the_cook',
                name = 'Way of the Cook',
                area = 'other',
                zone = 'Mhaura',
                loc = 'Mhaura (I-8)',
                npc = 'Rycharde',
                req = '',
                prereq = '',
                reward = '',
                items = 'Beehive Chip, Dhalmel Meat',
                tracker_area = 'other',
                tracker_id = 1,
                trackable = true,
            },
        },
    },

    -- ========================================================
    -- SELBINA
    -- ========================================================

    {
        name = 'Selbina',

        quests = {

            {
                id = 'oth_sel_explorers_footsteps',
                name = "An Explorer's Footsteps",
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (G-9)',
                npc = 'Abelard',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 19,
                trackable = true,
            },

            {
                id = 'oth_sel_cargo',
                name = 'Cargo',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (H-9)',
                npc = 'Vuntar',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 20,
                trackable = true,
            },

            {
                id = 'oth_sel_donate_to_recycling',
                name = 'Donate to Recycling',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (H-9)',
                npc = 'Romeo',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 16,
                trackable = true,
            },

            {
                id = 'oth_sel_elder_memories',
                name = 'Elder Memories',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (G-10)',
                npc = 'Isacio',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 24,
                trackable = true,
            },

            {
                id = 'oth_sel_inside_the_belly',
                name = 'Inside the Belly',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (H-9)',
                npc = 'Zaldon',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 26,
                trackable = true,
            },

            {
                id = 'oth_sel_only_the_best',
                name = 'Only the Best',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (I-9)',
                npc = 'Melyon',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 18,
                trackable = true,
            },

            {
                id = 'oth_sel_picture_perfect',
                name = 'Picture Perfect',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (G-10)',
                npc = 'Diederik',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = '',
                trackable = false,
            },

            {
                id = 'oth_sel_the_gift',
                name = 'The Gift',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (I-9)',
                npc = 'Oswald',
                req = '',
                prereq = '',
                reward = '',
                items = 'Danceshroom',
                tracker_area = 'other',
                tracker_id = 21,
                trackable = true,
            },

            {
                id = 'oth_sel_the_real_gift',
                name = 'The Real Gift',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (I-9)',
                npc = 'Oswald',
                req = '',
                prereq = 'The Gift',
                reward = '',
                items = 'Shall Shell',
                tracker_area = 'other',
                tracker_id = 22,
                trackable = true,
            },

            {
                id = 'oth_sel_the_rescue',
                name = 'The Rescue',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (G-9)',
                npc = 'Thunder Hawk',
                req = '',
                prereq = '',
                reward = '',
                items = 'Quadav Charm',
                tracker_area = 'other',
                tracker_id = 23,
                trackable = true,
            },

            {
                id = 'oth_sel_test_my_mettle',
                name = 'Test My Mettle',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (I-8)',
                npc = 'Devean',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 25,
                trackable = true,
            },

            {
                id = 'oth_sel_under_the_sea',
                name = 'Under the Sea',
                area = 'other',
                zone = 'Selbina',
                loc = 'Selbina (I-9)',
                npc = 'Oswald',
                req = '',
                prereq = '',
                reward = '',
                items = 'Fat Greedie',
                tracker_area = 'other',
                tracker_id = 17,
                trackable = true,
            },
        },
    },

    -- ========================================================
    -- TAVNAZIAN SAFEHOLD
    -- ========================================================

    {
        name = 'Tavnazian Safehold',

        quests = {

            {
                id = 'oth_tvs_a_bitter_past',
                name = 'A Bitter Past',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (H-8)',
                npc = 'Frescheque',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 66,
                trackable = true,
            },

            {
                id = 'oth_tvs_hard_days_knight',
                name = "A Hard Day's Knight",
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (I-10)',
                npc = 'Quelveuiat',
                req = '',
                prereq = '',
                reward = '',
                items = 'Coral Crest Key, Sealion Crest Key',
                tracker_area = 'other',
                tracker_id = 64,
                trackable = true,
            },

            {
                id = 'oth_tvs_behind_the_smile',
                name = 'Behind the Smile',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (J-7)',
                npc = 'Enaremand',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 77,
                trackable = true,
            },

            {
                id = 'oth_tvs_elderly_pursuits',
                name = 'Elderly Pursuits',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (K-10)',
                npc = 'Despachiaire',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 75,
                trackable = true,
            },

            {
                id = 'oth_tvs_fly_high',
                name = 'Fly High',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (G-9)',
                npc = 'Ferchinne',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 71,
                trackable = true,
            },

            {
                id = 'oth_tvs_go_go_gobmuffin',
                name = 'Go! Go! Gobmuffin!',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (F-8)',
                npc = 'Epinolle',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 69,
                trackable = true,
            },

            {
                id = 'oth_tvs_search_of_the_truth',
                name = 'In Search of the Truth',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (J-6)',
                npc = 'Tressia',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 80,
                trackable = true,
            },

            {
                id = 'oth_tvs_name_of_science',
                name = 'In the Name of Science',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (J-8)',
                npc = 'Yurim',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 76,
                trackable = true,
            },

            {
                id = 'oth_tvs_forbidden_doors',
                name = 'Knocking on Forbidden Doors',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (J-7)',
                npc = 'Enaremand',
                req = '',
                prereq = 'Behind the Smile',
                reward = '',
                tracker_area = 'other',
                tracker_id = 78,
                trackable = true,
            },

            {
                id = 'oth_tvs_paradise_salvation',
                name = 'Paradise, Salvation, and Maps',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (I-9)',
                npc = 'Nivorajean',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 68,
                trackable = true,
            },

            {
                id = 'oth_tvs_petals_for_parelbriaux',
                name = 'Petals for Parelbriaux',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (I-7)',
                npc = 'Ondieulix',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 74,
                trackable = true,
            },

            {
                id = 'oth_tvs_secrets_of_ovens_lost',
                name = 'Secrets of Ovens Lost',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (G-9)',
                npc = 'Jonette',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 73,
                trackable = true,
            },

            {
                id = 'oth_tvs_requiem_of_sin',
                name = 'Requiem of Sin',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (K-10)',
                npc = 'Despachiaire',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 83,
                trackable = true,
            },

            {
                id = 'oth_tvs_the_big_one',
                name = 'The Big One',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (F-9)',
                npc = 'Travonce',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = '',
                trackable = false,
            },

            {
                id = 'oth_tvs_call_of_the_sea',
                name = 'The Call of the Sea',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (J-8)',
                npc = 'Anteurephiaux',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 67,
                trackable = true,
            },

            {
                id = 'oth_tvs_unforgiven',
                name = 'Unforgiven',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (G-10)',
                npc = 'Elysia',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 72,
                trackable = true,
            },

            {
                id = 'oth_tvs_uninvited_guests',
                name = 'Uninvited Guests',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (J-6)',
                npc = 'Justinius',
                req = "CoP Mission 'The Savage' complete",
                prereq = '',
                reward = "Miratete's Memoirs",
                tracker_area = 'other',
                tracker_id = 81,
                trackable = true,
            },

            {
                id = 'oth_tvs_x_marks_the_spot',
                name = 'X Marks the Spot',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (K-10)',
                npc = 'Despachiaire',
                req = '',
                prereq = '',
                reward = '',
                items = 'Tavnazian Sheep Liver',
                tracker_area = 'other',
                tracker_id = 65,
                trackable = true,
            },

            {
                id = 'oth_tvs_tango_with_a_tracker',
                name = 'Tango with a Tracker',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (K-10)',
                npc = 'Despachiaire',
                req = '',
                prereq = '',
                reward = '',
                tracker_area = 'other',
                tracker_id = 82,
                trackable = true,
            },

            {
                id = 'oth_tvs_vw_op_026',
                name = 'VW Op. 026: Tavnazian Terrors',
                area = 'other',
                zone = 'Tavnazian Safehold',
                loc = 'Tavnazian Safehold (H-6, Homepoint #1)',
                npc = 'Owain',
                req = 'NOT IMPLEMENTED on this server, Lv.75+',
                prereq = '',
                reward = 'Hyacinth stratum abyssite',
                items = "Adventurer's Certificate",
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- CARPENTERS' LANDING
    -- ========================================================

    {
        name = "Carpenters' Landing",

        quests = {

            {
                id = 'oth_cpl_mithran_delicacies',
                name = 'Mithran Delicacies',
                area = 'other',
                zone = "Carpenters' Landing",
                loc = "Carpenters' Landing (J-10)",
                npc = 'Anguenet',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = '',
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- RIVERNE - SITE A01
    -- ========================================================

    {
        name = 'Riverne - Site A01',

        quests = {

            {
                id = 'oth_riv_confessions_bellmaker',
                name = 'Confessions of a Bellmaker',
                area = 'other',
                zone = 'Riverne - Site A01',
                loc = 'Riverne - Site A01 (Stone Monument, C-7)',
                npc = '(unnamed)',
                req = '',
                prereq = '',
                reward = "Minstrel's Dagger",
                items = '4 Giant Scale',
                tracker_area = 'other',
                tracker_id = 79,
                trackable = true,
            },

            {
                id = 'oth_riv_vw_op_004',
                name = 'VW Op. 004: Bibiki Bombardment',
                area = 'other',
                zone = 'Riverne - Site A01',
                loc = 'Bibiki Bay (rift, Purgonorgo Isle F-9/J-9/I-10)',
                npc = 'Owain',
                req = 'NOT IMPLEMENTED on this server',
                prereq = 'VW Op. 026: Tavnazian Terrors',
                reward = 'Hyacinth stratum abyssite II',
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- ULEGUERAND RANGE
    -- ========================================================

    {
        name = 'Uleguerand Range',

        quests = {

            {
                id = 'oth_ule_bombs_away',
                name = 'Bombs Away!',
                area = 'other',
                zone = 'Uleguerand Range',
                loc = 'Uleguerand Range (F-9)',
                npc = 'Buffalostalker Dodzbraz',
                req = '',
                prereq = '',
                reward = '',
                items = '2x Cluster Core',
                tracker_area = 'other',
                tracker_id = 96,
                trackable = true,
            },
        },
    },

    -- ========================================================
    -- LA THEINE PLATEAU
    -- ========================================================

    {
        name = 'La Theine Plateau',

        quests = {

            {
                id = 'oth_lat_waking_the_beast',
                name = 'Waking the Beast',
                area = 'other',
                zone = 'La Theine Plateau',
                loc = 'La Theine Plateau (G-6)',
                npc = 'Carbuncle',
                req = '',
                prereq = '',
                reward = "Carbuncle's Pole",
                tracker_area = 'other',
                tracker_id = 32,
                trackable = true,
            },
        },
    },

    -- ========================================================
    -- OLDTON MOVALPOLOS
    -- ========================================================

    {
        name = 'Oldton Movalpolos',

        quests = {

            {
                id = 'oth_old_generous_general',
                name = 'A Generous General?',
                area = 'other',
                zone = 'Oldton Movalpolos',
                loc = 'Oldton Movalpolos (E-13)',
                npc = "Gu'Zho Thunderblade",
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = "Choplix's Coif, Gold Beastcoin",
                trackable = false,
            },

            {
                id = 'oth_old_missionary_moblin',
                name = 'Missionary Moblin',
                area = 'other',
                zone = 'Oldton Movalpolos',
                loc = 'Oldton Movalpolos (H-11)',
                npc = 'Koblakiq',
                req = '',
                prereq = '',
                reward = '4,000 gil',
                items = 'Soiled Letter',
                tracker_area = 'other',
                tracker_id = 103,
                trackable = true,
            },

            {
                id = 'oth_old_for_the_birds',
                name = 'For the Birds',
                area = 'other',
                zone = 'Oldton Movalpolos',
                loc = 'Oldton Movalpolos (H-11)',
                npc = 'Koblakiq',
                req = '',
                prereq = 'Missionary Moblin',
                reward = 'Jaguar Mantle',
                items = 'Arnica Root, Glittering Fragment',
                tracker_area = 'other',
                tracker_id = 104,
                trackable = true,
            },

            {
                id = 'oth_old_better_the_demon',
                name = 'Better the Demon You Know',
                area = 'other',
                zone = 'Oldton Movalpolos',
                loc = 'Oldton Movalpolos (H-11)',
                npc = 'Koblakiq',
                req = '',
                prereq = 'For the Birds',
                reward = 'Goblin Grenade',
                items = "Demon Pen, Zeelozok's Earplug",
                tracker_area = 'other',
                tracker_id = 105,
                trackable = true,
            },
        },
    },

    -- ========================================================
    -- MOG HOUSE
    -- ========================================================

    {
        name = 'Mog House',

        quests = {

            {
                id = 'oth_mog_give_moogle_break',
                name = 'Give a Moogle a Break',
                area = 'other',
                zone = 'Mog House',
                loc = 'Mog House',
                npc = 'Moogle',
                req = 'Fame 3 (Other)',
                prereq = '',
                reward = 'Mog Safe capacity 60',
                items = 'Bronze Bed, Power Bow, Beetle Ring',
                tracker_area = 'other',
                tracker_id = 100,
                trackable = true,
            },

            {
                id = 'oth_mog_moogles_in_the_wild',
                name = 'Moogles in the Wild',
                area = 'other',
                zone = 'Mog House',
                loc = 'Mog House',
                npc = 'Moogle',
                req = 'Fame 7 (home nation)',
                prereq = "The Moogle's Picnic!",
                reward = 'Mog Safe capacity 80, title',
                items = "Noble's Bed, Raptor Mantle, Wool Hat",
                tracker_area = 'other',
                tracker_id = 102,
                trackable = true,
            },

            {
                id = 'oth_mog_moogles_picnic',
                name = "The Moogle's Picnic!",
                area = 'other',
                zone = 'Mog House',
                loc = 'Mog House',
                npc = 'Moogle',
                req = 'Fame 5 (home nation)',
                prereq = 'Give a Moogle a Break',
                reward = 'Mog Safe capacity 70, title',
                items = 'Mahogany Bed, Shrimp Lure, Selbina Butter',
                tracker_area = 'other',
                tracker_id = 101,
                trackable = true,
            },
        },
    },

    -- ========================================================
    -- DAVOI
    -- ========================================================

    {
        name = 'Davoi',

        quests = {

            {
                id = 'oth_dav_understanding_overlord',
                name = 'An Understanding Overlord?',
                area = 'other',
                zone = 'Davoi',
                loc = 'Davoi (G-7, Monastic Cavern)',
                npc = 'Loo Kohor',
                req = 'NOT IMPLEMENTED on this server, Lv.60+',
                prereq = '',
                reward = "Gadzradd's Helm, Gold Beastcoin",
                items = 'Orc Helm',
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- BEADEAUX
    -- ========================================================

    {
        name = 'Beadeaux',

        quests = {

            {
                id = 'oth_bea_affable_adamantking',
                name = 'An Affable Adamantking?',
                area = 'other',
                zone = 'Beadeaux',
                loc = 'Beadeaux (Qulun Dome, H-7)',
                npc = 'Raptorlegs Gedwad',
                req = 'NOT IMPLEMENTED on this server, Lv.60+',
                prereq = '',
                reward = "Da'Vhu's Barbut, Gold Beastcoin",
                items = 'Quadav Barbut',
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- PASHHOW MARSHLANDS
    -- ========================================================

    {
        name = 'Pashhow Marshlands',

        quests = {

            {
                id = 'oth_pas_monstrosity',
                name = 'Monstrosity',
                area = 'other',
                zone = 'Pashhow Marshlands',
                loc = 'Pashhow Marshlands (E-12)',
                npc = 'Suspicious Hume',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = 'Ring of Supernal Disjunction',
                items = 'Rabbit Hide, Lizard Tail, or Two-Leaf Mandragora Bud',
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- XARCABARD
    -- ========================================================

    {
        name = 'Xarcabard',

        quests = {

            {
                id = 'oth_xar_survival_of_wisest',
                name = 'Survival of the Wisest',
                area = 'other',
                zone = 'Xarcabard',
                loc = 'Xarcabard',
                npc = 'Prof. Schultz',
                req = 'NOT IMPLEMENTED on this server, Lv.66+ SCH',
                prereq = 'Seeing Blood-red',
                reward = 'Raises level limit to 75',
                items = "Scholar's Testimony",
                trackable = false,
            },
        },
    },

    -- ========================================================
    -- MULTI-NATION
    -- ========================================================

    {
        name = 'Multi-Nation',

        quests = {

            {
                id = 'oth_mul_moral_manifest',
                name = 'A Moral Manifest?',
                area = 'other',
                zone = 'Multi-Nation',
                loc = 'Altar Room (Garliage Citadel)',
                npc = 'Hooknox',
                req = 'Lv.60+',
                prereq = '',
                reward = "Tsoo's Headgear, Gold Beastcoin, title",
                items = 'Yagudo Headgear',
                tracker_area = 'other',
                tracker_id = 108,
                trackable = true,
            },

            {
                id = 'oth_mul_records_of_eminence',
                name = 'Records of Eminence',
                area = 'other',
                zone = 'Multi-Nation',
                loc = "Bastok Markets (E-11) / Southern San d'Oria (G-10) / Windurst Woods (J-10) / Western Adoulin (H-11)",
                npc = 'Isakoth / Rolandienne / Fhelm Jobeizat / Eternal Flame',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = 'Records of Eminence unlocked, Memorandoll',
                trackable = false,
            },

            {
                id = 'oth_mul_unity_concord',
                name = 'Unity Concord',
                area = 'other',
                zone = 'Multi-Nation',
                loc = "Southern San d'Oria (G-10) / Bastok Markets (E-11) / Windurst Woods (J-10) / Western Adoulin (H-11)",
                npc = 'Urbiolaine / Igsli / Teldro-Kesdrodo, Yonolala / Nunaarl Bthtrogg',
                req = 'NOT IMPLEMENTED on this server, 10 RoE objectives incl. All for One',
                prereq = '',
                reward = 'Unity faction access',
                trackable = false,
            },
        },
    },
}

return M