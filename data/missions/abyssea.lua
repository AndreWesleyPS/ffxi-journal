--[[
    Abyssea - Mission Database
    ===========================

    Mission IDs and walkthrough IDs are kept separate.

    M.MISSIONS:
        Official numeric mission IDs used by the mission tracker.

    M.STEPS:
        Walkthrough entries and their existing IDs.
]]

local ACTOR = require('data.actors')

local M = {}

-- ============================================================
-- MISSION NAMES
-- ============================================================

M.MISSIONS = {
    [160] = 'A Journey Begins',
    [161] = 'The Truth Beckons',
    [162] = 'Dawn of Death',
    [163] = 'A Goldstruck Gigas',
    [164] = 'To Paste a Peiste',
    [165] = 'Megadrile Menace',
    [166] = 'The Forbidden Frontier',
    [167] = 'First Contact',
    [168] = 'An Officer and a Pirate',
    [169] = 'Heart of Madness',
    [170] = 'Tenuous Existence',
    [171] = 'Champions of Abyssea',
    [172] = 'The Beast of Bastore',
    [173] = 'A Delectable Demon',
    [174] = 'A Fluttery Fiend',
    [175] = 'Scars of Abyssea',
    [176] = 'A Beaked Blusterer',
    [177] = 'A Man-eating Mite',
    [178] = 'An Ulcerous Uragnite',
    [179] = 'Heroes of Abyssea',
    [180] = "A Sea Dog's Summons",
    [181] = 'Death and Rebirth',
    [182] = 'Emissaries of God',
    [183] = 'Beneath a Blood-red Sky',
    [184] = 'The Wyrm God',
    [185] = 'Meanwhile, Back on Abyssea',
    [186] = 'A Moonlight Requite',
}

-- ============================================================
-- MISSION STEPS
-- ============================================================

M.STEPS = {

    ['160'] = {
        name = 'A Journey Begins',
        steps = {
            "Enter Port Jeuno.",
            "Speak with " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['161'] = {
        name = 'The Truth Beckons',
        steps = {
            "Speak with " .. ACTOR.JOACHIM.text .. " and take a Traverser Stone.",
            "Enter any Cavernous Maw connected to Abyssea.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['162'] = {
        name = 'Dawn of Death',
        steps = {
            "Take another Traverser Stone from " .. ACTOR.JOACHIM.text .. " when one is available.",
            "Visit " .. ACTOR.CAVERNOUS_MAW_LA_THEINE_E4.text .. " in La Theine Plateau, " .. ACTOR.CAVERNOUS_MAW_KONSCHTAT_I12.text .. " in Konschtat Highlands, or " .. ACTOR.CAVERNOUS_MAW_TAHRONGI_H12.text .. " in Tahrongi Canyon.",
            "Visit " .. ACTOR.CAVERNOUS_MAW_JUGNER_J8.text .. " in Jugner Forest, " .. ACTOR.CAVERNOUS_MAW_VALKURM_I9.text .. " in Valkurm Dunes, or " .. ACTOR.CAVERNOUS_MAW_BUBURIMU_F7.text .. " in Buburimu Peninsula.",
            "Visit " .. ACTOR.CAVERNOUS_MAW_SOUTH_GUSTABERG_J10.text .. " in South Gustaberg, " .. ACTOR.CAVERNOUS_MAW_XARCABARD_H8.text .. " in Xarcabard, or " .. ACTOR.CAVERNOUS_MAW_NORTH_GUSTABERG_G6.text .. " in North Gustaberg.",
            "Defeat any three of the nine Abyssean fiends.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['163'] = {
        name = 'A Goldstruck Gigas',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_LA_THEINE_E4.text .. ".",
            "Defeat Briareus in Abyssea - La Theine.",
            "Return through the Cavernous Maw.",
        },
    },

    ['164'] = {
        name = 'To Paste a Peiste',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_KONSCHTAT_I12.text .. ".",
            "Defeat Kukulkan in Abyssea - Konschtat.",
            "Return through the Cavernous Maw.",
        },
    },

    ['165'] = {
        name = 'Megadrile Menace',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_TAHRONGI_H12.text .. ".",
            "Defeat Glavoid in Abyssea - Tahrongi.",
            "Return through the Cavernous Maw.",
        },
    },

    ['166'] = {
        name = 'The Forbidden Frontier',
        steps = {
            "After the three battles in La Theine, Konschtat, and Tahrongi, speak with " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['167'] = {
        name = 'First Contact',
        steps = {
            "Travel to the stone circle in La Theine Plateau.",
            "Seek " .. ACTOR.LA_THEINE_QQ_G6.text .. " between 18:00 and 05:00.",
        },
    },

    ['168'] = {
        name = 'An Officer and a Pirate',
        steps = {
            "Return to the stone circle in La Theine Plateau.",
            "Seek " .. ACTOR.LA_THEINE_QQ_G6.text .. " between 18:00 and 05:00.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['169'] = {
        name = 'Heart of Madness',
        steps = {
            "Defeat any five of the nine Abyssean fiends.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['170'] = {
        name = 'Tenuous Existence',
        steps = {
            "Travel to the stone circle in La Theine Plateau.",
            "Seek " .. ACTOR.LA_THEINE_QQ_G6.text .. " between 18:00 and 05:00.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['171'] = {
        name = 'Champions of Abyssea',
        steps = {
            "Defeat any seven of the nine Abyssean fiends.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['172'] = {
        name = 'The Beast of Bastore',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_JUGNER_J8.text .. ".",
            "Defeat Sedna in Abyssea - Vunkerl.",
            "Return through the Cavernous Maw.",
        },
    },

    ['173'] = {
        name = 'A Delectable Demon',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_VALKURM_I9.text .. ".",
            "Defeat Cirein-croin in Abyssea - Misareaux.",
            "Return through the Cavernous Maw.",
        },
    },

    ['174'] = {
        name = 'A Fluttery Fiend',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_BUBURIMU_F7.text .. ".",
            "Defeat Itzpapalotl in Abyssea - Attohwa.",
            "Return through the Cavernous Maw.",
        },
    },

    ['175'] = {
        name = 'Scars of Abyssea',
        steps = {
            "Defeat Sedna in Abyssea - Vunkerl.",
            "Defeat Cirein-croin in Abyssea - Misareaux.",
            "Defeat Itzpapalotl in Abyssea - Attohwa.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['176'] = {
        name = 'A Beaked Blusterer',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_SOUTH_GUSTABERG_J10.text .. ".",
            "Defeat Bennu in Abyssea - Altepa.",
            "Return through the Cavernous Maw.",
        },
    },

    ['177'] = {
        name = 'A Man-eating Mite',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_XARCABARD_H8.text .. ".",
            "Defeat Resheph in Abyssea - Uleguerand.",
            "Return through the Cavernous Maw.",
        },
    },

    ['178'] = {
        name = 'An Ulcerous Uragnite',
        steps = {
            "Enter " .. ACTOR.CAVERNOUS_MAW_NORTH_GUSTABERG_G6.text .. ".",
            "Defeat Amphitrite in Abyssea - Grauberg.",
            "Return through the Cavernous Maw.",
        },
    },

    ['179'] = {
        name = 'Heroes of Abyssea',
        steps = {
            "Defeat Bennu in Abyssea - Altepa.",
            "Defeat Resheph in Abyssea - Uleguerand.",
            "Defeat Amphitrite in Abyssea - Grauberg.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
        },
    },

    ['180'] = {
        name = "A Sea Dog's Summons",
        steps = {
            "Return to " .. ACTOR.JOACHIM.text .. " after overcoming six of Abyssea's great fiends.",
            "Return again after overcoming seven.",
            "Travel to " .. ACTOR.HALL_OF_GODS.text .. " between 18:00 and 05:00.",
        },
    },

    ['181'] = {
        name = 'Death and Rebirth',
        steps = {
            "Return to " .. ACTOR.JOACHIM.text .. " after overcoming all nine of Abyssea's great fiends.",
            "Travel to " .. ACTOR.HALL_OF_GODS.text .. " between 18:00 and 05:00.",
        },
    },

    ['182'] = {
        name = 'Emissaries of God',
        steps = {
            "Defeat Iratham in Abyssea - Tahrongi.",
            "Defeat Yaanei in Abyssea - Attohwa.",
            "Defeat Kutharei in Abyssea - Misareaux.",
            "Defeat Sippoy in Abyssea - Vunkerl.",
            "Defeat Raja in Abyssea - Grauberg.",
            "Defeat Rani in Abyssea - Altepa.",
            "Return to " .. ACTOR.JOACHIM.text .. ".",
            "Travel to " .. ACTOR.HALL_OF_GODS.text .. " between 18:00 and 05:00.",
        },
    },

    ['183'] = {
        name = 'Beneath a Blood-red Sky',
        steps = {
            "Travel to Qufim Island.",
            "Seek " .. ACTOR.TRANSCENDENTAL_RADIANCE_QUFIM_F7.text .. ".",
            "Enter Abyssea - Empyreal Paradox.",
        },
    },

    ['184'] = {
        name = 'The Wyrm God',
        steps = {
            "Seek the Transcendental Radiance in Abyssea - Empyreal Paradox.",
            "Face Shinryu beyond the radiance.",
            "Return to " .. ACTOR.PRISHE_EMPYREAL_PARADOX.text .. " after the battle.",
        },
    },

    ['185'] = {
        name = 'Meanwhile, Back on Abyssea',
        steps = {
            "Return to " .. ACTOR.JOACHIM.text .. ".",
            "Travel to " .. ACTOR.HALL_OF_GODS.text .. " between 18:00 and 05:00.",
            "Return to " .. ACTOR.PRISHE_EMPYREAL_PARADOX.text .. " in Abyssea - Empyreal Paradox.",
        },
    },

    ['186'] = {
        name = 'A Moonlight Requite',
        steps = {
            "Remain true to the promise made to " .. ACTOR.PRISHE_EMPYREAL_PARADOX.text .. ".",
        },
    },
}

return M