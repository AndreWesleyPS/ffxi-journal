local M = {}

-- ============================================================
-- JEUNO QUESTS
--
-- Source:
-- XiQlog / BG-Wiki quest data
--
-- Category:
-- Jeuno
--
-- Status is intentionally NOT stored here.
-- Status is provided by the tracker at runtime.
-- ============================================================

M.zones = {

    -- ========================================================
    -- LOWER JEUNO
    -- ========================================================

    {
        name = 'Lower Jeuno',

        quests = {

            {
                id = 'jeu_lj_path_of_the_bard',
                name = 'Path of the Bard',
                area = 'jeuno',
                zone = 'Lower Jeuno',
                loc = 'Lower Jeuno (I-8)',
                npc = 'Mertaire',
                req = '',
                prereq = '',
                reward = 'Bard job',
            },

            {
                id = 'jeu_lj_save_my_son',
                name = 'Save My Son',
                area = 'jeuno',
                zone = 'Lower Jeuno',
                loc = 'Lower Jeuno (G-11)',
                npc = "Merchant's House door",
                req = 'Lv.30+, Fame req unknown',
                prereq = "Chocobo's Wounds",
                reward = 'Beast Whistle, 2,100 gil',
            },
        },
    },

    -- ========================================================
    -- UPPER JEUNO
    -- ========================================================

    {
        name = 'Upper Jeuno',

        quests = {

            {
                id = 'jeu_uj_axe_the_competition',
                name = 'Axe the Competition',
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (G-7)',
                npc = 'Brutus',
                req = 'Axe skill 240+, Lv.71',
                prereq = '',
                reward = 'Decimation weapon skill',
            },

            {
                id = 'jeu_uj_chocobo_on_the_loose',
                name = 'Chocobo on the Loose!',
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (G-7)',
                npc = 'Brutus',
                req = '',
                prereq = '',
                reward = 'Chocobo Egg (raise for rental/riding)',
            },

            {
                id = 'jeu_uj_chocobos_wounds',
                name = "Chocobo's Wounds",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (G-7)',
                npc = 'Brutus',
                req = 'Lv.20+',
                prereq = '',
                reward = 'Chocobo license (Key Item)',
                items = 'Gausebit Wildgrass',
            },

            {
                id = 'jeu_uj_path_of_the_beastmaster',
                name = 'Path of the Beastmaster',
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (G-7)',
                npc = 'Brutus',
                req = 'Lv.30+',
                prereq = "Chocobo's Wounds, Save My Son",
                reward = 'Beastmaster job',
            },

            {
                id = 'jeu_uj_wings_of_gold',
                name = 'Wings of Gold',
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (G-7)',
                npc = 'Brutus',
                req = 'Lv.40+ BST',
                prereq = 'Path of the Beastmaster',
                reward = 'Barbaroi Axe',
            },

            {
                id = 'jeu_uj_scattered_into_shadow',
                name = 'Scattered Into Shadow',
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (G-7)',
                npc = 'Brutus',
                req = 'Lv.50+ BST',
                prereq = 'Wings of Gold',
                reward = 'Beast Gaiters',
                items = 'Beast Collar',
            },

            {
                id = 'jeu_uj_borghertz_calling_hands',
                name = "Borghertz's Calling Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ SMN, Rise of Zilart required',
                prereq = 'Class Reunion',
                reward = "Evoker's Bracers",
            },

            {
                id = 'jeu_uj_borghertz_chasing_hands',
                name = "Borghertz's Chasing Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ RNG',
                prereq = 'Fire and Brimstone',
                reward = "Hunter's Bracers",
            },

            {
                id = 'jeu_uj_borghertz_dragon_hands',
                name = "Borghertz's Dragon Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ DRG, Rise of Zilart required',
                prereq = 'Chasing Quotas',
                reward = 'Drachen Finger Gauntlets',
            },

            {
                id = 'jeu_uj_borghertz_harmonious_hands',
                name = "Borghertz's Harmonious Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ BRD',
                prereq = 'The Requiem',
                reward = 'Choral Cuffs',
            },

            {
                id = 'jeu_uj_borghertz_healing_hands',
                name = "Borghertz's Healing Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ WHM',
                prereq = 'Prelude of Black and White',
                reward = "Healer's Mitts",
            },

            {
                id = 'jeu_uj_borghertz_loyal_hands',
                name = "Borghertz's Loyal Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ SAM, Rise of Zilart required',
                prereq = 'Yomi Okuri',
                reward = 'Myochin Kote',
            },

            {
                id = 'jeu_uj_borghertz_lurking_hands',
                name = "Borghertz's Lurking Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = "Lv.50+ NIN, Rise of Zilart required",
                prereq = "I'll Take the Big Box",
                reward = 'Ninja Tekko',
            },

            {
                id = 'jeu_uj_borghertz_shadowy_hands',
                name = "Borghertz's Shadowy Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ DRK',
                prereq = 'Dark Puppet',
                reward = 'Chaos Gauntlets',
            },

            {
                id = 'jeu_uj_borghertz_sneaky_hands',
                name = "Borghertz's Sneaky Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ THF',
                prereq = 'As Thick as Thieves',
                reward = "Rogue's Armlets",
            },

            {
                id = 'jeu_uj_borghertz_sorcerous_hands',
                name = "Borghertz's Sorcerous Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ BLM',
                prereq = 'Recollections',
                reward = "Wizard's Gloves",
            },

            {
                id = 'jeu_uj_borghertz_stalwart_hands',
                name = "Borghertz's Stalwart Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ PLD, Rise of Zilart required',
                prereq = "A Boy's Dream",
                reward = 'Gallant Gauntlets',
            },

            {
                id = 'jeu_uj_borghertz_striking_hands',
                name = "Borghertz's Striking Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ MNK',
                prereq = 'The First Meeting',
                reward = 'Temple Gloves',
            },

            {
                id = 'jeu_uj_borghertz_vermillion_hands',
                name = "Borghertz's Vermillion Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ RDM',
                prereq = 'Enveloped in Darkness',
                reward = "Warlock's Gloves",
            },

            {
                id = 'jeu_uj_borghertz_warring_hands',
                name = "Borghertz's Warring Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ WAR',
                prereq = "The Talekeeper's Truth",
                reward = "Fighter's Mufflers",
            },

            {
                id = 'jeu_uj_borghertz_wild_hands',
                name = "Borghertz's Wild Hands",
                area = 'jeuno',
                zone = 'Upper Jeuno',
                loc = 'Upper Jeuno (H-8)',
                npc = 'Guslam',
                req = 'Lv.50+ BST',
                prereq = 'Scattered Into Shadow',
                reward = 'Beast Gloves',
                no_chain_indent = true,
            },
        },
    },

    -- ========================================================
    -- PORT JEUNO
    -- ========================================================

    {
        name = 'Port Jeuno',

        quests = {

            {
                id = 'jeu_pj_circle_of_time',
                name = 'The Circle of Time',
                area = 'jeuno',
                zone = 'Port Jeuno',
                loc = 'Port Jeuno (E-6)',
                npc = 'Imasuke',
                req = 'Lv.50+ BRD, Rise of Zilart required',
                prereq = 'The Requiem',
                reward = 'Choral Justaucorps',
            },

            {
                id = 'jeu_pj_antique_collector',
                name = 'The Antique Collector',
                area = 'jeuno',
                zone = 'Port Jeuno',
                loc = 'Port Jeuno (E-6)',
                npc = 'Imasuke',
                req = 'Fame 2',
                prereq = '',
                reward = "Map of Delkfutt's Tower",
                items = 'Kaiser Sword',
            },
        },
    },

    -- ========================================================
    -- RU'Lude Gardens
    -- ========================================================

    {
        name = "Ru'Lude Gardens",

        quests = {

            {
                id = 'jeu_rg_northward',
                name = 'Northward',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-9)",
                npc = 'Radeivepart',
                req = 'Fame 4',
                prereq = '',
                reward = 'Map of Castle Zvahl',
                items = 'Flame Degen',
            },

            {
                id = 'jeu_rg_defiant_challenge',
                name = 'In Defiant Challenge',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Maat',
                req = 'Lv.50+',
                prereq = '',
                reward = 'Raises level cap to 55',
                items = 'Bomb Coal, Exoray Mold, Piece of Ancient Papyrus',
            },

            {
                id = 'jeu_rg_highest_mountains',
                name = 'Atop the Highest Mountains',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Maat',
                req = 'Lv.51+',
                prereq = 'In Defiant Challenge',
                reward = 'Raises level cap to 60',
            },

            {
                id = 'jeu_rg_whence_blows_wind',
                name = 'Whence Blows the Wind',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Maat',
                req = 'Lv.56+',
                prereq = 'Atop the Highest Mountains',
                reward = 'Raises level cap to 65',
            },

            {
                id = 'jeu_rg_riding_on_clouds',
                name = 'Riding on the Clouds',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Maat',
                req = 'Lv.61+',
                prereq = 'Whence Blows the Wind',
                reward = 'Raises level cap to 70',
                items = "Kindred's Seal",
            },

            {
                id = 'jeu_rg_shattering_stars',
                name = 'Shattering Stars',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Maat',
                req = 'Lv.66+',
                prereq = 'Riding on the Clouds',
                reward = 'Raises level cap to 75',
            },

            {
                id = 'jeu_rg_beyond_the_sun',
                name = 'Beyond the Sun',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Maat',
                req = 'Rise of Zilart required, defeat Maat on all 15 pre-ToAU jobs',
                prereq = 'Shattering Stars',
                reward = "Maat's Cap",
            },

            {
                id = 'jeu_rg_storms_of_fate',
                name = 'Storms of Fate',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (walk toward the Ducal Chamber)",
                npc = "Esha'ntarl",
                req = 'Promathia Mission 8-4 required',
                prereq = '',
                reward = 'Whisper of the Wyrmking (Key Item)',
            },

            {
                id = 'jeu_rg_shadows_of_the_departed',
                name = 'Shadows of the Departed',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (walk toward the Ducal Chamber)",
                npc = "Esha'ntarl",
                req = '',
                prereq = 'Storms of Fate',
                reward = 'Promyvion - Holla/Dem/Mea slivers',
            },

            {
                id = 'jeu_rg_apocalypse_nigh',
                name = 'Apocalypse Nigh',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (walk toward the Ducal Chamber)",
                npc = "Esha'ntarl",
                req = 'Zilart Mission 17 and Promathia Mission 8-4 required',
                prereq = 'Shadows of the Departed',
                reward = 'Ethereal/Hollow/Magnetic/Static Earring (choice)',
            },

            {
                id = 'jeu_rg_ducal_hospitality',
                name = 'Ducal Hospitality',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (I-7)",
                npc = 'Taillegeas',
                req = 'Promathia Mission 3-2 required',
                prereq = '',
                reward = '4,000 gil (repeatable turn-in)',
            },

            {
                id = 'jeu_rg_empty_memories',
                name = 'Empty Memories',
                area = 'jeuno',
                zone = "Ru'Lude Gardens",
                loc = "Ru'Lude Gardens (H-5)",
                npc = 'Harith',
                req = '',
                prereq = 'Six Recollection quests (Pain, Fear, Guilt, Suffering, Anxiety, Animosity)',
                reward = 'Anima or weapon/accessory (repeatable trade-in)',
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
    -- LOWER JEUNO
    -- --------------------------------------------------------

    jeu_lj_path_of_the_bard = {
        area = 'jeuno',
        bit = 20,
    },

    jeu_lj_save_my_son = {
        area = 'jeuno',
        bit = 5,
    },

    -- --------------------------------------------------------
    -- UPPER JEUNO
    -- --------------------------------------------------------

    jeu_uj_axe_the_competition = {
        area = 'jeuno',
        bit = 59,
    },

    jeu_uj_chocobo_on_the_loose = {
        area = 'jeuno',
        bit = 92,
    },

    jeu_uj_chocobos_wounds = {
        area = 'jeuno',
        bit = 4,
    },

    jeu_uj_path_of_the_beastmaster = {
        area = 'jeuno',
        bit = 19,
    },

    jeu_uj_wings_of_gold = {
        area = 'jeuno',
        bit = 60,
    },

    jeu_uj_scattered_into_shadow = {
        area = 'jeuno',
        bit = 61,
    },

    jeu_uj_borghertz_calling_hands = {
        area = 'jeuno',
        bit = 58,
    },

    jeu_uj_borghertz_chasing_hands = {
        area = 'jeuno',
        bit = 54,
    },

    jeu_uj_borghertz_dragon_hands = {
        area = 'jeuno',
        bit = 57,
    },

    jeu_uj_borghertz_harmonious_hands = {
        area = 'jeuno',
        bit = 53,
    },

    jeu_uj_borghertz_healing_hands = {
        area = 'jeuno',
        bit = 46,
    },

    jeu_uj_borghertz_loyal_hands = {
        area = 'jeuno',
        bit = 55,
    },

    jeu_uj_borghertz_lurking_hands = {
        area = 'jeuno',
        bit = 56,
    },

    jeu_uj_borghertz_shadowy_hands = {
        area = 'jeuno',
        bit = 51,
    },

    jeu_uj_borghertz_sneaky_hands = {
        area = 'jeuno',
        bit = 49,
    },

    jeu_uj_borghertz_sorcerous_hands = {
        area = 'jeuno',
        bit = 47,
    },

    jeu_uj_borghertz_stalwart_hands = {
        area = 'jeuno',
        bit = 50,
    },

    jeu_uj_borghertz_striking_hands = {
        area = 'jeuno',
        bit = 45,
    },

    jeu_uj_borghertz_vermillion_hands = {
        area = 'jeuno',
        bit = 48,
    },

    jeu_uj_borghertz_warring_hands = {
        area = 'jeuno',
        bit = 44,
    },

    jeu_uj_borghertz_wild_hands = {
        area = 'jeuno',
        bit = 52,
    },

    -- --------------------------------------------------------
    -- PORT JEUNO
    -- --------------------------------------------------------

    jeu_pj_circle_of_time = {
        area = 'jeuno',
        bit = 65,
    },

    jeu_pj_antique_collector = {
        area = 'jeuno',
        bit = 25,
    },

    -- --------------------------------------------------------
    -- RU'LUDE GARDENS
    -- --------------------------------------------------------

    jeu_rg_northward = {
        area = 'jeuno',
        bit = 24,
    },

    jeu_rg_defiant_challenge = {
        area = 'jeuno',
        bit = 128,
    },

    jeu_rg_highest_mountains = {
        area = 'jeuno',
        bit = 129,
    },

    jeu_rg_whence_blows_wind = {
        area = 'jeuno',
        bit = 130,
    },

    jeu_rg_riding_on_clouds = {
        area = 'jeuno',
        bit = 131,
    },

    jeu_rg_shattering_stars = {
        area = 'jeuno',
        bit = 132,
    },

    jeu_rg_beyond_the_sun = {
        area = 'jeuno',
        bit = 76,
    },

    jeu_rg_storms_of_fate = {
        area = 'jeuno',
        bit = 86,
    },

    jeu_rg_shadows_of_the_departed = {
        area = 'jeuno',
        bit = 88,
    },

    jeu_rg_apocalypse_nigh = {
        area = 'jeuno',
        bit = 89,
    },

    jeu_rg_ducal_hospitality = {
        area = 'jeuno',
        bit = 68,
    },

    jeu_rg_empty_memories = {
        area = 'jeuno',
        bit = 70,
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