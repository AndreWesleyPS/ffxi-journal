local M = {}

-- ============================================================
-- SAN D'ORIA QUEST DATABASE
--
-- Source:
-- XiQlog / BG-Wiki quest data
--
-- Status is NOT stored here.
-- Runtime status is provided by tracker.lua.
--
-- tracker_area:
--     Quest-log area used by the server packet.
--
-- tracker_id:
--     Quest bit inside that area.
--
-- Quests without tracker metadata are reference-only and
-- cannot be automatically tracked by the standard quest log.
-- ============================================================

M = {

    -- ========================================================
    -- SOUTHERN SAN D'ORIA
    -- ========================================================

    {
        id = 'sdz_ss_sentrys_peril',
        name = "A Sentry's Peril",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-8)",
        npc = 'Glenne',
        req = '',
        prereq = '',
        reward = 'Bronze Subligar',

        tracker_area = 'sandoria',
        tracker_id = 0,
    },

    {
        id = 'sdz_ss_rosel_the_armorer',
        name = 'Rosel the Armorer',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (K-8)",
        npc = 'Rosel',
        req = '',
        prereq = '',
        reward = '100-200 gil',

        tracker_area = 'sandoria',
        tracker_id = 2,
    },

    {
        id = 'sdz_ss_the_seamstress',
        name = 'The Seamstress',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (E-8)",
        npc = 'Hanaa Punaa',
        req = '',
        prereq = '',
        reward = 'Leather Gloves',
        items = '3x Sheepskin',

        tracker_area = 'sandoria',
        tracker_id = 5,
    },

    {
        id = 'sdz_ss_sweetest_things',
        name = 'The Sweetest Things',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-8)",
        npc = 'Raimbroy',
        req = 'Fame 2',
        prereq = '',
        reward = '400 gil',
        items = '5x Honey',

        tracker_area = 'sandoria',
        tracker_id = 8,
    },

    {
        id = 'sdz_ss_lizard_skins',
        name = 'Lizard Skins',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (E-8)",
        npc = 'Hanaa Punaa',
        req = 'Fame 2',
        prereq = '',
        reward = 'Lizard Gloves',
        items = '3x Lizard Skin',

        tracker_area = 'sandoria',
        tracker_id = 15,
    },

    {
        id = 'sdz_ss_grave_concerns',
        name = 'Grave Concerns',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (M-7)",
        npc = 'Andecia',
        req = '',
        prereq = '',
        reward = '560 gil',

        tracker_area = 'sandoria',
        tracker_id = 11,
    },

    {
        id = 'sdz_ss_squires_test',
        name = "A Squire's Test",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-7)",
        npc = 'Balasiel',
        req = '',
        prereq = '',
        reward = 'Spatha',
        items = 'Revival Tree Root',

        tracker_area = 'sandoria',
        tracker_id = 10,
    },

    {
        id = 'sdz_ss_squires_test_2',
        name = "A Squire's Test II",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-7)",
        npc = 'Balasiel',
        req = '',
        prereq = "A Squire's Test",
        reward = 'Squire certificate (Key Item)',

        tracker_area = 'sandoria',
        tracker_id = 19,
    },

    {
        id = 'sdz_ss_knights_test',
        name = "A Knight's Test",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-7)",
        npc = 'Balasiel',
        req = '',
        prereq = "A Squire's Test II",
        reward = 'Kite Shield, Paladin job',

        tracker_area = 'sandoria',
        tracker_id = 29,
    },

    {
        id = 'sdz_ss_cure_a_cough',
        name = 'To Cure a Cough',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-6)",
        npc = 'Nenne',
        req = 'Fame 3',
        prereq = '',
        reward = '3,000 gil',

        tracker_area = 'sandoria',
        tracker_id = 20,
    },

    {
        id = 'sdz_ss_tigers_teeth',
        name = "Tiger's Teeth",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (E-9)",
        npc = 'Taumila',
        req = 'Fame 3',
        prereq = '',
        reward = '2,100 gil',
        items = '3x Black Tiger Fang',

        tracker_area = 'sandoria',
        tracker_id = 23,
    },

    {
        id = 'sdz_ss_black_tiger_skins',
        name = 'Black Tiger Skins',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (E-8)",
        npc = 'Hanaa Punaa',
        req = 'Fame 3',
        prereq = '',
        reward = 'Tiger Stole',
        items = '3x Black Tiger Hide',

        tracker_area = 'sandoria',
        tracker_id = 31,
    },

    {
        id = 'sdz_ss_merchants_bidding',
        name = "The Merchant's Bidding",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (E-8)",
        npc = 'Parvipon',
        req = '',
        prereq = '',
        reward = '120 gil',
        items = '3x Rabbit Hide',

        tracker_area = 'sandoria',
        tracker_id = 69,
    },

    {
        id = 'sdz_ss_distant_loyalties',
        name = 'Distant Loyalties',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (I-8)",
        npc = 'Femitte',
        req = 'Fame 4',
        prereq = '',
        reward = 'White Cape',
        items = 'Mythril Ingot',

        tracker_area = 'sandoria',
        tracker_id = 74,
    },

    {
        id = 'sdz_ss_starting_a_flame',
        name = 'Starting a Flame',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (K-6)",
        npc = 'Legata',
        req = '',
        prereq = '',
        reward = '100 gil',
        items = '4x Flint Stone',

        tracker_area = 'sandoria',
        tracker_id = 77,
    },

    {
        id = 'sdz_ss_sleepless_nights',
        name = 'Sleepless Nights',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (M-8)",
        npc = 'Paouala',
        req = 'Fame 2',
        prereq = '',
        reward = '5,000 gil',
        items = "Mary's Milk",

        tracker_area = 'sandoria',
        tracker_id = 80,
    },

    {
        id = 'sdz_ss_grimy_signposts',
        name = 'Grimy Signposts',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (L-9)",
        npc = 'Maugie',
        req = 'Fame 2',
        prereq = '',
        reward = '1,500 gil',

        tracker_area = 'sandoria',
        tracker_id = 66,
    },

    {
        id = 'sdz_ss_crimson_trial',
        name = 'The Crimson Trial',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (K-6)",
        npc = 'Sharzalion',
        req = '',
        prereq = '',
        reward = 'Fencing Degen',
        items = 'Davoi Storage Key',

        tracker_area = 'sandoria',
        tracker_id = 84,
    },

    {
        id = 'sdz_ss_timely_visit',
        name = 'A Timely Visit',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (G-8)",
        npc = 'Deraquien',
        req = 'Fame 3',
        prereq = '',
        reward = 'Medieval Collar',

        tracker_area = 'sandoria',
        tracker_id = 105,
    },

    {
        id = 'sdz_ss_signed_in_blood',
        name = 'Signed in Blood',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (D-6)",
        npc = 'Sobane',
        req = 'Fame 3',
        prereq = '',
        reward = 'Cunning Earring, 3,500 gil',
        items = 'Cathedral Tapestry',

        tracker_area = 'sandoria',
        tracker_id = 108,
    },

    {
        id = 'sdz_ss_tea_with_tonberry',
        name = 'Tea with a Tonberry?',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (D-6)",
        npc = 'Sobane',
        req = 'Fame 4',
        prereq = '',
        reward = 'Willpower Torque',
        items = 'Attohwa Ginseng, Treasury Gold',

        tracker_area = 'sandoria',
        tracker_id = 109,
    },

    {
        id = 'sdz_ss_spice_gals',
        name = 'Spice Gals',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (I-8)",
        npc = 'Rouva',
        req = '',
        prereq = '',
        reward = "Page From Miratete's Memoirs",

        tracker_area = 'sandoria',
        tracker_id = 110,
    },

    {
        id = 'sdz_ss_lure_of_wildcat',
        name = "Lure of the Wildcat (San d'Oria)",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (L-6)",
        npc = 'Amutiyaal',
        req = '',
        prereq = '',
        reward = 'Red invitation card (Key Item)',

        tracker_area = 'sandoria',
        tracker_id = 113,
    },

    {
        id = 'sdz_ss_atelloune_lament',
        name = "Atelloune's Lament",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (L-6)",
        npc = 'Atelloune',
        req = '',
        prereq = '',
        reward = 'Trainee Gloves',
        items = 'Ladybug Wing',

        tracker_area = 'sandoria',
        tracker_id = 114,
    },

    {
        id = 'sdz_ss_methods_madness',
        name = 'Methods Create Madness',
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (F-7)",
        npc = 'Balasiel',
        req = 'Polearm skill 240+',
        prereq = '',
        reward = 'Impulse Drive weapon skill',

        tracker_area = 'sandoria',
        tracker_id = 98,
    },

    {
        id = 'sdz_ss_eco_warrior',
        name = "Eco-Warrior (San d'Oria)",
        area = 'sandoria',
        zone = "Southern San d'Oria",
        loc = "Southern San d'Oria (K-6)",
        npc = 'Norejaie',
        req = '',
        prereq = '',
        reward = 'Dragon Chronicles, 5,000 gil',

        tracker_area = 'sandoria',
        tracker_id = 97,
    },

    -- ========================================================
    -- NORTHERN SAN D'ORIA
    -- ========================================================

    {
        id = 'sdz_ns_waters_of_cheval',
        name = 'Waters of the Cheval',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (L-7)",
        npc = 'Miageau',
        req = '',
        prereq = '',
        reward = 'Wing Pendant',
        items = '10 gil',

        tracker_area = 'sandoria',
        tracker_id = 1,
    },

    {
        id = 'sdz_ns_father_and_son',
        name = 'Father and Son',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (J-9)",
        npc = 'Ailbeche',
        req = '',
        prereq = '',
        reward = 'Willow Fishing Rod',
        items = 'Willow Fishing Rod',

        tracker_area = 'sandoria',
        tracker_id = 4,
    },

    {
        id = 'sdz_ns_trader_in_forest',
        name = 'The Trader in the Forest',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-8)",
        npc = 'Abeaule',
        req = '',
        prereq = '',
        reward = 'Robe',

        tracker_area = 'sandoria',
        tracker_id = 7,
    },

    {
        id = 'sdz_ns_vicasques_sermon',
        name = "The Vicasque's Sermon",
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (M-7)",
        npc = 'Abioleget',
        req = 'Fame 2',
        prereq = '',
        reward = 'Brass Ring',
        items = '70 gil',

        tracker_area = 'sandoria',
        tracker_id = 9,
    },

    {
        id = 'sdz_ns_undying_flames',
        name = 'Undying Flames',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (M-6)",
        npc = 'Pagisalis',
        req = 'Fame 2',
        prereq = '',
        reward = "Friar's Rope",
        items = '2x Beeswax',

        tracker_area = 'sandoria',
        tracker_id = 26,
    },

    {
        id = 'sdz_ns_purchase_of_arms',
        name = 'A Purchase of Arms',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (K-7)",
        npc = 'Helbort',
        req = 'Fame 2',
        prereq = '',
        reward = 'Elm Staff',

        tracker_area = 'sandoria',
        tracker_id = 27,
    },

    {
        id = 'sdz_ns_medicine_woman',
        name = 'The Medicine Woman',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-8)",
        npc = 'Abeaule',
        req = 'Fame 3',
        prereq = '',
        reward = '2,100 gil',
        items = 'Insect Wing, Malboro Vine, Zinc Ore',

        tracker_area = 'sandoria',
        tracker_id = 30,
    },

    {
        id = 'sdz_ns_growing_flowers',
        name = 'Growing Flowers',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-8)",
        npc = 'Kuu Mohzolhi',
        req = '',
        prereq = '',
        reward = 'Mog House exit',
        items = 'Marguerite',

        tracker_area = 'sandoria',
        tracker_id = 58,
    },

    {
        id = 'sdz_ns_trouble_at_sluice',
        name = 'Trouble at the Sluice',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (G-8)",
        npc = 'Belgidiveau',
        req = 'Fame 3',
        prereq = '',
        reward = 'Heavy Axe',
        items = 'Dahlia',

        tracker_area = 'sandoria',
        tracker_id = 68,
    },

    {
        id = 'sdz_ns_unexpected_treasure',
        name = 'Unexpected Treasure',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (G-8)",
        npc = 'Morunaude',
        req = 'Fame 4',
        prereq = '',
        reward = '12,000 gil',
        items = 'Cupboard, Mistletoe',

        tracker_area = 'sandoria',
        tracker_id = 70,
    },

    {
        id = 'sdz_ns_blackmail',
        name = 'Blackmail',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (I-10)",
        npc = 'Dauperiat',
        req = 'Fame 3',
        prereq = '',
        reward = '900 gil',
        items = 'Castle Floor Plans',

        tracker_area = 'sandoria',
        tracker_id = 71,
    },

    {
        id = 'sdz_ns_setting_sun',
        name = 'The Setting Sun',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-5)",
        npc = 'Vamorcote',
        req = 'Fame 5',
        prereq = '',
        reward = '10,000 gil',
        items = 'Engraved Key',

        tracker_area = 'sandoria',
        tracker_id = 72,
    },

    {
        id = 'sdz_ns_fear_of_dark',
        name = 'Fear of the Dark',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-6)",
        npc = 'Secodiand',
        req = '',
        prereq = '',
        reward = '200 gil',
        items = '2x Bat Wing',

        tracker_area = 'sandoria',
        tracker_id = 78,
    },

    {
        id = 'sdz_ns_warding_vampires',
        name = 'Warding Vampires',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (J-8)",
        npc = 'Maloquedil',
        req = 'Fame 3',
        prereq = '',
        reward = '900 gil',
        items = '2x Shaman Garlic',

        tracker_area = 'sandoria',
        tracker_id = 79,
    },

    {
        id = 'sdz_ns_healing_the_land',
        name = 'Healing the Land',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (M-7)",
        npc = 'Eperdur',
        req = 'Fame 4',
        prereq = '',
        reward = 'Teleport-Holla',

        tracker_area = 'sandoria',
        tracker_id = 82,
    },

    {
        id = 'sdz_ns_sorcery_of_north',
        name = 'Sorcery of the North',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (M-7)",
        npc = 'Eperdur',
        req = 'Fame 4',
        prereq = '',
        reward = 'Teleport-Vahzl',

        tracker_area = 'sandoria',
        tracker_id = 83,
    },

    {
        id = 'sdz_ns_messenger_beyond',
        name = 'Messenger from Beyond',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (M-6)",
        npc = 'Narcheral',
        req = '',
        prereq = '',
        reward = 'Blessed Hammer',
        items = 'Tavnazia Pass',

        tracker_area = 'sandoria',
        tracker_id = 87,
    },

    {
        id = 'sdz_ns_sharpening_sword',
        name = 'Sharpening the Sword',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (J-8)",
        npc = 'Ailbeche',
        req = '',
        prereq = '',
        reward = 'Honor Sword',

        tracker_area = 'sandoria',
        tracker_id = 90,
    },

    {
        id = 'sdz_ns_boys_dream',
        name = "A Boy's Dream",
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (J-8)",
        npc = 'Ailbeche',
        req = '',
        prereq = '',
        reward = 'Gallant Leggings',
        items = 'Giant Shell Bug',

        tracker_area = 'sandoria',
        tracker_id = 91,
    },

    {
        id = 'sdz_ns_craftsmans_work',
        name = "A Craftsman's Work",
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (E-6)",
        npc = 'Miaux',
        req = '',
        prereq = '',
        reward = 'Peregrine',

        tracker_area = 'sandoria',
        tracker_id = 94,
    },

    {
        id = 'sdz_ns_exit_the_gambler',
        name = 'Exit the Gambler',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-3)",
        npc = 'Aurege',
        req = '',
        prereq = '',
        reward = "Map of King Ranperre's Tomb",

        tracker_area = 'sandoria',
        tracker_id = 101,
    },

    {
        id = 'sdz_ns_escort_for_hire',
        name = "Escort for Hire (San d'Oria)",
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (F-6)",
        npc = 'Rondipur',
        req = 'Fame 6',
        prereq = '',
        reward = '10,000 gil',

        tracker_area = 'sandoria',
        tracker_id = 103,
    },

    {
        id = 'sdz_ns_forest_for_trees',
        name = 'Forest for the Trees',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (E-3)",
        npc = 'Ramua',
        req = '',
        prereq = '',
        reward = 'Trainee Axe',
        items = 'Arrowwood Log, Ash Log, Yew Log, Willow Log, Walnut Log',

        tracker_area = 'sandoria',
        tracker_id = 118,
    },

    {
        id = 'sdz_ns_trial_size_ice',
        name = 'Trial-Size Trial by Ice',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (E-7)",
        npc = 'Castilchat',
        req = 'Fame 3',
        prereq = '',
        reward = 'Shiva (Avatar)',

        tracker_area = 'sandoria',
        tracker_id = 107,
    },

    {
        id = 'sdz_ns_trial_by_ice',
        name = 'Trial by Ice',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (E-7)",
        npc = 'Gulmama',
        req = '',
        prereq = 'Trial-Size Trial by Ice',
        reward = 'Shiva (Avatar)',

        tracker_area = 'sandoria',
        tracker_id = 59,
    },

    {
        id = 'sdz_ns_gates_to_paradise',
        name = 'Gates to Paradise',
        area = 'sandoria',
        zone = "Northern San d'Oria",
        loc = "Northern San d'Oria (L-7)",
        npc = 'Olbergieut',
        req = 'Fame 2',
        prereq = '',
        reward = 'Cotton Cape',

        tracker_area = 'sandoria',
        tracker_id = 18,
    },

    -- ========================================================
    -- PORT SAN D'ORIA
    -- ========================================================

    {
        id = 'sdz_ps_the_pickpocket',
        name = 'The Pickpocket',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (I-8)",
        npc = 'Miene',
        req = '',
        prereq = '',
        reward = 'Light Axe',

        tracker_area = 'sandoria',
        tracker_id = 3,
    },

    {
        id = 'sdz_ps_dismayed_customer',
        name = 'The Dismayed Customer',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (G-7)",
        npc = 'Gulemont',
        req = '',
        prereq = '',
        reward = '560 gil',

        tracker_area = 'sandoria',
        tracker_id = 6,
    },

    {
        id = 'sdz_ps_flyers_for_regine',
        name = 'Flyers for Regine',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (J-8)",
        npc = 'Regine',
        req = 'Fame 2',
        prereq = '',
        reward = '440 gil',

        tracker_area = 'sandoria',
        tracker_id = 16,
    },

    {
        id = 'sdz_ps_brugaire_consortium',
        name = 'The Brugaire Consortium',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (H-9)",
        npc = 'Fontoumant',
        req = '',
        prereq = '',
        reward = 'Lauan Shield',
        items = 'Parcel for the Magic Shop, Parcel for the Auction House, Parcel for the Pub',

        tracker_area = 'sandoria',
        tracker_id = 12,
    },

    {
        id = 'sdz_ps_job_for_consortium',
        name = 'A Job for the Consortium',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (H-9)",
        npc = 'Portaure',
        req = 'Fame 5',
        prereq = 'The Brugaire Consortium',
        reward = '1,000 gil',

        tracker_area = 'sandoria',
        tracker_id = 67,
    },

    {
        id = 'sdz_ps_lufets_lake_salt',
        name = "Lufet's Lake Salt",
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (G-7)",
        npc = 'Nogelle',
        req = '',
        prereq = '',
        reward = '600 gil',
        items = '3x Lufet Salt',

        tracker_area = 'sandoria',
        tracker_id = 81,
    },

    {
        id = 'sdz_ps_taste_for_meat',
        name = 'A Taste For Meat',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (G-7)",
        npc = 'Antreneau',
        req = '',
        prereq = '',
        reward = 'Grilled Hare, 120 gil',
        items = '5x Hare Meat',

        tracker_area = 'sandoria',
        tracker_id = 100,
    },

    {
        id = 'sdz_ps_thick_shells',
        name = 'Thick Shells',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (I-10)",
        npc = 'Vounebariont',
        req = 'Fame 2',
        prereq = '',
        reward = '500 gil',
        items = '5x Beetle Shell',

        tracker_area = 'sandoria',
        tracker_id = 117,
    },

    {
        id = 'sdz_ps_the_holy_crest',
        name = 'The Holy Crest',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (I-9)",
        npc = 'Ceraulian',
        req = '',
        prereq = '',
        reward = 'Dragoon job',
        items = 'Pickaxe',

        tracker_area = 'sandoria',
        tracker_id = 93,
    },

    {
        id = 'sdz_ps_chasing_quotas',
        name = 'Chasing Quotas',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (I-9)",
        npc = 'Ceraulian',
        req = '',
        prereq = 'The Holy Crest',
        reward = 'Drachen Brais',
        items = 'Gold Hairpin',

        tracker_area = 'sandoria',
        tracker_id = 95,
    },

    {
        id = 'sdz_ps_the_rivalry',
        name = 'The Rivalry/The Competition',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (H-8)",
        npc = 'Joulet or Gallijaux',
        req = '',
        prereq = '',
        reward = "Lu Shang's Fishing Rod",

        tracker_area = 'sandoria',
        tracker_id = 75,
    },

    {
        id = 'sdz_ps_over_hills_away',
        name = 'Over the Hills and Far Away',
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (G-7)",
        npc = 'Antreneau',
        req = 'Fame 8',
        prereq = 'A Taste For Meat',
        reward = 'Map of the Uleguerand Range',
        items = 'Moblin Hotrok',

        tracker_area = 'sandoria',
        tracker_id = 112,
    },

    {
        id = 'sdz_ps_discerning_eye',
        name = "A Discerning Eye (San d'Oria)",
        area = 'sandoria',
        zone = "Port San d'Oria",
        loc = "Port San d'Oria (H-6)",
        npc = 'Eddy',
        req = 'NOT IMPLEMENTED on this server',
        prereq = '',
        reward = '500 gil',
    },

    -- ========================================================
    -- CHATEAU D'ORAGUILLE
    -- ========================================================

    {
        id = 'sdz_co_generals_secret',
        name = "The General's Secret",
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (I-9)",
        npc = 'Curilla',
        req = 'Fame 2',
        prereq = '',
        reward = 'Lynx Baghnakhs',

        tracker_area = 'sandoria',
        tracker_id = 60,
    },

    {
        id = 'sdz_co_majestys_garden',
        name = "Her Majesty's Garden",
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (F-7)",
        npc = 'Chalvatot',
        req = 'Fame 4',
        prereq = '',
        reward = 'Map of the Northlands area',
        items = 'Derfland Humus',

        tracker_area = 'sandoria',
        tracker_id = 62,
    },

    {
        id = 'sdz_co_enveloped_darkness',
        name = 'Enveloped in Darkness',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (I-9)",
        npc = 'Curilla',
        req = '',
        prereq = '',
        reward = "Warlock's Boots",
        items = 'Velvet Cloth, Nest Chest Key',

        tracker_area = 'sandoria',
        tracker_id = 85,
    },

    {
        id = 'sdz_co_peace_for_spirit',
        name = 'Peace for the Spirit',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (I-9)",
        npc = 'Curilla',
        req = '',
        prereq = 'Enveloped in Darkness',
        reward = "Warlock's Chapeau",

        tracker_area = 'sandoria',
        tracker_id = 86,
    },

    {
        id = 'sdz_co_prelude_black_white',
        name = 'Prelude of Black and White',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (H-8)",
        npc = 'Pieuje',
        req = '',
        prereq = '',
        reward = "Healer's Duckbills",
        items = 'Moccasins, Yagudo Holy Water',

        tracker_area = 'sandoria',
        tracker_id = 88,
    },

    {
        id = 'sdz_co_pieujes_decision',
        name = "Pieuje's Decision",
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (H-8)",
        npc = 'Pieuje',
        req = '',
        prereq = 'Prelude of Black and White',
        reward = "Healer's Briault",
        items = 'Tavnazia Bell',

        tracker_area = 'sandoria',
        tracker_id = 89,
    },

    {
        id = 'sdz_co_under_oath',
        name = 'Under Oath',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (H-8)",
        npc = 'Prince Trion',
        req = '',
        prereq = '',
        reward = 'Gallant Surcoat',
        items = 'Zvahl Coffer Key',

        tracker_area = 'sandoria',
        tracker_id = 92,
    },

    {
        id = 'sdz_co_knight_stalker',
        name = 'Knight Stalker',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (H-9)",
        npc = 'Rahal',
        req = '',
        prereq = '',
        reward = 'Drachen Armet',
        items = 'Kuftal Coffer Key',

        tracker_area = 'sandoria',
        tracker_id = 96,
    },

    {
        id = 'sdz_co_old_wounds',
        name = 'Old Wounds',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (I-9)",
        npc = 'Curilla',
        req = 'Sword skill 240+',
        prereq = '',
        reward = 'Savage Blade weapon skill',

        tracker_area = 'sandoria',
        tracker_id = 102,
    },

    {
        id = 'sdz_co_fit_for_a_prince',
        name = 'Fit for a Prince',
        area = 'sandoria',
        zone = "Chateau d'Oraguille",
        loc = "Chateau d'Oraguille (I-9)",
        npc = 'Halver',
        req = 'Fame 3',
        prereq = '',
        reward = "Castor's Ring, Pollux's Ring",

        tracker_area = 'sandoria',
        tracker_id = 106,
    },

    -- ========================================================
    -- BOSTAUNIEUX OUBLIETTE
    -- ========================================================

    {
        id = 'sdz_bo_the_rumor',
        name = 'The Rumor',
        area = 'sandoria',
        zone = 'Bostaunieux Oubliette',
        loc = 'Bostaunieux Oubliette (G-8)',
        npc = 'Novalmauge',
        req = 'Fame 3',
        prereq = '',
        reward = 'Drain (spell)',
        items = 'Beastman Blood',

        tracker_area = 'sandoria',
        tracker_id = 61,
    },

    {
        id = 'sdz_bo_souls_in_shadow',
        name = 'Souls in Shadow',
        area = 'sandoria',
        zone = 'Bostaunieux Oubliette',
        loc = 'Bostaunieux Oubliette (G-8)',
        npc = 'Novalmauge',
        req = 'Scythe skill 240+',
        prereq = 'The Rumor',
        reward = 'Spiral Hell weapon skill',

        tracker_area = 'sandoria',
        tracker_id = 99,
    },

    -- ========================================================
    -- WEST RONFAURE
    -- ========================================================

    {
        id = 'sdz_wr_intro_teamwork',
        name = 'Introduction to Teamwork',
        area = 'sandoria',
        zone = 'West Ronfaure',
        loc = 'West Ronfaure (H-5)',
        npc = 'Vilatroire',
        req = 'Fame 2',
        prereq = '',
        reward = 'Shell Ring',

        tracker_area = 'sandoria',
        tracker_id = 63,
    },

    {
        id = 'sdz_wr_intermediate_teamwork',
        name = 'Intermediate Teamwork',
        area = 'sandoria',
        zone = 'West Ronfaure',
        loc = 'West Ronfaure (H-5)',
        npc = 'Vilatroire',
        req = 'Fame 3',
        prereq = 'Introduction to Teamwork',
        reward = "Mage's Ballad",

        tracker_area = 'sandoria',
        tracker_id = 64,
    },

    {
        id = 'sdz_wr_advanced_teamwork',
        name = 'Advanced Teamwork',
        area = 'sandoria',
        zone = 'West Ronfaure',
        loc = 'West Ronfaure (H-5)',
        npc = 'Vilatroire',
        req = 'Fame 4',
        prereq = 'Intermediate Teamwork',
        reward = 'Horn Ring',

        tracker_area = 'sandoria',
        tracker_id = 65,
    },
}

return M