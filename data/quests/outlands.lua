local M = {}

-- ============================================================
-- OUTLANDS QUESTS
--
-- Source:
-- XiQlog / BG-Wiki quest data
--
-- Category:
-- Outlands
--
-- Status is intentionally NOT stored here.
-- Status is provided by the tracker at runtime.
-- ============================================================

M.zones = {

    -- ========================================================
    -- KAZHAM
    -- ========================================================

    {
        name = 'Kazham',

        quests = {

            {
                id = 'out_kaz_firebloom_tree',
                name = 'The Firebloom Tree',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (H-9)',
                npc = 'Soun Abralah',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_guardian',
                name = 'Greetings to the Guardian',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (I-11)',
                npc = 'Hari Pakhroib',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_question_of_taste',
                name = 'A Question of Taste',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (J-9)',
                npc = 'Jakoh Wahcondalo',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_grudging',
                name = "Everyone's Grudging",
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (J-9)',
                npc = 'Jakoh Wahcondalo',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_knife',
                name = 'You Call That a Knife?',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (I-10)',
                npc = 'Mhebi Juhbily',
                req = '',
                prereq = '',
                reward = '',
                items = 'Sandfish, Tonberry Board',
            },

            {
                id = 'out_kaz_missionary_man',
                name = 'Missionary Man',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (G-9)',
                npc = 'Rauteinot',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_gullibles_travels',
                name = "Gullible's Travels",
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (I-7)',
                npc = 'Magriffon',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_even_more_gullibles',
                name = "Even More Gullible's Travels",
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (I-7)',
                npc = 'Magriffon',
                req = '',
                prereq = "Gullible's Travels",
                reward = '',
            },

            {
                id = 'out_kaz_personal_hygiene',
                name = 'Personal Hygiene',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (I-8)',
                npc = 'Gatih Mijurabi',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_opo_opo_and_i',
                name = 'The Opo-opo and I',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (G-7)',
                npc = 'Lulupp',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_trial_by_fire',
                name = 'Trial by Fire',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (J-9)',
                npc = 'Ronta-Onta',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_cloak_and_dagger',
                name = 'Cloak and Dagger',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (J-9)',
                npc = 'Jakoh Wahcondalo',
                req = 'Dagger skill 230+',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_discerning_eye',
                name = 'A Discerning Eye (Kazham)',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (H-7)',
                npc = 'Swift',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_trial_size_fire',
                name = 'Trial-Size Trial by Fire',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (J-9)',
                npc = 'Dodmos',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_kaz_elshimo_list',
                name = 'VW Op. 054: Elshimo List',
                area = 'outlands',
                zone = 'Kazham',
                loc = 'Kazham (F-8)',
                npc = 'Hildegard',
                req = 'NOT IMPLEMENTED on this server',
                prereq = 'Voidwatch Ops: Border Crossing',
                reward = '',
            },
        },
    },

    -- ========================================================
    -- NORG
    -- ========================================================

    {
        name = 'Norg',

        quests = {

            {
                id = 'out_nrg_forge_your_destiny',
                name = 'Forge Your Destiny',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (K-8)',
                npc = 'Jaucribaix',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_black_market',
                name = 'Black Market',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (I-8)',
                npc = 'Muzaffar',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_mama_mia',
                name = 'Mama Mia',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (G-6)',
                npc = 'Mamaulabion',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_stop_your_whining',
                name = 'Stop Your Whining',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (J-8)',
                npc = 'Washu',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_trial_by_water',
                name = 'Trial by Water',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-9)',
                npc = 'Edal-Tahdal',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_everyones_grudge',
                name = "Everyone's Grudge",
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (I-8)',
                npc = 'Magephaud',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_damp_scroll',
                name = 'Secret of the Damp Scroll',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (J-8)',
                npc = 'Shivivi',
                req = '',
                prereq = '',
                reward = '',
                items = 'Damp Scroll',
            },

            {
                id = 'out_nrg_sahagins_stash',
                name = "The Sahagin's Stash",
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-7)',
                npc = 'Laisrean',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_not_your_vault',
                name = "It's Not Your Vault",
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-8)',
                npc = 'Keal',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_shining_subligar',
                name = 'Like a Shining Subligar',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (I-7)',
                npc = 'Heiji',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_shining_leggings',
                name = 'Like Shining Leggings',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (I-7)',
                npc = 'Heizo',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_sacred_katana',
                name = 'The Sacred Katana',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (K-8)',
                npc = 'Jaucribaix',
                req = 'SAM AF1',
                prereq = '',
                reward = '',
                items = 'Sack of Fish Bait',
            },

            {
                id = 'out_nrg_yomi_okuri',
                name = 'Yomi Okuri',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (K-8)',
                npc = 'Jaucribaix',
                req = 'SAM AF2',
                prereq = 'The Sacred Katana',
                reward = '',
                items = 'Bastore Sardine, Frost Turnip, Hecteyes Eye, Giant Sheep Meat',
            },

            {
                id = 'out_nrg_thief_in_norg',
                name = 'A Thief in Norg!?',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (K-8)',
                npc = 'Jaucribaix',
                req = 'SAM AF3',
                prereq = 'Yomi Okuri',
                reward = '',
                items = 'Gold Thread',
            },

            {
                id = 'out_nrg_pirate_years',
                name = '20 in Pirate Years',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-8)',
                npc = 'Ryoma',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_big_box',
                name = "I'll Take the Big Box",
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-8)',
                npc = 'Ryoma',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_true_will',
                name = 'True Will',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-8)',
                npc = 'Ryoma',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_potential_within',
                name = 'The Potential Within',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (K-8)',
                npc = 'Jaucribaix',
                req = 'Great Katana skill 250+',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_bugi_soden',
                name = 'Bugi Soden',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-8)',
                npc = 'Ryoma',
                req = 'Katana skill 250+',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_trial_size_water',
                name = 'Trial-Size Trial by Water',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-9)',
                npc = 'Verctissa',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_undying_pledge',
                name = 'An Undying Pledge',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-9)',
                npc = 'Stray Cloud',
                req = '',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_border_crossing',
                name = 'Voidwatch Ops: Border Crossing',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (I-8)',
                npc = 'Kieran',
                req = 'NOT IMPLEMENTED on this server, Lv.75+',
                prereq = '',
                reward = '',
            },

            {
                id = 'out_nrg_li_telor_variant',
                name = "VW Op. 115: Li'Telor Variant",
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg',
                npc = 'Kieran',
                req = 'NOT IMPLEMENTED on this server',
                prereq = 'Voidwatch Ops: Border Crossing',
                reward = '',
            },

            {
                id = 'out_nrg_skyward_ho',
                name = 'Skyward Ho, Voidwatcher!',
                area = 'outlands',
                zone = 'Norg',
                loc = 'Norg (H-8)',
                npc = 'Kieran',
                req = 'NOT IMPLEMENTED on this server',
                prereq = "VW Op. 115: Li'Telor Variant",
                reward = '',
            },
        },
    },

    -- ========================================================
    -- RABAO
    -- ========================================================

    {
        name = 'Rabao',

        quests = {

            {
                id = 'out_rab_chasing_dreams',
                name = 'Chasing Dreams',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (F-6)',
                npc = 'Zoriboh',
                req = '',
                prereq = '',
                reward = 'Venerer Ring',
                items = '5x Eastern Gem',
            },

            {
                id = 'out_rab_antidote',
                name = "Don't Forget the Antidote",
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (F-9)',
                npc = 'Edigey',
                req = '',
                prereq = '',
                reward = 'Dotanuki',
            },

            {
                id = 'out_rab_indomitable_spirit',
                name = 'Indomitable Spirit',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (G-7)',
                npc = 'Irmilant',
                req = '',
                prereq = '',
                reward = 'Ebisu Fishing Rod',
            },

            {
                id = 'out_rab_immortal_lu_shang',
                name = 'The Immortal Lu Shang',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (G-7)',
                npc = 'Irmilant',
                req = '',
                prereq = '',
                reward = "Lu Shang's Fishing Rod",
            },

            {
                id = 'out_rab_kuftal_tour',
                name = 'The Kuftal Tour',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (F-7)',
                npc = 'Datta',
                req = '',
                prereq = '',
                reward = '8,000 gil, Rabao Fame 4',
            },

            {
                id = 'out_rab_missing_piece',
                name = 'The Missing Piece',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (H-7)',
                npc = 'Alfesar',
                req = '',
                prereq = '',
                reward = 'Teleport-Altep Scroll',
            },

            {
                id = 'out_rab_search_for_goldmane',
                name = 'The Search for Goldmane',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (F-6)',
                npc = 'Zoriboh',
                req = 'NOT IMPLEMENTED on this server, CoP quest',
                prereq = '',
                reward = 'Deluxe Carbine, Rabao Fame 5',
            },

            {
                id = 'out_rab_trial_by_wind',
                name = 'Trial by Wind',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (G-9)',
                npc = 'Agado-Pugado',
                req = '',
                prereq = '',
                reward = 'Rabao Fame 2',
            },

            {
                id = 'out_rab_trial_size_wind',
                name = 'Trial-Size Trial by Wind',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (G-9)',
                npc = 'Rahi Fohlatti',
                req = '',
                prereq = '',
                reward = 'Garuda',
            },

            {
                id = 'out_rab_fish_favors_bold',
                name = 'Fish Favors the Bold',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (G-7)',
                npc = 'Irmilant',
                req = 'NOT IMPLEMENTED on this server',
                prereq = 'Indomitable Spirit',
                reward = 'Ebisu F. Rod +1',
                items = '100 Fish Caught',
            },

            {
                id = 'out_rab_thanks_for_fish',
                name = 'Thanks for All the Fish',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (F-8)',
                npc = 'Jourdenaux',
                req = 'NOT IMPLEMENTED on this server',
                prereq = '',
                reward = "Lu Shang's Fishing Rod +1",
                items = '60 Fish Types',
            },

            {
                id = 'out_rab_detour_to_zepwell',
                name = 'VW Op. 101: Detour to Zepwell',
                area = 'outlands',
                zone = 'Rabao',
                loc = 'Rabao (G-8)',
                npc = 'Gushing Spring',
                req = 'NOT IMPLEMENTED on this server',
                prereq = 'Voidwatch Ops: Border Crossing',
                reward = '',
            },
        },
    },

    -- ========================================================
    -- EASTERN ALTEPA DESERT
    -- ========================================================

    {
        name = 'Eastern Altepa Desert',

        quests = {

            {
                id = 'out_ead_open_sesame',
                name = 'Open Sesame',
                area = 'outlands',
                zone = 'Eastern Altepa Desert',
                loc = 'Eastern Altepa Desert (G-7)',
                npc = 'Lokpix',
                req = '',
                prereq = '',
                reward = 'Loadstone (Key Item)',
            },
        },
    },

    -- ========================================================
    -- YUHTUNGA JUNGLE
    -- ========================================================

    {
        name = 'Yuhtunga Jungle',

        quests = {

            {
                id = 'out_yut_wrath_of_opo_opos',
                name = 'Wrath of the Opo-opos',
                area = 'outlands',
                zone = 'Yuhtunga Jungle',
                loc = 'Yuhtunga Jungle (L-7)',
                npc = 'Cermet Headstone',
                req = 'Zilart Mission 5',
                prereq = '',
                reward = 'Opo-opo Necklace',
                items = 'Garnet',
            },
        },
    },

    -- ========================================================
    -- CAPE TERIGGAN
    -- ========================================================

    {
        name = 'Cape Teriggan',

        quests = {

            {
                id = 'out_cap_wandering_souls',
                name = 'Wandering Souls',
                area = 'outlands',
                zone = 'Cape Teriggan',
                loc = 'Cape Teriggan (H-5)',
                npc = 'Cermet Headstone',
                req = 'Zilart Mission 5',
                prereq = '',
                reward = "Flagellant's Rope",
                items = 'Rain Lily',
            },
        },
    },

    -- ========================================================
    -- SANCTUARY OF ZI'TAH
    -- ========================================================

    {
        name = "Sanctuary of Zi'Tah",

        quests = {

            {
                id = 'out_zit_soul_searching',
                name = 'Soul Searching',
                area = 'outlands',
                zone = "Sanctuary of Zi'Tah",
                loc = "Sanctuary of Zi'Tah (I-7)",
                npc = 'Cermet Headstone',
                req = 'Zilart Mission 7',
                prereq = '',
                reward = 'Bat Earring',
            },
        },
    },

    -- ========================================================
    -- SHRINE OF RU'AVITAU
    -- ========================================================

    {
        name = "Shrine of Ru'Avitau",

        quests = {

            {
                id = 'out_sra_divine_might',
                name = 'Divine Might',
                area = 'outlands',
                zone = "Shrine of Ru'Avitau",
                loc = "Shrine of Ru'Avitau (G/H-11)",
                npc = "Yve'noile",
                req = 'Zilart Mission 13',
                prereq = 'Zilart Mission 13',
                reward = "Choice of earring (Abyssal/Beastly/Bushinomimi/Knight's/Suppanomimi)",
                items = 'Illuminink, Parchment',
            },
        },
    },
}

-- ============================================================
-- QUEST TRACKER DATA
--
-- Mapeamento baseado no FFXI_QUEST_ID do XiQlog.
--
-- area = área do quest log enviado pelo servidor.
-- bit  = bit do quest dentro dessa área.
-- ============================================================

local tracker_data = {

    -- --------------------------------------------------------
    -- KAZHAM
    -- --------------------------------------------------------

    out_kaz_guardian = {
        area = 'outlands',
        bit = 2,
    },

    out_kaz_question_of_taste = {
        area = 'outlands',
        bit = 3,
    },

    out_kaz_grudging = {
        area = 'outlands',
        bit = 4,
    },

    out_kaz_knife = {
        area = 'outlands',
        bit = 6,
    },

    out_kaz_missionary_man = {
        area = 'outlands',
        bit = 7,
    },

    out_kaz_gullibles_travels = {
        area = 'outlands',
        bit = 8,
    },

    out_kaz_even_more_gullibles = {
        area = 'outlands',
        bit = 9,
    },

    out_kaz_personal_hygiene = {
        area = 'outlands',
        bit = 10,
    },

    out_kaz_opo_opo_and_i = {
        area = 'outlands',
        bit = 11,
    },

    out_kaz_trial_by_fire = {
        area = 'outlands',
        bit = 12,
    },

    out_kaz_cloak_and_dagger = {
        area = 'outlands',
        bit = 13,
    },

    out_kaz_trial_size_fire = {
        area = 'outlands',
        bit = 15,
    },

    -- --------------------------------------------------------
    -- NORG
    -- --------------------------------------------------------

    out_nrg_forge_your_destiny = {
        area = 'outlands',
        bit = 129,
    },

    out_nrg_black_market = {
        area = 'outlands',
        bit = 130,
    },

    out_nrg_mama_mia = {
        area = 'outlands',
        bit = 131,
    },

    out_nrg_stop_your_whining = {
        area = 'outlands',
        bit = 132,
    },

    out_nrg_trial_by_water = {
        area = 'outlands',
        bit = 133,
    },

    out_nrg_everyones_grudge = {
        area = 'outlands',
        bit = 134,
    },

    out_nrg_damp_scroll = {
        area = 'outlands',
        bit = 135,
    },

    out_nrg_sahagins_stash = {
        area = 'outlands',
        bit = 136,
    },

    out_nrg_not_your_vault = {
        area = 'outlands',
        bit = 137,
    },

    out_nrg_shining_subligar = {
        area = 'outlands',
        bit = 138,
    },

    out_nrg_shining_leggings = {
        area = 'outlands',
        bit = 139,
    },

    out_nrg_sacred_katana = {
        area = 'outlands',
        bit = 140,
    },

    out_nrg_yomi_okuri = {
        area = 'outlands',
        bit = 141,
    },

    out_nrg_thief_in_norg = {
        area = 'outlands',
        bit = 142,
    },

    out_nrg_pirate_years = {
        area = 'outlands',
        bit = 143,
    },

    out_nrg_big_box = {
        area = 'outlands',
        bit = 144,
    },

    out_nrg_true_will = {
        area = 'outlands',
        bit = 145,
    },

    out_nrg_potential_within = {
        area = 'outlands',
        bit = 146,
    },

    out_nrg_bugi_soden = {
        area = 'outlands',
        bit = 147,
    },

    out_nrg_trial_size_water = {
        area = 'outlands',
        bit = 148,
    },

    out_nrg_undying_pledge = {
        area = 'outlands',
        bit = 149,
    },

    -- --------------------------------------------------------
    -- RABAO
    -- --------------------------------------------------------

    out_rab_missing_piece = {
        area = 'outlands',
        bit = 193,
    },

    out_rab_antidote = {
        area = 'outlands',
        bit = 192,
    },

    out_rab_trial_by_wind = {
        area = 'outlands',
        bit = 194,
    },

    out_rab_kuftal_tour = {
        area = 'outlands',
        bit = 195,
    },

    out_rab_immortal_lu_shang = {
        area = 'outlands',
        bit = 196,
    },

    out_rab_trial_size_wind = {
        area = 'outlands',
        bit = 197,
    },

    out_rab_chasing_dreams = {
        area = 'outlands',
        bit = 199,
    },

    out_rab_indomitable_spirit = {
        area = 'outlands',
        bit = 201,
    },

    -- --------------------------------------------------------
    -- OTHER OUTLANDS LOCATIONS
    -- --------------------------------------------------------

    out_yut_wrath_of_opo_opos = {
        area = 'outlands',
        bit = 160,
    },

    out_cap_wandering_souls = {
        area = 'outlands',
        bit = 161,
    },

    out_zit_soul_searching = {
        area = 'outlands',
        bit = 162,
    },

    out_sra_divine_might = {
        area = 'outlands',
        bit = 163,
    },

    out_ead_open_sesame = {
        area = 'outlands',
        bit = 165,
    },
}

-- ============================================================
-- APPLY TRACKER DATA
-- ============================================================

local function apply_tracker_data(
    zones
)
    for _, zone_data in ipairs(
        zones
    ) do

        for _, quest in ipairs(
            zone_data.quests
        ) do

            local info =
                tracker_data[
                    quest.id
                ]

            if info ~= nil then

                quest.tracker_area =
                    info.area

                quest.tracker_id =
                    info.bit

                quest.trackable = true

            else

                quest.tracker_area =
                    quest.tracker_area
                    or quest.area

                quest.tracker_id =
                    quest.tracker_id
                    or quest.id

                quest.trackable = false
            end
        end
    end
end

apply_tracker_data(
    M.zones
)

return M