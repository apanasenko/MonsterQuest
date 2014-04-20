INSERT INTO mobs_types(name, base_hp, hp_inc, blow_method, color, description, flags, symbol, info, spells, level_info) VALUES
	("Scrawny cat", "100", "25d2", "CLAW|HURT|1d1", "U", "A skinny little furball with sharp claws and a menacing look.", "RAND_25|TROLL|HATE_ORCS", "f", "110|2|30|1|10", "", "0|3|0"),
	("Scruffy little dog", "100", "25d2", "BITE|HURT|1d1", "U", "A thin flea-ridden mutt, growling as you get close.", "RAND_25|ORC|HATE_TROLLS", "C", "110|2|20|1|5", "", "0|3|0"),
	("Grey mold", "200", "25d3", "SPORE|HURT|1d4@SPORE|HURT|1d4", "s", "A small strange grey growth.", "NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP|HATE_ORCS", "m", "110|2|2|1|0", "", "1|1|3"),
	("Grey mushroom patch", "200", "25d3", "SPORE|CONFUSE|1d4", "s", "Yum!  It looks quite tasty.", "IM_POIS|NEVER_MOVE|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP|HATE_TROLLS", ",", "110|2|2|1|0", "", "1|1|1");/*,
	("Giant yellow centipede", "200", "25d3", "BITE|HURT|1d3@STING|HURT|1d3", "y", "It is about four feet long and carnivorous.", "ANIMAL", "c", "110|7|8|14|30", "", "1|1|2"),
	("Giant white centipede", "200", "25d3", "BITE|HURT|1d2@STING|HURT|1d2", "w", "It is about four feet long and carnivorous.", "RAND_50|ANIMAL", "c", "110|9|7|12|40", "", "1|1|2"),
	("White icky thing", "200", "25d3", "TOUCH|HURT|1d2", "w", "It is a smallish, slimy, icky creature.", "RAND_25|RAND_50", "i", "110|6|12|8|10", "", "1|1|1"),
	("Large brown snake", "200", "25d3", "BITE|HURT|1d3@CRUSH|HURT|1d4", "u", "It is about eight feet long.", "RAND_25|ANIMAL|HURT_COLD", "J", "100|14|4|42|99", "", "1|1|3"),
	("Large white snake", "200", "25d3", "BITE|HURT|1d1@CRUSH|HURT|1d1", "w", "It is about eight feet long.", "RAND_50|ANIMAL|HURT_COLD", "J", "100|11|4|36|99", "", "1|1|2"),
	("Small kobold", "200", "25d3", "HIT|HURT|1d5", "y", "It is a squat and ugly humanoid figure with a canine face.", "DROP_60|EVIL|IM_POIS", "k", "110|8|20|24|70", "", "1|1|5"),
	("Floating eye", "200", "25d3", "GAZE|PARALYZE", "o", "A disembodied eye, floating a few feet above the ground.", "NEVER_MOVE|HURT_LIGHT|NO_FEAR", "e", "110|11|2|7|10", "", "1|1|1"),
	("Rock lizard", "200", "25d3", "BITE|HURT|1d1", "U", "It is a small lizard with a hardened hide.", "ANIMAL|HURT_COLD", "R", "110|8|20|4|15", "", "1|1|2"),
	("Soldier ant", "200", "25d3", "BITE|HURT|1d2", "W", "A large ant with powerful mandibles.", "ANIMAL", "a", "110|6|10|4|40", "", "1|1|3"),
	("Fruit bat", "200", "25d3", "BITE|HURT|1d1", "o", "A fast-moving pest.", "ANIMAL", "b", "120|4|20|3|10", "", "1|1|1"),
	("Kobold", "400", "50d3", "HIT|HURT|1d8", "G", "It is a small, dog-headed humanoid.", "DROP_60|EVIL|IM_POIS", "k", "110|12|20|24|70", "", "2|1|5"),
	("Metallic green centipede", "400", "50d3", "CRAWL|HURT|1d1", "g", "It is about four feet long and carnivorous.", "RAND_50|ANIMAL", "c", "120|10|5|4|10", "", "2|1|3"),
	("Yellow mushroom patch", "400", "50d3", "SPORE|TERRIFY|1d6", "y", "Yum!  It looks quite tasty.", "NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", ",", "110|1|2|1|0", "", "2|1|2"),
	("White jelly", "400", "50d3", "TOUCH|POISON|1d2", "w", "It's a large pile of white flesh.", "NEVER_MOVE|HURT_LIGHT|IM_POIS|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|36|2|1|99", "", "2|1|10"),
	("Giant green frog", "400", "50d3", "BITE|HURT|1d3", "g", "It is as big as a wolf.", "RAND_25|ANIMAL|HURT_COLD", "R", "110|9|12|9|30", "", "2|1|6"),
	("Giant black ant", "400", "50d3", "BITE|HURT|1d4", "D", "It is about three feet long.", "RAND_25|ANIMAL", "a", "110|11|8|24|80", "", "2|1|8"),
	("Salamander", "400", "50d3", "BITE|FIRE|1d3", "o", "A small black and orange lizard.", "RAND_25|IM_FIRE|ANIMAL|HURT_COLD", "R", "110|14|8|24|80", "", "2|1|10"),
	("Blue yeek", "400", "50d3", "HIT|HURT|1d5", "b", "A small humanoid figure.", "DROP_60|ANIMAL|IM_ACID", "y", "110|7|18|16|10", "", "2|1|4"),
	("Large yellow snake", "400", "50d3", "BITE|HURT|1d4@CRUSH|HURT|1d6", "y", "It is about ten feet long.", "RAND_25|ANIMAL|HURT_COLD", "J", "100|18|5|45|75", "", "2|1|9"),
	("Wild cat", "400", "50d3", "CLAW|HURT|1d3@CLAW|HURT|1d3", "U", "fistful of needles.", "ANIMAL", "f", "120|9|40|14|0", "", "2|2|8"),
	("Crow", "400", "50d3", "BITE|HURT|1d3@BITE|HURT|1d3", "s", "It is a hooded crow, gray except for the black wings and head.", "ANIMAL", "B", "120|9|40|14|0", "", "2|2|8"),
	("Green ooze", "500", "42d4", "CRAWL|ACID|1d3", "g", "It's green and it's oozing.", "DROP_60|RAND_25|RAND_50|IM_ACID|IM_POIS|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|8|8|19|80", "", "3|2|4"),
	("Metallic blue centipede", "500", "42d4", "CRAWL|HURT|1d2", "b", "It is about four feet long and carnivorous.", "RAND_50|ANIMAL", "c", "120|12|6|7|15", "", "3|1|7"),
	("Spotted mushroom patch", "500", "42d4", "SPORE|POISON|2d4", "o", "Yum!  It looks quite tasty.", "NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", ",", "110|1|2|1|0", "", "3|1|3"),
	("Giant white ant", "500", "42d4", "BITE|HURT|1d4", "w", "It is about two feet long and has sharp pincers.", "ANIMAL", "a", "110|11|8|19|80", "", "3|1|7"),
	("Yellow mold", "500", "42d4", "SPORE|HURT|1d4", "y", "It is a strange yellow growth on the dungeon floor.", "NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", "m", "110|36|2|12|99", "", "3|1|9"),
	("Metallic red centipede", "500", "42d4", "CRAWL|HURT|1d2", "r", "It is about four feet long and carnivorous.", "RAND_25|ANIMAL", "c", "120|18|8|10|20", "", "3|1|12"),
	("Cave lizard", "600", "50d4", "BITE|HURT|1d5", "u", "It is an armoured lizard with a powerful bite.", "ANIMAL|HURT_COLD", "R", "110|11|8|19|80", "", "4|1|8"),
	("Blue jelly", "600", "50d4", "TOUCH|COLD|1d6", "b", "It's a large pile of pulsing blue flesh.", "COLD_BLOOD|NEVER_MOVE|HURT_LIGHT|IM_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "110|54|2|1|99", "", "4|1|14"),
	("Large grey snake", "600", "50d4", "BITE|HURT|1d5@CRUSH|HURT|1d8", "s", "It is about ten feet long.", "RAND_25|ANIMAL|HURT_COLD", "J", "100|27|6|61|100", "", "4|1|14"),
	("Raven", "600", "50d4", "BITE|HURT|1d4@BITE|HURT|1d4", "D", "Larger than a crow, and pitch black.", "ANIMAL", "B", "120|12|40|14|0", "", "4|2|10"),
	("Blue ooze", "800", "50d5", "CRAWL|COLD|1d4", "b", "It's blue and it's oozing.", "DROP_40|RAND_25|RAND_50|IM_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "110|8|8|19|80", "", "5|1|7"),
	("Green glutton ghost", "800", "50d5", "TOUCH|EAT_FOOD|1d1", "g", "It is a very ugly green ghost with a voracious appetite.", "DROP_40|DROP_60|RAND_25|RAND_50|UNDEAD|EVIL|INVISIBLE|COLD_BLOOD|PASS_WALL|IM_POIS|NO_CONF|NO_SLEEP|NO_STUN", "G", "130|8|10|24|10", "", "5|1|15"),
	("Green jelly", "800", "50d5", "TOUCH|ACID|1d2", "g", "It is a large pile of pulsing green flesh.", "NEVER_MOVE|HURT_LIGHT|IM_ACID|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|99|2|1|99", "", "5|1|18"),
	("Large kobold", "800", "50d5", "HIT|HURT|1d10", "b", "It is a man-sized figure with the all too recognizable face of a kobold.", "DROP_60|EVIL|IM_POIS", "k", "110|65|20|48|70", "", "5|1|25"),
	("Skeleton kobold", "800", "50d5", "HIT|HURT|1d6", "w", "It is a small animated kobold skeleton.", "UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|NO_FEAR|NO_CONF|NO_SLEEP|NO_STUN", "s", "110|23|20|39|80", "", "5|1|12"),
	("Grey icky thing", "800", "50d5", "TOUCH|HURT|1d5", "s", "It is a smallish, slimy, icky, nasty creature.", "RAND_50", "i", "110|18|14|14|15", "", "5|1|10"),
	("Copperhead snake", "800", "50d5", "BITE|POISON|2d4", "o", "It has a copper head and sharp venomous fangs.", "RAND_50|IM_POIS|ANIMAL|HURT_COLD", "J", "110|14|6|30|10", "", "5|1|15"),
	("Rot jelly", "800", "50d5", "TOUCH|EAT_FOOD|2d3@TOUCH|LOSE_WIS|2d3", "u", "terrible smell it exudes is also very hard to get rid of...", "NEVER_MOVE|HURT_LIGHT|IM_POIS|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|90|2|36|99", "", "5|1|15"),
	("Purple mushroom patch", "900", "57d5", "SPORE|LOSE_CON|1d2@SPORE|LOSE_CON|1d2@SPORE|LOSE_CON|1d2", "P", "Yum!  It looks quite tasty.", "NEVER_MOVE|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", ",", "110|1|2|1|0", "", "6|2|15"),
	("Brown mold", "900", "57d5", "SPORE|CONFUSE|1d4", "u", "A strange brown growth on the dungeon floor.", "NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", "m", "110|68|2|14|99", "", "6|1|20"),
	("Giant brown bat", "900", "57d5", "BITE|HURT|1d3", "u", "It screeches as it attacks.", "RAND_50|ANIMAL", "b", "130|14|10|18|30", "", "6|1|10"),
	("Rattlesnake", "900", "57d5", "BITE|POISON|2d5", "r", "frighten its prey.", "RAND_50|IM_POIS|ANIMAL|HURT_COLD", "J", "110|24|6|36|10", "", "6|1|20"),
	("Manes", "1000", "50d6", "HIT|HURT|1d8", "u", "It is a minor but aggressive demon.", "NO_FEAR|DEMON|EVIL|IM_FIRE", "u", "110|36|20|48|80", "", "7|2|16"),
	("Red jelly", "1000", "50d6", "TOUCH|LOSE_STR|1d5", "r", "It is a large pulsating mound of red flesh.", "NEVER_MOVE|HURT_LIGHT|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "110|117|2|1|99", "", "7|1|26"),
	("Giant red frog", "1000", "50d6", "BITE|LOSE_STR|2d4", "r", "It looks poisonous.", "RAND_50|ANIMAL|HURT_COLD", "R", "110|23|12|19|50", "", "7|1|16"),
	("Green icky thing", "1000", "50d6", "TOUCH|ACID|2d5", "g", "It is a smallish, slimy, icky, acidic creature.", "IM_ACID|RAND_50", "i", "110|23|14|14|20", "", "7|2|18"),
	("Zombified kobold", "1000", "50d6", "HIT|HURT|1d2@HIT|HURT|1d2", "s", "shambles forward.", "NO_FEAR|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|HURT_FIRE|NO_CONF|NO_SLEEP|NO_STUN", "z", "110|27|20|21|100", "", "7|1|14"),
	("Night lizard", "1000", "50d6", "BITE|HURT|1d6@BITE|HURT|1d6", "b", "It is a black lizard with overlapping scales and a powerful jaw.", "ANIMAL|HURT_COLD", "R", "110|18|20|19|30", "", "7|2|35"),
	("Brown yeek", "1200", "60d6", "HIT|HURT|1d6", "u", "It is a strange small humanoid.", "DROP_40|ANIMAL|IM_ACID", "y", "110|18|18|21|10", "", "8|1|11"),
	("Green mold", "1200", "60d6", "SPORE|TERRIFY|1d4", "g", "It is a strange growth on the dungeon floor.", "IM_ACID|NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", "m", "110|95|2|16|75", "", "8|1|28"),
	("Skeleton orc", "1200", "60d6", "HIT|HURT|2d5", "w", "It is an animated orc skeleton.", "ORC|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|NO_FEAR|NO_CONF|NO_SLEEP|NO_STUN", "s", "110|45|20|54|70", "", "8|1|26"),
	("Lemure", "1200", "60d6", "HIT|HURT|1d8", "U", "It is the larval form of a major demon.", "NO_FEAR|DEMON|EVIL|IM_FIRE", "u", "110|65|20|48|80", "", "8|3|16"),
	("Nighthawk", "1200", "60d6", "CLAW|HURT|1d3@CLAW|HURT|1d3@BITE|HURT|1d4", "u", "Trained to hunt and kill without fear.", "NO_FEAR|ANIMAL", "B", "120|36|30|30|10", "", "8|2|22"),
	("Yeti", "1300", "55d7", "CLAW|HURT|1d3@CLAW|HURT|1d3@BITE|HURT|1d4", "w", "A large white figure covered in shaggy fur.", "ANIMAL|IM_COLD", "Y", "110|55|20|36|30", "", "9|3|30"),
	("Giant red ant", "1300", "55d7", "BITE|HURT|1d4@STING|LOSE_STR|1d4", "r", "It is large and has venomous mandibles.", "ANIMAL", "a", "110|18|12|40|60", "", "9|2|22"),
	("King cobra", "1300", "55d7", "SPIT|BLIND|1d2@BITE|POISON|3d4", "g", "It is a large snake with a hooded face.", "RAND_50|IM_POIS|ANIMAL|HURT_COLD", "J", "110|44|8|45|10", "", "9|2|28"),
	("Cave bear", "1300", "55d7", "CLAW|HURT|1d6@CLAW|HURT|1d6@BITE|HURT|1d8", "u", "you are trespassing in its territory.", "ANIMAL|RAND_25", "q", "110|36|10|52|30", "", "9|1|25"),
	("Giant spider", "1400", "59d7", "BITE|HURT|1d10@BITE|POISON|1d6@BITE|POISON|1d6@BITE|HURT|1d10", "v", "It is a vast black spider whose bulbous body is bloated with poison.", "ANIMAL|IM_POIS", "S", "110|55|8|24|40", "", "10|2|35"),
	("Giant white tick", "1400", "59d7", "BITE|POISON|2d6", "w", "It is moving slowly towards you.", "ANIMAL|IM_POIS", "S", "100|54|12|150|20", "", "10|2|27"),
	("Hairy mold", "1400", "59d7", "SPORE|POISON|1d3", "o", "It is a strange hairy growth on the dungeon floor.", "NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", "m", "110|68|2|22|0", "", "10|1|32"),
	("Panther", "1400", "59d7", "CLAW|HURT|1d8@CLAW|HURT|1d8", "u", "A large black cat, stalking you with intent.  It thinks you're its next meal.", "ANIMAL", "f", "120|45|40|36|0", "", "10|2|25"),
	("Hippogriff", "1600", "58d8", "HIT|HURT|2d5@BITE|HURT|2d5", "U", "A strange hybrid of eagle and horse.  It looks weird.", "ANIMAL", "H", "110|100|12|21|40", "", "11|1|30"),
	("Zombified orc", "1600", "58d8", "HIT|HURT|1d4@HIT|HURT|1d4@HIT|HURT|1d4", "s", "It is a shambling orcish corpse leaving behind a trail of flesh.", "ORC|NO_FEAR|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|HURT_FIRE|NO_CONF|NO_SLEEP|NO_STUN", "z", "110|50|20|36|90", "", "11|1|30"),
	("Black mamba", "1700", "61d8", "BITE|POISON|4d4", "D", "It has glistening black skin, a sleek body and highly venomous fangs.", "RAND_50|IM_POIS|ANIMAL|HURT_COLD", "J", "120|45|10|48|10", "", "12|3|40"),
	("Skeleton human", "1700", "61d8", "HIT|HURT|1d8", "w", "It is an animated human skeleton.", "UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|NO_FEAR|NO_CONF|NO_SLEEP|NO_STUN", "s", "110|45|20|45|70", "", "12|1|38"),
	("Zombified human", "1700", "61d8", "HIT|HURT|1d4@HIT|HURT|1d4", "s", "It is a shambling human corpse dropping chunks of flesh behind it.", "NO_FEAR|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|HURT_FIRE|NO_CONF|NO_SLEEP|NO_STUN", "z", "110|54|20|36|100", "", "12|1|34"),
	("Tiger", "1700", "61d8", "CLAW|HURT|1d8@CLAW|HURT|1d8@BITE|HURT|1d6", "o", "towards you, ready to pounce.", "ANIMAL", "f", "120|66|40|48|0", "", "12|2|40"),
	("Stegocentipede", "1700", "61d8", "BITE|HURT|2d4@BITE|HURT|2d4@STING|HURT|2d4", "u", "It is a vast armoured centipede with massive mandibles and a spiked tail.", "ANIMAL", "c", "120|59|12|36|30", "", "12|2|40"),
	("Spotted jelly", "1700", "61d8", "TOUCH|ACID|1d10@TOUCH|ACID|2d6@TOUCH|ACID|2d6", "o", "A strange jelly thing, covered in discoloured blotches.", "COLD_BLOOD|NEVER_MOVE|HURT_LIGHT|IM_ACID|IM_POIS|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|59|12|27|0", "", "12|3|33"),
	("Killer brown beetle", "1800", "57d9", "BITE|HURT|4d4", "u", "It is a vicious insect with a tough carapace.", "ANIMAL", "K", "110|59|10|72|30", "", "13|1|45"),
	("Ogre", "1800", "57d9", "HIT|HURT|2d8", "U", "A hideous, smallish giant that is often found near or with orcs.", "DROP_40|GIANT|EVIL", "O", "110|65|20|49|50", "", "13|2|50"),
	("Ochre jelly", "1800", "57d9", "TOUCH|ACID|1d10@TOUCH|ACID|2d6@TOUCH|ACID|2d6", "U", "rests on.", "COLD_BLOOD|TAKE_ITEM|IM_ACID|IM_POIS|HURT_COLD|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|59|12|21|1", "", "13|3|40"),
	("Black ogre", "2000", "56d10", "HIT|HURT|2d8@HIT|HURT|2d8", "D", "A massive orc-like figure with black skin and powerful arms.", "DROP_40|RAND_25|GIANT|EVIL", "O", "110|100|20|49|50", "", "15|2|75"),
	("Giant tarantula", "2000", "56d10", "BITE|POISON|1d6@BITE|POISON|1d6@BITE|POISON|1d6", "o", "A giant spider with hairy black and red legs.", "ANIMAL|IM_POIS", "S", "120|80|8|48|20", "", "15|3|70"),
	("Griffon", "2000", "56d10", "HIT|HURT|3d4@BITE|HURT|2d6", "u", "It is half lion, half eagle.  It flies menacingly towards you.", "ANIMAL", "H", "110|135|12|22|40", "", "15|1|70"),
	("Homunculus", "2000", "56d10", "HIT|PARALYZE|1d2@HIT|HURT|1d10", "y", "It is a small demonic spirit full of malevolence.", "NO_FEAR|DEMON|EVIL|IM_FIRE", "u", "110|36|20|48|60", "", "15|3|40"),
	("Umber hulk", "2100", "59d10", "GAZE|CONFUSE@HIT|HURT|1d6@HIT|HURT|1d6@BITE|HURT|2d6", "U", "through rock.", "EVIL|ANIMAL|KILL_WALL|COLD_BLOOD|HURT_ROCK|IM_POIS|NO_CONF|NO_SLEEP", "X", "110|110|20|75|30", "", "16|1|75"),
	("Gelatinous cube", "2100", "59d10", "TOUCH|ACID|1d10@TOUCH|ACID|1d10@TOUCH|ACID|1d10", "G", "well.", "COLD_BLOOD|DROP_4|TAKE_ITEM|IM_ACID|IM_COLD|IM_ELEC|IM_FIRE|IM_POIS|NO_CONF|NO_SLEEP|NO_FEAR", "j", "110|316|12|21|1", "", "16|4|80"),
	("Grizzly bear", "2100", "59d10", "CLAW|HURT|1d8@CLAW|HURT|1d8@BITE|HURT|1d12@CRUSH|HURT|1d10", "U", "A huge, beastly bear, more savage than most of its kind.", "ANIMAL", "q", "110|78|10|52|30", "", "16|2|55"),
	("Giant red scorpion", "2200", "55d11", "BITE|HURT|2d4@STING|LOSE_STR|1d7", "r", "It is fast and poisonous.", "ANIMAL|IM_POIS", "S", "110|50|12|52|20", "", "17|1|62"),
	("Red mold", "2400", "55d12", "SPORE|FIRE|4d4", "r", "It is a strange red growth on the dungeon floor; it seems to burn with flame.", "IM_FIRE|NEVER_MOVE|IM_POIS|NO_FEAR|NO_CONF|NO_SLEEP", "m", "110|77|2|19|70", "", "19|1|64"),
	("Sabre-tooth tiger", "2500", "57d12", "CLAW|HURT|1d10@CLAW|HURT|1d10@BITE|HURT|1d10@BITE|HURT|1d10", "y", "the strongest armour.", "ANIMAL", "f", "120|150|40|60|0", "", "20|2|120"),
	("Sasquatch", "2500", "57d12", "CLAW|HURT|1d10@CLAW|HURT|1d10@BITE|HURT|2d8", "g", "A tall shaggy, furry humanoid, it could call the yeti brother.", "ANIMAL|IM_COLD", "Y", "120|200|15|60|20", "", "20|3|180"),
	("Werewolf", "2500", "57d12", "CLAW|HURT|2d6@CLAW|HURT|2d6@BITE|HURT|2d10", "D", "It is a huge wolf with eyes that glow with manly intelligence.", "EVIL|RAND_25|TAKE_ITEM|ANIMAL", "C", "110|230|15|36|70", "", "20|1|150"),
	("Mummified orc", "2600", "55d13", "HIT|HURT|2d4@HIT|HURT|2d4", "w", "It is an orcish figure covered in wrappings.", "ORC|DROP_20|NO_FEAR|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|HURT_FIRE|NO_CONF|NO_SLEEP|NO_STUN", "z", "110|68|20|33|75", "", "21|1|56"),
	("Killer stag beetle", "2800", "59d13", "CLAW|HURT|3d6@CLAW|HURT|3d6", "g", "It is a giant beetle with vicious claws.", "RAND_25|ANIMAL", "K", "110|68|12|76|30", "", "22|1|80"),
	("Giant yellow scorpion", "2800", "59d13", "BITE|HURT|1d8@STING|POISON|2d5", "y", "It is a giant scorpion with a sharp stinger.", "ANIMAL|IM_POIS", "S", "110|54|12|45|20", "", "22|1|60"),
	("Killer white beetle", "2900", "56d14", "BITE|HURT|4d5", "w", "It is looking for prey.", "RAND_25|ANIMAL", "K", "110|81|14|66|30", "", "23|0|85"),
	("Giant silver ant", "2900", "56d14", "BITE|ACID|4d4", "W", "A giant silver ant with a caustic bite and hard scales.", "RAND_25|ANIMAL", "a", "110|41|10|100|40", "", "23|1|80"),
	("Vampire bat", "3000", "58d14", "BITE|EXP_40|1d4@BITE|EXP_40|1d4", "D", "A blood-sucking bat that flies at your neck hungrily.", "UNDEAD|EVIL|COLD_BLOOD|REGENERATE|RAND_50|IM_COLD|NO_FEAR|NO_CONF|NO_SLEEP|NO_STUN|ANIMAL", "b", "120|50|12|60|10", "", "24|2|150"),
	("Werebear", "3000", "58d14", "CLAW|HURT|1d10@CLAW|HURT|1d10@BITE|HURT|2d8@CRUSH|HURT|2d6", "D", "dangerous enemy.", "EVIL|ANIMAL|DROP_1", "q", "110|325|20|75|40", "", "24|2|200"),
	("Wereworm", "3200", "58d15", "GAZE|EXP_20@CRAWL|ACID|2d4@BITE|HURT|1d10@BITE|POISON|1d6", "p", "monster that breeds on death.", "IM_ACID|ANIMAL", "w", "110|600|15|105|40", "", "25|3|300"),
	("Carrion crawler", "3200", "58d15", "STING|PARALYZE|2d6@STING|PARALYZE|2d6", "o", "head.", "RAND_25|IM_POIS|ANIMAL", "c", "110|130|15|60|20", "", "25|2|60"),
	("Killer red beetle", "3200", "58d15", "BITE|LOSE_STR|4d4@BITE|HURT|4d4", "r", "It is a giant beetle with poisonous mandibles.", "RAND_25|ANIMAL", "K", "110|90|14|60|30", "", "25|1|90"),
	("Giant brown tick", "3200", "58d15", "BITE|POISON|2d6@STING|BLIND|1d1", "u", "It is moving slowly towards you.", "ANIMAL|IM_POIS", "S", "100|81|12|200|20", "", "25|2|70"),
	("Displacer beast", "3300", "59d15", "BITE|HURT|2d8@HIT|HURT|1d10@HIT|HURT|1d10@HIT|HURT|1d10", "D", "It is a huge black panther, clubbed tentacles sprouting from its shoulders.", "INVISIBLE|ANIMAL", "f", "110|138|35|150|10", "", "26|2|100"),
	("Giant fire tick", "3300", "59d15", "BITE|FIRE|3d6", "R", "It is smoking and burning with great heat.", "ANIMAL|RAND_25|IM_FIRE", "S", "110|72|14|120|20", "", "26|1|90"),
	("Cave ogre", "3300", "59d15", "HIT|HURT|3d8@HIT|HURT|3d8", "u", "A giant orc-like figure with an awesomely muscled frame.", "DROP_40|GIANT|EVIL", "O", "110|150|20|49|40", "", "26|2|80"),
	("Killer fire beetle", "3400", "57d16", "BITE|HURT|3d4@SPIT|FIRE|4d5", "R", "It is a giant beetle wreathed in flames.", "IM_FIRE|ANIMAL", "K", "110|99|14|54|30", "", "27|1|95"),
	("Algroth", "3400", "57d16", "CLAW|POISON|3d3@CLAW|POISON|3d3@BITE|HURT|1d6", "o", "A powerful troll form.  Venom drips from its needlelike claws.", "REGENERATE|DROP_20|IM_POIS|TROLL|EVIL", "T", "110|137|20|90|50", "", "27|1|150"),
	("Shimmering mold", "3400", "57d16", "SPORE|ELEC|5d4@SPORE|ELEC|5d4", "b", "sparks.", "IM_ELEC|NEVER_MOVE|IM_POIS|HURT_FIRE|NO_FEAR|NO_CONF|NO_SLEEP", "m", "110|144|2|36|0", "", "27|1|140"),
	("Purple worm", "3600", "57d17", "HIT|HURT|1d8@BITE|ACID|2d8@STING|POISON|1d8", "P", "poison.", "IM_ACID|IM_POIS|ANIMAL", "w", "110|293|14|78|30", "", "29|3|400"),
	("Skeleton troll", "3700", "58d17", "HIT|HURT|1d6@HIT|HURT|1d6@BITE|HURT|3d4", "w", "It is a troll skeleton animated by dark dweomers.", "TROLL|REGENERATE|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|NO_FEAR|NO_CONF|NO_SLEEP|NO_STUN", "s", "110|110|20|82|60", "", "30|1|225"),
	("Killer slicer beetle", "3700", "58d17", "BITE|HURT|7d8@BITE|HURT|7d8", "y", "It is a beetle with deadly sharp cutting mandibles and a rock-hard carapace.", "ANIMAL", "K", "110|138|14|72|30", "", "30|2|250"),
	("Death watch beetle", "3800", "56d18", "BITE|HURT|5d6@BITE|HURT|5d6@WAIL|TERRIFY|5d6", "D", "It is a giant beetle that produces a chilling sound.", "ANIMAL", "K", "110|163|16|72|30", "", "31|3|300"),
	("Doombat", "4000", "59d18", "BITE|FIRE|5d4@BITE|FIRE|5d4@BITE|FIRE|5d4", "R", "flickering bright red flames.", "IM_FIRE|ANIMAL", "b", "120|180|16|112|20", "", "32|2|250"),
	("Skeleton ettin", "4100", "57d19", "HIT|HURT|1d9@HIT|HURT|1d9@BITE|HURT|1d5@BITE|HURT|1d5", "w", "It is the animated form of a massive two-headed troll.", "TROLL|REGENERATE|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|NO_FEAR|NO_CONF|NO_SLEEP|NO_STUN", "s", "110|396|20|75|50", "", "33|1|325"),
	("Giant grey scorpion", "4200", "59d19", "BITE|HURT|1d6@STING|POISON|1d4", "s", "It is a giant grey scorpion.  It looks poisonous.", "ANIMAL|IM_POIS", "S", "120|189|12|60|40", "", "34|4|275"),
	("Acidic cytoplasm", "4400", "58d20", "TOUCH|ACID|1d10@TOUCH|ACID|1d10@TOUCH|ACID|1d10@TOUCH|ACID|1d10", "s", "A disgusting animated blob of destruction.  Flee its gruesome hunger!", "COLD_BLOOD|DROP_4|TAKE_ITEM|IM_ACID|IM_COLD|IM_ELEC|IM_FIRE|IM_POIS|NO_CONF|NO_SLEEP|NO_FEAR", "j", "120|352|12|21|1", "", "35|5|180"),
	("Mûmak", "4400", "58d20", "BUTT|HURT|4d6@BUTT|HURT|4d6@CRUSH|HURT|4d4", "s", "A massive elephantine form with eyes twisted by madness.", "ANIMAL", "q", "110|495|20|82|70", "", "35|2|2100"),
	("Olog", "4500", "60d20", "HIT|HURT|1d12@HIT|HURT|1d12@BITE|HURT|2d3@BITE|HURT|2d3", "y", "It is a massive intelligent troll with needle-sharp fangs.", "REGENERATE|DROP_20|TROLL|EVIL", "T", "110|369|20|60|50", "", "36|1|450"),
	("Xorn", "4500", "60d20", "HIT|HURT|1d6@HIT|HURT|1d6@HIT|HURT|1d6@HIT|HURT|1d6", "u", "four huge arms protruding from its enormous torso.", "PASS_WALL|KILL_ITEM|IM_COLD|IM_ELEC|IM_FIRE|COLD_BLOOD|HURT_ROCK|IM_POIS|NO_CONF|NO_SLEEP", "X", "110|140|20|96|10", "", "36|2|650"),
	("Mummified troll", "4600", "58d21", "HIT|HURT|2d6@HIT|HURT|2d6", "w", "fists.", "TROLL|REGENERATE|DROP_20|NO_FEAR|UNDEAD|EVIL|COLD_BLOOD|IM_COLD|IM_POIS|HURT_FIRE|NO_CONF|NO_SLEEP|NO_STUN", "z", "110|167|20|75|70", "", "37|1|420"),
	("Black pudding", "4600", "58d21", "TOUCH|ACID|1d10@TOUCH|ACID|1d10@TOUCH|ACID|1d10@TOUCH|ACID|1d10", "D", "A lump of rotting black flesh that slurrrrrrrps across the dungeon floor.", "COLD_BLOOD|DROP_40|DROP_60|DROP_1|TAKE_ITEM|IM_ACID|IM_COLD|IM_ELEC|IM_FIRE|IM_POIS|NO_CONF|NO_SLEEP|NO_FEAR", "j", "110|352|12|21|1", "", "37|5|50"),
	("Eldrak", "4600", "58d21", "HIT|HURT|3d4@HIT|HURT|3d4@HIT|HURT|3d4", "r", "A massive troll, larger and stronger than many men together.", "DROP_40|TAKE_ITEM|NO_CONF|NO_SLEEP|TROLL|EVIL", "T", "110|660|20|120|40", "", "37|3|800"),
	("Spirit troll", "4800", "58d22", "HIT|HURT|3d6@HIT|HURT|3d6@HIT|HURT|3d6", "G", "A weird ghostly troll-like being from the ethereal plane.", "TROLL|REGENERATE|DROP_60|IM_ELEC|UNDEAD|EVIL|INVISIBLE|COLD_BLOOD|PASS_WALL|IM_COLD|IM_POIS|NO_CONF|NO_SLEEP|NO_STUN", "G", "110|880|20|108|5", "", "40|3|900"),
	("Giant roc", "4800", "58d22", "CRUSH|HURT|8d12@CRUSH|HURT|8d12@HIT|ELEC|12d12", "u", "and its screech echoes through the many winding dungeon corridors.", "IM_ELEC|ANIMAL", "B", "110|560|20|84|10", "", "40|3|1000"),
	("Minotaur", "4800", "58d22", "BUTT|HURT|4d6@BUTT|HURT|4d6@BUTT|HURT|2d6@BUTT|HURT|2d6", "s", "It is a cross between a human and a bull.", "EVIL", "H", "130|550|13|30|10", "", "40|2|2100");*/
