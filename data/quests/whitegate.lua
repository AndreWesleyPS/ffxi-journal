local M = {}

-- ============================================================
-- WHITEGATE / AHT URHGAN QUESTS
--
-- Source:
-- XiQlog / BG-Wiki quest data
--
-- Status is intentionally NOT stored here.
-- Status is provided by tracker.lua at runtime.
--
-- tracker_area / tracker_id / trackable belong directly to
-- each quest definition.
-- ============================================================

-- ========================================================
-- AHT URHGAN WHITEGATE
-- ========================================================

M[#M + 1] = {
    id = 'tau_wg_keeping_notes',
    name = 'Keeping Notes',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (I-10)',
    npc = 'Ahkk Jharcham',
    req = '',
    prereq = '',
    reward = 'Mog House exit to any AU zone',
    items = 'Black Ink, Parchment',
    tracker_area = 'toau',
    tracker_id = 0,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_arts_and_crafts',
    name = 'Arts and Crafts',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (F-10)',
    npc = 'Hadahda',
    req = '',
    prereq = '',
    reward = 'Sutlac or Imperial Bronze Piece',
    items = '7 Letter Pieces',
    tracker_area = 'toau',
    tracker_id = 1,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_olduum',
    name = 'Olduum',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (G-9)',
    npc = 'Dkhaaya',
    req = '',
    prereq = '',
    reward = 'Lightning Band',
    items = 'Pickaxe, Electrocell/Electropot/Electrolocomotive',
    tracker_area = 'toau',
    tracker_id = 2,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_got_it_all',
    name = 'Got It All',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (F-8)',
    npc = 'Tehf Kimasnahya',
    req = '',
    prereq = '',
    reward = 'Bibiki Seashell (Key Item)',
    tracker_area = 'toau',
    tracker_id = 3,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_empty_vessel',
    name = 'An Empty Vessel',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-10)',
    npc = 'Waoud',
    req = 'Lv.30+',
    prereq = '',
    reward = 'Mark of Zahak, Blue Mage job',
    tracker_area = 'toau',
    tracker_id = 5,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_luck_of_the_draw',
    name = 'Luck of the Draw',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-12, Shararat Teahouse)',
    npc = 'Ratihb',
    req = 'Job Lv.30+',
    prereq = '',
    reward = 'Corsair Die, Corsair job',
    tracker_area = 'toau',
    tracker_id = 6,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_give_peace_a_chance',
    name = 'Give Peace a Chance',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (H-8)',
    npc = 'Mishhar',
    req = '',
    prereq = '',
    reward = 'Imperial Silver Piece',
    tracker_area = 'toau',
    tracker_id = 9,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_taste_of_honey',
    name = 'A Taste of Honey',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-12)',
    npc = 'Qutiba',
    req = '',
    prereq = 'Vanishing Act',
    reward = 'Irmik Helvasi recipe',
    items = '3x White Honey',
    tracker_area = 'toau',
    tracker_id = 12,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_such_sweet_sorrow',
    name = 'Such Sweet Sorrow',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-11)',
    npc = 'Dabhuh',
    req = '',
    prereq = '',
    reward = "Merrow No.17's Locket",
    items = 'Merrow Scale',
    tracker_area = 'toau',
    tracker_id = 13,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_die_is_cast',
    name = 'The Die Is Cast',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-12)',
    npc = 'Ratihb',
    req = '',
    prereq = '',
    reward = 'Random Ring',
    items = 'Bag of Gold Pieces',
    tracker_area = 'toau',
    tracker_id = 16,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_two_horn_the_savage',
    name = 'Two Horn the Savage',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (G-8)',
    npc = 'Milazahn',
    req = '',
    prereq = '',
    reward = 'Imperial Mythril Piece',
    tracker_area = 'toau',
    tracker_id = 17,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_beginnings',
    name = 'Beginnings',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-10)',
    npc = 'Waoud/Raubahn',
    req = 'Lv.40+ BLU, AU Mission 2',
    prereq = 'An Empty Vessel',
    reward = "Immortal's Scimitar, BLU AF",
    tracker_area = 'toau',
    tracker_id = 21,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_omens',
    name = 'Omens',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-10)',
    npc = 'Waoud/Raubahn',
    req = 'Lv.50+ BLU',
    prereq = 'Beginnings',
    reward = 'Magus Charuqs',
    items = 'Sealed Immortal Envelope',
    tracker_area = 'toau',
    tracker_id = 22,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_transformations',
    name = 'Transformations',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-10)',
    npc = 'Waoud/Raubahn',
    req = 'Lv.50+ BLU',
    prereq = 'Omens',
    reward = 'Magus Keffiyeh',
    items = '1,000 gil',
    tracker_area = 'toau',
    tracker_id = 23,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_equipped_for_all',
    name = 'Equipped for All Occasions',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-12, Shararat Teahouse)',
    npc = 'Ratihb',
    req = 'Lv.40+ COR',
    prereq = 'Luck of the Draw',
    reward = 'Trump Gun',
    items = 'Lamian Fang Key',
    tracker_area = 'toau',
    tracker_id = 24,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_against_all_odds',
    name = 'Against All Odds',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-12)',
    npc = 'Ratihb',
    req = 'Lv.50+ COR',
    prereq = 'Navigating the Unfriendly Seas',
    reward = "Corsair's Tricorne",
    items = 'Life Float',
    tracker_area = 'toau',
    tracker_id = 26,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_wayward_automaton',
    name = 'The Wayward Automaton',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-9)',
    npc = 'Iruki-Waraki',
    req = 'Lv.40+ PUP',
    prereq = 'No Strings Attached',
    reward = 'Turbo Animator',
    tracker_area = 'toau',
    tracker_id = 27,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_operation_teatime',
    name = 'Operation Teatime',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-9)',
    npc = 'Iruki-Waraki',
    req = 'Lv.50+ PUP',
    prereq = 'The Wayward Automaton',
    reward = 'Puppetry Churidars',
    items = 'Sleeping Potion, Chai, Lamian Fang Key',
    tracker_area = 'toau',
    tracker_id = 28,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_puppetmaster_blues',
    name = 'Puppetmaster Blues',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-9)',
    npc = 'Iruki-Waraki',
    req = 'Lv.50+ PUP',
    prereq = 'Operation Teatime',
    reward = 'Puppetry Taj',
    items = "Valkeng's Memory Chip, Toggle Switch",
    tracker_area = 'toau',
    tracker_id = 29,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_moment_of_truth',
    name = 'Moment of Truth',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (H-8)',
    npc = 'Mishhar',
    req = '',
    prereq = 'Give Peace a Chance',
    reward = 'Job-based medicine item',
    tracker_area = 'toau',
    tracker_id = 30,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_three_men_closet',
    name = 'Three Men and a Closet',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (I-8, Serpentking Square)',
    npc = 'Kubhe Ijyuhla',
    req = '',
    prereq = 'Got It All',
    reward = 'Imperial Bronze Piece',
    tracker_area = 'toau',
    tracker_id = 31,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_beast_within',
    name = 'The Beast Within',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-10)',
    npc = 'Waoud/Raubahn',
    req = 'Lv.66+ BLU',
    prereq = 'Transformations',
    reward = 'Level cap raised to 80',
    items = "Blue Mage's Testimony",
    tracker_area = 'toau',
    tracker_id = 40,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_saga_of_skyserpent',
    name = 'Saga of the Skyserpent',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-12, Shararat Teahouse)',
    npc = 'Fari-Wari',
    req = '',
    prereq = '',
    reward = '1,000 Imperial Standing, Imperial Gold Piece',
    items = 'Lilac Ribbon',
    tracker_area = 'toau',
    tracker_id = 43,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_ode_to_serpents',
    name = 'Ode to the Serpents',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-12)',
    npc = 'Fari-Wari',
    req = '',
    prereq = 'When the Bow Breaks / Fist of the People',
    reward = 'Imperial Gold Piece',
    tracker_area = 'toau',
    tracker_id = 44,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_soothing_waters',
    name = 'Soothing Waters',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-12)',
    npc = 'Fari-Wari',
    req = 'AU Mission 11',
    prereq = 'Ode to the Serpents',
    reward = '1,000 Imperial Standing, Imperial Gold Piece',
    items = 'Colorful Hair',
    tracker_area = 'toau',
    tracker_id = 47,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_embers_of_his_past',
    name = 'Embers of His Past',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-12, Shararat Teahouse)',
    npc = 'Fari-Wari',
    req = '',
    prereq = 'Soothing Waters',
    reward = 'Imperial Gold Piece, Trust: Gadalar',
    items = 'Hydrangea',
    tracker_area = 'toau',
    tracker_id = 48,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_the_prankster',
    name = 'The Prankster',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (G-6)',
    npc = 'Ahaadah',
    req = '',
    prereq = '',
    reward = 'Map of Caedarva Mire, 2,000 XP, 2,000 gil',
    tracker_area = 'toau',
    tracker_id = 60,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_delivering_goods',
    name = 'Delivering the Goods',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (I-9)',
    npc = 'Fochacha',
    req = '',
    prereq = '',
    reward = '3x Imperial Bronze Piece',
    tracker_area = 'toau',
    tracker_id = 61,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_vanishing_act',
    name = 'Vanishing Act',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (K-12)',
    npc = 'Ulamaal',
    req = '',
    prereq = 'Delivering the Goods',
    reward = 'Imperial Silver Piece',
    items = 'Sickle, Rainbow Berry',
    tracker_area = 'toau',
    tracker_id = 62,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_striking_a_balance',
    name = 'Striking a Balance',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (F-11)',
    npc = 'Wazyih',
    req = '',
    prereq = '',
    reward = '3x Imperial Bronze Piece',
    items = "Munahda's Package",
    tracker_area = 'toau',
    tracker_id = 63,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_led_astray',
    name = 'Led Astray',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (J-8)',
    npc = 'Mhasbaf',
    req = '',
    prereq = '',
    reward = 'Imperial Silver Piece',
    items = 'Letter from Bernahn',
    tracker_area = 'toau',
    tracker_id = 65,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_prince_and_hopper',
    name = 'The Prince and the Hopper',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate (E-9)',
    npc = 'Maudaal',
    req = '',
    prereq = '',
    reward = "Chanoix's Gorget",
    tracker_area = 'toau',
    tracker_id = 67,
    trackable = true,
}

-- ========================================================
-- PROMOTION QUESTS
-- ========================================================

M[#M + 1] = {
    id = 'tau_wg_promo_pfc',
    name = 'Promotion: Private First Class',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = '',
    reward = 'PFC Wildcat badge',
    items = 'Imp Wing',
    tracker_area = 'toau',
    tracker_id = 90,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_sp',
    name = 'Promotion: Superior Private',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '25pts Assaults as PFC',
    prereq = 'Promotion: Private First Class',
    reward = 'SP Wildcat badge',
    tracker_area = 'toau',
    tracker_id = 91,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_lc',
    name = 'Promotion: Lance Corporal',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Superior Private',
    reward = 'LC Wildcat badge',
    tracker_area = 'toau',
    tracker_id = 92,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_cpl',
    name = 'Promotion: Corporal',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Lance Corporal',
    reward = 'Corporal Wildcat badge',
    tracker_area = 'toau',
    tracker_id = 93,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_sgt',
    name = 'Promotion: Sergeant',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Corporal',
    reward = 'Sergeant Wildcat badge',
    items = 'Sutlac',
    tracker_area = 'toau',
    tracker_id = 94,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_sgtmaj',
    name = 'Promotion: Sergeant Major',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Sergeant',
    reward = 'Sergeant Major Wildcat badge',
    tracker_area = 'toau',
    tracker_id = 95,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_chiefsgt',
    name = 'Promotion: Chief Sergeant',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Sergeant Major',
    reward = 'Chief Sergeant Wildcat badge',
    tracker_area = 'toau',
    tracker_id = 96,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_2lt',
    name = 'Promotion: Second Lieutenant',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Chief Sergeant',
    reward = '2nd Lt. Wildcat badge',
    items = '3x Imperial Gold Piece, 6x Imperial Mythril Piece, any 1 beastmen trophy',
    tracker_area = 'toau',
    tracker_id = 97,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_wg_promo_1lt',
    name = 'Promotion: First Lieutenant',
    area = 'whitegate',
    zone = 'Aht Urhgan Whitegate',
    loc = 'Aht Urhgan Whitegate',
    npc = 'Naja Salaheem',
    req = '',
    prereq = 'Promotion: Second Lieutenant',
    reward = '1st Lt. Wildcat badge',
    items = '5x Imperial Gold Piece',
    tracker_area = 'toau',
    tracker_id = 98,
    trackable = true,
}

-- ========================================================
-- AL ZAHBI
-- ========================================================

M[#M + 1] = {
    id = 'tau_alz_fear_of_dark_2',
    name = 'Fear of the Dark II',
    area = 'whitegate',
    zone = 'Al Zahbi',
    loc = 'Al Zahbi (J-10, upper level)',
    npc = 'Suldiran',
    req = '',
    prereq = '',
    reward = '200 gil, title',
    items = '2x Imp Wing',
    tracker_area = 'toau',
    tracker_id = 14,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_alz_when_bow_breaks',
    name = 'When the Bow Breaks',
    area = 'whitegate',
    zone = 'Al Zahbi',
    loc = 'Al Zahbi (G-8)',
    npc = 'Gaweesh',
    req = 'Ode to the Serpents active',
    prereq = 'Ode to the Serpents',
    reward = '500 Imperial Standing',
    items = 'Frayed Arrow',
    tracker_area = 'toau',
    tracker_id = 45,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_alz_fist_of_people',
    name = 'Fist of the People',
    area = 'whitegate',
    zone = 'Al Zahbi',
    loc = 'Al Zahbi (H-6, Shararat Teahouse)',
    npc = 'Talhaal',
    req = 'Ode to the Serpents active',
    prereq = 'Ode to the Serpents',
    reward = '500 Imperial Standing, Trust: Zazarg',
    items = 'Rusty Medal',
    tracker_area = 'toau',
    tracker_id = 46,
    trackable = true,
}

-- ========================================================
-- NASHMAU
-- ========================================================

M[#M + 1] = {
    id = 'tau_nas_cook_a_roon',
    name = 'Cook-a-roon?',
    area = 'whitegate',
    zone = 'Nashmau',
    loc = 'Nashmau (H-6)',
    npc = 'Ququroon',
    req = '',
    prereq = '',
    reward = 'Nashmau Stew',
    items = '5 Fish Types',
    tracker_area = 'toau',
    tracker_id = 15,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_nas_what_friends_are_for',
    name = 'What Friends Are For',
    area = 'whitegate',
    zone = 'Nashmau',
    loc = 'Nashmau (G-6)',
    npc = 'Tsetseroon',
    req = '',
    prereq = '',
    reward = 'Map of Aydeewa Subterrane, 2,000 XP, 2,000 gil',
    items = 'Tin Ore, Cobalt Jellyfish, Pot of Stew',
    tracker_area = 'toau',
    tracker_id = 19,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_nas_not_meant_to_be',
    name = 'Not Meant to Be',
    area = 'whitegate',
    zone = 'Nashmau',
    loc = 'Nashmau (H-6)',
    npc = 'Fhe Maksojha',
    req = '',
    prereq = '',
    reward = '3x Imperial Gold Piece',
    tracker_area = 'toau',
    tracker_id = 64,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_nas_rat_race',
    name = 'Rat Race',
    area = 'whitegate',
    zone = 'Nashmau',
    loc = 'Nashmau (H-8)',
    npc = 'Kakkaroon',
    req = '',
    prereq = '',
    reward = '2x Gold, 2x Mythril, 3x Silver Piece',
    items = 'Imperial Bronze Piece',
    tracker_area = 'toau',
    tracker_id = 66,
    trackable = true,
}

-- ========================================================
-- MOUNT ZHAYOLM
-- ========================================================

M[#M + 1] = {
    id = 'tau_mtz_rock_bottom',
    name = 'Rock Bottom',
    area = 'whitegate',
    zone = 'Mount Zhayolm',
    loc = 'Mount Zhayolm (L-7)',
    npc = 'Zurtermor',
    req = '',
    prereq = '',
    reward = 'Map of Mount Zhayolm, 2,000 XP, 2,000 gil',
    items = 'Pickaxe, Mythril Pick',
    tracker_area = 'toau',
    tracker_id = 20,
    trackable = true,
}

-- ========================================================
-- ARRAPAGO REEF
-- ========================================================

M[#M + 1] = {
    id = 'tau_arr_navigating_seas',
    name = 'Navigating the Unfriendly Seas',
    area = 'whitegate',
    zone = 'Arrapago Reef',
    loc = 'Arrapago Reef (H-10)',
    npc = '???',
    req = 'Lv.50+ COR',
    prereq = 'Equipped for All Occasions',
    reward = "Corsair's Culotte",
    items = 'Lamian Fang Key, Hydrogauge',
    tracker_area = 'toau',
    tracker_id = 25,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_arr_breaking_bonds',
    name = 'Breaking the Bonds of Fate',
    area = 'whitegate',
    zone = 'Arrapago Reef',
    loc = 'Arrapago Reef (H-10)',
    npc = '??? (Qultada)',
    req = 'Lv.66+ COR',
    prereq = 'Against All Odds',
    reward = 'Level limit raised to 75',
    items = "Corsair's Testimony",
    tracker_area = 'toau',
    tracker_id = 41,
    trackable = true,
}

-- ========================================================
-- BASTOK MARKETS
-- ========================================================

M[#M + 1] = {
    id = 'tau_bas_no_strings_attached',
    name = 'No Strings Attached',
    area = 'whitegate',
    zone = 'Bastok Markets',
    loc = 'Bastok Markets (F-9)',
    npc = 'Shamarhaan',
    req = 'Lv.30+',
    prereq = '',
    reward = 'Animator ability, Puppetmaster job',
    items = 'Antique Automaton',
    tracker_area = 'toau',
    tracker_id = 7,
    trackable = true,
}

-- ========================================================
-- IMPERIAL WARD / WHITEGATE
-- ========================================================

M[#M + 1] = {
    id = 'tau_iw_waking_colossus',
    name = 'Waking the Colossus',
    area = 'whitegate',
    zone = 'Imperial Ward',
    loc = 'Aht Urhgan Whitegate (L-8/9, Imperial Whitegate)',
    npc = 'Nashmeira',
    req = 'Eternal Mercenary (all ToAU missions)',
    prereq = '',
    reward = 'Imperial Gold Piece + choice reward',
    items = '3x Plumbago',
    tracker_area = 'toau',
    tracker_id = 74,
    trackable = true,
}

M[#M + 1] = {
    id = 'tau_iw_divine_interference',
    name = 'Divine Interference',
    area = 'whitegate',
    zone = 'Imperial Ward',
    loc = 'Aht Urhgan Whitegate (I-10 cutscene / L-8/9)',
    npc = 'Nashmeira',
    req = '',
    prereq = 'Waking the Colossus',
    reward = 'Imperial Gold Piece + choice reward',
    items = '3x Plumbago',
    tracker_area = 'toau',
    tracker_id = 75,
    trackable = true,
}

return M