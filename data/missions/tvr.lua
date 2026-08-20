--[[
    The Voracious Resurgence - Mission Database
    =============================================

    Mission IDs and walkthrough IDs are intentionally kept
    as separate identifiers:

    - M.MISSIONS uses the official numeric mission IDs consumed
      by the mission tracker.
    - M.STEPS contains the walkthrough data.

    In The Voracious Resurgence, the walkthrough IDs already
    correspond directly to the official mission IDs.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'The Voracious Resurgence',
    [110] = "The Gloom Phantom's Approach",
    [118] = 'The Brygid Cup',
    [128] = 'The Destiny Destroyers',
    [138] = "Kupipi's Dilemma",
    [146] = "The Cardians' Duty",
    [158] = "Zhuu Buxu's Gambit",
    [168] = 'Star Onion Fortune',
    [178] = 'The Doll Whisperer',
    [192] = 'Dancing Prince',
    [202] = "Claidie's Concern",
    [210] = 'Curilla Unleashed',
    [228] = "Run, Excenmille, Run!",
    [240] = 'Of Knights and Orcs',
    [256] = 'Best Served Cold',
    [270] = "Cornelia's Call to Action",
    [286] = 'Naja the Ambitious',
    [298] = 'Raubahn the Blue',
    [310] = "Ghatsad's Quandary",
    [326] = 'The Revelation',
    [338] = "Tateeya's Worries",
    [352] = 'The Seagull Phratrie',
    [362] = 'The Sea Sage',
    [380] = 'Sky, Moon, Incantrix',
    [392] = "Nii's Last Stand",
    [414] = 'Dance of the Tengu',
    [430] = "Raebrimm's Rebirth",
    [440] = 'Uran-Mafran of the Maelstrom',
    [452] = "Koru-Moru's Hypothesis",
    [460] = 'Altennia Burns Bright',
    [468] = 'Maat on the Rampage',
    [484] = 'Not Just a Pretty Face',
    [494] = 'Delkfutt the Great',
    [508] = 'Oshasha Violation',
    [516] = 'Phantasmic Heroes',
    [530] = "Skokkr Undrborn's Temptation",
    [542] = 'The Prime Weapons',
    [552] = 'To Movalpolos!',
    [562] = 'Magh Bihu on the Prowl',
    [574] = '101 Dazbogs',
    [580] = 'Kipdrix the Faithful',
    [592] = "Duke Alloces's Decision",
    [602] = "Odin's Eye",
    [612] = 'Moglesse Oblige',
    [624] = 'The Voracious Beast',
    [642] = 'Your Decision',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- PART 1
    -- ========================================================

    [0] = {
        name = 'The Voracious Resurgence',
        steps = {
            "Speak with " .. ACTOR.GUMBAH.text .. " in Bastok Mines.",
        },
    },

    [110] = {
        name = "The Gloom Phantom's Approach",
        steps = {
            "Enter Zeruhn Mines from Bastok Mines.",
            "Examine " .. ACTOR.DISTURBED_DIRT.text .. " at (K-9).",
            "Examine the Disturbed Dirt again to face the Gloom Phantom.",
            "Defeat the Gloom Phantom within 15 minutes.",
            "Examine " .. ACTOR.DISTURBED_DIRT.text .. " again after the battle.",
        },
    },

    [118] = {
        name = 'The Brygid Cup',
        steps = {
            "Speak with " .. ACTOR.GUMBAH.text .. " in Bastok Mines.",
            "Travel to Bastok Markets and speak with " .. ACTOR.BRYGID.text .. " twice.",
            "Choose one of the NPC outfits Brygid offers for the fashion show.",
            "Travel to Port Bastok and speak with Ruenda near The Steaming Sheep while wearing the selected outfit.",
            "Return to " .. ACTOR.BRYGID.text .. " after the event.",
        },
    },

    [128] = {
        name = 'The Destiny Destroyers',
        steps = {
            "Speak with " .. ACTOR.GUMBAH.text .. " in Bastok Mines.",
            "Travel through Zeruhn Mines to Korroloka Tunnel.",
            "Reach the Stalagmite at (D-9) on Map 1 and examine it.",
            "Examine the Stalagmite again to begin the battle against Gloom Phantom, Dazbog, and Magh Bihu.",
            "Defeat all three enemies.",
            "Examine " .. ACTOR.KORROLOKA_STALAGMITE.text .. " again after the battle.",
            "Return to " .. ACTOR.GUMBAH.text .. ".",
        },
    },

    -- ========================================================
    -- PART 2
    -- ========================================================

    [138] = {
        name = "Kupipi's Dilemma",
        steps = {
            "Speak with " .. ACTOR.KUPIPI.text .. ".",
            "Trade Red Grass Cloth to " .. ACTOR.SASSA_KOTASSA.text .. ".",
            "Trade a Yagudo Drink to " .. ACTOR.SHEELALA.text .. ".",
            "Trade a Dream Flower Petal to " .. ACTOR.HABIDA_JUBIDA.text .. ".",
            "Return to " .. ACTOR.KUPIPI.text .. " and trade a White Rolanberry or Ripe White Rolanberry.",
            "Speak with " .. ACTOR.SHANTOTTO.text .. ".",
        },
    },

    [146] = {
        name = "The Cardians' Duty",
        steps = {
            "Speak with " .. ACTOR.SHANTOTTO.text .. " and continue to " .. ACTOR.KUPIPI.text .. ".",
            "Speak with " .. ACTOR.SASSA_KOTASSA.text .. " and follow his instructions.",
            "Travel to East Sarutabaruta and investigate the required location.",
            "Return to Heaven's Tower and continue the Cardian investigation.",
            "Complete the resulting event.",
        },
    },

    [158] = {
        name = "Zhuu Buxu's Gambit",
        steps = {
            "Speak with " .. ACTOR.KUPIPI.text .. " and continue to " .. ACTOR.TOSUKA_PORUKA.text .. ".",
            "Travel to Giddeus and reach the storage room on the second map.",
            "Examine " .. ACTOR.WORN_CHEST.text .. " at (F-6) to face the Yagudo Lookout.",
            "Defeat the Yagudo Lookout within 15 minutes.",
            "Examine " .. ACTOR.WORN_CHEST.text .. " again after the battle to obtain the Strange Doll.",
            "Return to " .. ACTOR.TOSUKA_PORUKA.text .. ".",
        },
    },

    [168] = {
        name = 'Star Onion Fortune',
        steps = {
            "Speak with " .. ACTOR.TOSUKA_PORUKA.text .. " for the next part of the doll investigation.",
            "Travel to Port Windurst and speak with Kohlo-Lakolo near the waterfront.",
            "Examine the Piece of evidence in your Temporary Key Items to identify the cipher.",
            "Continue the Star Onion Brigade investigation through the required events.",
        },
    },

    [178] = {
        name = 'The Doll Whisperer',
        steps = {
            "Continue the investigation into the Magicked Doll.",
            "Travel to the required locations in Windurst and recover the information needed to identify the doll.",
            "Return to " .. ACTOR.TOSUKA_PORUKA.text .. " to continue the investigation.",
            "Complete the required battle and the following event.",
        },
    },

    -- ========================================================
    -- PART 3
    -- ========================================================

    [192] = {
        name = 'Dancing Prince',
        steps = {
            "Speak with " .. ACTOR.HALVER.text .. " and continue the San d'Orian investigation.",
            "Follow the royal investigation concerning Excenmille.",
            "Approach " .. ACTOR.QUEEN_GARDEN.text .. " for the required event.",
            "Complete the resulting battle and return to the San d'Orian storyline.",
        },
    },

    [202] = {
        name = "Claidie's Concern",
        steps = {
            "Speak with " .. ACTOR.HALVER.text .. " and continue the San d'Orian investigation.",
            "Approach " .. ACTOR.QUEEN_GARDEN.text .. " for the royal sequence.",
            "Travel to Attohwa Chasm with a Sickle and harvest the Solidago flower.",
            "Speak with " .. ACTOR.CHALVATOT.text .. ".",
            "Return to " .. ACTOR.HALVER.text .. ".",
        },
    },

    [210] = {
        name = "Curilla Unleashed",
        steps = {
            "Speak with " .. ACTOR.HALVER.text .. " and obtain the Missive to Altennia.",
            "Travel to Ranguemont Pass and continue toward Bostaunieux Oubliette.",
            "Follow the Curilla investigation and complete the required battle.",
            "Return to " .. ACTOR.HALVER.text .. " after the investigation.",
        },
    },

    [228] = {
        name = 'Run, Excenmille, Run!',
        steps = {
            "Wait until the next Vana'diel day after Curilla Unleashed.",
            "Speak with " .. ACTOR.HALVER.text .. " to begin the mission.",
            "Speak with Rahal in the Royal Knights' Quarters.",
            "Continue the Excenmille investigation through the northern regions.",
            "Complete the required event.",
        },
    },

    [240] = {
        name = 'Of Knights and Orcs',
        steps = {
            "Zone into Fei'Yin from Beaucedine Glacier.",
            "Obtain a Doll Gizmo.",
            "Travel through Fei'Yin and assist the Carmine Swallows.",
            "Complete the required encounter and return to the San d'Orian storyline.",
        },
    },

    -- ========================================================
    -- PART 4
    -- ========================================================

    [256] = {
        name = 'Best Served Cold',
        steps = {
            "Speak with " .. ACTOR.GUMBAH.text .. " in Bastok Mines.",
            "Speak with " .. ACTOR.DRANGORD.text .. " near the entrance to Zeruhn Mines.",
            "Enter Zeruhn Mines from Bastok Mines.",
            "Examine " .. ACTOR.QUADAV_INQUEST.text .. " at (I-9).",
            "Examine the Quadav Inquest again to face Do'Bho Venomtail, Old Quadav, Brass Quadav, and Copper Quadav.",
            "Defeat all four enemies.",
            "Examine " .. ACTOR.QUADAV_INQUEST.text .. " again after the battle.",
            "Return to " .. ACTOR.GUMBAH.text .. ".",
        },
    },

    [270] = {
        name = "Cornelia's Call to Action",
        steps = {
            "Speak with " .. ACTOR.IRON_EATER.text .. " and enter Palborough Mines.",
            "Examine " .. ACTOR.PERVERSION_REFUGE.text .. " for the investigation cutscene.",
            "Examine Perversion's Refuge again to begin the battle against Mind-warped Scorpion.",
            "Defeat Mind-warped Scorpion.",
            "Examine " .. ACTOR.PERVERSION_REFUGE.text .. " again after the battle.",
            "Return to " .. ACTOR.IRON_EATER.text .. ".",
        },
    },

    [286] = {
        name = 'Naja the Ambitious',
        steps = {
            "Speak with " .. ACTOR.NAJA.text .. " in Aht Urhgan Whitegate.",
            "Travel to Wajaom Woodlands.",
            "Examine " .. ACTOR.SAVAGE_SCARS_WAJAOM.text .. " for the investigation cutscene.",
            "Examine the Savage Scars again to face the Returned Soulflayer.",
            "Defeat the Returned Soulflayer.",
            "Examine " .. ACTOR.SAVAGE_SCARS_WAJAOM.text .. " again after the battle.",
            "Return to " .. ACTOR.NAJA.text .. ".",
        },
    },

    [298] = {
        name = 'Raubahn the Blue',
        steps = {
            "Examine " .. ACTOR.IMPERIAL_WHITEGATE.text .. " at Aht Urhgan Whitegate.",
            "Travel to Caedarva Mire and reach Hediva Isle.",
            "Examine " .. ACTOR.SAVAGE_SCARS_CAEDARVA.text .. " for the investigation sequence.",
            "Examine the Savage Scars again to face Arisen Soulflayer and the Descended Winebibbers.",
            "Defeat the enemies.",
            "Examine " .. ACTOR.SAVAGE_SCARS_CAEDARVA.text .. " again after the battle.",
            "Return to " .. ACTOR.IMPERIAL_WHITEGATE.text .. ".",
        },
    },

    -- ========================================================
    -- PART 5
    -- ========================================================

    [310] = {
        name = "Ghatsad's Quandary",
        steps = {
            "Speak with Ghatsad in the Automaton Workshop in Aht Urhgan Whitegate.",
            "Travel to Mount Zhayolm and reach the Acid-eaten Door at (I-9).",
            "Open the way through the Gates of Halvung if necessary.",
            "Proceed to Hazhalm Testing Grounds and examine the Entry Gate.",
            "Travel to Caedarva Mire and examine the Vexing Sniffles at (E-10).",
            "Examine the Vexing Sniffles again to face Gloom Phantom, Magh Bihu, and Dazbog.",
            "Keep Mnejing alive during the battle.",
            "Examine the Vexing Sniffles again after the battle.",
            "Return to the Acid-eaten Door in Mount Zhayolm.",
            "Return to Ghatsad in Aht Urhgan Whitegate.",
        },
    },

    [326] = {
        name = 'The Revelation',
        steps = {
            "Speak with Abda-Lurabda in the Automaton Workshop in Aht Urhgan Whitegate.",
            "Enter Aydeewa Subterrane from Wajaom Woodlands (I-6).",
            "Examine " .. ACTOR.AYDEEWA_SURVEY_POINT_K7.text .. ".",
            "Examine " .. ACTOR.AYDEEWA_SURVEY_POINT_J9.text .. ".",
            "Examine " .. ACTOR.AYDEEWA_SURVEY_POINT_F8.text .. ".",
            "Proceed to the next map and examine " .. ACTOR.AYDEEWA_FINAL_SURVEY_POINT_G10.text .. ".",
            "Examine the Final Survey Point again to face Missabikong.",
            "Defeat Missabikong.",
            "Examine " .. ACTOR.AYDEEWA_FINAL_SURVEY_POINT_G10.text .. " again after the battle.",
            "Return to Abda-Lurabda in Aht Urhgan Whitegate.",
        },
    },

    [338] = {
        name = "Tateeya's Worries",
        steps = {
            "Speak with Tateeya in the Automaton Workshop in Aht Urhgan Whitegate.",
            "Speak with Ghatsad.",
            "Travel to Jade Sepulcher.",
            "Examine the Ornamental Door for the cutscene.",
            "Examine the Ornamental Door again to enter the battlefield.",
            "Defeat Drakeweaver Hageel Ja, Riftweaver Pomaal Ja, Fistweaver Mufaal Ja, and Glyphweaver Sikool Ja.",
            "Return to Aht Urhgan Whitegate and examine Imperial Whitegate for the completion cutscene.",
        },
    },

    [352] = {
        name = 'The Seagull Phratrie',
        steps = {
            "Obtain a Hamsi.",
            "Travel to Arrapago Reef and speak with the Apkallu Guide on Map 3.",
            "Investigate the cliffs in the northwestern portion of the reef.",
            "Continue the investigation into the Pteraketos and the Seagull Phratrie.",
        },
    },

    [362] = {
        name = 'The Sea Sage',
        steps = {
            "Return to Arrapago Reef and speak with the Apkallu Guide on Map 3.",
            "Travel to Wajaom Woodlands and examine " .. ACTOR.LEYPOINT.text .. " at (G-8).",
            "Continue the investigation into the breathing pearl.",
            "Return to Arrapago Reef and complete the search for the Pteraketos.",
        },
    },

    -- ========================================================
    -- PART 6
    -- ========================================================

    [380] = {
        name = 'Sky, Moon, Incantrix',
        steps = {
            "Speak with " .. ACTOR.REIKUU.text .. " and consult " .. ACTOR.INCANTRIX.text .. ".",
            "Examine " .. ACTOR.SUSPICIOUS_OVERGROWTH.text .. " and trade three Hoptoad and one Eastern Ginger.",
            "Return to " .. ACTOR.REIKUU.text .. ".",
        },
    },

    [392] = {
        name = "Nii's Last Stand",
        steps = {
            "Speak with " .. ACTOR.REIKUU.text .. " and continue to " .. ACTOR.INCANTRIX.text .. ".",
            "Investigate " .. ACTOR.BABBLING_BROOK.text .. ".",
            "Speak with Incantrix and continue to " .. ACTOR.ASPIRANTS_GROUNDS.text .. ".",
            "Examine the Aspirant's Grounds to obtain the Aspirant's Canteen.",
            "Examine it again to enter the battlefield.",
            "Defeat the enemies while assisting Nii Aquu.",
        },
    },

    [414] = {
        name = 'Dance of the Tengu',
        steps = {
            "Speak with " .. ACTOR.REIKUU.text .. ".",
            "Examine " .. ACTOR.BABBLING_BROOK.text .. " to enter the first battlefield.",
            "Defeat Zhuu Buxu the Silent.",
            "Examine the Babbling Brook again to enter the second battlefield.",
            "Complete the second battle.",
        },
    },

    -- ========================================================
    -- PART 7
    -- ========================================================

    [430] = {
        name = "Raebrimm's Rebirth",
        steps = {
            "Speak with " .. ACTOR.GUMBAH.text .. " in Bastok Mines.",
            "Travel to Rabao and speak with Dancing Wolf.",
            "Enter Quicksand Caves through the Altepa Gate.",
            "Reach " .. ACTOR.JOURNEYS_END.text .. " at (K-10).",
            "Examine Journey's End to face two Cactuars, two Spiders, and two Lizards.",
            "Defeat all six enemies.",
            "Examine " .. ACTOR.JOURNEYS_END.text .. " again after the battle.",
        },
    },

    [440] = {
        name = 'Uran-Mafran of the Maelstrom',
        steps = {
            "Speak with Dancing Wolf in Rabao.",
            "Enter Quicksand Caves through the Altepa Gate.",
            "Reach " .. ACTOR.JOURNEYS_END.text .. " at (K-10).",
            "Examine Journey's End to begin the battle against Uran-Mafran.",
            "Defeat Uran-Mafran.",
            "Examine " .. ACTOR.JOURNEYS_END.text .. " again after the battle.",
        },
    },

    [452] = {
        name = "Koru-Moru's Hypothesis",
        steps = {
            "Speak with Koru-Moru and obtain Luminicloth, Spectral Goldenrod, and Spectral Crimson.",
            "Return to Koru-Moru and trade all three items.",
            "Complete the resulting event.",
        },
    },

    [460] = {
        name = 'Altennia Burns Bright',
        steps = {
            "Speak with " .. ACTOR.HALVER.text .. " and continue to " .. ACTOR.RAHAL.text .. ".",
            "Travel to Ifrit's Cauldron.",
            "Mine the Ember-encrusted Orichalcum.",
            "Return to " .. ACTOR.RAHAL.text .. " and continue the mission.",
        },
    },

    -- ========================================================
    -- PART 8
    -- ========================================================

    [468] = {
        name = 'Maat on the Rampage',
        steps = {
            "Speak with Maat in Ru'Lude Gardens.",
            "Speak with Muckvix in Lower Jeuno.",
            "Speak with Miladi-Nildi in Lower Jeuno.",
            "Travel to Batallia Downs.",
            "Investigate the Goblin Festival Site during the required time.",
            "Examine the site again to begin the battle.",
            "Defeat the enemies.",
        },
    },

    [484] = {
        name = 'Not Just a Pretty Face',
        steps = {
            "Continue the investigation into Maat's pursuit.",
            "Travel to the required battlefield.",
            "Complete the battle involving Maat, Dazbog, and the Destiny Destroyers.",
        },
    },

    [494] = {
        name = 'Delkfutt the Great',
        steps = {
            "Speak with Shami in Port Jeuno.",
            "Speak with Valaineral in Southern San d'Oria (S).",
            "Enter Eldieme Necropolis (S) through the Secret Entrance in Batallia Downs (S).",
            "Continue through the Delkfutt investigation and complete the required battle.",
        },
    },

    -- ========================================================
    -- PART 9
    -- ========================================================

    [508] = {
        name = 'Oshasha Violation',
        steps = {
            "Speak with " .. ACTOR.ANDREINE.text .. " in the Celennia Memorial Library.",
            "Travel to Marjami Ravine.",
            "Examine " .. ACTOR.BIBLIOMANIACS_LAIR.text .. " at (I-10).",
            "Defeat Brash Gramk-Droog, Velkk Defiler, and Velkk Inquisitor.",
            "Examine " .. ACTOR.BIBLIOMANIACS_LAIR.text .. " again after the battle.",
            "Return to " .. ACTOR.ANDREINE.text .. ".",
        },
    },

    [516] = {
        name = 'Phantasmic Heroes',
        steps = {
            "Speak with Marjoirelle in Western Adoulin.",
            "Travel to Leafallia and examine " .. ACTOR.ODYSSEAN_PASSAGE.text .. ".",
            "Examine " .. ACTOR.TEST_OF_TALENTS.text .. ".",
            "Examine the Test of Talents again to enter the solo battlefield.",
            "Defeat the Shadow Lord while protecting the assisting heroes.",
            "Return to " .. ACTOR.ANDREINE.text .. " in the Celennia Memorial Library.",
        },
    },

    [530] = {
        name = "Skokkr Undrborn's Temptation",
        steps = {
            "Continue the investigation in Leafallia.",
            "Speak with the individuals involved in Skokkr Undrborn's scheme.",
            "Complete the Auria Collection purchase.",
            "Return to the Silver Knife and continue the investigation.",
        },
    },

    [542] = {
        name = 'The Prime Weapons',
        steps = {
            "Speak with " .. ACTOR.ANDREINE.text .. " in the Celennia Memorial Library.",
            "Travel to Leafallia.",
            "Examine " .. ACTOR.ODYSSEAN_PASSAGE.text .. ".",
            "Trade a Stygian Ash to the Odyssean Passage.",
            "Continue the Prime Weapon forging sequence.",
        },
    },

    -- ========================================================
    -- PART 10
    -- ========================================================

    [552] = {
        name = 'To Movalpolos!',
        steps = {
            "Speak with " .. ACTOR.GUMBAH.text .. " in Bastok Mines.",
            "Travel to Oldton Movalpolos and speak with " .. ACTOR.TARNOTIK.text .. ".",
            "Examine " .. ACTOR.MINE_SHAFT_2716.text .. " to receive the battlefield event.",
            "Examine the Shaft Entrance again to enter the battlefield.",
            "Defeat Gloom Phantom, Awoken Vampyr Jarl, Awoken Ariri Samariri, and Awoken Hildesvini while Jabbos assists.",
        },
    },

    [562] = {
        name = 'Magh Bihu on the Prowl',
        steps = {
            "Speak with " .. ACTOR.MANDRAGORA_WARDEN.text .. " and trade Acidic Humus.",
            "Complete the Magh Bihu event.",
            "Return to " .. ACTOR.MANDRAGORA_WARDEN.text .. " and trade a Watermelon.",
            "Complete the final event.",
        },
    },

    [574] = {
        name = '101 Dazbogs',
        steps = {
            "Obtain six Fat Worm Meat.",
            "Trade all six pieces to " .. ACTOR.HEDROV.text .. ".",
            "Complete the resulting event.",
        },
    },

    [580] = {
        name = 'Kipdrix the Faithful',
        steps = {
            "Speak with " .. ACTOR.TARNOTIK.text .. " and continue to " .. ACTOR.MINE_SHAFT_2716.text .. ".",
            "Enter the battlefield and complete the required Destiny Destroyers encounter.",
        },
    },

    [592] = {
        name = "Duke Alloces's Decision",
        steps = {
            "Equip a Stage 2 Prime Weapon with a damage attribute. Instruments and shields do not qualify.",
            "Examine " .. ACTOR.HEROES_GAMBIT.text .. " in Xarcabard.",
            "Examine " .. ACTOR.VALHALLAN_RIFT.text .. " in Castle Zvahl Keep.",
            "Examine the Valhallan Rift again to enter the battlefield.",
            "Defeat the required enemies.",
            "Receive Despairing Psyche.",
        },
    },

    [602] = {
        name = "Odin's Eye",
        steps = {
            "Change areas after completing the previous mission.",
            "Examine " .. ACTOR.HEROES_GAMBIT.text .. " in Xarcabard.",
            "Enter Dynamis - Xarcabard.",
            "Collect the four psyche fragments from the four Twinkling Presence targets.",
            "Examine the target near Castle Zvahl at (D-7) after collecting all four fragments.",
            "Return to Bastok Mines and speak with " .. ACTOR.GUMBAH.text .. ".",
        },
    },

    -- ========================================================
    -- PART 11
    -- ========================================================

    [612] = {
        name = 'Moglesse Oblige',
        steps = {
            "Speak with your Mog House Moogle.",
            "Travel to the Stone Circle in La Theine Plateau at (G-6).",
            "Examine the ??? there for the cutscene.",
            "Travel to the Moogle Meeting target at (H-10) in La Theine Plateau.",
            "Examine the Moogle Meeting target again to enter the battlefield.",
            "Defeat Spikehelm Argok, Tethys, Garmatur the Merciless, and Antican Curule Aedillis.",
        },
    },

    [624] = {
        name = 'The Voracious Beast',
        steps = {
            "Examine " .. ACTOR.HEROES_GAMBIT.text .. " in Xarcabard.",
            "Travel to Castle Zvahl Keep and examine " .. ACTOR.VALHALLAN_RIFT.text .. ".",
            "Examine the Valhallan Rift again to enter The Voracious Beast battlefield.",
            "Defeat Garazu-Horeizu and the remaining enemies.",
            "Choose one of the available rings after the battle.",
            "Receive the Vial of Chaos's blood.",
        },
    },

    [642] = {
        name = 'Your Decision',
        steps = {
            "Continue through the epilogue after The Voracious Beast.",
            "Speak with Elijah after the final events to begin the remaining Prime Weapon progression.",
        },
    },

}

return M