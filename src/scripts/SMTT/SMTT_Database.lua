-- SMTT - Starmourn Terminal Tracker

-- Database

-- Hack Table: level, room number, area, faction, room desc, notes
-- SH = Scatterhome, SD = Song Dominion, CA = Celestine Ascendancy, NA = No Faction Affiliation

hack_tbl = {
    {1, 587, "Haven City", "SH", "A broad, sloping hallway.", ""},
    {1, 874, "Biloxan", "SH", "Tohs along Govan Lane.", ""},
    {1, 1063, "Whittler's Hollow", "SH", "A small employee break room.", ""},
    {1, 1103, "Ishbi", "SH", "The high-stakes gambling den of the Golden Nova Casino.", ""},
    {1, 1434, "Marle", "SH", "A heavily patrolled commuter station.", ""},
    {1, 1821, "Litharge", "CA", "Near a fenced-off transit station.", ""},
    {1, 1972, "Litharge", "CA", "Dark descent into the Dregs.", ""},
    {1, 3117, "Ostari", "SD", "The spaceport arrivals terminal.", ""},
    {1, 3339, "Ostari", "SD", "Spaceport security control suite.", ""},
    {1, 3767, "Narisiriz", "CA", "The Bizarre Bazaar.", "Aggro"},
    {1, 6522, "Song City", "SD", "Finesse.", ""},
    {1, 22146, "Song City", "SD", "Oracle Apparel.", ""},
    
    {2, 597, "Haven City", "SH", "A path winding past a huge bank of machinery.", "Aggro inside"},
    {2, 757, "Oldtown", "SH", "Before the glittering ruins of The Crater Casino.", ""},
    {2, 780, "Biloxan", "SH", "Wide walkway through the Techdustry district.", "Aggro inside"},
    {2, 927, "Bodean", "SH", "Ibix Human Resources.", ""},
    {2, 3645, "Haven City", "SH", "New Horizons Leasing.", ""},
    {2, 3679, "Whittler's Hollow", "SH", "Outside a domed white public building.", ""},
    {2, 3853, "Song City", "SD", "The glittering, neon-lit entrance to The Verge.", ""},
    {2, 3901, "Song City", "SD", "Quickmark Pawn.", ""},
    {2, 4175, "Litharge", "CA", "The shared lobby of several medical corporations.", ""},
    {2, 7683, "Wundishu Biotech", "NA", "Hallway.", "Fontain"},
    {2, 9091, "Wundishu Biotech", "NA", "Reception airlock of Wundishu Biotech.", "Fontain"},
    
    {3, 19, "Servius Alpha Outpost", "NA", "A large central square.", "Innke"},
    {3, 1954, "Litharge", "CA", "A maintenance access stairway.", "Dungeon"},
    {3, 2301, "Haven City", "SH", "A wide point in the twisting tunnels.", "Dungeon"},
    {3, 3889, "Song City", "SD", "A small convenience shop.", "Dungeon"},
    {3, 9723, "Wundishu Biotech", "NA", "Entry portal to Storage Facility Larr.", "Fontain"},
    {3, 10018, "Wundishu Biotech", "NA", "Entrance to the iceworks.", "Fontain"},
    
    {4, 2823, "Vertenalith", "CA", "A road passing between industrial complexes.", ""},
    {4, 3762, "Anemoi Desert", "SD", "Approaching a white-domed science station.", "Aggro"},
    {4, 9233, "Wundishu Biotech", "NA", "Entry portal to Storage Facility Yohz.", "Fontain"},
    
    {5, 565, "Haven City", "SH", "At the mouth of a cramped alleyway.", "Dungeon"},
    {5, 915, "Bodean", "SH", "Western end of the Ibix tower.", ""},
    {5, 1554, "Atria", "SD", "Junction of corridors.", ""},
    {5, 1671, "Agog", "SH", "A wildly painted, open-plan kitchen.", ""},
    {5, 2496, "Song City", "SD", "A wide, filth-tracked passageway.", "Dungeon"},
    {5, 3848, "Song City", "SD", "Microlight Nanodry Laundromat.", ""},
    {5, 3867, "Song City", "SD", "Leckie's Place.", ""},
    {5, 9211, "Wundishu Biotech", "NA", "Entry portal to Storage Facility Okhsh.", "Fontain"},
    
    {6, 3829, "Song City", "SD", "Inside a recessed doorway.", ""},
    
    {7, 633, "Vertenalith", "CA", "A cramped alleyway.", ""},
    {7, 1347, "Marle", "SH", "Rhodium.", "Dungeon"},
    {7, 1840, "Litharge", "CA", "Undercity skyways passing a monolithic black tower.", "Dungeon"},
    {7, 2538, "Song City", "SD", "A syncrete-floored hallway.", "Dungeon"},
    {7, 3656, "Litharge", "CA", "Parking cube of the FiltraTech development lab.", ""},
    
    {8, 3639, "Praviskar", "NA", "A plaza outside a tall old building.", "Innke"},
    {8, 3712, "Uycheon III", "CA", "The road outside a tall office building.", ""},
    {8, 7880, "Tranquility Deepness", "NA", "An orderly office behind the cantina.", "Laskarid VG"},
    
    {9, 1356, "Mir", "SD", "House of Crezan.", ""},
    {9, 3703, "Janilyn", "CA", "Recessed doorway of a Zenith Ventures building.", ""},
    
    {10, 938, "Bodean", "SH", "Spacious confines of the Ibix IT department.", "Dungeon"},
    {10, 1533, "Atilan", "SD", "Aqueous Virtue.", ""},
    {10, 3347, "Ostari", "SD", "A corridor between storage rooms.", ""},
    {10, 3846, "Song City", "SD", "A spacious entryway halfway up a shining residence spire.", "Dungeon"},
    {10, 3887, "Song City", "SD", "Aegis Technologies.", ""},
    {10, 5639, "Litharge", "CA", "Tumbled tenement rooftops looming over the canals.", "Dungeon"},
    {10, 8276, "Tranquility Deepness", "NA", "A sharp-edged Quickmark Pawn.", "Laskarid VG"},
    
    {11, 1105, "Ishbi", "SH", "Enlil Brothers Weaponry.", ""},
    {11, 1815, "Litharge", "CA", "Glittering avenue.", ""},
    
    {12, 1422, "Marle", "SH", "A shop-lined intersection of branching corridors.", "Dungeon"},
    {12, 1852, "Litharge", "CA", "The derelict Circadian Optics building.", "Dungeon"},
    {12, 3164, "Saksar", "SD", "A wet cave with a pool in the center.", "Aggro"},
    {12, 3650, "Litharge", "CA", "The loading bay of Antimony Anomalistics.", ""},
    {12, 3906, "Song City", "SD", "A traffic-choked intersection near a large factory.", "Dungeon"},
    
    {13, 3690, "Narisiriz", "CA", "Trendy front entrance of YDV Brewery.", ""},
    
    {14, 470, "Janilyn", "CA", "Public garden.", ""},
    {14, 577, "Haven City", "SH", "On a catwalk, before a powered set of doors.", "Dungeon"},
    {14, 776, "Biloxan", "SH", "Atrium of the Visitor Center.", ""},
    {14, 873, "Biloxan", "SH", "Lonely turn in Govan's Lane.", ""},
    {14, 880, "Biloxan", "SH", "Head of a suspended bridge on Market Rise.", ""},
    {14, 953, "Biloxan", "SH", "Dead end by a spiraling metal staircase.", ""},
    {14, 1424, "Marle", "SH", "The Turned Corner Cantina.", ""},
    {14, 1625, "Agog", "SH", "Agog Spaceport.", ""},
    {14, 1668, "Agog", "SH", "Akalum.", ""},
    {14, 1682, "Agog", "SH", "LUCENT.", ""},
    {14, 1811, "Litharge", "CA", "Laneway passing a small bakery.", "Dungeon"},
    {14, 1879, "Litharge", "CA", "Tourist kiosks along the Promenade.", ""},
    {14, 2183, "BA Deck Zeta", "SH", "A wide corridor near the Zeta Deck bridge.", ""},
    {14, 2264, "Narisiriz", "CA", "At the base of a defunct control tower.", "Aggro"},
    {14, 2475, "Song City", "SD", "On a long ladder embedded in the sunloft.", "Dungeon"},
    {14, 2541, "Song City", "SD", "At the base of a long staircase.", ""},
    {14, 2954, "Uycheon III", "CA", "A vast, machine-lined hallway.", ""},
    {14, 3665, "Ostinato", "CA", "An expansive hangar and docking bay.", ""},
    {14, 3845, "Song City", "SD", "A curving road of glass and paristeel.", ""},
    
    {15, 557, "Haven City", "SH", "A tall, winding residence tube.", ""},
    {15, 3710, "Bodean", "SH", "A long, gleaming sub-hallway off the IBIX anti-tower.", ""},
    {15, 3784, "Litharge", "CA", "Kurnikov Accounting.", ""},
    
    {16, 712, "Oldtown", "SH", "A chilly, low-ceilinged side street.", ""},
    {16, 1032, "Whittler's Hollow", "SH", "A well-drained field of dark earth.", "Dungeon"},
    {16, 1429, "Marle","SH", "At the lower front desk of Nebula Arms.", ""},
    {16, 1436, "Marle", "SH", "A well-fortified Nebula Arms franchise location.", ""},
    {16, 1719, "Litharge", "CA", "A holographic plaza.", ""},
    {16, 1786, "Litharge", "CA", "A suspended plaza.", "Dungeon"},
    {16, 3732, "Litharge", "CA", "A small hex-tiled plaza before the Zinari Embassy.", ""},
    {16, 3748, "Haven City", "SH", "A long skyway stilted above the commercial district.", ""},
    {16, 3770, "Litharge", "CA", "Approaching the entrance to the Y'saari Embassy.", ""},
    {16, 3788, "Haven City", "SH", "A surprisingly large Quickmark Pawn.", ""},
    {16, 3797, "Bakal Station", "NA", "A huge, floating docking bay above the asteroid's surface.", "Iron Corsairs VG"},
    {16, 3801, "Bakal Station", "NA", "A militarized starbase, among rows of fighter craft.", "Iron Corsairs VG"},
    {16, 3812, "Thrace", "NA", "A cramped hangar lined with grungy teleports.", "Izaren"},
    {16, 3880, "Song City", "SD", "Passing rows upon rows of embassies.", ""},
    {16, 3914, "Song City", "SD", "A loading yard neatly filled with rows of cargo trucks.", ""},
    {16, 3932, "Khayrat Station", "NA", "The Bridge of Khayrat Station.", "Syndicate VG"},
    {16, 3945, "Khayrat Station", "NA", "A large landing hangar and cargo bay.", "Syndicate VG"},
    {16, 3952, "Song City", "SD", "A winding drive outside the Sa'hak-ren embassy.", ""},
    {16, 8278, "Tranquility Deepness", "NA", "A marketplace erected in the mouth of an ancient hallway.", "Laskarid VG"},
    
    {17, 9497, "Janilyn", "CA", "The administrative offices of Fantom Laboratories.", ""}
    }
    