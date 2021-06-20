# frozen_string_literal: true

puts("One Time Scripts")

area = Worldarea.find_or_initialize_by(name: "Braeburn")
area.region = "Cantara"
area.description = "The capital city of Braeburn was built southwest of Murk Lake along the shores of Deepwater Sound. This growing metropolis and port city is a melting pot to numerous races found throughout the realm that have left their mark not just on the city’s history, but also on its identity. This multicultural distinctiveness comes in the form of hundreds of ethnic markets and stands offering something to suite the taste of everyone. Despite its size, Braeburn is considered to be one of the cleaner cities in the realm thanks to the diligence of its citizens and consistent enforcement by its knight army, The Red Oath."
area.save!
area = Worldarea.find_or_initialize_by(name: "Aldfair")
area.region = "Cantara"
area.description = "Formed on the eastern side of The Narrow Bay, the town of Aldfair was once a magnificent place with ebony wood rooftops, granite walls, and luscious gardens. It most notable feature is The Barrel and Amulet Tavern that has had a variety of owners over the years due to the struggling economy there. Most folk support themselves with leatherwork and hunting, but their biggest strength was once the farming of a rare crop known as white root. Many years ago a blight killed the uncommon crop and it never truly recovered."
area.save!
area = Worldarea.find_or_initialize_by(name: "Aventine")
area.region = "Cantara"
area.description = "This small fishing town rests on the fringes of civilization deep within Moonfell Wood along the shore of Sradiph Lake. It is one of the last settlements on the northern reaches of the Kingdom of Cantara before crossing over to the Northern Expanse. A wooden wall surrounds the town proper offering a bit more protection for the wooden keep within. Comprised mostly of elves, this town is best known for the ancient elven holiday by the same name, Aventine, that honors the spirits of the dead. Aventine is also known for its gourds which are often fashioned into decorative pouches, lanterns, and other useful items."
area.save!
area = Worldarea.find_or_initialize_by(name: "Bethel")
area.region = "Cantara"
area.description = "The small town of Bethel sits within a series of small lakes on the island of Vraruks Ait. The residents here make their living catching fish and carving statutes from bone. Over the past several years, Bethel has had many champion horse riders that have won the island’s races. And while the local government refuses to become entangled in the arena battles at Cold Spring, their residents have formed underground fight clubs and betting that often spills over to Cold Spring and Torrine. Bethel is a sleep, peaceful town that doesn’t take kindly to adventurers or warrior types that often find themselves sleeping in a cell until they feel that Bethel is a town they’ll never return to."
area.save!
area = Worldarea.find_or_initialize_by(name: "Brenton Wood")
area.region = "Cantara"
area.description = "For hundreds of years the forest of Breton Wood was planted and cultivated to be the largest source of apples in the known world. The crops of this vast wood are harvested by the citizens of Ivygate, Pinova, Cortland and numerous small villages who then convert the fruit to pies, cider, sauce, and other tradable goods."
area.save!
area = Worldarea.find_or_initialize_by(name: "Coldwater Creek")
area.region = "Cantara"
area.description = "Resting close to the southern portion of the Frozen Bluffs is the sleepy river town of Coldwater Creek. The buildings here are built predominantly of stone and the town is defended by a somewhat lackadaisical town guard. Coldwater Creek is best known for it love equestrian statues which can be found in almost any direction there. It’s primary revenue source is leather goods."
area.save!
area = Worldarea.find_or_initialize_by(name: "Coldspring")
area.region = "Cantara"
area.description = "On the westernmost portion of the Pillars of Valda is the island of Vraruks Ait. And on the westernmost portion of that island is Coldspring. Its ruler is Grung – a dodgy goblin whose family has run the town for several generations. Many of the villages on the Pillars of Valda participate in horse racing, but Coldspring has also taken to organized arena fighting where warriors start with daggers and earn their way up to more exotic weapons, fame, titles, and wealth. The main attraction in Coldspring has become the racing stadium that is now used for warrior battles. Coldspring has been run into the ground over the past several goblin generations and it is rumored that Grung took to arena battles to help rebuild the town since it has no other strong form of commerce."
area.save!
area = Worldarea.find_or_initialize_by(name: "Cortland")
area.region = "Cantara"
area.description = "Forged beside Breton Wood, the town of Cortland is home to many of the races of Hyreath save Goblins and Suhk who are forbidden from setting foot there. This has made foot-based travel difficult for those races who must find a way around or risk trying to sneak through the wary town. Cortland itself looks magnificent. With its rustic rooftops, stone walls and clean beaches, it has a glamorous atmosphere. Like all towns and villages, Cortland generates much of its revenue from its orchards, but competition over the years has forced it to focus more on highquality leather goods and stonework jewelry. It’s leader, Serian, has been working to improve the economy there and makes no secret of her disdain for the neighboring villages and towns that ruthlessly undercut each other."
area.save!
area = Worldarea.find_or_initialize_by(name: "Crooked Forest")
area.region = "Cantara"
area.description = "The Crooked Forest dominates a majority of Vraruks Ait – a large island located west of the town of Valda that is part of the Pillars of Valda. The thick forest is filled with the prominent trails that are frequently used as makeshift roads between the numerous villages that call the forest home. The northern portions of the wood are home to several Wildren villages that are unusually xenophobic."
area.save!
area = Worldarea.find_or_initialize_by(name: "Deepwater Sound")
area.region = "Cantara"
area.description = "Deepwater Sound is a body of water separated from the Sea of Trath by a series of islands known as the Pillars of Valda. There have been claims made that the sound is bottomless and in some places it may very well be, but for the most part shipwrecks closer to shore say otherwise."
area.save!
area = Worldarea.find_or_initialize_by(name: "Evers’ Mile")
area.region = "Cantara"
area.description = "The buildings of the quiet town of Evers’ Mile are fashioned from the red-colored stone found on the nearby Spidermoss Mountain, but the town is most well known for its collection of art showcased in its Museum of Antiquity. The town is led by Mayor Hedolin Smeltgood, a Dwarf who was appointed leader of the town after the mysterious disappearance of the previous mayor, Kirin Frulgray. The town’s primary revenue source is mining and trade."
area.save!
area = Worldarea.find_or_initialize_by(name: "Hearsong")
area.region = "Cantara"
area.description = "Many would say the most notable feature of Heartsong is the architecture of its buildings – a unique mixture of Wanton and Cantaran cultures. Those who truly know music recognize Heartsong for its stringed instruments including the Heartsong Violin, Dulcimer, and Guitar all of which fetch a handsome price at market. Heartsong is a growing town filled with music, poetry, and passion. Its leader, Baron Heart, is a respected archer who has crafted some of the finest bows in the area known as heart bows."
area.save!
area = Worldarea.find_or_initialize_by(name: "Ivygate")
area.region = "Cantara"
area.description = "Also known as Draydon Keep, the city of Ivygate is the last significant city south of Braeburn for hundreds of miles. Eighteen skinny, round towers are scattered in a seemingly random pattern around the castle wall, but have been build for an ideal defense and are connected by big, thick walls made of light grey stone covered in green ivy. The city is leg by Judge Eustis – a solemn man who is known for his integrity and disdain for thieves. The city is guarded by the Sunshapers – a group of trained knights that protect the city night and day. Ivygate is a port city that takes advantage of Deepwater Sound to transport goods quickly. Like most of the cities and villages that border Breton Wood, they take advantage of the apple crop. Ivygate is best known for its ornate temples dedicated to the gods."
area.save!
area = Worldarea.find_or_initialize_by(name: "Lonely Forest")
area.region = "Cantara"
area.description = "On clear nights, the lighthouse from Oakstar Beacon can be seen from the the stretch of islands known as the Pillars of Valda. On the island of Ox Cay the Lonely Forest is home to many villages that lead a simple life away from the hustle and bustle of the large towns and cities found on the mainland. While many would call the villages sleepy, they are passionate about horse races and frequently host both day and night races. The various villages have no official leadership or military and justice is often served by a mob bearing torches and pitchforks."
area.save!
area = Worldarea.find_or_initialize_by(name: "Oakstar Beacon")
area.region = "Cantara"
area.description = "Guiding wayward ships around the rocky shores of the Gilded Cape is a stone-crafted lighthouse known as Oakstar Beacon. The structure sits atop a high ledge where a bright fire is kept burning day and night. Over the years the sleepy fishing village that supported the beacon became a bustling fishing town best known for the fishbone carvings and jewelry. The town is led by a council of elders who are known to be both strict and prudish – especially to outsiders."
area.save!
area = Worldarea.find_or_initialize_by(name: "Owlstone Keep")
area.region = "Cantara"
area.description = "Kismet is the name of the small village that surrounds the stone walls that guard Owlstone Keep. The keep itself houses at most 30 knights, half of which are away for days at a time patrolling the roads that lead to Oakstar Beacon, Evers’ Mile, and Spidermoss Barrow. The town itself is led by retired knight, Lord Aldus Gifford, often referred to as “Aldus the Slayer.” The town’s primary revenue source is blacksmithing where it is renown for its high-quality swords and ironwork lanterns."
area.save!
area = Worldarea.find_or_initialize_by(name: "Pillars of Valda")
area.region = "Cantara"
area.description = "A series of islands that stretch between Deepwater Sound and the Sea of Trath. The long-term inhabitants of the pillars enjoy being isolated from the mainland, but a season of change is growing in the younger generations who seek to leave the pillars to discover the world."
area.save!
area = Worldarea.find_or_initialize_by(name: "Pinova")
area.region = "Cantara"
area.description = "Built along the road between Ivygate and Braeburn, the town of Pinova is a welcome stopping point for travelers making the trek between the two cities. While prosperous, their port is worn and most of their goods are now transported via cart to and from neighboring cities. While apples and apple products are a significant resource for them, there are most known for rare herbalism and elaborate apple beer brewing techniques."
area.save!
area = Worldarea.find_or_initialize_by(name: "Torrine")
area.region = "Cantara"
area.description = "At the north-center of the Tora Forest on the island of Ralz Ait is the town of Torrine. Barely beyond the population of a village, Torrine is a growing town with not much to offer its residents other than solace from mainland. Most travelers visit Cold Spring before anywhere else in the Pillars of Valda leaving Torrine’s trade to suffer unless they take their wares there. Torrine is led by Mayor Austin Lamb, a fourth generation farmer who was pushed into leading. He now reluctantly does so, guided by the wise hand of the town council. Those from Torrine claim Lamb is nothing more than a puppet bullied to doing the council’s will and there to take a fall should they desire. If nothing else, Torrine is known for its various dyes made from local plants, shells, berries, and other means that provide an array of colors."
area.save!
area = Worldarea.find_or_initialize_by(name: "Valda")
area.region = "Cantara"
area.description = "The town of Valda rests quietly on the western shore of the Valda Peninsula. It is a dying town chained to old ideas and the unambitious mindset of “we’ve always done it this way.” The town is led by a council of elders who the youth of town believe to be immortals as they seldom seem to pass on. It is the old mindset that is forcing more and more of the youth on the stretch of islands known as the Pillars of Valda to leave for better things. Without proper upkeep, the town has slowly been consumed by the Bogden Marsh that surrounds it. One of the main things Valda is known for is its mosquitos. These insects almost seem larger than normal and locals call them blood-sucking pixie dragons. They make it almost essential to sleep in the Greenmarsh Inn to avoid being bitten up all night."
area.save!
area = Worldarea.find_or_initialize_by(name: "Windhold")
area.region = "Cantara"
area.description = "The innovative town of Windhold takes advantage of persistent mountain breeze to power several windmills that grind grain throughout the year. This efficient process has allowed the citizens of Windhold to sell large amounts of ground wheat and grain to local towns and cities. The prosperous town is run by Chancellor Lydia Libet who is a true idealist that people tend to treat like family."
area.save!

area = Worldarea.find_or_initialize_by(name: "Ardeth")
area.region = "The Free Lands"
area.description = "On the tip of Songwind Peninsula at the edge of the Elmwood Forest rests Ardeth. This small port town is a common stopover for ships that navigate along the Spirit Shores through the Shipwreck Current. Oddly enough, the town has been run from the The Fine Flagon Inn by its proprietor, Sister Taren Riverglow, since the death of her husband Benjamin years ago. Ardeth trades primarily in fish and is one of the five towns called the Sisters of Thalimas."
area.save!
area = Worldarea.find_or_initialize_by(name: "Applevale")
area.region = "The Free Lands"
area.description = "Between the Fangbark Woods and the Gray Lake is Applevale. This thriving town is best known for its sweet pies made by from bitter green apples. The recipe was originally made by Arma Gedd and has been passed down for generations. Many argue they’re the best apple pies in all the Free Lands. The town is led by two sisters, Janni and Signya Cyneburg, who charm the residents with their smiles and kindness. Anyone passing through the town can sample a piece of fresh apple pie at the Arma Gedd Inn. The inn is clean and run by Alma Din, a fifth-generation descendant of Arma."
area.save!
area = Worldarea.find_or_initialize_by(name: "Bethe")
area.region = "The Free Lands"
area.description = "Recently the village of Bethe has grown large enough to be considered a town. It is a welcome stopping point for those traveling between Mategor and Brana.  Bethe is known for its inn, The Cat’s Meow, that has dozens of cats keeping the inn safe from rodents and other pests. It is run by Leona Payne, a cat enthusiast who collects cats like others try to collect coins. Bethe is led by Carlyn Trevis, a retired farmer who turned to politics at an early age."
area.save!
area = Worldarea.find_or_initialize_by(name: "Birmingnok")
area.region = "The Free Lands"
area.description = "The town of Birmingnok is built around several iron mines that generate much of their trade. Mayor Kyle Markli runs the town and has a vested interest in the success of the town’s gladiatorial competition, The Iron Fist. Birmingnok is where many neighboring villages come to settle disputes."
area.save!
area = Worldarea.find_or_initialize_by(name: "Blackmer")
area.region = "The Free Lands"
area.description = "Despite its location on the shores of the Sea of Trath, Blackmer is more of a farming community than a fishing town. For the longest time, the town was run by an elder. In recent years, the town has become more community driven choosing to have oversight from a council of elected peers versus an individual. This has created some strife within the community, but also growth within the Blackmer economy. This has been a boon for the Chicken’s Roost – a tavern known for its tasty chicken noodle soup – as it has seen an influx of new customers following the trade routes between Lanternhall and Linhill. These travelers often stop by the weekly market to buy, sell, and trade before heading out.   "
area.save!
area = Worldarea.find_or_initialize_by(name: "The Charring Peak")
area.region = "The Free Lands"
area.description = "Stretching along the western side of the Scorched Wastes is a range of dormant-and-semi-active volcanoes that lead into the Grumbling Mountains. These peaks are said to be home to hundreds of goblin tribes that dwell in the lava tubes of the dormant volcanoes."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Creaking Copse")
area.region = "The Free Lands"
area.description = "Many of the trees in the Creaking Copse have died from blight over the years. Their dried up corpses creak eerily in the wind making travelers leary on their trip to or from the town of Marwick."
area.save!
area = Worldarea.find_or_initialize_by(name: "Culwick")
area.region = "The Free Lands"
area.description = "In times of darkness, many people in the Free Lands look to Culwick. Their eyes are not on Culwick’s leadership but rather the long-lasting candles they fashion from beeswax – their main source of trade. Culwick is led by Mayor Jessalyn Calor who has proven to be both kind and firm. The most notable place in Culwick is The Beehive Inn and the numerous farms that manage the bees."
area.save!
area = Worldarea.find_or_initialize_by(name: "Cumberland")
area.region = "The Free Lands"
area.description = "Cumerberland sits just east of the Quiet River on the trade route between Sharwood and Longmire. The town is primarily a farming community that trades grain, cheese, and cows at weekly markets. Konrad Mencher has served as the town’s leader for the past several years after the passing of his father, Ebner. The Cat & Fiddle Inn is where most travelers stay when passing through. It is run by Varsha Modugno, a half-elf with an adventuring past that she’d prefer not to talk about.  "
area.save!
area = Worldarea.find_or_initialize_by(name: "Darkwatch")
area.region = "The Free Lands"
area.description = "Named for the small keep that towers above the buildings there, Darkwatch is a resting point between Lanternhall and Kalon. It is led Mayor Serge Rosere, a former Captain of the Guard for Darkwatch. The town primarily trades in furs and jerky made from the bison that call the plains home. Travelers have a few options for resting. You can stay at the Rusty Tankard Inn or sleep in the Inn’s horse barn."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Deadfall Heights")
area.region = "The Free Lands"
area.description = "The Deadfall Heights are known for their sheer cliffs, unstable rock formations, and reputation for climbers falling to their untimely death below. Ancient scrolls are said to depict an underground waterway that connects the Heaving Waters to Lake Mategor, but this scrolls appear to be nothing more than tales told to embellish stories."
area.save!
area = Worldarea.find_or_initialize_by(name: "Deermeadow")
area.region = "The Free Lands"
area.description = "On the southern face of the Overwatch Peaks is a small town known as Deermeadow. Due to raiders and disease,the population of Deermeadow often fluctuates between village and town. There is only one inn, The Laughing Dryad, and it run by Penny Solomon who is known for being a little short with rowdy customers. It is no surprise that the main trade in Deermeadow is deer pelts and jerky."
area.save!
area = Worldarea.find_or_initialize_by(name: "Deep River")
area.region = "The Free Lands"
area.description = "The town of Deep River gets its name from the large, slow-moving river that meanders by. Leading the town is the People’s Council – a group of five elected residents who have earned the respect of the community. Of course, some claim it has nothing to do with respect and the same five continue to lead the town because nobody else wants to. Wool is the primary trade of Deep River who is known for making thick, wool cloaks."
area.save!
area = Worldarea.find_or_initialize_by(name: "Dryads Den")
area.region = "The Free Lands"
area.description = "There are no villages or towns near the small forest that rests between Loch Ericht and the Dancing Lakes. Civilization has wisely kept its distance from the dryads that call the forest home. The Dryad Queen, Cloversprig, does not like uninvited guests."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Dusk Cove")
area.region = "The Free Lands"
area.description = "The Dusk Cove is dotted with small fishing villages that stretch almost all the way from Saltmarsh to the base of Deadfall Heights."
area.save!
area = Worldarea.find_or_initialize_by(name: "Eagles Road")
area.region = "The Free Lands"
area.description = "Eagles Road is most known for an awful smell that seems to permeate through everything there. Of course, the residents there can’t smell it anymore and like it because outsiders tend to leave sooner. The town is led by Mayor Marvin Eckell. The main source of trade in Eagle’s Road is trained birds of prey used for falconry and hunting in general."
area.save!
area = Worldarea.find_or_initialize_by(name: "Esterwick")
area.region = "The Free Lands"
area.description = "The town of Esterwick benefits greatly from its proximity to Stormhaven as trade goods move from the Sea of Trath, to Stormhaven, and then through Esterwick. This often gives the merchants in Esterwick a large set of options to take along the road. The town is led by Rosh Elpor, a goblin very successful in his trade over the years. Despite his success, Rosh has had difficulty with various guilds trying to extort him. Some have gone as far as to attempt to kill him. He hasn’t let the threats and attempts on his life slow his success. There are several taverns and inns within Esterwick, but the most notable is Oztrmo’s Den run by Ettie Haines. Ettie makes a killer potato stew that warms your insides and makes sleeping at the inn all the more appealing."
area.save!
area = Worldarea.find_or_initialize_by(name: "Evenfort")
area.region = "The Free Lands"
area.description = "Evenfort sits as a gateway for the five small towns that dot the Songwind Peninsula that abuts the Spirit Shores. Of the five towns it is the largest and most defended with large walls and an active guard presence. The town is led by Sister Lea Everette, a former adventurer who ended up marrying Sinclair Everette – a wizard and member of the now retired “Larks” adventuring group. Evenfort’s primary trade is mid-sized ships that are built and launched into Starlit Bay. The craftsmanship on the boats leaves a lot to be desired, but the price is such that few complain."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Exiled Reef")
area.region = "The Free Lands"
area.description = "The Exiled Reef gets its name from the changing tides that create a land bridge from the shore to the island for a week each autumn. Many animals and unwary travelers have met their end trapped on the reef without the resources or shelter to escape."
area.save!
area = Worldarea.find_or_initialize_by(name: "Eyne’s Peace")
area.region = "The Free Lands"
area.description = "Barely a town, Eyne’s Peace has an almost village-like setting with buildings that sit on few dry points found in the Willow Hill forest. The town has no taverns, inns, or an official leader. It is instead run by mob rule with torches and pitchforks more common than true justice. The town’s name is derived from old lore that says the area was once a druidic sanctuary."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Fangbark Woods")
area.region = "The Free Lands"
area.description = "It is the pointed bark of the Fangbark trees that gives the forest its name. Travelers are warned to “stick to the trails if you don’t want to get bit.” The bark of the travelers is usually worse than the bite of the trees. Wandering off the trails just means you’re more likely to get lost than any serious injury."
area.save!
area = Worldarea.find_or_initialize_by(name: "Forlorn (Petrichor)")
area.region = "The Free Lands"
area.description = "Crumbling between the Heaving Waters and the Gray lake is the former city of Forlorn. Once a thriving city known as Petrichor it has been abandoned for many years due to a deadly plague that killed a majority of the residents there. Few dare to venture back into this place and the few that return speak of a large chasm in the center of the city that seems to stretch into the darkness of the underworld."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Forsaken Fields")
area.region = "The Free Lands"
area.description = "Travelers tend to go wide around the Forsaken Fields to avoid the nomadic Centaur tribes that call the plains home. Each of these tribes is led by a chieftain who will always side with a centaur over an outsider.  "
area.save!
area = Worldarea.find_or_initialize_by(name: "Frogden")
area.region = "The Free Lands"
area.description = "Along the shores of the Gray Lake is the small town of Frogden. The town is ruled by Jengar Winegard, a man held in fairly low regard for his poor leadership. Most citizens of Frogden are too worn out from work to pay much heed, but from time to time there is notable grumbling. Jengar’s wife, Kendra, is somehow always able to calm the masses down and they go back to their lives. The Bedry is the town’s only inn if you could call it that. It is more common room attached to a pub. The rates are good and most of the beer is cheap except the imported beer from Loch Eswich.  Frogden doesn’t have much to trade other than a few rare frogs used in alchemy. It is hardly enough to keep the town’s economy going."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Ghost Wood")
area.region = "The Free Lands"
area.description = "The Ghostwood is one of two significant forests that stretch along the Songwood Peninsula. The forest is most known for its namesake: Ghost Wood. This rare, dead wood is found glowing on the forest floor where it illuminates the darkness with its eerie light. The wood is said to be magical, but scholars dispute this as nothing more than a trick to sell the worthless branches. Almost unnoticed in the forest is a group known as the Guardians of Ghost Wood. These mysterious rangers are led by an elven druid, Glyn, who is said to have lived in the forest for many years."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Gray Lake")
area.region = "The Free Lands"
area.description = "It is said the ashen waters of the Gray Lake originate from beneath the crumbling city of Petrichor. Whatever the case, the murky waters taste have a mossy taste that takes some getting used to."
area.save!
area = Worldarea.find_or_initialize_by(name: "Hammerfell")
area.region = "The Free Lands"
area.description = "The city of Hammerfell hides on the southernmost tip of the Deadfall Heights along the shores of the Silver Coast. The city is a rowdy place divided into five unequal sections each ruled by a pirate lord. These pirate lords are always covertly vying to acquire other sections of the city to expand their power base. One section of the city that is considered to be a neutral zone is the docks. Here ships are built and repaired as well as cargo loaded and unloaded.  The most notable pirate in the city is Captain Everett Bloodsword, who keeps the chaos and infighting to a minimum. Any disputes between groups are typically brought to – and settled by – him. Hammerfell has been called the City of Thieves and rightfully so. They trade only in what they’ve managed to steal at sea."
area.save!
area = Worldarea.find_or_initialize_by(name: "Hyza")
area.region = "The Free Lands"
area.description = "The city of Hyza’s population has swelled in recent years as trade in the area continues to grow. Hyza is a major stopping point with a large central marketplace and daily bazaars. The city is led by Cass Trafford and his brother Cliff. While the two don’t always see eye to eye on everything, they usually end up doing what is best for the city and its permanent residents. While nothing compared to the chaos of the markets in Braeburn or Aelgate, the central market can be a bit chaotic. It is by no means lawless as guards make frequent patrols of the area."
area.save!
area = Worldarea.find_or_initialize_by(name: "Kalon")
area.region = "The Free Lands"
area.description = "Talia Windsborough has ruled Kalon since it was just a few cabins along the Gray Lake. She is credit for its success. Now a bustling city, Kalon is most known for their bows and arrows made of Moonwood. Most notable in the town is its center where colorful flowers surround a beautiful fountain. Most town meetings are conducted there during the warmer months. If you’re looking for a place to stay, The Belching Boar is often recommended over The Black Swan Inn. Either place is comfortable, but the Boar is the only place in town that serves Loch Eswing beer."
area.save!
area = Worldarea.find_or_initialize_by(name: "Knightsbridge")
area.region = "The Free Lands"
area.description = "In the center of the town of Knightsbridge is a sturdy stone bridge for which the town is aptly named. The bridge crosses a small river that branches out of the Quiet River in the western portion of the town. The town is led by Captain Jesse Ó Cochláin, a former soldier gone pirate hunter. Knightbridge is known for making some of the fastest sailing vessels on the shore, which it uses to capture pirate ships in the Mermaid Gulf. The most popular tavern in Knightsbridge is The Mermaid’s Smile, which has several realistic statues of mermaids carved from wood and painted."
area.save!
area = Worldarea.find_or_initialize_by(name: "Kingsbury")
area.region = "The Free Lands"
area.description = "Despite the noble name, Kingsbury is barely a town. It has a tavern “The King’s Hall” but no inn. Travelers either find a place to rest in various hostels hosted by residents or sleep in the tavern’s barn with the livestock. Kingsbury is led by Sister Kara Blinn and her husband John who is more of the town’s headman. It is noticeable the Blinns are more preoccupied with their 6 children than Kingsbury, but most residents understand and don’t fret the small stuff. Like Rhesda, Kingsbury trades primarily in fish as well as with wood carvings from both glowing Ghostwood and the common green-colored wood found in the Tainted Forest. Kingsbury is one of the five towns called the Sisters of Thalimas."
area.save!
area = Worldarea.find_or_initialize_by(name: "Lake Mategor")
area.region = "The Free Lands"
area.description = "Lake Mategor is a large freshwater lake formed from the waters that run off of the Deadfall Heights. The lake feeds the Still RIver that winds its way to through the Shadow Wood to Blackthorn lake near the city of Blackvern."
area.save!
area = Worldarea.find_or_initialize_by(name: "Lanternhall")
area.region = "The Free Lands"
area.description = "At the base of the Spidermoss Mountain Range is the mid-sized town of Lanternhall. The homes here are a-framed and sturdy – designed to take on the winter snow generated by the mountains and The Golden Strand waters. The residents are hearty folk who dress in leather and fur. Leadership comes from the town’s chieftan, Alfwine Haalgen – a strong man with a thick gray beard. Despite his age, he is a formidable opponent with his axe. There are no inns within the town of Lanternhall. Instead, travelers stay at the Longhouse – a large community hall with several fireplaces inside. Lanternhall trades in fur as well as both bison and fish jerky."
area.save!
area = Worldarea.find_or_initialize_by(name: "Linmarsh")
area.region = "The Free Lands"
area.description = "Linmarsh is a small town with most of its homes high within the trees of the Moonwood Forest. From the ground there isn’t much to see. in fact, you might event pass Linmarsh by if it weren’t for some of the buildings there. In the trees, ornate bridges connect various platforms and homes. Linmarsh is led by the former elven adventurer, Miras Rasrian. Miras is a respected member of the community who is known to for his benevolence toward Linmarsh residents. Some of the most intricate and beautiful baskets in the Free Lands originate from Linmarsh, which exports them as a main source of trade. Below the town, the residents grow mushrooms and potatoes as local food sources. Many grains are imported from neighboring towns. The town’s only inn, The Bunk House, is run by Taa Silvermoon, an elven priestess of Enoon."
area.save!
area = Worldarea.find_or_initialize_by(name: "Llanshroud")
area.region = "The Free Lands"
area.description = "The town of Llanshroud takes advantage of its location on the Still RIver to use boats for trade with the City of Blackvern, which quite a distance from the town in the Shadow Wood. The towns leader, Elizabeth Bitterheart, believes in the river trade, but doesn’t want to lose sight of land trade with Birmingnok or Hammerfell. Her strong business sense has kept the town thriving, but has come under opposition from some of the residents who would rather not deal with trade. Especially any trade with Blackvern as they allow Deep Elves to live there. Llanshroud’s primary trade is wool acquired from the numerous sheep farms they operate."
area.save!
area = Worldarea.find_or_initialize_by(name: "Loch Ericht")
area.region = "The Free Lands"
area.description = "Loch Ericht is a body of water south of Shadowhall that ends just before reaching the Sea of Trath. Bards tell tales of a sea monster that dwells in its depths, but most who hear the tale are certain it has been embellished more than once."
area.save!
area = Worldarea.find_or_initialize_by(name: "Loch Eswich")
area.region = "The Free Lands"
area.description = "Suffering from a damaged economy, the buildings in Loch Eswich are weathered and somewhat unkempt. The residents of the Loch have been struggling for years to recover from a series of setbacks that destroyed the crops necessary to make beer. The reluctant Gareth Stillbrook was appointed Leader of the Loch when Anya Goldmoon resigned after the fires. Since then it would appear the Loch is slowly returning to the days when it thrived from the sale of what many consider the best beer in the realm. The main export of Loch Eswich is beer, but there is still plenty to be had at its three main taverns and inns: The Busty Barmaid, The Fresh Flask, and The Rusty Crown Inn."
area.save!
area = Worldarea.find_or_initialize_by(name: "Lowescroft")
area.region = "The Free Lands"
area.description = "Lowescroft is a small town that sits about halfway between the cities of Hammerfell and Blackvern. Its main source of trade is Plains Doe skins which are often used to make warm, but lightweight cloaks and hoods. The town is led by Mayor William Redit. The two major stopovers in the town are Kraun’s Place and The Laughing Dragon."
area.save!
area = Worldarea.find_or_initialize_by(name: "Longmire")
area.region = "The Free Lands"
area.description = "Longmire is just east of the Quiet River – a long body of water that snakes from the Overwatch Peaks down to the Mermaid Gulf. The city is led by Janek Amadori, a jovial fellow with a sincere love for the people of the city. Janek can often be found at the Boar’s Head Inn – a quaint little place with a deck that overlooks the river. Longmire trades in a variety of things, but is best known for lightweight boats made of reeds from the Whistful Bog."
area.save!
area = Worldarea.find_or_initialize_by(name: "Marwick")
area.region = "The Free Lands"
area.description = "The town of Marwick is best known for its strong horses which it captures from the plains to the west, trains, and then trades. The town is led by Mayor Gorin Wornstone. It is best known for its annual Knights Tournament that includes jousting and armored combat."
area.save!
area = Worldarea.find_or_initialize_by(name: "Mategor")
area.region = "The Free Lands"
area.description = "Lake Matagor provides everything the residents of Mategor need. The town is picturesque and practical mixing gardens and flowerbeds to give it a unique feel. Just outside the town along the shore of the lake is Mategor’s most notable feature: the tower of the wizard Rathloak. Town residents steer clear of the tower and the strange noises and explosions that come from it. The wizard has been seen coming to town from time to time to gather things at the weekly market. Leading the town is Alex Bluehelm, a retired fighter who isn’t very impressed with wizard, but isn’t overly concerned either. The town tends to do a lot of trading with Llanshroud selling pelts and jerky acquired from Moorshaven."
area.save!
area = Worldarea.find_or_initialize_by(name: "Mermaid Gulf")
area.region = "The Free Lands"
area.description = "It is said that long ago a large portion of the Mermaid Gulf was land above water with a beautiful city known as Mistalav. As the story goes, the citizens of Mistalav angered the gods who then sunk the city and cursed the residents never to walk on land again. Whether the legend is true or not merfolk of Mistalav often trade with specific ships from Knightsbridge and smaller villages in the gulf."
area.save!
area = Worldarea.find_or_initialize_by(name: "Merrymount")
area.region = "The Free Lands"
area.description = "The town of Merrymount is led by Mervin Spence, a retired ship captain that used to sail for The South Sea Trading Company based in Starwood Bay. Mervin took over the town of Merrymount by accident when the former leader passed away suddenly. The most notable place in Merrymount is The Happy Peddlar – a shop with an eclectic mix of supplies and trade goods influenced by Mervin’s trade experience. The town has grown under its new leadership and the people seem happy."
area.save!
area = Worldarea.find_or_initialize_by(name: "Moonwood Forest")
area.region = "The Free Lands"
area.description = "The younger trees of the Moonwood forest usually grow straight to the sky making them ideal for crafting arrows that fly true. Aside from this, the Moonwood Forest could be like any other in the Free Lands.  "
area.save!
area = Worldarea.find_or_initialize_by(name: "Moorshaven")
area.region = "The Free Lands"
area.description = "Standing at the edge of the Skeleton Fields along the shores of the Heaving Waters is the quiet town of Moorshaven. The town’s leader, Gi’bur Stoneshaper, is a gruff dwarf with a love for the mountains. When he isn’t dealing with the problems that arise in town, he is off exploring the Deadfall Heights. Some residents claim he is searching for someone or something specific, but Gi’bur just reminds them he is a dwarf and the mountains remind him of home. In Gi’bur’s absense the town is overseen by Sara Tolwen, one of Gi’bur’s former adventuring companions who was also once a druid Keeper of the Flame. The only tavern in Moorshaven is The Chipped Chalice. It usually has a few rooms available for a reasonable rate. The main trade of Moorshaven is bison pelts and jerky which is obtained from the Skeleton Fields."
area.save!
area = Worldarea.find_or_initialize_by(name: "Morsham")
area.region = "The Free Lands"
area.description = "Morsham is a beautiful town with an inviting atmosphere. With its birch wood rooftops, redstone walls and kind residents, many feel at home there. Most notable is stone tower built near the Heaving Waters that serves as a beacon for travelers in the night. The town is led by Mayor Oisin Weye who has served as mayor most of his life. His brother, Remus is the town cobbler and a master of his art. Morsham’s primary trade is pigs, which are often traded in the neighboring city of Loch Eswich."
area.save!
area = Worldarea.find_or_initialize_by(name: "Naria")
area.region = "The Free Lands"
area.description = "On the southern shore of the Heaving Waters is the town of Naria. The buildings here are fairly well maintained, the streets clean and patrolled by a diligent guard, and the town’s coffers filling steadily with profits made from the sale of Narian Ale after the tragic fires in the neighboring city of Loch Eiswich. The town has been led by Mortimer Grayson, the man who history will say helped put Naria back on the map. Most notable place in Naria is the Brewery – a popular inn within the center of town that also creates Narian Ale. The Inn is run by Addi Mercia who took over the inn after her father’s passing over 15 years ago and has steadily worked to make it more profitable."
area.save!
area = Worldarea.find_or_initialize_by(name: "Querencia")
area.region = "The Free Lands"
area.description = "When you mention Querencia to anyone on the Songwind Peninsula the first thing they’ll talk about is the Naughty Nymph. Once you’ve seen the Naughty Nymph it can never be unseen. Fortunately, there are other, more tame, taverns and inns in Querencia like The Yawning Rabbit or The Broken Arrow Inn. The town is led by Sister Tina McGavern and her wife Ailee. While fishing is a staple for trade, Querencia is also known for crafting some of the finest canoes in the Free Lands. Querencia is one of the five towns called the Sisters of Thalimas."
area.save!
area = Worldarea.find_or_initialize_by(name: "Rhesda")
area.region = "The Free Lands"
area.description = "The town of Rhesda sits along the narrow road that winds between Kingsbury and Ardeth. It is a resting point for those traveling to and from the neighboring town of Ardeth. Rhesda is led by Sister Adri Haywen who serves as the town’s Mayor. The town’s primary trade is fishing, but they are most known for the woodworking done using glowing wood found in the abutting Ghostwood forest. Some believe the wood to have magical properties, while others claim this is a rumor made to inflate the price. The Drunk Duck and the House of Pots are two popular inns found here. Rhesda is one of the five towns called the Sisters of Thalimas."
area.save!
area = Worldarea.find_or_initialize_by(name: "Pela")
area.region = "The Free Lands"
area.description = "The town of Pela is led by Lord Lyod Chase.  The self-declared lord is known for being a bit hot under the collar and difficult to deal with. More than once has he had someone thrown into prison for rubbing him the wrong way. The people of Pela tend to walk on eggshells when Lord Chase leaves his small stone keep, but that isn’t often. After two unsuccessful assassination attempts, Lord Chase doesn’t visit the town as much as he used to. At least not without a large contingent of guards."
area.save!
area = Worldarea.find_or_initialize_by(name: "Saltmarsh")
area.region = "The Free Lands"
area.description = "A town of Saltmarsh is a small, but respectable fishing town built on the wetlands of the Misty Marsh. The buildings are flamboyant with wheat straw rooftops, elm wood walks, and murky ponds. The main attraction here is an abandoned quarry located just 4 miles east of town. Overlooking the quarry atop a high hill is the foreman’s home decayed, forbidden, and some say most definitely haunted."
area.save!
area = Worldarea.find_or_initialize_by(name: "Seabrook")
area.region = "The Free Lands"
area.description = "A town of seabrook is a small, but growing thanks to the diligence of its leader, Mayor Landon Holt. Landon is responsible for growing trade with neighboring towns and for utilizing the Sea of Trath to further strengthen their reach. The Stowaway is a popular inn that sits on the side of the land bridge that touches the sea."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Scorched Wastes")
area.region = "The Free Lands"
area.description = "It is said the desert was once a lush forest before they became victim to the Grumbling Mountains found along their border. The Scorched wastes are now an almost inexplicably dry wasteland nearly devoid of life. Of the creatures that call the wastes home, the fire scorpions find their way into the clothing of sleep travelers only to awake them with a sting that burns like fire for just over a day."
area.save!
area = Worldarea.find_or_initialize_by(name: "Shadowhall")
area.region = "The Free Lands"
area.description = "When one thinks of Shadowhall the first place that comes to mind is the Tale Tales Tavern. The establishment is more than a simple tavern. It is a training ground for some of the best bards in the realm. The town is best known for its library, which contains numerous tales and stories shared by bards from every direction. The most recommended inn there is called the Wayfarer’s Rest owned by Shonda Triggs. It’s a clean place with good drinks and filling food. The town’s leadership comes from Shania Thompsett, a classically trained bard who can play just about any instrument. Every summer, Shadowhall hosts an outdoor gathering of Bards known as The Opus. This is a chance to feast, tell tall tales, and have fun."
area.save!
area = Worldarea.find_or_initialize_by(name: "Shadowhall Forest")
area.region = "The Free Lands"
area.description = "Shadowhall forest is a thick wood that grows north of the city of Shadowhall."
area.save!
area = Worldarea.find_or_initialize_by(name: "Shadow Wood")
area.region = "The Free Lands"
area.description = "The Shadow Wood surrounds Blackthorne Lake and much of the city of Blackvern who is slowly chipping away at the forest. The wood earned its name because the thick tree cover keeps the forest cool and in shadow."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Shady Waters")
area.region = "The Free Lands"
area.description = "The Shady Waters is a river that flows from the Grumbling Mountains down to Purity Lake. At its origin, the river is known for having dirty looking water that becomes more and more clear as it approaches Purity Lake in the east."
area.save!
area = Worldarea.find_or_initialize_by(name: "Sina")
area.region = "The Free Lands"
area.description = "Sina is a small town that sits on the northern shore of the Gray Lake. It’s a stopover for traders making the trek between the City of Wystone and Hyza. The town is led by Mayor Sharalyn Carley Bain and is most noted for its harma crop that can hardly grow fast enough to keep up with demand in the neighboring city of Wystone. The town of Sina is mostly human with a larger than normal population of Suhk. The Fins and Tales inn is the most notable establishment in Sina. It is currently run by Mara Cookson – a fourth generation owner of the inn."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Sisters of Thalimas")
area.region = "The Free Lands"
area.description = "Ardeth, Rhesda, Kingsbury, Querencia, and Evenfort are five towns that stretch along the Songwind Peninsula that pierces the Spirit Shores. Each town is run by one of the five daughters of Thane Haywen Thalimas. While Haywen’s wife, Asterei, never bore him a son, his daughters never disappointed him. Each went on to form notable towns along the peninsula."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Skeleton Fields")
area.region = "The Free Lands"
area.description = "War and death is how the Skeleton FIelds earned its name. With a little effort it is possible to find the bones of a fallen soldier or creature almost anywhere on the plain."
area.save!
area = Worldarea.find_or_initialize_by(name: "Squall’s End")
area.region = "The Free Lands"
area.description = "North of Surrock’s Maw is the small town of Squall’s End. The town is run by a council headed by Sheriff  Rofred Willington III. Under the sheriff’s command are two dozen men and women who patrol the town both day and night. The job is fairly uneventful as most of the town is law abiding. The town has one inn, The Krazy Kobold, which is the rowdiest place in town.  "
area.save!
area = Worldarea.find_or_initialize_by(name: "Starwood Bay")
area.region = "The Free Lands"
area.description = "In all of Stone Harbor, Starwood Bay is the largest settlement. It is led by Devi Kennard, an aristocratic woman originally from Stormhaven who married the city’s former leader, Emerson Kennard. Emerson met his untimely end in a shipwreck during one of the Sea of Trath’s freak storms leaving Devi to rule. Devi was born into wealth as her parents both rule over the city of Stormhaven to the northwest. There are several taverns and inns within Starwood Bay, but the most noteworthy is The Black Barnacle – a tavern overlooking the water near the docks. Starwood Bay has many imports and exports, but is best known for Stonehead fish cooked in batter and served with sliced potatoes.  "
area.save!
area = Worldarea.find_or_initialize_by(name: "The Still River")
area.region = "The Free Lands"
area.description = "The Still River is a slow-moving river that flows from Lake Mategor and through the Shadow Wood to Blackthorn Lake near the city of Blackvern."
area.save!
area = Worldarea.find_or_initialize_by(name: "Still River Mill")
area.region = "The Free Lands"
area.description = "Still RIver Mill is a small town at the base of the Windy Mountains. The Mountain Home Inn is where most travelers stay when they visit and each is sure to have a bowl of beef stew made by its proprietor Cate Gibbs. The town is led by a council consisting of 10 members of the town who constantly disagree over almost everything. This has slowed progress in the town and resulted in more than one fued."
area.save!
area = Worldarea.find_or_initialize_by(name: "Stormhaven")
area.region = "The Free Lands"
area.description = "The prosperous city of Stormhaven has been ruled for generations by the Harford family. Currently ruling is the beloved Kacie Harford along with her husband Osborn Harford III. Their son Ansel is next line line to take over the city and their daughter, Devi, was married off to the former leader of Starwood Bay, Emerson Kennard. Emerson perished in a shipwreck during a one of the Sea of Trath’s freak storms leaving Devi to run the city. Like Starwood Bay, Stormhaven handles a lot of their trade through the South Sea Trading Company, which has a base of operations on the Stormhaven docks as well. There are two taverns of note in Stormhaven: The Reveling Wench, which is owned by Stan Albinson and the Albatross owned by Kory Waterman. There has been a friendly rivalry between the two establishments over the years as to who has the best silver serpent players. The Reveling Wench has held on to the champion title for the past several years."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Tainted Forest")
area.region = "The Free Lands"
area.description = "The Tainted Forest is one of two significant forests that stretch along the Songwood Peninsula. While the forest itself is nondescript, the sap from some of the trees has been useful in some alchemical creations."
area.save!
area = Worldarea.find_or_initialize_by(name: "Tallo")
area.region = "The Free Lands"
area.description = "Between the Whispering Pine forest and the Heaving Waters, the town of Tallo finds peaceful solace. Here the artful residents practice the art of glassblowing, pottery, and most importantly slavery. Captured slaves are worked in the iron mines that dot the hills separating the town from the nearby pine forest. The town’s leader, Torin Hagmer, is as efficient as he is ruthless. Residents don’t seen to mind, however, as slaves handle the hard work while they enjoy the arts. Aside from slaves, the major trade in Tallo is potion bottles made from rare glass and pottery. The town is protected by hired guards who also keep the slaves at work in the mines."
area.save!
area = Worldarea.find_or_initialize_by(name: "Urda")
area.region = "The Free Lands"
area.description = "Between the Gray Lake and the Fankbark Woods is the small town of Urda. Like, Sina, it is a resting place for traders making the long trek between Hyza and Wystone for trade. The town’s leader, Percival Waterman, has been struggling to grow the town with no success. Travelers come and go but few wish to settle down. Some years Urda is a town while others its population is a just large village while residents move off to other places looking for a more prosperous life. Urda has no official inn and many that stop here set up camp just outside the town."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Werewood Forest")
area.region = "The Free Lands"
area.description = "For as long as anyone can remember, residents of Loch Eswich have always told their children to behave or the wolfman of the Werewood Forest would take them at night. Aside from spooky tales, the forest itself is nothing out of the ordinary."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Whispering Pines")
area.region = "The Free Lands"
area.description = "Separating the Heaving Waters from the Scorched Wastes is the Whispering Pines forest. While the trees themselves are unusual for the area, there is nothing else notable about them. Warm breezes from the wastes and cool breezes from the Heaving Waters create an almost whisper-like sound from the trees."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Whistful Bog")
area.region = "The Free Lands"
area.description = "On the eastern bank of the Quiet River across from Longmire, the Whistful Bog is home to a variety of fauna and flora. The puff reeds found here are strong and when properly dried can be used to fashion fairly reliable rafts. Locals know to avoid harvesting the reeds in areas with reed huts as this marks the home of the Bulrogs – a highly territorial race of frog-like humanoids."
area.save!
area = Worldarea.find_or_initialize_by(name: "Willow Hill")
area.region = "The Free Lands"
area.description = "Willow Hill is a large swamp-like valley dominated mostly by willow trees. Because of this, the large valley remains largely uninhabited except a few small villages found there."
area.save!
area = Worldarea.find_or_initialize_by(name: "Winterdell")
area.region = "The Free Lands"
area.description = "This small town hides within the Northern Wilds next to the Everreach River that flows gently down from the Northern Expanse during the warmer months of the year. The town is best known for Odd Goats Trading Post, a busy shop run by Wildren Ozkeh Dholk that supplies needs for fur trappers and adventurers."
area.save!
area = Worldarea.find_or_initialize_by(name: "Wystone")
area.region = "The Free Lands"
area.description = "Wystone is a smaller than average city that resides between the Whispering Pines forest and Gray Lake. The buildings here are well kept and the streets always clean. Unlike most cities that have a large mixture of races and cultures, Wystone is predominantly Sukh. The city is led by Imam Salta, a venerable and wise Sukh originally from the capital city of Khemzutaten.  Salta is greatly respected and well known in the region. Residents of the city take great pleasure in frequenting harma lounges where the indulge in this refined and mildly addictive herb. There are many harma lounges, inns, and pubs in Wystone but most notable is Baalzepub run by Nami Manaf. It is one of Wystone’s larger lounges and one of the few that allows non-Sukh."
area.save!
area = Worldarea.find_or_initialize_by(name: "Yoht Paradise")
area.region = "The Free Lands"
area.description = "This valley paradise begins at the base of the Windy Mountains. It is mostly unexplored and filled with lush trees, rare plants, and land that seems to wind deeper and deeper into the earth. Most notable in the valley are large territorial gorillas that have taken many explorers by surprise."
area.save!
area = Worldarea.find_or_initialize_by(name: "Zyre")
area.region = "The Free Lands"
area.description = "On the western bank of the Heaving Waters just below the Whispering Pines forest is the town of Zyre. This walled town is led by Hubert Sommer and is most known for the fantastic stringed instruments they create."
area.save!

area = Worldarea.find_or_initialize_by(name: "Cobal – City of Aquaducts")
area.region = "The Savage Heights"
area.description = "Known for it’s expansive and finely crafted irrigation network; skilled masons redirect seawater from the Mermaid Gulf into massive clay holding tanks filled with a finely woven mesh of purification, from there the freshwater is run through the town and out to the fields. It’s people also make finely woven woolen products that fetch a high price in any market."
area.save!
area = Worldarea.find_or_initialize_by(name: "Sangredulce – Land of Tombs")
area.region = "The Savage Heights"
area.description = "A dry, dusty town outside of the Razorfern Labyrinth. Known for a love of music and bustling trade with the Wildren living in Crocodile Cove, many residents of Sangredulce are also skilled carvers of red abalone – a type of shell only found in the toxic waters of the Red Tide Cove, and then only harvestable certain times of the year when the water is safe to venture into. The town also draws many faithful of Dedrot to see the ornate traditional mausoleums in the center of the city."
area.save!
area = Worldarea.find_or_initialize_by(name: "Xochillizul – The Town of Blue Flowers")
area.region = "The Savage Heights"
area.description = "The closest town to the Savage Heights, not quite in the Am’Kaax Jungle, but near enough that everyone knows the dangers of that dark and spider filled wood: trees that bleed, massive anacondas bent on devouring any unlucky adventurers, and twining paths that circle back a thousand times until you are lost and scared. It’s better to not go into the woods at all and simply stay in this village of potters and crafters. The town derives its name from the curious blue flowers that only grow nearby and will wither away if transplanted too far."
area.save!

area = Worldarea.find_or_initialize_by(name: "Madrona")
area.region = "Faeden"
area.description = "Madrona is the capital, and only major settlement, of Faeden. Here the Eldar’El Wise Council has sat in their grand marble chamber since the ancient days. Eldar’El society is largely based on reputation, tradition, station, and education, and so there is little reason for settlements to spread across the region. Instead, Madrona simply expands gracefully, ever greater. It covers the peninsula, nearly meeting the Mourning Wood to the west and the Hysh Tops to the north. The beauty and opulence of the architecture in this ancient city is fabled throughout the continent. Clean and bright, socialist tendencies support even the lowest classes of society for the purpose of ensuring that crime is a rarity despite being such a large city. The schools, libraries, and guilds here stretching back across the centuries are often considered the creme de la creme for those who seek the various paths of knowledge."
area.save!
area = Worldarea.find_or_initialize_by(name: "Siren's Song Bay")
area.region = "Faeden"
area.description = "This bay is where Sea Silk is made. The secret to making it is a closely guarded secret, and no one but the craftsmen themselves know exactly what it is made of. Rumors abound across the continent, and some even say it is made from the hair of mermaids themselves. If you believe that kind of thing, that is. Siren’s Song also provides a large part of the food that supports Madrona, as most of its agriculture is oceanic. When the city was smaller it used to be easily self-sufficient, but now that it spreads up and down the bay it would be difficult if not for the support of the trading caravans that come to the city."
area.save!
area = Worldarea.find_or_initialize_by(name: "Hysh Top")
area.region = "Faeden"
area.description = "It is said that ancestors named these mountains for the sound the wind makes when it rushes through them. Sometimes, if you are quiet, it almost sounds as though the wind is whispering to you. Scholars theorize that the wind might be speaking in an ancient language, long forgotten. Some relentlessly pursue the history of this tale and seek to translate what the wind is whispering. Some refuse, and insist that it was forgotten for a reason."
area.save!
area = Worldarea.find_or_initialize_by(name: "Mourning Wood")
area.region = "Faeden"
area.description = "The Mourning Wood is where the Ceremony of Passing is performed when an Eldar’El passes on. The first stages of the ceremony are performed at the temple of choice of the deceased, and a procession of mourners bring the ashes to the wood to return the deceased’s body to nature and their soul to the Aether. The ashes fertilize the soil, and the flora and fauna here are some of the most beautiful and healthy of any forest on the continent. Centuries of ceremonies have thinned the veil in this forest, and some say if you travel there at a certain time alone you may be able to contact a deceased loved one who was properly commemorated here. No one can agree on which time is the proper one, though, and many do not try."
area.save!
area = Worldarea.find_or_initialize_by(name: "Isles of the Forgotten")
area.region = "Faeden"
area.description = "The crumbling ruins on these islands hold a dark and foreboding past. Many ages ago, a legendary necromancer ravaged the continent, taking many lives under his dark spells. These ruins were once strongholds of his. Some say the Divines themselves wiped his memory from this world, but these islands are still tainted with the echoes of his dark work. Bones of every race can be found here, and no one can say how many times they were buried."
area.save!
area = Worldarea.find_or_initialize_by(name: "Behahn's Rise")
area.region = "Faeden"
area.description = "In the shape of these mountains, some say sleeps the indisputable shape of a dragon’s corpse. In time immemorial Behahn was a mighty dragon who lived here. He terrorized the region under his reign, and a mighty warrior of the Elves’ land-bound Fae ancestors rose up to challenge him. The outcome of the conflict is unknown, and unfortunately for her memory, the warrior’s name has been lost to time. But Behahn still sleeps on his Rise, and no one has seen any dragon since."
area.save!
area = Worldarea.find_or_initialize_by(name: "Evergreens Mountains")
area.region = "Faeden"
area.description = "Here is where legend says the original Fae made contact with our world. Seasons do not change here, and the Aether cannot be tapped into to make magic. No animal lives here, and yet the island is not silent. Similar to here, there are a few rare, undisturbed natural spots on the continent where scholars theorize the Fey could still be reached. The Wise Council has forbidden anyone to try until research proves whether or not contacting the Fey is an intelligent decision."
area.save!

area = Worldarea.find_or_initialize_by(name: "Aurel")
area.region = "Devaria"
area.description = "Capitol city and major trade center of the West. Named after M’rzzid Aurel, the Dep’El leader who led the Dep’El away from the Dale’El and began turning trade posts and stopping grounds into a true nation following their banishment. A rarity for De’El settlements, the capitol is largely above ground, though still keeping to the simple but elegant style of the Dep’El. The ever practical Dep’El recognized early on that they would need to trade with other races if they wished to thrive, and other races seemed leery of life underground. However, even in their diverse capitol, the Dep’El keep to themselves. The above ground portions of Aurel house the mechant’s square where you will see more than a few dwarven craftsmen selling their goods. Temple Square boasts houses of worship to each of the deities. Although the Dep’El are not religious by nature, they do find that easy access to temples makes foreigners more at ease, and therefore more willing to stay longer in Aurel. The clergy of these temples are by and large human and dwarven, ever hopeful that they may convert the Dep’El to more regular religious observance and every once in a while a Dep’El joins the clergy with Ororo and Nenya being the preferred deities. Aurel also houses the Dep’El High Senate, currently presided over by its Chancellor, Lady R’ytalla Tiremere, a stern and humorless but fair and efficient ruler. The Dep’El Senate controls matters of national importance, but tends to leave the managing of individual towns and cities to their respective leaders. Each has the option of sending a representative to Aurel, and most find it foolish not to do so, however, they serve as advisors only. Decisions are the ultimate responsibility of the Chancellor and her two chief advisors, a member of the military officer elite, currently General K’ratiel Javan, known for his forward leaning and aggressive approach to conflict, especially goblins, and a member of the Mage Collegium, currently D’varra Kyrella, old, wise, and biting both in her wit and her patience for fools. At any time, the representative body may call for a vote of no-confidence, resulting in the removal of all three, but such action is not taken lightly. Although the Senate does not meddle in the affairs of the other settlements, they also have the power to unilaterally remove leaders. Essentially, they wait to see if a leader will fail and, if they do, the Senate is swift and unforgiving its handling of incompetence. Remembering the origins of their race, a leader removed for incompetence or actions that threaten the Dep’El as a group is given the option to “do the honorable thing” and end their own life. If they refuse, their end is painful, but swift. The more exclusive neighborhoods of Aurel lie deep within the ground. Access is heavily restricted and getting an invitation to dine in any of the fine restaurants in Twilight Square is a great honor and a sign that you have an ally for life in your host. Invitations into Dep’El estates, however, are almost never extended to those of other races. To be invited into a Dep’El home is to be considered an equal. The inherent arrogance of the Dep’El means this is not an easy accomplishment."
area.save!
area = Worldarea.find_or_initialize_by(name: "Eldar")
area.region = "Devaria"
area.description = "The Crossroads. A waypoint after the basin Eldar is a blending of Dep’El and Dwarven culture. This was the first true settlement of Devaria, and many of its original caves and cliffside holds remain as they were, the product of ancient dwarven techniques lost to the ages. Eldar is unique in that it is the only Devarian city to be ruled jointly by a Dep’El and a Dwarven co-governor. Grainzeya T’ressan and Dworkin Ironfist are an unlikely, yet effective team. The town is not particularly large, but great stone gates carved into the sides of the Thundering Mountains suggest there may be more to Eldar than meets the eye. However, these gates are well guarded and access is heavily restricted."
area.save!
area = Worldarea.find_or_initialize_by(name: "Dawnfall")
area.region = "Devaria"
area.description = "The oasis. The northern plains leading to Aurel are dry stretches of sandy desert with picturesque dunescapes and some of the most dazzling night skies in Hyraeth. They are also hotter than the sun. the Dep’El of this region are purely noctournal, staying deep within their underground homes during the hottest parts of the day. The city of Dawnfall is build around a beautiful oasis of date palms and desert flowers situated beside a grand plateau into which is carved the majority of the city. The current governor, Lady-Governess Nazaetha Dwerran, is quite old and her successor is a matter of hot debate."
area.save!
area = Worldarea.find_or_initialize_by(name: "Timbermeadow")
area.region = "Devaria"
area.description = "The breadbasket of Devaria, Timbermeadow has dense groves of trees, plentiful orchards, and fertile fields, as well as an expansive network of caves. Because Dep’El consider farming a particularly lowly profession, many landowners in Timbermeadow prefer to hire laborers of other races, thus the “gentleman farmer” lifestyle is common here. Sport hunting is common, and some of the finest bows in Hyraeth are crafted from Timbermeadow trees. According to the Dep’El, these bows put any made by the Dael’El to shame. Lord F’gazzan Herase rules here. He is a soft spoken but intense man fond of archery, hunting, and music. A number of talented bards serve in his home."
area.save!
area = Worldarea.find_or_initialize_by(name: "Highbreach")
area.region = "Devaria"
area.description = "Devaria’s fishing capitol. Situated in the center of a calm bay, ships from Higbreach have little difficulty catching fish, and even the youngest children learn to cast lines from atop the high cliffs. As keeping livestock underground is difficult, Highbreach provides most of Devaria’s meat. Evenings are quiet times spent telling tales and singing the songs of fishermen and many in Devaria view those from Highbreach as less cultured (though bear in mind this is by elven standards, so even an uneducated Highbreach fisherman can play at least two musical instruments and recite at least four sea ballads). Their current governor, Captain W’razz Fwanath, has recently sought the advice of High Priestess L’orenalia Druana, as some of his older fisherman have been bringing back strange tales, even beyond the usual sea stories of strange lights in the water and shadowy figures scaling the cliffs."
area.save!
area = Worldarea.find_or_initialize_by(name: "Kirst")
area.region = "Devaria"
area.description = "In thanks for teaching them the ways of stone, the Dep’El gifted the dwarves whichever parcel of land they wished for their own use. The dwarves chose Kirst, an area rich in metal and gemstones, and thus, the city of Kirst has flourished as one of the wealthiest cities in Devaria, second only to Aurel. Some might think that the success of Kirst would create resentment on the part of the Dep’El. They would be wrong. A bargain is a bargain, and the Dep’El respect the autonomy of the dwarves. Sea patrols along the Windy lake include Kirst in their territories and the mostly land-dwelling dwarves know that should trouble arise on Windy Lake, they can rely on the Dep’El for protection. Great firetowers line the coast in the event the dwarves would need to reach Frostwind, but so far no one has tangled with the wealthy dwarves of Kirst. Dorian Umberstead leads the town, with his sister Ursella serving as his emissary to Aurel."
area.save!
area = Worldarea.find_or_initialize_by(name: "Frostwind")
area.region = "Devaria"
area.description = "A Laketown on the Shore of Windy Lake. Not quite enough timber to compete with the Laughing Thicket. Not quite enough shipyards to compete with Wildemore. Not Quite enough fish to compete with Highbreach. Frostwind is considered by most to be the backwoods cousin of the Devarian towns. Left content in its mediocrity for decades by its previous leader, Governor R’nall Ferazzan, his daughter, R’nalla, is not so content to be second place. She’s turned her eyes north to Kirst and, while no Dep’El would be bold enough to violate the ancient treaty with the dwarves, those mines are quite tempting."
area.save!
area = Worldarea.find_or_initialize_by(name: "Stonewatch")
area.region = "Devaria"
area.description = "As the name implies…. they watch… the stone. Legends say that once this was a mighty military stronghold, but it’s location seems to belie that claim. There are, however, great stone doors carved into the cliffs, and a mysterious order, the Knights of the Stoneguard, keep vigil over them. No one knows what’s behind these doors and the Knights of the Stoneguard intend to keep it that way. General T’razzan Drallano oversees the region."
area.save!
area = Worldarea.find_or_initialize_by(name: "Wildemore")
area.region = "Devaria"
area.description = "The shipbuilding capitol of Hyraeth. Wildemore is little more than a giant shipyard, with many of the finest vessels in all of Hyraeth crafted in its harbors. Because of their need for a constant supply of wood, the city leader Evarrina Fr’annas makes an effort to appear more tolerant of her Dael’El sympathizer colleagues, but Dael’El who try to enter the shipbuilding trade are promptly shown the door. Innovation is a much desired trait in Wildemore, and each year the city holds a great sailing race where young Dep’El test vessels of their own design."
area.save!
area = Worldarea.find_or_initialize_by(name: "Oceancrest")
area.region = "Devaria"
area.description = "The jewel of Devaria, Oceancrest is a warm seaside town and a major trading port. Built on an expanse of canals, there are few roads in Oceancrest and most traffic is done by slender gondolas. The gondolier’s guild is fiercely protective of its trade and those attempting to offer unlicensed rides often find themselves in a canal with two broken knees. There are two sets of docks in Devaria. The western docks enjoy calmer waters (ironic, as they are the side most exposed to the open ocean) and cater mostly to luxury goods. Thus, the mercantile districts and residences on this side tend towards the opulent. The eastern docks house the “working docks.” Here, more mundane trade passes through constantly busy docks and those brave enough to navigate shipwreck current depart for the south. The eastern regions house fish markets, salt quarries, and other “blue collar” employment. Of all the Dep’El cities, those who call Oceancrest their home are the most likely to be seen living above ground, though even in Ocean crest, the homes are “one story” villas, with the bulk of the residence carved into expansive basements. Because of this, few Dep’El live along the shore where the water table is the highest. Instead, the scenic coastline of Oceancrest is home to all manner of races with one notable exception. You will not find a Dael’El. Even Dael’El mariners keep to their own vessels and make their port calls brief. In addition to its bustling trade, Oceancrest produces the finest pearls in Hyraeth. Each summer the Dep’El host the Feast of the High Tide which, in addition to the usual festivities of any city-wide celebration, includes a pearl fishing contest. More than a few drunk revelers have lost their lives trying to reach the deepest waters to retrieve these precious pearls. Oceancrest is presently ruled by T’ryzzan Furanno, a shrewd merchant with a jovial nature. His tastes tend towards the lavish and his good humored nature has led to rumors that he is, in fact, a human who put on false ears and painted his skin. His fondness for human company, particularly at the card table, doesn’t help this."
area.save!
area = Worldarea.find_or_initialize_by(name: "Woodguard")
area.region = "Devaria"
area.description = "A medium size settlement deep in the woods. The Woodguard Dep’El have the most similarity with their lost brethren the Dael’El. Because of this, many other Dep’El see them as weaker, longing for the past and a civilization of weak fools who would cower under a tyrant rather than take action. It doesn’t help that their current leader Baron Va’rtriel Rystran took a Dael’El wife. Luckily for the Baron’s continued rulership, his wife died in childbirth along with their half-breed child. Or so the official story goes. The one thing that keeps the Senate from removing Baron Rystran as an embarrassment to the Dep’El race is his superior knowledge of forestry and the Dep’El need for a reliable lumber source to keep their shipyards working. In addition to its lucrative forestry, the woods are home to all manner of wildlife. Furs from Woodguard are highly sought after. Currently, Baron Rystran has found himself under scrutiny yet again for his decision to take in Dael’El immigrants. Although their numbers are small, every so often a Dael’El recognizes that perhaps the Dep’El were right. While efforts to join the Dep’El were largely met with a cold shoulder (the Dep’El are not known for their forgiveness) Woodguard has seen a few families welcomed back into the fold. Rystran believes this will improve the Dep’El reputation as more will learn the truth and the righteousness of their ancestors’ actions. Others, however, don’t care what the lesser races think. However, those wishing to join the Dep’El are required to try to fit in. Some have tried wearing charcoal or ash to darken their skin, but the Dep’El find this ridiculous and distasteful. Children of these immigrants, however, are expected to use their mark of glamour as any other Dep’El and so assimilation in a single generation is common."
area.save!
area = Worldarea.find_or_initialize_by(name: "Undying Copse")
area.region = "Devaria"
area.description = "A bleak wood of rotting trees, dead branches and howling winds. Here, the spirits of the dead call out in the wind, and animated corpses stagger in the mires. Those in the north of Devaria remain on constant watch for any that may wander out of the copse into their lands and dispatch them swiftly. A rite of passage for all mainland Dep’El involves walking into the Copse and remaining there for three days and three nights. Those who refuse the challenge will never rise in Dep’El society and are named cowards. Those who take the test invariably have wild tales of the things they saw in the woods, though whether they are true or the panicked dreams of a young Dep’El, who can say? One legend tells of a crypt deep in the Copse where restless spirits from across Hyraeth travel, hoping to find a mortal to help put them to rest, though no living Dep’El can say where that crypt may be. The closest settlement to the Undying Copse is Firewatch, a military outpost tasked with keeping an eye on the undead. It’s Commander, General U’razzen Varyian is a stern man but a fine leader and commander. He is perhaps the most egalitarian of the Dep’El leaders, as he cares about one thing and one thing only: Can you wield a sword? Recently his dispatches have led to concerns in Aurel as he reports the undead wandering out of the Copse bear the markings or tattered clothing of peoples from elsewhere in Hyraeth, as if the dead are migrating to the Copse. The General has always been a rational man, not prone to exaggeration, but he is also quite old. Those in Aurel are split with half believing his warnings, and others thinking perhaps it is time for the old man to retire."
area.save!
area = Worldarea.find_or_initialize_by(name: "Night Island")
area.region = "Devaria"
area.description = "Next to nothing is known about this foreboding isle. Steep jagged cliff faces rise from the sea, and the small channel separating it from the Undying Copse is constantly beset with storms. Almost any ship foolish enough to try and make this crossing never returns. Most attribute the wreckage to the storms, but there are legends of sirens who lure mariners to their deaths. Those ships that have traveled around the north of the island out of Stillwater Bay report strange lights in the cliffs, and terrifying sounds echoing through the night. There are no reports of anyone brave enough to explore the island ever surviving to tell the tale. Most believe that this island is the cause of the unrest in the Undying Copse."
area.save!
area = Worldarea.find_or_initialize_by(name: "Edrain Haeron")
area.region = "Devaria"
area.description = "The southern island of Devaria is home to its most fearsome mariners. Many would use the term “pirate” though doing so in their hearing would be foolish. Edrainians descend from the Dep’El who took the farthest voyages both to further remove themselves from their Dael’El cousins and to see just how far the world went. Their hatred of the Dael’El runs deepest among the Dep’El, as stories of their flight from persecution and their unjust banishment are passed down from generation to generation. Aloof even by Dep’El standards, Edrainians have an arrogant contempt for “mainlanders” of any race or nation, though they have a nodded respect for other island nations and a deep loyalty to the other Dep’El, even those not strong enough to live as men and women of the sea. Like all Dep’El, they show respect to the dwarves, and have brought several into their settlements as advisors on the nuances of stonemasonry, as even these seagoing Dep’El prefer to make their homes underground, though their voyages under the open sky make them more comfortable on the surface than most of their race. Possessed of the same stellar night vision shared by most of their subterranean brothers and sisters, the Edrainians are superb navigators who sail as quickly at night as during the day. Because of this, they are highly sought after mariners capable of swift voyages; superb fishermen able to seek their quarry when the fish are most active; and of course, formidable raiders, smugglers, amphibious soldiers, and pirates. A rite of passage for all Dep’El who call Edrain Haeron home is the Aearon Eneth. When a young Dep’El is deemed ready, they are blindfolded, drugged, and brought to a remote stretch of beach. They must make a mile long swim in open ocean to a small skiff. Upon reaching their vessel they must navigate their way home. Any Dep’El who fails the challenge and must be rescued is restricted to a life and profession on shore. Many leave the island forever rather than face the shame of being seen as a “sand crab.” Although as a rule, the Dep’El are not overly religious, the island Dep’El are the notable exception. The island shows an unfaltering devotion to the God of Storms. Some Dep’El may choose to pay homage to a secondary deity, but all on the island pray to Ororo. Among the most accomplished mariners, the Endarians are fiercely independent, making governance a challenge. On a ship, Captain is King. And a nation with so many kings is difficult to rule. Still, the current Governor, Admiral E’zzrania Faerath has done well keeping the ships sailing, the trade flowing, and piracy kept to a dull roar. Perhaps because at one time, she herself was a formidable corsair."
area.save!
area = Worldarea.find_or_initialize_by(name: "Fallvale and the Shipwreck Current")
area.region = "Devaria"
area.description = "Northernmost and tamest of the island cities, Fallvale is an affluent trade center, though it lacks much of the opulent finery of its sister city, Oceancrest. Indeed, the Dep’El of Fallvale are islanders through and through and look at Oceancrest as a city of fops and pretend mariners. All goods destined for the mainland (legally) pass through here. Bordered by the Shipwreck current, the peninsula need only worry about watching the seas to the north and west, as no mainlander would be fool enough to try and sail the aptly named shipwreck current. Even the Island Dep’El prefer to avoid it. Those who have voyaged its currents and lived can be identified by a golden hoop in their right ear. No other Dep’El is allowed this adornment. Persons of other races who show up in Devaria wearing a hoop earring out of ignorance often find it removed, violently."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Laughing Thicket")
area.region = "Devaria"
area.description = "A seafaring nation would fail without shipyards, and a shipyard would fail without a steady supply of wood. For this reason, although forestry has the reek of Dael’El about it, those who work the forests of the Laughing Thicket are accepted by the Dep’El. The woods of the Laughing Thicket hold one of the Dep’El’s most prized resources: The great Stonewood Trees. These trees with obsidian-black trunks have a wood almost impenetrable by water, thus making the most seaworthy vessels in Hyraeth. The Dep’El guard these trees with unmatched ferocity. Trespassers are swiftly executed, and any Dep’El foolish enough to try to sell the precious Stonewood wish for execution. The Thicket is currently ruled by D’rawyn Faerath. First cousin to Ezzrania Faerath. D’rawyn is one of the few who managed to rise to any level of respect among those who fail their Aearon Eneth. Some say it is only because of his cousin that he has been given anything higher than a fishmonger’s station. Others insist he rose to his rank despite his cousin’s contempt for his failure and the shame it brought upon their family. Regardless of which is true, they have a polite but strained relationship. However, unlike R’stanno Veruil to the north, D’rawyn knows better than to test the patience of the island Dep’El by welcoming Dael’El into his woods."
area.save!
area = Worldarea.find_or_initialize_by(name: "Faln")
area.region = "Devaria"
area.description = "A riverside town bordered by the aptly named mosquito swamp. Here you will find dwarven lumber mills, preparing wood from the laughing thicket for their travel north. The Dep’El Senate pays a handsome fee to teams of dwarven mercenaries willing to escort the precious stonewood and so, between loggers and mercenaries, Faln can be a rather rough place. Fights are not uncommon and the dwarven ale runs freely. Governor Trez’zan Merced tries keeping the peace…when he’s not the one starting the brawl."
area.save!
area = Worldarea.find_or_initialize_by(name: "Pond Shore")
area.region = "Devaria"
area.description = "A calm seaside town at the island’s southernmost point, those in Pond Shore live a quiet life of art and reflection. Many wealthy Dep’El retire here to the warm climate and slower pace of life. Music halls, art galleries, and libraries make up the majority of the town’s main streets and things stay calm and peaceful. In fact, Governess R’yanna Fesann, recently sent to assume the governorship at the passing of the previous governor has noticed that things seem… too calm. Maybe she’s just used to the bustle of Aurel and these Dep’El are just used to a quieter life. Or maybe there’s something more…."
area.save!
area = Worldarea.find_or_initialize_by(name: "Uth Heights")
area.region = "Devaria"
area.description = "Stronghold of the southern Isle, Admiral E’zzrania Faerath holds court here. The tall volcanic mountains make for perfect Dep’El fortresses and the shores have caves large enough to dock an entire fleet. The marines of the Uth Heights guard the coasts zealously and so no one in Hyraeth knows for sure how large the Dep’El fleet truly is. All one knows is “do not get into a sea war with a Deep Elf.”"
area.save!
area = Worldarea.find_or_initialize_by(name: "Blood Briar")
area.region = "Devaria"
area.description = "A region of ruthlessness and lawless abandon, even by island standards. Here you can find anything… for a price. The inhospitable briars make patrols difficult and small settlements have formed with only those brave or insane enough to live here knowing the hidden trails and cave mouths. The region is racially diverse with one governed by the Golden Rule: He Who Has the Gold, Makes the Rules. The coastline is pocketed with hidden coves and inlets, making smuggling a lucrative trade. It’s not quite clear who runs Blood Briar. Perhaps because no one does."
area.save!
area = Worldarea.find_or_initialize_by(name: "Blue Lagoon")
area.region = "Devaria"
area.description = "A warm, sheltered paradise of rest and relaxation. You will find any race here (except Dael’El) basking in the sun, or splashing in the warm waters. The Dep’El of blue lagoon have managed to shed much of their race’s stoicism and have adopted a more content nature. Nights are spent in song, drumming, and dance, with traditions borrowed from any number of cultures (except Dael’El) as visitors to the lagoon will share much with their island hosts. This does not mean, however, that the Dep’El of the Blue Lagoon are to be trifled with. Elaborate and aggressive war dances are used as a means of intimidating their enemies. Usually they work. When they don’t, the Lagoon Dep’El are formidable opponents in hand to hand combat, preferring wrestling and boxing to weaponry. They are currently led by Chieftain Hran’nez Alaynas. He has offered his seat to anyone who can best him in a wrestling match. So far none have, though many an embarrassed upstart has tried."
area.save!

area = Worldarea.find_or_initialize_by(name: "Aston")
area.region = "The Pale Lands"
area.description = "Nested between part of the Sed Mountains and the Tranquil Depths, the Town is a secluded and simple one. Life Moves slowly there and things are not up to date. Its almost as if time moves differently for the people of Aston. Is it magic? Or just the laid back calm of the Town and its people?"
area.save!
area = Worldarea.find_or_initialize_by(name: "Darkmoor")
area.region = "The Pale Lands"
area.description = "In an area that is full of High Elves, Darkmoor is a dirty mark of a town. Ruffians and vagabonds are in abundance. Constant smuggling and black trade. Twisted deals and unsavory characters are down every street."
area.save!
area = Worldarea.find_or_initialize_by(name: "Frozen Bluffs")
area.region = "The Pale Lands"
area.description = "The lower hills leading into the Bluffs are sparse of trees and more resembling a scrubland, with minimal hunting outside of small game. The mountains themselves are high and near impossible to scale, but the peaks provide a natural breaker that prevents the polar chill of the Northern Expanse from reaching the Wildren lands of the Northern Woods."
area.save!
area = Worldarea.find_or_initialize_by(name: "Inverness")
area.region = "The Pale Lands"
area.description = "This walled city doubles as a naturally well-fortified settlement, and also as the gateway to the northern reaches of the Sed Mountains. The population is densest on the eastern side of the city, where the original walls were erected, but expansion continues on the western side as the population increases. While their gates are rarely closed to outsiders, they boast a well-seasoned city watch, and their mantra is one of caution. Crime is surprisingly low here, as punishments tend to be swift and severe; especially for outsiders who think to make an easy mark of the inhabitants. The western end of the city typically appears to be blanketed in smog, as most of their mineral processing happens in that end of the city, with the wealthier families living towards the eastern end."
area.save!
area = Worldarea.find_or_initialize_by(name: "Lake Greenspire")
area.region = "The Pale Lands"
area.description = "The forest around the Lake is far-reaching, clear, and flourishing. Its occasional openings in the canopy allowed plenty of light through. the chatter of animals, most belonged to birds and small creatures of the area, add to the life of the forest. This is a quiet place for many of the locals of the Northern Wilds. Often seen as the last tranquil place to visit before heading north to the cold. The forest people and travelers alike go to enjoy the peace of the waters."
area.save!
area = Worldarea.find_or_initialize_by(name: "Lake of the Dead")
area.region = "The Pale Lands"
area.description = "The forest houses many different tribes and animals. One day, the water Overflowed without warning, into the forest in a great rushing wave. Many were lost in the flood. The whole area of the Wilds was wiped away in one swift motion. As the waters receded, a lake formed in the center of the disaster. From this massive amount of death, the earth was giving back to those who survived, The Lake, to this day, Holds the Bones of those the waters swept up."
area.save!
area = Worldarea.find_or_initialize_by(name: "Mistgarde")
area.region = "The Pale Lands"
area.description = "Although barely a city, Mistgarde is often referred to as the last bastion of civilizations before entering the Wildren lands. One of the most common paths of travel into the Northern Woods departs from their northern exit, which boasts a wall for defense. Relations with the Wildren are generally tame, but there is the occasional misunderstanding which can lead to tense times. No open warfare has occurred however, at least not in the recent past. Much of their economy is in woodcutting and hunting/trapping. The forest has no shortage of wildlife or good quality tree wood."
area.save!
area = Worldarea.find_or_initialize_by(name: "Murk Lake")
area.region = "The Pale Lands"
area.description = "It is located not terribly far to the northwest of Braeburn, it is generally regarded as a desolate location. The Lake gets its name from the amount of silt and pollen that comes from the rich and wild grasslands that surround it. In the spring, the lake is just about covered, which makes it impossible to see into the water. Some odd creatures are said to inhabit the waters, but without being able to see them, it’s only a myth."
area.save!
area = Worldarea.find_or_initialize_by(name: "Mythwood")
area.region = "The Pale Lands"
area.description = "Virtually nothing is known of the Mythwood outside of its borders. The elves there are somewhat xenophobic by nature, and they make quite an effort to drive off any would-be interlopers. While they generally do not commit to deadly actions, there is a myriad of traps that tend to be very effective at discouraging further ingress. There is a trade route that exists in the southern end of the Wood, a very direct path that is well defined, and supposedly created by an agreement between the elves of the forest and the humans who live nearby. Those who keep to the path shall remain unmolested, but the woods more than ten paces in either direction off the path are forbidden"
area.save!
area = Worldarea.find_or_initialize_by(name: "Northern Wilds")
area.region = "The Pale Lands"
area.description = "“Those who wish to know us, to understand why we are, come, and seek it in the Wilds.” – Slancha, Wildern Oak Elder. The Northern Wilds are, for lack of a better term, the” Homeland” of the Wildren. The trees hold many families and the Elders of the Groves gather here every few years to discuss and celebrate. If you wander alone, you will eventually find small settlements among the trees."
area.save!
area = Worldarea.find_or_initialize_by(name: "Oakstout Forest")
area.region = "The Pale Lands"
area.description = "This small albeit lush forest gets its name from the sheer amount of oaks that grow there. It is situated against the shores of the Tranquil Depths on its northern and eastern sides and is absolutely teeming with wildlife of all sizes. It’s good for hunting and outside of Darkmoor to the northwest, no inhabitants are known to have settlements in the forest"
area.save!
area = Worldarea.find_or_initialize_by(name: "Onn Mountains")
area.region = "The Pale Lands"
area.description = "Situated far to the northwest, and beyond the Endless Bramble, the Onn Mountains are considered no man’s land by many who have even heard of them. There are rumored to be rich veins of minerals and hunting paths aplenty, though few outside of the Wildren who inhabit the Bramble would know for sure."
area.save!
area = Worldarea.find_or_initialize_by(name: "Pinerest")
area.region = "The Pale Lands"
area.description = "Located on the southwest border of the Mythwood, this rural village is considered to be the last welcoming bastion before entering the Wood itself. There is very little going on, and few people have any reason to go to such a backwater village. When the trade route between Pinerest and Ravenspire is utilized, the village sees more travelers, but rare is the person who puts down roots."
area.save!
area = Worldarea.find_or_initialize_by(name: "Purity Lake")
area.region = "The Pale Lands"
area.description = "Situated along the northern edge of the Orchard, this lake is a popular fishing spot for the locals. The waters are clear as crystal, and the scenery is relaxing and peaceful. Any who visit agree the name is well earned. The area gives off a peaceful aura to all."
area.save!
area = Worldarea.find_or_initialize_by(name: "Ravenspire")
area.region = "The Pale Lands"
area.description = "A port city of fair size, Ravenspire is located on the western edge of the Tranquil Depths, and the eastern edge of the Mythwood. They are one of the larger settlements in the area, with a bustling port, and boasting themselves as the “Gateway to the West”. In this, they are not wrong, largely because of the trade route through the Mythwood to Pinerest, which leads west and then southwest towards Aurel."
area.save!
area = Worldarea.find_or_initialize_by(name: "Sed Mountains")
area.region = "The Pale Lands"
area.description = "Located north of the Tranquil Depths, these Mountains are said to be extremely rich in ore, gems, and minerals. They are not heavily inhabited, although the town of Aston sits remotely on the southern side, and Inverness effectively blocks access to the northern ranges."
area.save!
area = Worldarea.find_or_initialize_by(name: "Shadowvale")
area.region = "The Pale Lands"
area.description = "This is the center Location in the Northern Wilds, where Elves, Wildren, as well as other forest dwellers come to meet in a peaceful place.  A major trading post, learning area, and meeting space for travelers. The town and local areas are and have been a safe space for all who traverse into the north."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Endless Bramble")
area.region = "The Pale Lands"
area.description = "The Endless Bramble is rumored to be the home of the Fae and their pretentious courts. Legend tells when the Witch Gates were still young, their power surged drawing the sprites and Fae creatures to the area. It is believed this mixture of magical energies made the area both enchanting and treacherous. The forest is said to be littered with broken gates and the Wild Fae that inhabit this area keep it mischievous and dangerous. Without a proper Fae or Wildren guide, many have entered the Bramble never to return."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Lightless Thicket")
area.region = "The Pale Lands"
area.description = "Though abundant with wildlife, this forest can be difficult to traverse due to the dense canopy. Many hunters refuse to remain within the borders of the Thicket, pointing to good common sense and the fact that bears are rather common."
area.save!
area = Worldarea.find_or_initialize_by(name: "The Long Shallows")
area.region = "The Pale Lands"
area.description = "This narrow and shallow body of water comprises the southern fortification protecting Inverness, and also doubles as a good source of freshwater and fishing. The boats used here tend to more closely resemble skiffs so as not to bottom out on the craggy and dangerous waterbed. During the dawn and dusk hours, the shallows glow with blazingly beautiful colors as the sun’s light reflects off the water. It is truly a wonder to behold."
area.save!
area = Worldarea.find_or_initialize_by(name: "Sinking Basin")
area.region = "The Pale Lands"
area.description = "This small gulf is named primarily as a warning sign for any with enough sense to read a map. It seems a perfect cove to hide a ship, but the hiding comes at a cost. Jagged rocks and the wreckage of past ships linger just under the water’s surface, waiting for the unwary to venture in. Of course, there are legends that such fanciful creatures like mermaids and sirens inhabit the waters of the Basin, but such rumors are clearly unsubstantiated ravings of madmen…right?"
area.save!
area = Worldarea.find_or_initialize_by(name: "Tranquil Depths")
area.region = "The Pale Lands"
area.description = "A massive inland body of water located south of the Sed Mountains, the Depths are just that; still and deep. None know precisely how far down the water goes, but there is also rarely bad weather in the vicinity. Some claim the forest and mountains shield the Depths from foul weather, but maybe there’s something to the rumors about Aston…? At any rate, this is a popular fishing locale, with many settlements along its vast shoreline."
area.save!
area = Worldarea.find_or_initialize_by(name: "Willowdale")
area.region = "The Pale Lands"
area.description = "Located on the southern shore of the Tranquil Depths, this somewhat rural town is nonetheless one of the largest producers of products made from aquatic life in the northwest. They export cosmetics, bard, and countless other products, and enjoy good weather year-round. The city is walled with stone and has a surprisingly grand harbor despite its relatively small size. There are of course rumors of other more shady dealings happening in the alleys and along the waterways, but of course, these are foul and unsubstantiated rumors at best."
area.save!
area = Worldarea.find_or_initialize_by(name: "Winterbrook Lake")
area.region = "The Pale Lands"
area.description = "This small body of water sits along the northeastern edge of the Mythwood, and is technically a tributary of the Tranquil Depths. Despite that, it is a great deal more shallow, and serves primarily as a watering hole for wildlife. Ducks and other such creatures are often found in the vicinity in great numbers during the warmer months, although it seems to be utterly abandoned once the winter sets in."
area.save!
area = Worldarea.find_or_initialize_by(name: "Winterfair")
area.region = "The Pale Lands"
area.description = "Despite the name, the area is largely temperate year-round. As one of the very few settlements inside the Endless Bramble, and also located along a major trade route, this city does well economically. The Dwarven presence here is higher than most mixed settlements, which some travelers regard as an oddity. Of course, their crafts are of the highest order, and far easier to purchase here than in the Dwarven Homelands far in the mountains. They also do well in the lumber trade, being surrounded by forested lands. The walls are tall but not uninviting."
area.save!
