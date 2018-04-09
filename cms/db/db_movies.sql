-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2018 at 03:28 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(7, 'Horror'),
(13, 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'TheDarkKnight.jpg', 'The Dark Knight', '2008', '2h 16m', 'With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.', 'TheDarkKnight.mp4', 'May 5, 2017'),
(2, 'TheGodfather.jpg', 'The God father', '1972', '1h 46m', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.', 'TheGodfather.mp4', 'July 21, 2017'),
(3, 'Inception.jpg', 'Inception', '2010', '2h 17m', 'Dom Cobb (Leonardo DiCaprio) is a thief with the rare ability to enter people\'s dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone\'s mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb\'s every move.', 'Inception.mp4', 'March 3,2017'),
(4, 'Belly.jpg', 'Belly', '1998', '2h', 'Ever since they were kids, Sincere (Nas) and Buns (DMX) have lived life close to the edge, doing whatever it takes to survive. As adults, they build up their kingdom of crime on drug dealing and robbery. But Sincere grows weary of the criminal lifestyle and joins a black Muslim religious group. Buns, on the other hand, sinks deeper into criminality and faces serious prison time. The cops offer him a deal, however -- assassinate the head of the Muslim group, and he will go free.. ', 'Belly.mp4', 'June 28,2017'),
(5, 'CityofGod.jpg', 'City of God', '2002', '2h 9min', 'In the poverty-stricken favelas of Rio de Janeiro in the 1970s, two young men choose different paths. Rocket (Alexandre Rodrigues) is a budding photographer who documents the increasing drug-related violence of his neighborhood. José \"Zé\" Pequeno (Leandro Firmino da Hora) is an ambitious drug dealer who uses Rocket and his photos as a way to increase his fame as a turf war erupts with his rival, \"Knockout Ned\" (Seu Jorge). The film was shot on location in Rio\'s poorest neighborhoods', 'CityofGod.mp4', 'March 17, 2017'),
(6, 'ColdPrey.jpg', 'Cold Prey', '2006', '2h 19m', 'Eirik (Tomas Alf Larsen) and his girlfriend, Jannicke (Ingrid Bolsø Berdal), join newly coupled Mikael (Endre Martin Midtstigen) and Ingunn (Viktoria Winge) and single wisecracker Morten (Rolf Kristian Larsen) on a snowboarding excursion to a remote mountainous region in Norway. When Morten breaks his leg, however, and requires medical attention, the friends take shelter at an abandoned nearby ski lodge. Little do they know it also harbors an unseen, psychopathic killer.', 'ColdPrey.mp4', 'November 4, 2016'),
(7, 'TitanicII.jpg', 'Titanic II', '2010', '1h 48m', 'History threatens to repeat itself when a new luxury liner sets sail to commemorate the 100th anniversary of the original\'s doomed voyage.', 'TitanicII.mp4', 'Febuary 12, 2016'),
(8, 'BadJohnson.jpg', 'Bad Johnson', '2014', '1h 56m', 'After yet another relationship ends badly, a serial womanizer (Cam Gigandet) awakes one morning to find that his penis has detached from his body and taken human form (Nick Thune).', 'BadJohnson.mp4', 'November 11, 2016'),
(9, 'SpiritedAway.jpg', 'Spirited Away', '2001', '1h 46m', 'In this animated feature by noted Japanese director Hayao Miyazaki, 10-year-old Chihiro (Rumi Hiiragi) and her parents (Takashi Naitô, Yasuko Sawaguchi) stumble upon a seemingly abandoned amusement park. After her mother and father are turned into giant pigs, Chihiro meets the mysterious Haku (Miyu Irino), who explains that the park is a resort for supernatural beings who need a break from their time spent in the earthly realm, and that she must work there to free herself and her parents.', 'SpiritedAway.mp4', 'Febuary 26, 2016'),
(10, 'StanHelsing.jpg', 'Stan Helsing', '2009', '1h 32m', 'Stan (Steve Howey), a slacker video store clerk, his sexy girlfriend, best friend and an exotic dancer take a detour into a town cursed by the biggest monsters in movie history.', 'StanHelsing.mp4', 'November 4, 2016'),
(11, 'Frozen.jpg', 'Frozen', '2013', '2h 36m', 'When their kingdom becomes trapped in perpetual winter, fearless Anna (Kristen Bell) joins forces with mountaineer Kristoff (Jonathan Groff) and his reindeer sidekick to find Anna\'s sister, Snow Queen Elsa (Idina Menzel), and break her icy spell. Although their epic journey leads them to encounters with mystical trolls, a comedic snowman (Josh Gad), harsh conditions, and magic at every turn, Anna and Kristoff bravely push onward in a race to save their kingdom from winter\'s cold grip.', 'Frozen.mp4', 'January 8, 2015'),
(12, 'Hatchet.jpg', 'Hatchet', '2001', '1h 57m', 'Image result for Hatchet storyline\r\nPlot. Brian Robeson is a thirteen-year-old son of divorced parents. As he travels from Hampton, New York on a Cessna 406 bush plane to visit his father in the oil fields in Northern Canada for the summer, the pilot suffers a massive heart attack and dies.', 'Hatchet.mp4', 'November 25, 2015'),
(13, 'The Miracle Season.jpg', 'The Miracle Season', '2018', '2h 3m', 'After the tragic death of star volleyball player Caroline \"Line\" Found, a team of dispirited high school girls must band together under the guidance of their tough-love coach in hopes of winning the state championship.', 'The Miracle Season.mp4', 'October 9, 2015'),
(14, 'Visioneers.jpg', 'Visioneers', '2008', '1h 46m', 'When people begin exploding from stress, George Washington Winsterhammerman tries to ignore the epidemic and live his usual life, but then he suffers his first symptom.', 'Visioneers.mp4', 'April 15, 2015'),
(15, 'TheCollector.jpg', 'The Collector', '2009', '2h 16m', 'Desperate for money to pay off a debt, a man targets a wealthy family\'s home and plans to break in and steal a valuable gem. He soon learns that he picked the wrong night to carry out his plans, for a masked madman has gotten there first, imprisoned the family, and lined the mansion with deadly traps.', 'TheCollector.jpg.mp4', 'December 18, 2015'),
(16, 'TheInvincibleIron.jpg', 'The InvincibleIron', '2007', '1h 47m', 'Based on the Marvel Comics character, this animated film follows Tony Stark (Marc Worden), an American industrialist and inventor, who has made a fortune from his creations. While in China, Tony accidentally unleashes an ancient evil called the Mandarin (Fred Tatasciore). Now, to battle this malevolent entity back into submission, Tony must build the ultimate weapon. And so the Iron Man is born. Surrounded by a high-tech armored suit, Tony sets out to destroy the Mandarin once and for all.', 'TheInvincibleIron.mp4', 'October 15, 2014'),
(17, 'Kill the Irishman.jpg', 'Kill the Irishman', '2011', '2h 1m', 'Mobster Danny Greene (Ray Stevenson) ignites a turf war in 1970s Cleveland that leads to the collapse of the Mafia in several major U.S. cities.', 'Kill.mp4', 'August 1, 2014'),
(18, 'sexEd.jpg', 'Sex ED', '2013', '1h 30m', 'A new teacher\'s attempt to provide his pubescent students with some form of sexual education lands him in hot water with a local reverend.', 'sexEd.mp4', 'September 27, 2013'),
(19, 'ReadyPlayerOne.jpg', 'Ready Player One', '2018', '1h 31m', 'From filmmaker Steven Spielberg comes the science fiction action adventure “Ready Player One,” based on Ernest Cline’s bestseller of the same name, which has become a worldwide phenomenon. The film is set in 2045, with the world on the brink of chaos and collapse. But the people have found salvation in the OASIS, an expansive virtual reality universe created by the brilliant and eccentric James Halliday (Mark Rylance). When Halliday dies, he leaves his immense fortune to the first person to find a digital Easter egg he has hidden somewhere in the OASIS, sparking a contest that grips the entire world. When an unlikely young hero named Wade Watts (Tye Sheridan) decides to join the contest, he is hurled into a breakneck, reality-bending treasure hunt through a fantastical universe of mystery, discovery and danger. Spielberg directed the film from a screenplay by Zak Penn and Ernest Cline. The film was produced by Donald De Line, Spielberg, Kristie Macosko Krieger and Dan Farah; with Adam Somner, Daniel Lupi, Chris DeFaria and Bruce Berman serving as executive producers. “Ready Player One” stars Tye Sheridan (“X-Men: Apocalypse,” “Mud”), Olivia Cooke (“Me and Earl and the Dying Girl,” “Bates Motel”), Ben Mendelsohn (“Rogue One – A Star Wars Story,” “Bloodline”) and T.J. Miller (“Deadpool,” “Silicon Valley”), with Simon Pegg (the “Star Trek” movies, the “Mission: Impossible” movies) and Oscar winner Mark Rylance (“Bridge of Spies,” upcoming “Dunkirk”). Behind the scenes, three-time Oscar winner Spielberg (“Schindler’s List,” “Saving Private Ryan”) reunited his creative team from “Bridge of Spies,” including Oscar-winning director of photography Janusz Kaminski (“Schindler’s List,” “Saving Private Ryan”), Oscar-winning production designer Adam Stockhausen (“The Grand Budapest Hotel”), Oscar-winning editor Michael Kahn (“Saving Private Ryan,” “Raiders of the Lost Ark”) and Sarah Broshar (“The Post”), and costume designer Kasia Walicka-Maimone (“Moonrise Kingdom”). The music is by Oscar-nominated composer Alan Silvestri (the “Back to the Future” films, “Forrest Gump”). Warner Bros. Pictures and Amblin Entertainment present, in association with Village Roadshow Pictures, and Amblin Production, a De Line Pictures Production, a Steven Spielberg Film, “Ready Player One.” Slated for release on March 30, 2018, the film will be distributed by Warner Bros. Pictures, a Warner Bros. Entertainment Company, and in select territories by Village Roadshow Pictures.', 'ReadyPlayerOne', 'October 4, 2018'),
(20, 'Whiplash.jpg', 'Whiplash', '2014', '2h 7m', 'Andrew Neiman (Miles Teller) is an ambitious young jazz drummer, in pursuit of rising to the top of his elite music conservatory. Terence Fletcher (J.K. Simmons), an instructor known for his terrifying teaching methods, discovers Andrew and transfers the aspiring drummer into the top jazz ensemble, forever changing the young man\'s life. But Andrew\'s passion to achieve perfection quickly spirals into obsession, as his ruthless teacher pushes him to the brink of his ability and his sanity.', 'Whiplash.jpg', 'November 21, 2012'),
(21, 'Wishmaster.jpg', 'Wishmaster', '1997', '2h 2m', 'A gemologist (Tammy Lauren) unwittingly frees an evil genie (Andrew Divoff) that plays deadly tricks on her friends and acquaintances.', 'Wishmaster.mp4', 'December 25, 2012');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
