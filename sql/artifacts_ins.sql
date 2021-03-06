/*about artifact class
   0-garment
   1-consumable
*/
/*about artifact types
   0-amulet
   1-ring
   2-armor
   3-shield
   4-helm
   5-gloves
   6-boots
   7-weapon
   8-expendable
*/
/*about artifact subtype
   subtypes for weapon type of garment class:
   0-one-handed
   1-two-handed
   2-bow
   subtypes for expendable type of garment class:
   4-arrows
*/
INSERT INTO artifacts(name, atype, weight, allocation_info, power_info, flags, effects, bonus, message, description) VALUES
   ('Amulet of Carlammas', '0:0:-1', 3, '10:1:100', '', 'RES_FIRE', '', '3:CON@1:STR', '', 'A fiery circle of bronze, with mighty spells:ward off and banish evil'),
   ('Amulet of Ingwe', '0:0:-1', 3, '30:1:127', '', 'RES_ACID|RES_COLD|RES_ELEC|RES_CONF','', '3:INT|WIS', '', 'The ancient heirloom of Ingwë, high lord of the Vanyar, against whom nothing of evil could stand.'),
   ('Amulet of Elessar', '0:0:-1', 3, '52:2:3', '0:0d0:0:0:10', 'RES_FEAR|RES_FIRE|RES_POIS|INSTA_ART', '', '2:STR|WIS|SPEED', 'You feel a warm tingling inside...', 'A green stone, imbued with the power of Elvendom and the light of the Sun. Those who gaze through it see the aged and infirm as young again, and its wearer brings healing after victory in battle.'),
   ('Ring of Barahir', '0:1:-1', 2, '44:2:100', '', 'RES_POIS', '', '1:STR|INT|WIS|DEX|CON|STEALTH', '', 'Twinned serpents with eyes of emerald meet beneath a crown of flowers to form this ring, an ancient treasure of Isildur\'s house.'),
   ('Ring of Tulkas', '0:1:-1', 2, '32:1:127', '', 'RES_FEAR', '', '4:STR|DEX|CON', '', 'The treasure of Tulkas, most fleet and wrathful of the Valar.'),
   ('Ring of Narya', '0:1:-1', 2, '82:2:127', '0:0d0:2:2:0', 'REGEN|TELEPATHY|SUST_STR|SUST_CONIM_FIRE|RES_FIRE|RES_FEAR', '', '1:STR|INT|WIS|DEX|CON@5:SPEED', '', 'The Ring of Fire, made of gold and set with a ruby that glows like flame. Narya is one of the three Rings of Power created by Celebrimbor and hidden by the Elves from Sauron.'),
   ('Ring of Nenya', '0:1:-1', 2, '22:3:127', '0:0d0:3:3:0', 'HOLD_LIFE|REGEN|IM_COLD|RES_COLD|RES_BLIND', '', '2:STR|INT|WIS|DEX|CON@5:SPEED', '', 'The Ring of Adamant, made of mithril with a pure white stone as centerpiece.  Nenya is one of the three Rings of Power created by Celebrimbor and hidden by the Elves from Sauron.'),
   ('Ring of Vilya', '0:1:-1', 2, '51:2:127', '0:0d0:5:5:0', 'HOLD_LIFE|REGEN|IM_ELEC|RES_ELEC|RES_POIS|RES_DARK', '','3:STR|INT|WIS|DEX|CON@5:SPEED', '', 'The Ring of Sapphire, made of gold with a brilliant blue gem that shines like stars.  It glitters untouchable despite all that Morgoth ever wrought. Vilya is one of the three Rings of Power created by Celebrimbor and hidden by the Elves from Sauron.'),
   ('Full plate armour of Isildur', '0:2:-1', 300, '39:4:127', '75:2d4:0:0:25', 'RES_ACID|RES_ELEC|RES_FIRE|RES_COLD|RES_CONFU|RES_NEXUS', '', '1:CON', '', 'A gleaming steel suit covering the wearer from neck:foot, with runes of warding and stability deeply engraved into its surface.'),
   ('Mithril plate mail of Celeborn', '0:2:-1', 250, '60:4:127', '65:2d4:-3:0:25', 'RES_ACID|RES_ELEC|RES_FIRE|RES_COLD|RES_DARK|RES_DISEN', '', '3:STR', '', 'A shimmering suit of true-silver, forged long ago by dwarven smiths of legend. It gleams with purest white as you gaze upon it, and mighty are its powers:protect and banish.'),
   ('Leather armour of Himring', '0:2:-1', 100, '20:2:90', '20:0d0:0:0:15', 'RES_CHAOS|RES_POIS', '', '', '', 'In this studded cuirass of pliable leather lives the memory of unvanquished Himring, defiant fortress surrounded by the legions of Morgoth.'),
   ('Thalkettoth', '0:2:-1', 60, '20:3:100', '20:1d1:-1:0:25', 'RES_ACID', '', '3:DEX|SPEED', '', 'An amazingly light tunic and skirt sewn with thick, overlapping scales of hardened leather.  Those who wear it move with agility and assurance.'),
   ('Shield of Gil-galad', '0:3:-1', 80, '25:2:127', '20:1d3:0:0:20', 'RES_ELEC|RES_ACID', '', '5:WIS@1:LIGHT', 'Your shield with the light of a thousand stars...', 'The legendary shield of Ereinion Gil-galad, who fought his way:the gates of the Dark Tower, and with whom came light even:Gorgoroth.'),
   ('Shield of Thorin', '0:3:-1', 65, '14:1:127', '5:1d2:0:0:25', 'RES_FEAR|IM_ACID|RES_CHAOS', '', '4:CON@3:STR@-1:STEALTH', '', 'Invoking the strength and endurance of Thorin, King under the Mountain, this little metal shield is proof against the Element of Earth.'),
   ('Shield of Anárion', '0:3:-1', 120, '11:3:100', '12:1d3:0:0:20', 'RES_ACID|RES_ELEC|RES_FIRE|RES_COLD', '', '', '', 'The great metal-bound shield of Elendil\'s younger son Anárion, whom even Sauron could not corrupt.'),
   ('Helm of Celebrimbor', '0:4:-1', 20, '8:1:100', '3:1d1:0:0:18', 'RES_FIRE|RES_ACID', '', '3:SEARCH@2:INT|DEX', '', 'A metal cap forged by the greatest Noldorin smith of the Second Age, this helm serves equally well in battle or at the forge, and its enchantment will never be diminished.'),
   ('Helm of Thranduil', '0:4:-1', 15, '14:1:100', '2:0d0:0:0:10', 'RES_BLIND', '', '2:INT|WIS', '', 'The hunting cap of King Thranduil,:whose ears come all the secrets of his forest domain.'),
   ('Crown of Gondor', '0:4:-1', 30, '5:3:127', '0:1d1:0:0:15','RES_COLD|RES_FIRE|RES_LIGHT|RES_BLIND|RES_CONFU|REGEN', '', '3:STR|CON@2:WIS@1:LIGHT', 'You feel a warm tingling inside...', 'From dying Númenor, Elendil brought this shining winged circlet, emblem of Gondor through an age of the world.'),
   ('Crown of Númenor', '0:4:-1', 40, '5:3:127', '0:1d1:0:0:18', 'RES_STUN|RES_COLD|ES_LIGHT|RES_DARK|RES_BLIND', '', '3:INT|SEARCH@2:DEX@1:LIGHT', '', 'A massive golden crown, set with wondrous jewels of thought and warding, once worn by the kings of ancient Númenor.'),
   ('Gloves of Eol', '0:5:-1', 25, '3:1:127', '3:1d1:0:0:14', 'RES_ELEC|RES_DARK|RES_POIS|IM_FIRE', '', '3:INT', '', 'The iron-shod gauntlets of the Dark Elven smith Eöl, who imbued them with magics he could channel in battle.'),
   ('Gloves of Cambeleg', '0:5:-1', 5, '3:2:100', '1:0d0:8:8:15', '', '', '2:STR|CON', '', 'A hero\'s handgear that lends great prowess in battle.'),
   ('Gloves of Paurnimmen', '0:5:-1', 25, '5:3:127', '3:1d1:0:0:14', 'RES_COLD', '', '', 'Your gloves covered in frost...', 'A set of handgear, freezing with unnatural cold.'),
   ('Boots of Dal-i-thalion', '0:6:-1', 20, '4:2:100', '2:1d1:0:0:15', 'RES_CONFU', '', '5:DEX|SPEED', '', 'A pair of high-laced shoes, bestowing of extraordinary agility and proof against the powers of corruption and withering.'),
   ('Boots of Thror', '0:6:-1', 60, '5:1:100', '7:1d1:0:0:20', 'RES_FEAR', '', '3:STR|CON|SPEED@-1:STEALTH', '', 'Sturdy footwear of leather and steel as enduring as the long-suffering Dwarven king-in-exile who wore them.'),
   ('Boots of Wormtongue', '0:6:-1', 20, '8:2:80', '2:1d1:-1:-1:0', '', '', '3:SPEED@2:INT|DEX|STEALTH', 'Your boots twist space around you.', 'A pair of running shoes once used by the treacherous Gríma son of Galmod, the Wormtongue of Edoras.  They are aptly suited for a messenger, a servant, a spy... or a coward.'),
   ('Boots of Radagast', '0:6:-1', 20, '8:1:70', '2:1d1:0:0:12', 'RES_COLD', '', '5:INFRA@3:STEALTH@1:WIS', '', 'Made of brown leather, covered with scuff marks and dust, still these boots possess the magic of Radagast, friend of birds and nature.'),
   ('Glamdring', '0:7:0', 150, '90:1:80', '0:2d5:10:15:0', 'SLAY_EVIL|BRAND_FIRE|SLAY_ORC|SLAY_DEMON|RES_FIRE|RES_LIGHT|SLOW_DIGEST', '', '1:SEARCH|LIGHT', '', 'This fiery, shining blade, mate:Orcrist, earned its sobriquet "Beater" from dying orcs who dared:behold hidden Gondolin.'),
   ('Sword of Eowyn', '0:7:0', 140, '3:4:127', '0:4d4:12:16:0', 'SLAY_EVIL|KILL_UNDEAD|SLAY_GIANT|SLAY_ANIMAL|RES_FEAR|RES_DARK|RES_COLD', '', '4:STR@2:STEALTH', '', 'The blade of the legendary Shieldmaiden of Rohan, who slew the foul steed of the Morgul-lord before striking down the mighty Witch-king himself, whom no mortal man could hinder.'),
   ('Orcrist', '0:7:0', 150, '5:2:80', '0:2d5:10:15:0', 'BLESSED|SLAY_EVIL|BRAND_COLD|SLAY_ORC|SLAY_DRAGON|RES_COLD|RES_DARK|SLOW_DIGEST', '', '3:SEARCH@1:LIGHT', '', 'This coldly gleaming blade, mate:Glamdring, is called simply "Biter" by orcs who came:know its power all too well.'),
   ('Anduril', '0:7:0', 130, '3:2:127', '0:3d5:10:15:10', 'RES_FEAR|SLAY_EVIL|SLAY_TROLL|SLAY_ORC|SLAY_UNDEAD|RES_FIRE|RES_DISEN', '', '4:STR|DEX', 'Anduril rages in fire...', 'The famed "Flame of the West", the Sword that was Broken and is forged again.  It glows with the essence of fire, its wearer is mighty in combat, and no creature of Sauron can withstand it.'),
   ('Axe of Theoden', '0:7:1', 180, '7:2:100', '0:2d6:8:10:0', 'REGEN', '', '3:WIS|CON', '', 'The narrow axe head of this weapon would pierce the armour of a very Dragon, and the designs of your enemies stand naked and revealed.'),
   ('Great axe of Durin', '0:7:1', 230, '1:4:127', '0:4d4:10:20:15', 'SLAY_DEMON|SLAY_TROLL|SLAY_ORC|RES_FEAR|RES_ACID|RES_FIRE|RES_LIGHT|RES_DARK|RES_CHAOS|', '', '5:TUNNEL@3:STR|CON@-1:STEALTH', '', 'The twin massive axe heads of this ancient demon\'s dread gleam with mithril inlay telling sagas of endurance.  The powers of Khazad-dûm protect its wielder and slay all evils found underground.'),
   ('Bow of Belthronding', '0:7:2', 40, '5:6:127', '0:0d0:20:22:0', '', '', '3:DEX@1:SPEED|STEALTH', '', 'The great bow of Beleg Cúthalion, the most famous archer of the Elves. Its backbone of black yew holds strings of bear sinew, and of old, onlyBeleg himself could draw them.'),
   ('Bow of Bard', '0:7:2', 40, '100:1:127', '0:0d0:17:19:0', '', '', '2:MIGHT@1:DEX|SPEED', '', 'The great yew bow of grim-faced Bard, who shot the mightiest arrow that songs record.'),
   ('Steel arrow', '0:8:4', 3, '100:1:127', '0:0d0:17:19:0', '', '', '', '', 'Steel arrow.'),
   ('Food', '1:-1:-1', 3, '45:1:127', '0:0d0:17:19:0', '', 'M:HP:300:30', '', '', 'Restore health.');
