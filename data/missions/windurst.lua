--[[
    Windurst - Mission Database
    =============================

    M.MISSIONS:
        Official numeric mission IDs.

    M.STEPS:
        Walkthrough entries using the existing walkthrough IDs.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [0] = 'The Horutoto Ruins Experiment',
    [1] = 'The Heart of the Matter',
    [2] = 'The Price of Peace',
    [3] = 'Lost for Words',
    [4] = 'A Testing Time',
    [5] = 'The Three Kingdoms',
    [6] = 'The Three Kingdoms (San d\'Oria)',
    [7] = 'The Three Kingdoms (Bastok)',
    [8] = 'The Three Kingdoms (San d\'Oria)',
    [9] = 'The Three Kingdoms (Bastok)',
    [10] = 'To Each His Own Right',
    [11] = 'Written in the Stars',
    [12] = 'A New Journey',
    [13] = 'Magicite',
    [14] = 'The Final Seal',
    [15] = 'The Shadow Awaits',
    [16] = 'Full Moon Fountain',
    [17] = 'Saintly Invitation',
    [18] = 'The Sixth Ministry',
    [19] = 'Awakening of the Gods',
    [20] = 'Vain',
    [21] = 'The Jester Who\'d Be King',
    [22] = 'Doll of the Dead',
    [23] = 'Moon Reading',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    -- ========================================================
    -- RANK 1
    -- ========================================================

    ['1-1'] = {
        name = "The Horutoto Ruins Experiment",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to the Orastery in Port Windurst and speak with " .. ACTOR.HAKKURU_RINKURU.text .. ".",
            "Travel to East Sarutabaruta and enter Inner Horutoto Ruins through the eastern magic tower.",
            "Proceed to the Cracked Wall at (H-9) and examine it to enter the passage.",
            "Continue to the Gate: Magical Gizmo at (I-9) and examine it.",
            "Search the six Ancient Magical Gizmos until one yields the Cracked Mana Orb.",
            "Return to " .. ACTOR.HAKKURU_RINKURU.text .. " with the orb.",
        },
    },

    ['1-2'] = {
        name = "The Heart of the Matter",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to the Manustery in Windurst Woods and speak with " .. ACTOR.APURURU.text .. ".",
            "Travel to East Sarutabaruta and enter the southeastern magic tower of Outer Horutoto Ruins.",
            "Place the six Dark Mana Orbs on the corresponding pedestals.",
            "Examine the Cracked Walls to reach the hidden rooms containing the remaining pedestals.",
            "Pass through the eastern Cracked Wall and examine the Gate: Magical Gizmo for the event.",
            "Retrieve the six Glowing Mana Orbs from the pedestals.",
            "Return to " .. ACTOR.APURURU.text .. ".",
        },
    },

    ['1-3'] = {
        name = "The Price of Peace",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to the roof of the Rhinostery in Windurst Waters and speak with " .. ACTOR.LEEPE_HOPPE.text .. ".",
            "Travel to Giddeus and deliver the Food Offering to " .. ACTOR.LAA_MOZI.text .. " at (H-7).",
            "Deliver the Drink Offering to " .. ACTOR.GHOO_PAKYA.text .. " at (G-7).",
            "Return to the Rhinostery and speak with " .. ACTOR.LEEPE_HOPPE.text .. ".",
            "Return to " .. ACTOR.GATE_GUARD.text .. ".",
        },
    },

    -- ========================================================
    -- RANK 2
    -- ========================================================

    ['2-1'] = {
        name = "Lost for Words",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Travel to the Optistery in Windurst Waters and speak with " .. ACTOR.TOSUKA_PORUKA.text .. ".",
            "Speak with " .. ACTOR.NANAA_MIHGO.text .. ".",
            "Travel through Maze of Shakhrami to the Fossil Rocks around (G-6).",
            "Continue to Map 2 around (H-5) and examine the Fossil Rocks to obtain Lapis Coral.",
            "Return to " .. ACTOR.NANAA_MIHGO.text .. ".",
            "Travel to East Sarutabaruta and enter Inner Horutoto Ruins.",
            "Examine " .. ACTOR.MAHOGANY_DOOR.text .. " in the required chamber.",
            "Continue to the House of the Hero.",
            "Return to " .. ACTOR.TOSUKA_PORUKA.text .. ".",
        },
    },

    ['2-2'] = {
        name = "A Testing Time",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.MORENO_TOENO.text .. " in the Aurastery at (L-6).",
            "Travel to Tahrongi Canyon.",
            "Defeat at least 30 monsters before the trial ends.",
            "During the final Vana'diel hour of the trial, return to " .. ACTOR.MORENO_TOENO.text .. " to complete the mission.",
        },
    },

    ['2-3'] = {
        name = "The Three Kingdoms",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.KUPIPI.text .. " in Heavens Tower.",

            "Bastok Path:",
            "Travel to Bastok and speak with " .. ACTOR.PATT_POTT.text .. ".",
            "Speak with Pius at (J-8), then Grohm at (G-9).",
            "Travel to Palborough Mines and obtain Mine Gravel from a Mythril Seam at (F-7) or (I-8).",
            "Place the Gravel in the Refiner, operate the levers as required, and obtain Mythril Sand.",
            "Return to Metalworks and trade the Mythril Sand to " .. ACTOR.PATT_POTT.text .. ".",
            "Travel to Northern San d'Oria and speak with Kasaroro at (H-9).",
            "Speak with " .. ACTOR.HALVER.text .. ".",
            "Enter Horlais Peak and complete the required battlefield.",
            "Return to Northern San d'Oria and speak with Kasaroro again.",

            "San d'Oria Path:",
            "Travel to Northern San d'Oria and speak with Heruze-Moruze, then Helaku at (K-10).",
            "Speak with " .. ACTOR.HALVER.text .. " when directed.",
            "Travel to Ghelsba Outpost and defeat Warchief Vatgit.",
            "Return to Northern San d'Oria and speak with Kasaroro.",
            "Return to Bastok and speak with " .. ACTOR.PATT_POTT.text .. ".",
            "Speak with Pius at (J-8), then Grohm at (G-9).",
            "Enter Waughroon Shrine and complete the required battlefield.",
            "Return to " .. ACTOR.PATT_POTT.text .. ".",

            "Return to " .. ACTOR.KUPIPI.text .. " after both paths are complete.",
        },
    },

    -- ========================================================
    -- RANK 3
    -- ========================================================

    ['3-1'] = {
        name = "To Each His Own Right",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.KUPIPI.text .. " in Heavens Tower.",
            "Proceed to the upper portion of Heavens Tower and speak with " .. ACTOR.RYH_EPOCAN.text .. ".",
            "Speak with " .. ACTOR.HAKKURU_RINKURU.text .. ".",
            "Travel to Castle Oztroja and enter through the trap door at (I-8).",
            "Complete the required event and return to " .. ACTOR.RYH_EPOCAN.text .. ".",
        },
    },

    ['3-2'] = {
        name = "Written in the Stars",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.ZUBABA.text .. ".",
            "Travel to East Sarutabaruta and enter Inner Horutoto Ruins.",
            "Pass through the Three Mages Gate and proceed to the small room around (G-7).",
            "Examine the Gate of Light.",
            "Return to " .. ACTOR.ZUBABA.text .. ".",
        },
    },

    ['3-3'] = {
        name = "A New Journey",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Enter the Vestal Chamber at the top of Heavens Tower.",
            "Speak with " .. ACTOR.PAKH_JATALFIH.text .. ".",
            "Use Delkfutt's Key to enter the Cermet Door at (L-7) in the basement of Delkfutt's Tower.",
            "Return to " .. ACTOR.PAKH_JATALFIH.text .. ".",
            "Enter the Windurstian Embassy in Ru'Lude Gardens.",
        },
    },

    -- ========================================================
    -- RANK 4
    -- ========================================================

    ['4-1'] = {
        name = "Magicite",
        steps = {
            "Speak with " .. ACTOR.PAKH_JATALFIH.text .. " in the Windurstian Embassy and enter the Ambassador's room.",
            "Examine the Audience Chamber door.",
            "Speak with " .. ACTOR.ALDO.text .. " in Neptune's Spire.",

            "If this is your first Magicite mission, speak with " .. ACTOR.PAYA_SABYA.text .. ".",
            "Speak with " .. ACTOR.MUCKVIS.text .. ".",
            "Speak with " .. ACTOR.SATTAL_MANSAL.text .. " in Lower Jeuno and obtain the required key items.",
            "Trade Coeurl Meat to " .. ACTOR.BAUDIN.text .. " in Upper Jeuno to obtain the Crest of Davoi.",

            "Visit the three magicite locations in any order.",
            "Davoi (G-7): pass through the Wall of Dark Arts, enter Monastic Cavern, and obtain the magicite.",
            "Castle Oztroja: enter through the Brass Door at (I-8), proceed through the upper floors, light the torch at (H-9), then reach the Altar Room and obtain the magicite.",
            "Beadeaux: follow the left wall to the tunnel at (H-7), enter Qulun Dome, and obtain the magicite.",

            "Return to the Audience Chamber and obtain the Letter to Jeuno.",
            "Return to " .. ACTOR.PAKH_JATALFIH.text .. " to complete the mission.",
        },
    },

    -- ========================================================
    -- RANK 5
    -- ========================================================

    ['5-1'] = {
        name = "The Final Seal",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Enter the Vestal Chamber at the top of Heavens Tower.",
            "Travel to Fei'Yin and enter the ruins.",
            "Proceed to Qu'Bia Arena and complete the Rank 5 battlefield.",
            "Return to the Vestal Chamber.",
        },
    },

    ['5-2'] = {
        name = "The Shadow Awaits",
        steps = {
            "Enter the Vestal Chamber at the top of Heavens Tower.",
            "Travel to Castle Zvahl Keep and enter the Throne Room.",
            "Defeat the Shadow Lord.",
            "Return to Heavens Tower and enter the Vestal Chamber.",
        },
    },

    -- ========================================================
    -- RANK 6
    -- ========================================================

    ['6-1'] = {
        name = "Full Moon Fountain",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.HAKKURU_RINKURU.text .. " in the Orastery.",
            "Travel to West Sarutabaruta and enter the southwestern tower of Outer Horutoto Ruins.",
            "Examine the Cracked Wall at (I-8).",
            "Examine the second Cracked Wall at (J-8).",
            "Continue to the Gate: Magical Gizmo and examine it to spawn the four Jack Cardians.",
            "Defeat the Jack Cardians.",
            "Examine the Gate: Magical Gizmo again after the battlefield.",
            "Enter Full Moon Fountain in Toraimarai Canal.",
        },
    },

    ['6-2'] = {
        name = "Saintly Invitation",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Enter the Vestal Chamber at the top of Heavens Tower.",
            "Travel to Balga's Dais in Giddeus and complete the Saintly Invitation battlefield.",
            "Travel to Castle Oztroja and obtain the Judgment Key from the Flagellants around (H-5).",
            "Pass through the password trap door and reach the Brass Door.",
            "Trade the Judgment Key to the Brass Door.",
            "Speak with " .. ACTOR.KAA_TORU.text .. ".",
            "Return to the Vestal Chamber.",
        },
    },

    -- ========================================================
    -- RANK 7
    -- ========================================================

    ['7-1'] = {
        name = "The Sixth Ministry",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.TOSUKA_PORUKA.text .. " in the Optistery.",
            "Enter Toraimarai Canal.",
            "Reach Map 2 around (G-8).",
            "Defeat the four Hinge Oils to open the Marble Door.",
            "Examine the Tome of Magic at the mission location.",
            "Return to " .. ACTOR.TOSUKA_PORUKA.text .. ".",
        },
    },

    ['7-2'] = {
        name = "Awakening of the Gods",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.LEEPE_HOPPE.text .. " on the roof of the Rhinostery in Windurst Waters.",
            "Speak with " .. ACTOR.KERUTOTO.text .. " in the northern Rhinostery building.",
            "Travel to Kazham and speak with " .. ACTOR.ROMAA_MIHGO.text .. " at (H-11) in Mihgo's Residence.",
            "Travel through Yhoator Jungle to the Den of Rancor.",
            "Enter Temple of Uggalepih and proceed to Map 3 around (J-9).",
            "Defeat Bonze Marberry and obtain the Cursed Key.",
            "Travel to the Granite Door at (J-6).",
            "Trade the Cursed Key to " .. ACTOR.GRANITE_DOOR.text .. ".",
            "Return to " .. ACTOR.LEEPE_HOPPE.text .. " on the roof of the Rhinostery.",
        },
    },

    -- ========================================================
    -- RANK 8
    -- ========================================================

    ['8-1'] = {
        name = "Vain",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.MORENO_TOENO.text .. " in the Aurastery at (L-6).",
            "Travel to Ro'Maeve and examine Gu'Hau Spring.",
            "Travel to Davoi and enter Monastic Cavern through the second entrance.",
            "Defeat Dirtyhanded Gochakzuk.",
            "Obtain the Curse Wand.",
            "Trade the Curse Wand to " .. ACTOR.SEDAL_GODJAL.text .. ".",
            "Return to " .. ACTOR.MORENO_TOENO.text .. ".",
        },
    },

    ['8-2'] = {
        name = "The Jester Who'd Be King",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.APURURU.text .. " in Windurst Woods.",
            "Speak with " .. ACTOR.TOSUKA_PORUKA.text .. " in Windurst Waters.",
            "Travel to Fei'Yin and speak with Rukususu at (F-6) on Map 2 through the Cermet Door.",
            "Travel to Davoi, enter Monastic Cavern through the second entrance, and speak with " .. ACTOR.SEDAL_GODJAL.text .. ".",
            "Return to Windurst Waters and speak with " .. ACTOR.TOSUKA_PORUKA.text .. ".",
            "Return to " .. ACTOR.APURURU.text .. " to continue.",

            "Travel to West Sarutabaruta and enter Outer Horutoto Ruins.",
            "Examine the Cracked Wall at (I-6) and proceed to the next map.",
            "Examine the Cracked Wall at (G-8) to spawn Queen of Coins and Queen of Swords.",
            "Defeat both Cardian NMs.",
            "Examine the Cracked Wall again and obtain the Orastery Ring.",

            "Return to " .. ACTOR.APURURU.text .. ".",
            "Speak with " .. ACTOR.SHANTOTTO.text .. ".",
            "Return to " .. ACTOR.APURURU.text .. ".",
            "Enter Inner Horutoto Ruins and pass the Three Mages Gate.",
            "Reach the Gate of Darkness at (I-7) on Map 4.",
            "Complete the event and return to " .. ACTOR.APURURU.text .. ".",
        },
    },

    -- ========================================================
    -- RANK 9
    -- ========================================================

    ['9-1'] = {
        name = "Doll of the Dead",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Speak with " .. ACTOR.APURURU.text .. " in Windurst Woods.",
            "Enter the Vestal Chamber at the top of Heavens Tower.",
            "Return to " .. ACTOR.APURURU.text .. ".",
            "Travel to the hidden area of The Boyahda Tree Map 1.",
            "Find the Mandragora Warden and trade it Goobbue Humus.",
            "Return to " .. ACTOR.APURURU.text .. ".",
            "Enter Full Moon Fountain.",
        },
    },

    ['9-2'] = {
        name = "Moon Reading",
        steps = {
            "Speak with " .. ACTOR.GATE_GUARD.text .. ".",
            "Enter the Vestal Chamber at the top of Heavens Tower.",

            "Visit Qu'Hua Spring in Ro'Maeve and obtain the Ancient Verse of Ro'Maeve.",
            "Enter the Chamber of Oracles and obtain the Ancient Verse of Altepa.",
            "Travel to Temple of Uggalepih Map 2 and obtain the Uggalepih Key.",
            "Use the Uggalepih Key to reach the ??? and obtain the Ancient Verse of Uggalepih.",

            "Return to the Vestal Chamber.",
            "Travel to Full Moon Fountain and complete the final battlefield.",
            "Return to the Vestal Chamber.",
        },
    },
}

return M