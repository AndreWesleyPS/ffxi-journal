--[[
    Bastok - Mission Database
    ==========================

    M.MISSIONS:
        Official numeric mission IDs extracted from DAT 0xD9A4.

    M.STEPS:
        Walkthrough entries using the existing Bastok mission
        identifiers.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'The Zeruhn Report',
    [1] = 'A Geological Survey',
    [2] = 'Fetichism',
    [3] = 'The Crystal Line',
    [4] = 'Wading Beasts',
    [5] = 'The Emissary',
    [6] = 'The Emissary (San d\'Oria)',
    [7] = 'The Emissary (Windurst)',
    [8] = 'The Emissary (San d\'Oria)',
    [9] = 'The Emissary (Windurst)',
    [10] = 'The Four Musketeers',
    [11] = 'To the Forsaken Mines',
    [12] = 'Jeuno',
    [13] = 'Magicite',
    [14] = 'Darkness Rising',
    [15] = 'Xarcabard, Land of Truths',
    [16] = 'Return of the Talekeeper',
    [17] = 'The Pirates\' Cove',
    [18] = 'The Final Image',
    [19] = 'On My Way',
    [20] = 'The Chains That Bind Us',
    [21] = 'Enter the Talekeeper',
    [22] = 'The Salt of the Earth',
    [23] = 'Where Two Paths Converge',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    ['1-1'] = {
        name = "The Zeruhn Report",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Enter Zeruhn Mines from Bastok Mines at (D-7).",
            "Speak with " .. ACTOR.MAKARIM.text .. " at (H-11) to receive the Zeruhn Report.",
            "Return to Bastok Metalworks and speak with " .. ACTOR.NAJI.text .. " at (J-8).",
        },
    },

    ['1-2'] = {
        name = "A Geological Survey",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to Cid's Lab at (G-8) in Metalworks and speak with " .. ACTOR.CID.text .. ".",
            "Receive the Blue acidity tester.",
            "Enter Dangruf Wadi from South Gustaberg at (D-9).",
            "Follow the path north to (I-8), then stand on the geyser in the southeastern corner until it carries you onto the ledge.",
            "Check the acidity tester to confirm that it has changed to the Red acidity tester.",
            "Return to " .. ACTOR.CID.text .. ".",
        },
    },

    ['1-3'] = {
        name = "Fetichism",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to Palborough Mines and obtain a Fetich Head, Fetich Torso, Fetich Arms, and Fetich Legs from Quadavs.",
            "Return to Bastok and trade all four Fetich pieces to " .. ACTOR.GATE_GUARD.text .. ".",
        },
    },

    ['2-1'] = {
        name = "The Crystal Line",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to Cid's Lab in Bastok Metalworks and speak with " .. ACTOR.CID.text .. ".",
            "Obtain a Faded Crystal and trade it to " .. ACTOR.CID.text .. ".",
            "Speak with " .. ACTOR.AYAME.text .. ".",
        },
    },

    ['2-2'] = {
        name = "Wading Beasts",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Obtain a Lizard Egg.",
            "Travel to the President's Office in Bastok Metalworks and speak with " .. ACTOR.ALOIS.text .. " at (J-8).",
            "Trade the Lizard Egg to " .. ACTOR.ALOIS.text .. ".",
        },
    },

    ['2-3'] = {
        name = "The Emissary",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.NAJI.text .. " to begin the embassy mission.",
            "Choose whether to visit San d'Oria or Windurst first.",

            "San d'Oria first: travel to Northern San d'Oria and speak with Baraka at the Bastokan Consulate.",
            "Speak with Helaku at (K-10) inside the Bastokan Consulate.",
            "Travel to Chateau d'Oraguille and speak with " .. ACTOR.HALVER.text .. ".",
            "Travel to Ghelsba Outpost and defeat Warchief Vatgit at (H-7).",
            "Return to Northern San d'Oria and speak with Helaku again.",
            "Travel to Port Windurst and speak with Melek at (F-6) inside the Bastokan Consulate.",
            "Enter Heavens Tower and speak with " .. ACTOR.KUPIPI.text .. " through the Clerical Chamber door.",
            "Travel to Giddeus and complete the battle at Balga's Dais.",
            "Return to Port Windurst and speak with Melek again.",

            "Windurst first: travel to Port Windurst and speak with Melek at (F-6) inside the Bastokan Consulate.",
            "Enter Heavens Tower and speak with " .. ACTOR.KUPIPI.text .. " through the Clerical Chamber door.",
            "Travel to Giddeus and defeat Eyy Mon the Ironbreaker at (G-7).",
            "Trade the Aspir Knife to Uu Zhoumo.",
            "Return to Port Windurst and speak with Melek again.",
            "Travel to Northern San d'Oria and speak with Helaku at (K-10).",
            "Travel to Chateau d'Oraguille and speak with " .. ACTOR.HALVER.text .. ".",
            "Travel to " .. ACTOR.HORLAIS_PEAK.text .. " and enter the battlefield.",
            "Defeat the Dread Dragon.",
            "Return to Northern San d'Oria and speak with Helaku.",

            "Return to Bastok and speak with " .. ACTOR.NAJI.text .. " after completing both paths.",
        },
    },

    ['3-1'] = {
        name = "The Four Musketeers",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.IRON_EATER.text .. ".",
            "Travel to Beadeaux and defeat 20 Copper Quadavs.",
            "Return to the required area of Pashhow Marshlands and complete the event.",
        },
    },

    ['3-2'] = {
        name = "To the Forsaken Mines",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.DAVYAD.text .. ".",
            "Obtain a Hare Meat.",
            "Travel to Gusgen Mines and reach (J-7).",
            "Trade the Hare Meat to the ???.",
            "Defeat Blind Moby and obtain the Glocolite.",
            "Return to Bastok and speak with " .. ACTOR.GATE_GUARD.text .. ".",
        },
    },

    ['3-3'] = {
        name = "Jeuno",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.LUCIUS.text .. ".",
            "Travel to Ru'Lude Gardens and speak with " .. ACTOR.GOGGEHN.text .. " at the Bastokan Embassy.",
            "Travel to Lower Delkfutt's Tower and enter the basement through the Cermet Door at (E-8).",
            "Reach the basement around (K/L-9) and examine the Cermet Door.",
            "Return to the Bastokan Embassy in Ru'Lude Gardens.",
        },
    },

    ['4-1'] = {
        name = "Magicite",
        steps = {
            "Speak with " .. ACTOR.GOGGEHN.text .. " at the Bastokan Embassy.",
            "Examine the Audience Chamber.",
            "Speak with " .. ACTOR.ALDO.text .. " in Neptune's Spire.",
            "Speak with " .. ACTOR.PAYA_SABYA.text .. " in Upper Jeuno at (I-8).",
            "Speak with " .. ACTOR.MUCKVIX.text .. " in Lower Jeuno at (H-9).",
            "Speak with " .. ACTOR.SATTAL_MANSAL.text .. " at (J-8) and obtain the required Quadav key items.",
            "Travel to Upper Jeuno and trade Coeurl Meat to " .. ACTOR.BAUDIN.text .. " at (G-8).",

            "Travel to Davoi and reach (G-7). Pass through the Wall of Dark Arts into Monastic Cavern and obtain the magicite.",
            "Travel to Castle Oztroja, reach the Brass Door at (H-9), light the torch, and continue to the Altar Room to obtain the magicite.",
            "Travel to Beadeaux, follow the left wall to (H-7), enter Qulun Dome, and obtain the magicite.",

            "Return to the Bastokan Embassy and examine the Audience Chamber.",
            "Speak with " .. ACTOR.GOGGEHN.text .. ".",
        },
    },

    ['5-1'] = {
        name = "Darkness Rising",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.NAJI.text .. ".",
            "Travel to Fei'Yin and complete the event.",
            "Travel to " .. ACTOR.QU_BIA_ARENA.text .. " and enter the battlefield.",
            "Return to Bastok and speak with " .. ACTOR.NAJI.text .. ".",
        },
    },

    ['5-2'] = {
        name = "Xarcabard, Land of Truths",
        steps = {
            "Travel to the President's Office and speak with " .. ACTOR.KARST.text .. ".",
            "Travel to Castle Zvahl Keep and reach the Throne Room.",
            "Enter the battlefield and defeat the Shadow Lord.",
            "Return to " .. ACTOR.KARST.text .. " after the battle.",
            "Speak with " .. ACTOR.LUCIUS.text .. " to receive Trust: Volker.",
        },
    },

    ['6-1'] = {
        name = "Return of the Talekeeper",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.MEDICINE_EAGLE.text .. ".",
            "Speak with " .. ACTOR.DRAKE_FANG.text .. ".",
            "Travel to Western Altepa Desert and reach (G-8).",
            "Examine " .. ACTOR.ALTEPA_QQ.text .. " to face Western Sphinx and Eastern Sphinx.",
            "Defeat the two Sphinx.",
            "Examine " .. ACTOR.ALTEPA_QQ.text .. " again to receive the Altepa moonpebble.",
            "Return to Bastok and speak with " .. ACTOR.TALL_MOUNTAIN.text .. ".",
        },
    },

    ['6-2'] = {
        name = "The Pirates' Cove",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.NAJI.text .. ".",
            "Travel to Norg and speak with Gilgamesh.",
            "Obtain Adaman Ore.",
            "Travel to Ifrit's Cauldron through Yhoator Jungle at (I-5).",
            "Reach the ??? around (H-7) in the lava and trade the Adaman Ore.",
            "Defeat the spawned Magma to obtain a Frag Rock.",
            "Return to Norg and trade the Frag Rock to Gilgamesh.",
            "Return to Bastok and speak with " .. ACTOR.NAJI.text .. ".",
        },
    },

    ['7-1'] = {
        name = "The Final Image",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.CID.text .. ".",
            "Travel to Ro'Maeve and search for the ??? at one of the following locations:",
            ACTOR.ROMAEVE_QQ_D10.text,
            ACTOR.ROMAEVE_QQ_E9.text,
            ACTOR.ROMAEVE_QQ_E10.text,
            ACTOR.ROMAEVE_QQ_E11.text,
            ACTOR.ROMAEVE_QQ_G9.text,
            ACTOR.ROMAEVE_QQ_I8.text,
            ACTOR.ROMAEVE_QQ_J8.text,
            ACTOR.ROMAEVE_QQ_K10.text,
            ACTOR.ROMAEVE_QQ_K11.text,
            ACTOR.ROMAEVE_QQ_L10.text,
            ACTOR.ROMAEVE_QQ_L7.text,
            "Avoid the ??? at (M-8), which is used for a different purpose.",
            "Clear the nearby enemies and examine the correct ??? to face two Mokkurkalfi.",
            "Defeat the Mokkurkalfi and return to the ??? after the battle.",
            "Examine it again to obtain the Reinforced Cermet.",
            "Return to Bastok and speak with " .. ACTOR.CID.text .. ".",
        },
    },

    ['7-2'] = {
        name = "On My Way",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.KARST.text .. ".",
            "Speak with " .. ACTOR.HILDA.text .. ".",
            "Travel to " .. ACTOR.WAUGHROON_SHRINE.text .. " through Palborough Mines.",
            "Enter the battlefield and defeat Sa'Nha Soulsaver, Go'Bha Slaughterer, Ku'Jhu Graniteskin, and Da'Shu Knightslayer.",
            "Return to Bastok and speak with " .. ACTOR.KARST.text .. ".",
            "Speak with " .. ACTOR.GUMBAH.text .. " and complete the letter event.",
        },
    },

    ['8-1'] = {
        name = "The Chains That Bind Us",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.IRON_EATER.text .. ".",
            "Enter Quicksand Caves from Western Altepa Desert at (G-5).",
            "Reach (H-8) and pass through the weighted door.",
            "Continue through the next weighted door at (I-10) and reach (G-11).",
            "Examine " .. ACTOR.QUICKSAND_QQ_G11.text .. " to face Triarius IV-XIV, Princeps IV-XLV, and Centurio IV-VII.",
            "Defeat all three Antica.",
            "Examine the Galka Statue again.",
            "Return to Western Altepa Desert and enter Quicksand Caves from the entrance around (C/D-11).",
            "Pass through the weighted door at (K-8) and continue to the next area.",
            "Use the weight device at (G-8) and reach the ??? at (H-8) in front of the mural.",
            "Examine the ???.",
            "Return to " .. ACTOR.IRON_EATER.text .. ".",
        },
    },

    ['8-2'] = {
        name = "Enter the Talekeeper",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.DRAKE_FANG.text .. ".",
            "Travel to Kuftal Tunnel and descend to the lower level.",
            "Reach " .. ACTOR.KUFTAL_QQ.text .. " at (H-8).",
            "Examine the ??? to face the spawned enemy.",
            "Defeat the enemy.",
            "Examine " .. ACTOR.KUFTAL_QQ.text .. " again to receive the Old Piece of Wood.",
            "Return to " .. ACTOR.DRAKE_FANG.text .. ".",
        },
    },

    ['9-1'] = {
        name = "The Salt of the Earth",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.ALOIS.text .. ".",
            "Travel to Rabao and speak with Dancing Wolf at (G-7).",
            "Travel to Gustav Tunnel and reach the pond at (G-6).",
            "Examine " .. ACTOR.GUSTAV_QQ.text .. " to face Gigaplasm.",
            "Defeat Gigaplasm.",
            "Examine " .. ACTOR.GUSTAV_QQ.text .. " again to obtain Miraclesalt.",
            "Return to Rabao and speak with Dancing Wolf at (G-7).",
            "Return to Bastok and speak with " .. ACTOR.ALOIS.text .. ".",
        },
    },

    ['9-2'] = {
        name = "Where Two Paths Converge",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.IRON_EATER.text .. ".",
            "Travel to Castle Zvahl Keep and proceed to the Throne Room.",
            "Enter the battlefield and defeat the required opponents.",
            "Return to " .. ACTOR.IRON_EATER.text .. ".",
        },
    },
}

return M