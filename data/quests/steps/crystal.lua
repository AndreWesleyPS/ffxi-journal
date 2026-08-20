local ACTOR = require('data.actors')

local Q = {}

Q.STEPS = {
    -- ========================================================
    -- BATALLIA DOWNS (S)
    -- ========================================================
    cw_bat_lost_in_translocation = {
        'Speak with ' .. ACTOR.THORBEN_WOTG.text .. ' in Batallia Downs (S).',
        'Enter The Eldieme Necropolis (S) through the Crypt Door beside ' .. ACTOR.THORBEN_WOTG.text .. '.',
        'Examine the Sarcophagus at (I-9) to obtain the right map piece.',
        'Examine the Gravestone at (H-8) to obtain the middle map piece.',
        'During Campaign, speak with ' .. ACTOR.ERIK_WOTG.text .. ' to obtain the left map piece.',
        'Examine ' .. ACTOR.BATALLIA_S_BLANK_TARGET_ERIK.text .. ' beside ' .. ACTOR.ERIK_WOTG.text .. ' and choose "Into the fire" to return to Batallia Downs (S).',
        'Speak with ' .. ACTOR.THORBEN_WOTG.text .. ' again to complete the quest and receive the reward.',
    },

    cw_bat_message_on_the_wind = {
        'Speak with ' .. ACTOR.ROMUALDO_WOTG.text .. ' in Batallia Downs (S).',
        'Follow ' .. ACTOR.ROMUALDO_WOTG.text .. '\'s instructions and investigate the requested location in the Shadowreign area.',
        'Complete the examination sequence and return to ' .. ACTOR.ROMUALDO_WOTG.text .. '.',
    },

    cw_bat_face_of_the_future = {
        'Enter Jugner Forest from Batallia Downs for the required event.',
        'Examine ' .. ACTOR.METALLIC_HODGEPODGE.text .. ' in Jugner Forest.',
        'Enter Ghelsba Outpost to obtain the Orcish Infiltration Kit key item.',
        'Travel to Yughott Grotto Map 1 and examine ' .. ACTOR.SCRAPE_MARK.text .. '.',
        'Examine ' .. ACTOR.SCRAPE_MARK.text .. ' again to enter the Face of the Future battlefield.',
        'Defeat Fangmonger Colossus. Killing the Tombstones weakens its damage resistance, and NPC allies assist during the battle.',
        'Examine ' .. ACTOR.MAW_BATALLIA.text .. ' in Batallia Downs to complete the quest and receive the Griffon Ring.',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S) and bring the Bundle of half-inscribed scrolls to obtain Trust: Excenmille (S).',
    },

    cw_bat_grave_resolve = {
        'Speak with ' .. ACTOR.HALVER.text .. ' in Chateau d\'Oraguille.',
        'Obtain a Lilac.',
        'Travel to the ' .. ACTOR.HER_MEMORIES_WEATHERED_GRAVESTONE_WOTG.text .. ' in Batallia Downs.',
        'Trade the Lilac to the Weathered Gravestone to complete the quest and obtain the Tiny Memory Fragment.',
    },

    -- ========================================================
    -- CRAWLERS' NEST (S)
    -- ========================================================
    cw_crn_weekly_adventurer = {
        'Speak with ' .. ACTOR.NAIKO_PANEIKO_WOTG.text .. ' in Crawlers\' Nest (S) and receive the Scoop-Dedicated Linkpearl.',
        'Travel to Rolanberry Fields (S) at (G-9) and speak with ' .. ACTOR.RAKULA_MOTAKULA_WOTG.text .. ' on the turret.',
        'Answer the mandragora questions: Leafed = 4, Black = 4, and Flowered = 5.',
        'Return to ' .. ACTOR.NAIKO_PANEIKO_WOTG.text .. ' to complete the quest and receive the Map of Fort Karugo-Narugo.',
    },

    cw_crn_evil_at_inlet = {
        'Speak with ' .. ACTOR.RODEUPANSAT_WOTG.text .. ' in Crawlers\' Nest (S) and receive the Evil Warding Seal.',
        'Travel to Vunkerl Inlet (S) at (D-11).',
        'Examine the ' .. ACTOR.CRAWLERS_NEST_S_WINDOW_QQ.text .. ' on the back side of the boarded-up tower window.',
        'Return to ' .. ACTOR.RODEUPANSAT_WOTG.text .. ' in Crawlers\' Nest (S) to complete the quest.',
    },

    -- ========================================================
    -- WINDURST WATERS (S)
    -- ========================================================
    cw_wwt_dawn_of_delectability = {
        'Speak with ' .. ACTOR.RANPI_MONPI_WOTG.text .. ' in Windurst Waters (S).',
        'Travel to present-day Windurst Waters and speak with Ranpi-Monpi there.',
        'Obtain Bastore Sweeper, Walnut, Dragon Fruit, and Pepperoni.',
        'Trade all four ingredients to Ranpi-Monpi and wait one Vana\'diel day.',
        'Return to Ranpi-Monpi in Windurst Waters (S), receive the Culinary Knife, and bring it to the present-day Ranpi-Monpi.',
        'Receive the Trainee Knife reward.',
    },

    cw_wwt_redeeming_rocks = {
        'Speak with ' .. ACTOR.KOCCO_EHLLEK_WOTG.text .. ' in Windurst Waters (S).',
        'Speak with ' .. ACTOR.ROHN_EHLBALNA_WOTG.text .. '.',
        'Return to ' .. ACTOR.KOCCO_EHLLEK_WOTG.text .. ', who asks for a piece of kionite.',
        'Examine ' .. ACTOR.VUNKERL_S_KIONITE_QQ.text .. ' in Vunkerl Inlet (S) to obtain the Piece of Kionite.',
        'Return the blue stone to ' .. ACTOR.KOCCO_EHLLEK_WOTG.text .. '.',
        'Wait until the next Vana\'diel day and speak with ' .. ACTOR.KOCCO_EHLLEK_WOTG.text .. ' again to receive the reward.',
    },

    cw_wwt_snake_on_the_plains = {
        'Speak with ' .. ACTOR.MIAH_RIYUH_WOTG.text .. ' in Windurst Waters (S) and exchange the Green Recommendation Letter for putty.',
        'Travel to West Sarutabaruta (S) and apply the putty to the sealed entrances at (F-4), (F-11), and (J-8).',
        'Return to ' .. ACTOR.MIAH_RIYUH_WOTG.text .. ' in Windurst Waters (S).',
    },

    cw_wwt_tigress_stirs = {
        'Enter Windurst Waters (S) and obtain the Inky Black Yagudo Feather.',
        'Speak with ' .. ACTOR.DHEA_PRANDOLEH_WOTG.text .. ' in Windurst Waters (S).',
        'Travel to West Sarutabaruta (S) and examine ' .. ACTOR.WEST_SARUTABARUTA_S_STARFALL_HILLOCK_QQ.text .. ' at Starfall Hillock to obtain the Small Starfruit key item.',
        'Check the ' .. ACTOR.WINDURST_S_ACOLYTE_HOSTEL_DOOR.text .. '.',
    },

    cw_wwt_tigress_strikes = {
        'Speak with ' .. ACTOR.DHEA_PRANDOLEH_WOTG.text .. ' in Windurst Waters (S).',
        'Travel to Fort Karugo-Narugo (S) and speak with Rotih Moalghett on the Fivespires map.',
        'Exit the fortress and examine ' .. ACTOR.FORT_KARUGO_NARUGO_S_QQ_I9.text .. ', then examine it again to face War Lynx.',
        'Defeat War Lynx.',
        'Examine ' .. ACTOR.FORT_KARUGO_NARUGO_S_QQ_I9.text .. ' again after the battle.',
        'Return to ' .. ACTOR.DHEA_PRANDOLEH_WOTG.text .. ' to receive the reward.',
    },

    cw_wwt_lost_book = {
        'Examine the southern Rhinostery door in Windurst Waters (S).',
        'Take a Mythril Beastcoin to Quu Bokye in Giddeus and trade it for the Leather-bound Book.',
        'Return to the Rhinostery door in Windurst Waters (S).',
        'Examine the Optistery door and obtain the Vellum and Lynx Pelt requirements.',
        'Trade the Vellum at the Optistery door, then obtain the Lynx Pelt from the ??? in Castle Oztroja (S) at (G-8).',
        'Wait one Vana\'diel day and return to the Optistery to receive the Scroll of Retrace.',
    },

    cw_wwt_knot_quite_there = {
        'Defeat Yagudo near the fortification in Sauromugue Champaign (S) around (K-9) until you obtain a 108-Knot Quipu.',
        'Speak with ' .. ACTOR.DHEA_PRANDOLEH_WOTG.text .. ' in Windurst Waters (S).',
        'Check ' .. ACTOR.WINDURST_S_ACOLYTE_HOSTEL_DOOR.text .. ' in Windurst Waters (S).',
        'Travel to Sauromugue Champaign (S) at (F-6) and check ' .. ACTOR.BULWARK_GATE_WOTG.text .. ' to meet Rachemace.',
        'Trade the 108-Knot Quipu to ' .. ACTOR.BULWARK_GATE_WOTG.text .. '.',
        'Check the Bulwark Gate repeatedly until the "door is firmly sealed" message appears at least three times.',
        'Enter Southern San d\'Oria (S) from East Ronfaure (S) on foot to meet Pattna-Ottna.',
        'Go through the Portcullis and check ' .. ACTOR.SOUTHERN_SAN_DORIA_S_HOUSE_DOOR_M8.text .. ' at (M-8) to complete the quest and receive the reward.',
    },

    cw_wwt_handbag = {
        'Speak with Hampu-Kampu in Windurst Waters (S) at (G-8).',
        'Examine ' .. ACTOR.WINDURST_S_ACOLYTE_HOSTEL_DOOR.text .. ' at (K-4) on the upper floor.',
        'Return to Hampu-Kampu and receive the Torn Patches of Leather key item.',
        'Travel to the Tanners\' Guild in present-day Southern San d\'Oria and speak with Kipopo.',
        'Obtain Laminated Ram Leather, Sheep Leather, and Silk Thread and trade them to Kipopo.',
        'Change zones and return to Kipopo to receive the Repaired Handbag.',
        'Return to Hampu-Kampu in Windurst Waters (S) and trade the handbag for the Trainee\'s Needle reward.',
    },

    -- ========================================================
    -- THE ELDIEME NECROPOLIS (S)
    -- ========================================================
    cw_eld_little_knowledge = {
        'Speak with ' .. ACTOR.ERLENE_WOTG.text .. ' in The Eldieme Necropolis (S) while on a level 30+ job.',
        'Obtain 12 sheets of Vellum.',
        'Trade all 12 Vellum to ' .. ACTOR.ERLENE_WOTG.text .. '.',
        'Change to BLM, RDM, SMN, or BLU and activate Astral Flow, Chainspell, Azure Lore, or Manafont.',
        'While the two-hour ability is active, speak with ' .. ACTOR.ERLENE_WOTG.text .. ' again.',
        'Receive the Grimoire and Scholar job access.',
    },

    cw_eld_requiem_departed = {
        'Speak with ' .. ACTOR.HEPTACHIOND_WOTG.text .. ' in The Eldieme Necropolis (S).',
        'Travel to Fort Karugo-Narugo (S) and reach the Phosphorous Ward at (I-9) on Map 1.',
        'Proceed to Map 2 and speak with Pecca-Pocca at (G-12) to receive the Sheaf of Handmade Incense.',
        'Return to ' .. ACTOR.HEPTACHIOND_WOTG.text .. ' to receive the Scroll of Recall-Meriph.',
    },

    cw_eld_on_sabbatical = {
        'Speak with ' .. ACTOR.ERLENE_WOTG.text .. ' and ' .. ACTOR.ULBRECHT_WOTG.text .. ' in The Eldieme Necropolis (S).',
        'Complete the required Scholar artifact objectives and combat sequence.',
        'Return to ' .. ACTOR.ERLENE_WOTG.text .. ' to receive Klimaform.',
    },

    cw_eld_downward_helix = {
        'Speak with ' .. ACTOR.ERLENE_WOTG.text .. ' in The Eldieme Necropolis (S).',
        'Complete the required Scholar artifact objectives and battlefield.',
        'Return to ' .. ACTOR.ERLENE_WOTG.text .. ' to receive the Scholar\'s Bracers.',
    },

    -- ========================================================
    -- BASTOK MARKETS (S)
    -- ========================================================
    cw_bmk_fighting_fourth = {
        'Speak with ' .. ACTOR.ADELBRECHT_WOTG.text .. ' in Bastok Markets (S) and turn in the Blue Recommendation Letter to receive Battle Rations.',
        'Travel to North Gustaberg (S), ascend Zegham Hill, and speak with ' .. ACTOR.GEBHARDT_WOTG.text .. '.',
        'Go to (E-11) and speak with ' .. ACTOR.RODERICH_WOTG.text .. '.',
        'Go to (E-7) and interact with ' .. ACTOR.NORTH_GUSTABERG_S_BARRICADE_E7.text .. '.',
        'Return to ' .. ACTOR.ADELBRECHT_WOTG.text .. '.',
    },

    cw_bmk_burden_of_suspicion = {
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Speak with ' .. ACTOR.ENGELHART_WOTG.text .. ' in Bastok Markets (S).',
        'Travel to Batallia Downs (S) and enter The Eldieme Necropolis (S) via (J-10).',
        'Reach the southern chamber at (G-9), fall through the center hole, and enter the northern room at (I-7).',
        'Defeat or evade the Orcs and examine the Sarcophagus.',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Speak with ' .. ACTOR.BLATHERIX_WOTG.text .. ' to receive the reward.',
    },

    cw_bmk_storm_on_horizon = {
        'Enter Bastok Markets (S) from North Gustaberg (S).',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. '.',
        'Examine ' .. ACTOR.NORTH_GUSTABERG_S_MONUMENT_J7.text .. ' on Zegham Hill in North Gustaberg (S).',
        'Examine ' .. ACTOR.GRAUBERG_QQ_H6.text .. ' inside the cave at (I-6) to complete the quest.',
    },

    cw_bmk_azure_footfalls = {
        'Enter Bastok Markets (S) from North Gustaberg (S).',
        'Speak with ' .. ACTOR.ADELBRECHT_WOTG.text .. '.',
        'Travel to the Eduard Watchtower on Zegham Hill in North Gustaberg (S) and speak with ' .. ACTOR.GEBHARDT_WOTG.text .. '.',
        'Speak with ' .. ACTOR.RODERICH_WOTG.text .. ' at the Benedikt Watchtower.',
        'Examine ' .. ACTOR.NORTH_GUSTABERG_S_BARRICADE_E7.text .. ' in North Gustaberg (S).',
        'Return to ' .. ACTOR.ADELBRECHT_WOTG.text .. ' to receive the Large Memory Fragment.',
    },

    cw_bmk_better_part_of_valor = {
        'Leave Bastok Markets (S) for North Gustaberg (S) at (G-4) and obtain the Clump of Animal Hair.',
        'Deliver the Clump of Animal Hair to ' .. ACTOR.ENGELHART_WOTG.text .. ' in Bastok Markets (S).',
        'Travel to the waterfall in North Gustaberg (S) at (F-8) and examine the ???.',
        'Obtain a Gnole Claw.',
        'Travel to Vunkerl Inlet (S) and trade the Gnole Claw to ' .. ACTOR.LEADAVOX_WOTG.text .. ' for the Xhifhut key item.',
        'Return to ' .. ACTOR.ENGELHART_WOTG.text .. ' in Bastok Markets (S).',
    },

    cw_bmk_fires_of_discontent = {
        'Speak with ' .. ACTOR.ENGELHART_WOTG.text .. ' in Bastok Markets (S).',
        'Speak with ' .. ACTOR.PAGDAKO_WOTG.text .. '.',
        'Travel to present-day Metalworks and speak with Iron Eater in the President\'s Office at (J-8).',
        'Return to the past and speak with ' .. ACTOR.ENGELHART_WOTG.text .. ' again.',
        'Travel to Grauberg (S) and examine ' .. ACTOR.GRAUBERG_QQ_H6.text .. ' inside the cave at (I-6).',
        'Return to Bastok Markets (S) and speak with ' .. ACTOR.ENGELHART_WOTG.text .. '.',
        'Travel to the Metalworks gate area and speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. '.',
        'Return to ' .. ACTOR.ENGELHART_WOTG.text .. ' to complete the quest.',
    },

    cw_bmk_hammering_hearts = {
        'Speak with ' .. ACTOR.SCARRED_SHARK_WOTG.text .. ' in Bastok Markets (S).',
        'Obtain a Heavy Quadav Chestplate and Heavy Quadav Backplate.',
        'Trade both armor pieces to ' .. ACTOR.SCARRED_SHARK_WOTG.text .. '.',
        'Change zones and speak with ' .. ACTOR.SCARRED_SHARK_WOTG.text .. ' again to receive the Trainee Hammer.',
    },

    cw_bmk_light_in_darkness = {
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Speak with ' .. ACTOR.PAGDAKO_WOTG.text .. '.',
        'Trade with ' .. ACTOR.BLATHERIX_WOTG.text .. ': either 30 Goblin Chocolate or 5,000 gil for the Mine Shaft Key.',
        'Enter Pashhow Marshlands (S) from Grauberg (S).',
        'Examine ' .. ACTOR.PASHHOW_MARSHLANDS_S_CORRODED_DOOR_F5.text .. ' to enter the battlefield.',
        'Defeat 1 Sapphire Quadav and 10 Sapphirine Quadavs.',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' and answer the three questions correctly.',
        'Receive the Adaman Ingot reward.',
    },

    cw_bmk_fire_in_the_hole = {
        'Enter Bastok Markets (S) from North Gustaberg (S) and obtain the Silvermine Key.',
        'Travel to North Gustaberg (S) and examine ' .. ACTOR.NORTH_GUSTABERG_S_STONEHOUSED_ADIT_E9.text .. '.',
        'Examine ' .. ACTOR.NORTH_GUSTABERG_S_STONEHOUSED_ADIT_E9.text .. ' again to begin the battle.',
        'Protect Adelheid through the maze while defeating waves of Quadavs.',
        'Defeat all Quadavs; the battle ends when Adelheid reaches the turret.',
        'Re-enter Bastok Markets (S) from North Gustaberg (S).',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Receive the Republican Silver Medal reward.',
    },

    cw_bmk_quelling_the_storm = {
        'Wait one Vana\'diel day after Fire in the Hole, then enter Bastok Markets (S) from North Gustaberg (S).',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' at the Metalworks entrance in Bastok Markets (S).',
        'Obtain Goblin Mess Tin, Goblin Mushpot, and Twinkle Powder.',
        'Return to ' .. ACTOR.BLATHERIX_WOTG.text .. ' and trade all three items.',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. '.',
        'Travel to Vunkerl Inlet (S) at (F-6) and examine ' .. ACTOR.VUNKERL_INLET_S_QQ_F6.text .. '.',
        'Speak with ' .. ACTOR.BLATHERIX_WOTG.text .. ' in Bastok Markets (S) to receive the Goblin Belt.',
    },

    cw_bmk_honor_under_fire = {
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Travel to Vunkerl Inlet (S) and examine ' .. ACTOR.VUNKERL_INLET_S_QQ_F6.text .. ', just east of the bridge.',
        'Examine ' .. ACTOR.VUNKERL_S_BEASTMAN_ENSIGN.text .. '.',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' and receive a Flare Grenade.',
        'Return to ' .. ACTOR.VUNKERL_S_BEASTMAN_ENSIGN.text .. ' and examine it again to enter the battlefield.',
        'Defeat Arch Ahriman and its temporary ally doppelgangers in Everbloom Hollow.',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' to receive the Elixir Tank reward.',
    },

    cw_bmk_beneath_the_mask = {
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Enter Beadeaux (S).',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Speak with ' .. ACTOR.RED_AXE_WOTG.text .. ' in The Eldieme Necropolis (S).',
        'Travel to Vunkerl Inlet (S) and trade Beeswax and Red Textile Dye to ' .. ACTOR.LEADAVOX_WOTG.text .. ' for the Wax Seal.',
        'Return to ' .. ACTOR.RED_AXE_WOTG.text .. ' in The Eldieme Necropolis (S).',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Travel to Beaucedine Glacier (S) and examine ' .. ACTOR.BEAUCEDINE_GLACIER_S_HOARFANG_F10.text .. ' to complete the quest and receive the reward.',
    },

    cw_bmk_what_price_loyalty = {
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S) and receive the Sack of Victuals key item.',
        'Travel to Benedikt Watchtower in North Gustaberg (S) and speak with ' .. ACTOR.RODERICH_WOTG.text .. '.',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Travel to Xarcabard (S) and obtain the Commander\'s Endorsement key item.',
        'Examine ' .. ACTOR.XARCABARD_S_FORBIDDING_PORTAL_I7.text .. ', then examine it again to enter battle.',
        'Defeat the humanoid opponent.',
        'Return to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' to receive the Fourth Staff.',
    },

    cw_bmk_truth_lies_hid = {
        'Obtain an Elixir.',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S).',
        'Enter Castle Zvahl Baileys (S).',
        'In Castle Zvahl Keep (S), locate Rikke at (G-7) northwest, Rakke at (G-10) southwest, and Rokke at (H-10) southeast.',
        'Speak with all three imps and determine which one is honest.',
        'Trade the Elixir to the correct imp. If you choose incorrectly, wait one Vana\'diel day before trying again.',
        'Examine ' .. ACTOR.CASTLE_ZVAHL_KEEP_S_QQ_G9.text .. ' in the southwest room on Map 3.',
        'Drop down, use the center teleporter, and examine ' .. ACTOR.CASTLE_ZVAHL_KEEP_S_DISPLACED_BLOCK.text .. ' to complete the quest and receive the reward.',
    },

    -- ========================================================
    -- SOUTHERN SAN D'ORIA (S)
    -- ========================================================
    cw_ssd_steamed_rams = {
        'Speak with ' .. ACTOR.MAINCHELITE_WOTG.text .. ' in Southern San d\'Oria (S) and turn in the Red Recommendation Letter.',
        'Travel to East Ronfaure (S) and collect the Charred Propeller at (H-8), Oxidized Plate at (I-8), and Piece of Shattered Lumber at (J-7).',
        'Return to ' .. ACTOR.MAINCHELITE_WOTG.text .. '.',
    },

    cw_ssd_seeing_spots = {
        'Speak with ' .. ACTOR.WYATT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Obtain 4 Ladybug Wings.',
        'Trade the 4 Ladybug Wings to ' .. ACTOR.WYATT_WOTG.text .. ' to receive the reward.',
    },

    cw_ssd_gifts_of_griffon = {
        'Speak with ' .. ACTOR.LOUXIARD_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Leave the area and return to ' .. ACTOR.LOUXIARD_WOTG.text .. '.',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. '.',
        'Trade Plumes d\'Or to Machionage (C-6), Louxiard (G-7), Illeuse (H-9), Rongelouts N Distaud (I-9), Sabiliont (I-11), Elnonde (K-9), and Loillie (K-9 via the stairs at L-8).',
        'Return to ' .. ACTOR.RHOLONT_WOTG.text .. '.',
    },

    cw_ssd_claws_of_griffon = {
        'Wait one Vana\'diel day after Gifts of the Griffon.',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Leave the area and return, then speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' again.',
        'Travel to Jugner Forest (S) via East Ronfaure (S).',
        'Go to (I-6) and examine ' .. ACTOR.JUGNER_FOREST_S_FOOTPRINT_I6.text .. ' on the tree stump.',
        'Defeat Fingerfilcher Dradzad.',
        'Examine ' .. ACTOR.JUGNER_FOREST_S_FOOTPRINT_I6.text .. ' again to complete the quest.',
    },

    cw_ssd_boy_and_the_beast = {
        'Speak with ' .. ACTOR.RAUSTIGNE_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Travel to Vunkerl Inlet (S) at (H-6) and examine ' .. ACTOR.VUNKERL_INLET_S_QQ_H6.text .. ' near the bridge to obtain the Vunkerl Herb Memo.',
        'Determine the correct herb color from the current time: Red/Sandy 00:00-07:59, Blue/Bastok 08:00-15:59, Green/Windurst 16:00-23:59.',
        'Travel to Vunkerl Inlet (S) at (F-5), find ' .. ACTOR.VUNKERL_INLET_S_LEAFY_PATCH_F5.text .. ', and select the correct color.',
        'Obtain the Vunkerl Herb from the Leafy Patch.',
        'Return to (H-6) and examine ' .. ACTOR.VUNKERL_INLET_S_QQ_H6.text .. ' to complete the quest.',
    },

    cw_ssd_wrath_of_griffon = {
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Travel to Jugner Forest (S) and find ' .. ACTOR.JUGNER_FOREST_S_TOPPLED_CRESSET_H10.text .. ' near a watch platform.',
        'Examine ' .. ACTOR.JUGNER_FOREST_S_TOPPLED_CRESSET_H10.text .. ' again to battle Cobraclaw Buchzvotch and defeat him.',
        'Examine ' .. ACTOR.JUGNER_FOREST_S_TOPPLED_CRESSET_H10.text .. ' once more after the battle.',
        'Return to ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S) to complete the quest.',
    },

    cw_ssd_beans_ahoy = {
        'Speak with ' .. ACTOR.THIERRIDE_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Obtain 2 Lufet Salts from River Crabs in West Ronfaure.',
        'Return to ' .. ACTOR.THIERRIDE_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Trade one Lufet Salt, then another, to complete the required sequence.',
        'Change zones and return to ' .. ACTOR.THIERRIDE_WOTG.text .. ' to receive the Angler\'s Cassoulet reward.',
    },

    cw_ssd_perils_of_griffon = {
        'Wait one Vana\'diel day after Wrath of the Griffon, then change zones and speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Leave the area and speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' again.',
        'Speak with ' .. ACTOR.DAIGRAFFEAUX_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Return to ' .. ACTOR.RHOLONT_WOTG.text .. '.',
        'Travel to Jugner Forest (S) at (I-6) and examine ' .. ACTOR.JUGNER_FOREST_S_FOOTPRINT_I6.text .. ' to obtain the Orcish Warmachine Body key item.',
        'Return to ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S) to complete the quest.',
    },

    cw_ssd_songbirds_snowstorm = {
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Speak with ' .. ACTOR.DAIGRAFFEAUX_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Enter Beaucedine Glacier (S) and examine ' .. ACTOR.BEAUCEDINE_GLACIER_S_COLOSSAL_FOOTPRINT_I7.text .. ' behind the tower.',
        'Examine ' .. ACTOR.BEAUCEDINE_GLACIER_S_ROCKY_PERCH_G10.text .. ' at the lake at least three times to obtain the Goliath Worm items.',
        'Fish for Paladin Lobster at (G-10), Scutum Crab at (J-7), and Lance Fish at (H-9).',
        'Return to ' .. ACTOR.BEAUCEDINE_GLACIER_S_COLOSSAL_FOOTPRINT_I7.text .. ' and submit the required key items.',
        'Trade a Flint Stone to ' .. ACTOR.BEAUCEDINE_GLACIER_S_CHARRED_FIREWOOD.text .. ' two levels above and north of the (I-7) tower.',
        'Examine ' .. ACTOR.BEAUCEDINE_GLACIER_S_COMPRESSED_SNOW_H10.text .. ' near the tower, then examine it again to face Orcish Bloodletter.',
        'Defeat Orcish Bloodletter and examine ' .. ACTOR.BEAUCEDINE_GLACIER_S_COMPRESSED_SNOW_H10.text .. ' a third time to complete the quest.',
    },

    cw_ssd_chasing_shadows = {
        'Speak with Rongelouts N Distaud in Southern San d\'Oria (S) at (I-9).',
        'Enter Xarcabard (S) from Beaucedine Glacier (S).',
        'Examine ' .. ACTOR.XARCABARD_S_BACKFILLED_PIT_F8.text .. '.',
        'Examine ' .. ACTOR.XARCABARD_S_COMPACT_FOOTPRINT_H8.text .. '.',
        'Examine ' .. ACTOR.XARCABARD_S_SUNKEN_FOOTPRINT_H6_H7.text .. ' up the northwest ramp.',
        'Examine ' .. ACTOR.XARCABARD_S_COMPACT_FOOTPRINT_H8.text .. ' again.',
        'Enter Batallia Downs (S) from Beaucedine Glacier (S).',
        'Examine ' .. ACTOR.BATALLIA_DOWNS_S_FRESH_SNOWMELT_H5.text .. '.',
        'Examine ' .. ACTOR.BATALLIA_DOWNS_S_FRESH_SNOWMELT_H5.text .. ' again to face NM Menechme and defeat it with Excenmille within 30 minutes.',
        'Examine ' .. ACTOR.BATALLIA_DOWNS_S_FRESH_SNOWMELT_H5.text .. ' one final time to complete the quest and receive the reward.',
    },

    cw_ssd_homecoming_queen = {
        'Enter Southern San d\'Oria from East Ronfaure.',
        'Complete Her Memories: Old Bean, Her Memories: The Faux Pas, and Her Memories: Grave Resolve.',
        'The three Tiny Memory Fragments combine into the Large Memory Fragment and complete the quest.',
    },

    cw_ssd_carnelian_footfalls = {
        'Enter Southern San d\'Oria (S) from East Ronfaure (S).',
        'Speak with ' .. ACTOR.MAINCHELITE_WOTG.text .. ' to begin the quest.',
        'Enter East Ronfaure (S) on foot.',
        'Examine the designated ??? at (J-7), (I-8), and (H-8) to complete the three required steps.',
        'Return to ' .. ACTOR.MAINCHELITE_WOTG.text .. ' to receive the Large Memory Fragment.',
    },

    cw_ssd_malign_maladies = {
        'Speak with ' .. ACTOR.AMAURA_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Speak with ' .. ACTOR.MONBERAUX.text .. ' in Upper Jeuno.',
        'Examine the Library Book in the Optistery in Windurst Waters at (G-7).',
        'Obtain a Philosopher\'s Stone.',
        'Trade the Philosopher\'s Stone to ' .. ACTOR.BOSHEAN_WOTG_FEY_BLOSSOMS_F5.text .. ' in Grauberg (S).',
        'Wait one Vana\'diel day and change zones.',
        'Examine ' .. ACTOR.BOSHEAN_WOTG_FEY_BLOSSOMS_F5.text .. ' again to receive the key item.',
        'Speak with ' .. ACTOR.RAUSTIGNE_WOTG.text .. ' in Southern San d\'Oria (S) to receive the Large Memory Fragment.',
    },

    -- ========================================================
    -- GARLAIGE CITADEL (S)
    -- ========================================================
    cw_gar_flipside_of_things = {
        'Speak with Rarcasmeult in Garlaige Citadel (S) at (J-6).',
        'Proceed to the Storeroom Door at (G-7) on the second map.',
        'Examine the ??? on the table to obtain the Firepower Case.',
        'Return to Rarcasmeult to receive the reward.',
    },

    cw_gar_fumbling_friar = {
        'Speak with Fondactiont in Garlaige Citadel (S) at (I-6).',
        'Travel to Grauberg (S).',
        'Examine the ??? in the waterfall area at (G-6) to obtain the Ornate Package.',
        'Return to Fondactiont to receive the Scroll of Recall-Pashh.',
    },

    cw_gar_haze_of_glory = {
        'Speak with Diordinne at (I-6) in Garlaige Citadel (S) Map 1 and receive the Number Eight Shelter Key.',
        'Travel east to Map 2 and examine ' .. ACTOR.GHOYUS_REVERIE_WOODEN_CRATES_H9.text .. ' to enter Ghoyu\'s Reverie; the party leader must perform this examination.',
        'Locate and defeat Orcish Turret at approximately (H-10) on Map 15 within 30 minutes.',
        'Manage the Goblin Effluvial Grenade attacks and poison effects during the battle.',
        'Return to Southern San d\'Oria (S) between 18:00 and 00:00.',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' to complete the quest and receive the Fullmetal Bullet.',
    },

    -- ========================================================
    -- JUGNER FOREST (S)
    -- ========================================================
    cw_jug_price_of_valor = {
        'Wait one Vana\'diel day after In a Haze of Glory, then change zones.',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S).',
        'Obtain Ronfaure Maple Syrup by logging in East Ronfaure (S), Long-life Biscuits from the Tree Hollow behind ' .. ACTOR.RHOLONT_WOTG.text .. ', and a Flask of Kingdom Water from the Well east of ' .. ACTOR.RHOLONT_WOTG.text .. '.',
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' again to receive Biscuit a la Rholont.',
        'Examine ' .. ACTOR.JUGNER_FOREST_S_FELLED_TREES_G7.text .. '.',
        'Examine the first Toppled Cresset at (I-8), then the second at (F-9)/(F-8) in Vunkerl Inlet (S).',
        'Examine ' .. ACTOR.VUNKERL_INLET_S_UNDERBRUSH_F13.text .. ', then examine it again to face Madthrasher Zradbodd.',
        'Defeat Madthrasher Zradbodd and examine the Underbrush again for the instructions leading to Pashhow Marshlands (S).',
        'Examine ' .. ACTOR.PASHHOW_MARSHLANDS_S_SHIMMERING_PONDWEED_G6.text .. ' in Pashhow Marshlands (S) to complete the quest and receive the reward.',
    },

    -- ========================================================
    -- PASHHOW MARSHLANDS (S)
    -- ========================================================
    cw_pas_bonds_never_die = {
        'Speak with ' .. ACTOR.RHOLONT_WOTG.text .. ' in Southern San d\'Oria (S) and receive the Letter to Count Aurchiat.',
        'Travel to Pashhow Marshlands (S) and examine ' .. ACTOR.PASHHOW_MARSHLANDS_S_SHIMMERING_PONDWEED_G6.text .. '.',
        'Follow the quest route into Jugner Forest (S) and gather the required logging key items.',
        'Proceed to the designated battlefield and defeat the Young Behemoth encounter.',
        'Complete the follow-up event after the battlefield victory.',
        'Report to Rongelouts N Distaud in Southern San d\'Oria (S) to receive the Behemoth Horn reward.',
    },

    -- ========================================================
    -- XARCABARD (S)
    -- ========================================================
    cw_xar_blood_of_heroes = {
        'Examine ' .. ACTOR.XARCABARD_S_ANIMAL_SPOOR_J9.text .. ' in Xarcabard (S) and register the Home Point at (H-9).',
        'Examine ' .. ACTOR.XARCABARD_S_WHEEL_RUT_I9.text .. ' in the dead-end tunnel to the south.',
        'Examine ' .. ACTOR.XARCABARD_S_ANIMAL_SPOOR_J9.text .. ' again to obtain the Vial of Military Prism Powder key item.',
        'Examine ' .. ACTOR.XARCABARD_S_FORBIDDING_PORTAL_I7.text .. ' to enter the battlefield.',
        'Defeat 2 Bloodwing Deathrainers, 4 Bloodwing Maimers, Gherrmoga, and Kingslayer Doggvdegg. Excenmille assists, and defeating Doggvdegg ends the battle.',
        'Examine ' .. ACTOR.XARCABARD_S_WHEEL_RUT_I9.text .. ' again to complete the quest and receive the Ram Staff.',
    },

    -- ========================================================
    -- CASTLE ZVAHL BAILEYS (S)
    -- ========================================================
    cw_zvb_bonds_of_mythril = {
        'Enter Castle Zvahl Baileys (S) from Castle Zvahl Keep (S).',
        'Examine ' .. ACTOR.CASTLE_ZVAHL_BAILEYS_S_QQ_G9.text .. ' in the southwest room on Map 3.',
        'Defeat all four imps in the central room on Map 3.',
        'Examine ' .. ACTOR.CASTLE_ZVAHL_BAILEYS_S_QQ_G9.text .. ' again to face Gargouille Warden; defeat it and examine the ??? again to obtain the Zvahl Passkey.',
        'Enter Throne Room (S) and examine the Throne Room door.',
        'Examine the Throne Room door again to enter battle and defeat the humanoid opponent with Zeid assisting.',
        'Defeat Marquis Amon.',
        'Speak with ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' in Bastok Markets (S) to complete the quest and receive the Excelsis Ring.',
        'Bring the Bundle of half-inscribed scrolls to ' .. ACTOR.GENTLE_TIGER_WOTG.text .. ' to obtain Trust: Klara.',
    },

    -- ========================================================
    -- PORT SAN D'ORIA
    -- ========================================================
    cw_psd_old_bean = {
        'Enter Southern San d\'Oria from East Ronfaure to begin the Her Memories sequence.',
        'Speak with ' .. ACTOR.THIERRIDE_WOTG.text .. ' in the Rusty Anchor Pub in Port San d\'Oria.',
        'Receive the Tiny Memory Fragment and continue the Her Memories chain.',
    },

    -- ========================================================
    -- NORTHERN SAN D'ORIA
    -- ========================================================
    cw_nsd_faux_pas = {
        'Speak with Abioleget in the Cathedral in Northern San d\'Oria at (M-7).',
        'Speak with ' .. ACTOR.BERTENONT_WOTG.text .. ' in Northern San d\'Oria.',
        'Receive the Tiny Memory Fragment.',
    },

    -- ========================================================
    -- SAUROMUGUE CHAMPAIGN (S)
    -- ========================================================
    cw_sau_operation_cupid = {
        'Enter Batallia Downs (S) from Jugner Forest (S).',
        'Examine the Bulwark Gate in Sauromugue Champaign (S) at (E-6).',
        'Obtain Rice Vinegar, Ground Wasabi, and Holy Basil.',
        'Travel to Vunkerl Inlet (S) and trade all three ingredients to ' .. ACTOR.LEADAVOX_WOTG.text .. ' to receive the Pot of Martial Relish.',
        'Examine the Bulwark Gate in Sauromugue Champaign (S) at (E-6) again.',
        'Enter Batallia Downs (S) from Rolanberry Fields (S) to receive the Large Memory Fragment.',
    },
}

return Q