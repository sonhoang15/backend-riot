-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 12:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riot_game_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `allcodes`
--

CREATE TABLE `allcodes` (
  `id` int(11) NOT NULL,
  `keyMap` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value_En` varchar(255) DEFAULT NULL,
  `value_Vi` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allcodes`
--

INSERT INTO `allcodes` (`id`, `keyMap`, `type`, `value_En`, `value_Vi`, `createdAt`, `updatedAt`) VALUES
(1, 'R1', 'ROLE', 'Admin', 'Quản trị viên', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'R2', 'ROLE', 'User', 'Người dùng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'A1', 'SECTION', 'New Feed', 'Chuyện gì đang xảy ra vậy?', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'A2', 'SECTION', 'Games', 'Trò chơi của chúng tôi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'A3', 'SECTION', 'Esports', 'Thể thao điện tử', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'A4', 'SECTION', 'Entertainment', 'GiảI trí', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'M', 'GENDER', 'Male', 'Nam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'F', 'GENDER', 'Female', 'Nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'O', 'GENDER', 'Other', 'Khác', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inforpages`
--

CREATE TABLE `inforpages` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `PageId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value_En` varchar(255) DEFAULT NULL,
  `value_Vi` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inforpages`
--

INSERT INTO `inforpages` (`id`, `key`, `PageId`, `type`, `value_En`, `value_Vi`, `createdAt`, `updatedAt`) VALUES
(1, 'P0', 'A1', 'SECTION', 'New Feed', 'Chuyện gì đang xảy ra vậy?', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'P1', 'A2', 'SECTION', 'Games', 'Trò chơi của chúng tôi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'P2', 'A3', 'SECTION', 'Esports', 'Thể thao điện tử', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'P3', 'A4', 'SECTION', 'Entertainment', 'GiảI trí', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `locationpage`
--

CREATE TABLE `locationpage` (
  `id` int(11) NOT NULL,
  `PageId` varchar(255) DEFAULT NULL,
  `location_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value_En` varchar(255) DEFAULT NULL,
  `value_Vi` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locationpage`
--

INSERT INTO `locationpage` (`id`, `PageId`, `location_id`, `type`, `value_En`, `value_Vi`, `createdAt`, `updatedAt`) VALUES
(1, 'A1', 'L1', 'SECTION', 'Celebrate Pride 2025: League and TFT', 'Kỷ niệm Pride 2025: Liên đoàn và TFT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'A1', 'L2', 'SECTION', 'LoL and VALORANT Esports Partnering with Coinbase', 'LoL và VALORANT Esports hợp tác với Coinbase', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'A1', 'L3', 'SECTION', '5 Years of VALORANT // Act 3 Kickoff Trailer', '5 năm VALORANT // Đoạn giới thiệu khởi động Act 3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'A1', 'L4', 'SECTION', 'Celebrating 5 Years of VALORANT', 'Kỷ niệm 5 năm VALORANT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'A1', 'L5', 'SECTION', 'Now Available – Multi-Factor Authentication on Riot Mobile', 'Hiện đã có – Xác thực đa yếu tố trên Riot Mobile', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'A2', 'S1', 'SECTION', 'LOL', 'LOL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'A2', 'S2', 'SECTION', 'VALORANT', 'VALORANT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'A2', 'S3', 'SECTION', 'TFT', 'TFT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'A2', 'S4', 'SECTION', 'LOLWILDRIFT', 'Tốc chiến', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'A2', 'S5', 'SECTION', 'LOR', 'LOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'A3', 'Q1', 'SECTION', 'LOL ESPORT', 'giải đấu liên minh huyền thoại', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'A3', 'Q2', 'SECTION', 'VLR CHAMPION', 'giải đấu valorant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'A4', 'E1', 'SECTION', 'ARCANE', 'ARCANE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'A4', 'E2', 'SECTION', 'RIOT MUSIC', 'âm nhạc riot', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `markdown`
--

CREATE TABLE `markdown` (
  `id` int(11) NOT NULL,
  `contentHTML` longtext NOT NULL,
  `contentMarkdown` longtext NOT NULL,
  `PageId` varchar(255) DEFAULT NULL,
  `location_id` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `markdown`
--

INSERT INTO `markdown` (`id`, `contentHTML`, `contentMarkdown`, `PageId`, `location_id`, `createdAt`, `updatedAt`) VALUES
(1, '<p>Happy Pride Month, everyone!</p>\n<p>Like every year since VALORANT’s release, we want to kick off the month by celebrating the many vibrant and diverse members of LGBTQIA+ community who help make VALORANT a place where everyone feels welcome.</p>\n<p>We’ve got a new Pride title, gun buddy, and our returning Player Cards to help you celebrate in game. And if you want to show some Pride out of game, be sure to stop by the new mural we commissioned for Masters Toronto from community artist, Strawberry7. You’ll find it taking over the corner of Trinity-Belwoods park about a 20 min walk from where the games will be played.</p>\n<p>Alright, now let’s hear from some of the voices in our community who bring players together no matter their background. And keep reading for Pride redemption codes and some artwork submitted in our community Discord.</p>\n<p>Creators Create Communities\nThis year we wanted to highlight some of our LGBTQIA+ creators, artists, and cosplayers who’ve found a sense of inclusion and identity within our ecosystem, some of whom have even used VALORANT to form their own unique communities and spaces. Check out their stories and their channels below.</p>\n<p>Yazbae | EMEA\n<img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/7186f3010590e430e8ef721653b0088e3e33cc7c-1920x1080.jpg?raw=true\" alt=\"img\"></p>\n<p>&quot;Having LGBTQ+ representation shows that Valorant is open and welcomes everyone no matter who they are or who they love. I have met and made friends with so many wonderful cosplayers and VALORANT fans from the queer community, and witnessed how characters like Raze, Killjoy, and Clove show them that they are represented and celebrated with pride. I think having characters who are LGBTQ+ as part of their identity but not as their defining characteristic is so rewarding, as it makes so many people in the community feel seen.</p>\n<p>Cosplaying as Killjoy is a huge comfort to me and celebrates part of my identity that I share with her. My girlfriend and I love cosplaying our favourite Agents together at events and meeting other VALORANT fans. I love my community and ensure it is a safe space for others. I\'m always happy to offer advice to help others make their cosplays and bring their favourite characters to life so they can feel that same joy.&quot;</p>\n<p>Instagram</p>\n<p>X</p>\n<p>Londyn Bradshaw | NA\n<img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/5be4aab32482974aed2f73af1f751c498bf0657b-1920x1080.jpg?raw=true\" alt=\"img\"></p>\n<p>“Being a queer person playing online first-person shooters was definitely nerve-wracking at times. But VALORANT quickly became a game I genuinely loved, and that love pushed me to create a space where other queer folks could enjoy the game too, regardless of skill level. I wanted to build a community where people could not only watch VALORANT content but also feel welcome and safe to play the game they love.</p>\n<p>Thanks to Riot, I\'ve had the opportunity to take part in incredible influencer moments that have allowed me to showcase both my gameplay and my passion for fostering a growing, supportive queer VALORANT community. At the end of the day, my goal is simple: to create a space filled with fun, good vibes, and genuine connection. Also being one of the first drag artists to publicly play the game it just makes things more entertaining.”</p>\n<p>Twitch</p>\n<p>Instagram</p>\n<p>Kitty | EMEA!\n<img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/5aa74522997918658cae953b5c32febd4ded7716-1920x1080.jpg?raw=true\" alt=\"img\"></p>\n<p>Before we go, we wanted to feature some of the talented artists in our LGBTQIA+ community who find inspiration throughout VALORANT and its Agents.\n<img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/aa67c8cecd1e9ab3ea7425080113ebd9934673ca-861x646.png?raw=true\" alt=\"img\"></p>\n<pre><code>                                                                Mio\n\n                                                                 X\n</code></pre>\n<p><img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/885d7be8b0975be0e0b4fad7433d422290a70f66-1478x1237.jpg?raw=true\" alt=\"img\"></p>\n<pre><code>                                                          Kamii | Taiwan\n\n                                                                X\n</code></pre>\n<p><img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/3e741ad7a78767a4822698788e6cd911ce98ab8b-1919x1185.jpg?raw=true\" alt=\"img\"></p>\n<pre><code>                                               Grayisntgreen | United States\n\n                                                           TikTok\n</code></pre>\n<p><img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/87ae8e6dbdccc975ab33ebad7af10cf988d43bd9-1194x761.jpg?raw=true\" alt=\"img\"></p>\n', 'Happy Pride Month, everyone!\n\nLike every year since VALORANT’s release, we want to kick off the month by celebrating the many vibrant and diverse members of LGBTQIA+ community who help make VALORANT a place where everyone feels welcome.\n\nWe’ve got a new Pride title, gun buddy, and our returning Player Cards to help you celebrate in game. And if you want to show some Pride out of game, be sure to stop by the new mural we commissioned for Masters Toronto from community artist, Strawberry7. You’ll find it taking over the corner of Trinity-Belwoods park about a 20 min walk from where the games will be played.\n\nAlright, now let’s hear from some of the voices in our community who bring players together no matter their background. And keep reading for Pride redemption codes and some artwork submitted in our community Discord.\n\nCreators Create Communities\nThis year we wanted to highlight some of our LGBTQIA+ creators, artists, and cosplayers who’ve found a sense of inclusion and identity within our ecosystem, some of whom have even used VALORANT to form their own unique communities and spaces. Check out their stories and their channels below.\n\nYazbae | EMEA\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/7186f3010590e430e8ef721653b0088e3e33cc7c-1920x1080.jpg?raw=true)\n\n\"Having LGBTQ+ representation shows that Valorant is open and welcomes everyone no matter who they are or who they love. I have met and made friends with so many wonderful cosplayers and VALORANT fans from the queer community, and witnessed how characters like Raze, Killjoy, and Clove show them that they are represented and celebrated with pride. I think having characters who are LGBTQ+ as part of their identity but not as their defining characteristic is so rewarding, as it makes so many people in the community feel seen.\n\nCosplaying as Killjoy is a huge comfort to me and celebrates part of my identity that I share with her. My girlfriend and I love cosplaying our favourite Agents together at events and meeting other VALORANT fans. I love my community and ensure it is a safe space for others. I\'m always happy to offer advice to help others make their cosplays and bring their favourite characters to life so they can feel that same joy.\"\n\nInstagram\n\nX\n\nLondyn Bradshaw | NA\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/5be4aab32482974aed2f73af1f751c498bf0657b-1920x1080.jpg?raw=true)\n\n“Being a queer person playing online first-person shooters was definitely nerve-wracking at times. But VALORANT quickly became a game I genuinely loved, and that love pushed me to create a space where other queer folks could enjoy the game too, regardless of skill level. I wanted to build a community where people could not only watch VALORANT content but also feel welcome and safe to play the game they love.\n\nThanks to Riot, I\'ve had the opportunity to take part in incredible influencer moments that have allowed me to showcase both my gameplay and my passion for fostering a growing, supportive queer VALORANT community. At the end of the day, my goal is simple: to create a space filled with fun, good vibes, and genuine connection. Also being one of the first drag artists to publicly play the game it just makes things more entertaining.”\n\nTwitch\n\nInstagram\n\nKitty | EMEA!\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/5aa74522997918658cae953b5c32febd4ded7716-1920x1080.jpg?raw=true)\n\nBefore we go, we wanted to feature some of the talented artists in our LGBTQIA+ community who find inspiration throughout VALORANT and its Agents.\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/aa67c8cecd1e9ab3ea7425080113ebd9934673ca-861x646.png?raw=true)\n\n                                                                    Mio\n\n                                                                     X\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/885d7be8b0975be0e0b4fad7433d422290a70f66-1478x1237.jpg?raw=true)\n\n                                                              Kamii | Taiwan\n\n                                                                    X\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/3e741ad7a78767a4822698788e6cd911ce98ab8b-1919x1185.jpg?raw=true)\n\n                                                   Grayisntgreen | United States\n\n                                                               TikTok\n\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/87ae8e6dbdccc975ab33ebad7af10cf988d43bd9-1194x761.jpg?raw=true)', 'A1', 'L2', '2025-06-04 20:20:54', '2025-06-06 06:00:49'),
(4, '<h2>Return of Pengu’s Party</h2>\n<p>You blink and boom—another rotation around the sun. TFT’s 6th birthday is coming up fast, and we want to prepare you for what’s to come. Pengu is back from June 11th to July 15th with their legendary game mode, Pengu’s Party, and every past set is here to celebrate, bringing together  TFT’s most iconic traits!</p>\n<p>Need a refresher on how it works? No worries, we gotchu.</p>\n<p>You’ll queue up in the world of Cyber City, but along with the neon lights, Pengu is gifting traits from past sets that represent all six years of TFT’s history.\n<img src=\"https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/47217c54f0a9a9db64c56e95f822fc79312fde5b-1920x1080.jpg?raw=true\" alt=\"img\"></p>\n<p>Each set will be represented by two traits that were unique to that set. What are you looking forward to the most? I can’t wait to snipe enemy carries with my Phantom procs again.</p>\n<p>Here is the list of what’s to expect:</p>\n<p>Set 1</p>\n<p>Imperial - Combat start: Select random units gain Damage Amp.</p>\n<p>Phantom - Combat start: A random enemy takes a large percentage of their max health as true damage.</p>\n<p>Set 2: Rise of Elements</p>\n<p>Mountain - Gain 2 Mountain hexes in the front row. Combat start: Units standing on a Mountain hex gain a Shield and permanent bonus Health.</p>\n<p>Glacial - Gain a Glacial Mallet. Attacks from champions holding a mallet have a chance to stun their target and do bonus Magic Damage.</p>\n<p>Set 3: Galaxies</p>\n<p>Mech-Pilot - Use the Pilot Selector to choose a Pilot. Combat start: the Pilot jumps into a Mech. The Mech has the Traits and items of its Pilot, and gains a percentage of the pilot’s Attack Damage and max Health. When the Mech dies, the Pilot is ejected with a percentage of their max Health.</p>\n<p>Rebel - Combat start: for 10 seconds, your team gains a Shield and Damage Amp for each adjacent ally.</p>\n<p>Set 4: Fates</p>\n<p>Elderwood - Every 2 seconds, your team grows, gaining bonus stats. This effect stacks up to 5 times.</p>\n<p>The Boss - Gain equipable Boss Knuckles. When the holder first drops below a percentage Health threshold, they become The Boss and leave combat to start doing sit-ups. Each sit-up restores maximum Health and grants Attack Speed.</p>\n<p>Set 5: Reckoning</p>\n<p>Hellion - When an allied champion dies, a Doppelhellion (a one less star copy) will leap from the Hellion portal and join the fight.</p>\n<p>Coven - At the start of combat, the unit nearest to the center of your team is chosen as the Coven Leader, gaining bonus Ability Power. Each time a unit casts, the coven leader gains mana.</p>\n<p>Set 6: Gizmos and Gadgets</p>\n<p>Socialite - Gain a spotlight hex. The unit standing in the spotlight at the start of combat gains Damage Amp and Mana per second.</p>\n<p>Yordle - After each player combat, a random 1, 2, or 3 cost champion that usually fits your team is added to your bench for free.</p>\n<p>Set 7: Dragonlands</p>\n<p>Trainer - After combat, the 3 champions closest to Nomsy feed her 1 Snax per star level, adding Health and Ability Power. Nomsy’s star level increases every 25 Snax!</p>\n<p>Shimmerscale - Gain Shimmerscale items. These items give gold as well as combat power.</p>\n<p>Set 8: Monsters Attack!</p>\n<p>Laser Corps - Your team gains laser drones. When a unit attacks or is hit by an attack, their drone deals magic damage to the target (has a cooldown). Drones are reassigned to another ally on death.</p>\n<p>Mascot - Your team heals a percentage of their max Health every 2 seconds. When a champion dies, they retreat to the sidelines to cheer on your team. Your team’s healing increases for each cheering champion.</p>\n<p>Set 9: Runeterra Reforged</p>\n<p>Shurima - After 8 seconds, your strongest champion Ascends and gains maximum Health and Attack Speed.</p>\n<p>Bilgewater - Your team\'s attacks and Abilities mark enemies. The mark stores a percentage of damage dealt to the enemy. Marked enemies are struck by a cannonball after 1.5 seconds, dealing the stored damage plus a flat value as physical damage.</p>\n<p>Set 10: Remix Rumble</p>\n<p>Punk - Your team gains bonus Health, Attack Damage, and Ability Power, which increases every time you spend gold on a shop reroll. After each combat, gain a 1 gold reroll for that round. Your first reroll each round grants extra bonus stats instead.</p>\n<p>Jazz - For each active trait, your team gains bonus Health and Damage Amp.</p>\n<p>Set 11: Inkborn Fables</p>\n<p>Dragonlord - After 8 seconds of combat, the Dragon strikes the board, dealing true damage and stunning all enemies. Allies gain Attack Speed for the rest of combat.</p>\n<p>Storyweaver - Summon Kayle and evolve her as you level up!</p>\n<p>Set 12: Magic n’ Mayhem</p>\n<p>Pyro - Your team gains attack speed. For each kill, your team creates an infernal cinder that you collect next round. For every 5 cinders you collect, your team gains more attack speed.</p>\n<p>Preserver - Your team heals for a percent of their Max Health every 3 seconds. If they are full health, restore mana instead.</p>\n<p>Set 13: Into the Arcane</p>\n<p>Conqueror - Your team\'s takedowns grant stacks of Conquest. After gaining enough Conquest, open War Chests full of loot! Your team gains Attack Damage and Ability Power, increased for each War chest open.</p>\n<p>High Roller - Gain a Sevika’s Jinxed Arm item that periodically rolls a random Jinx modification. It also grants HP, AD, AP and Omnivamp!</p>\n<p>Reminder that values are subject to change, and there are prismatic versions of each trait waiting to be discovered as well! hello?</p>\n', '\n## Return of Pengu’s Party\n\nYou blink and boom—another rotation around the sun. TFT’s 6th birthday is coming up fast, and we want to prepare you for what’s to come. Pengu is back from June 11th to July 15th with their legendary game mode, Pengu’s Party, and every past set is here to celebrate, bringing together  TFT’s most iconic traits!\n\nNeed a refresher on how it works? No worries, we gotchu.\n\nYou’ll queue up in the world of Cyber City, but along with the neon lights, Pengu is gifting traits from past sets that represent all six years of TFT’s history.\n![img](https://cmsassets.rgpub.io/sanity/images/dsfx7636/news_live/47217c54f0a9a9db64c56e95f822fc79312fde5b-1920x1080.jpg?raw=true)\n\n\nEach set will be represented by two traits that were unique to that set. What are you looking forward to the most? I can’t wait to snipe enemy carries with my Phantom procs again.\n\nHere is the list of what’s to expect:\n\nSet 1\n\nImperial - Combat start: Select random units gain Damage Amp.\n\nPhantom - Combat start: A random enemy takes a large percentage of their max health as true damage.\n\nSet 2: Rise of Elements\n\nMountain - Gain 2 Mountain hexes in the front row. Combat start: Units standing on a Mountain hex gain a Shield and permanent bonus Health.\n\nGlacial - Gain a Glacial Mallet. Attacks from champions holding a mallet have a chance to stun their target and do bonus Magic Damage.\n\nSet 3: Galaxies\n\nMech-Pilot - Use the Pilot Selector to choose a Pilot. Combat start: the Pilot jumps into a Mech. The Mech has the Traits and items of its Pilot, and gains a percentage of the pilot’s Attack Damage and max Health. When the Mech dies, the Pilot is ejected with a percentage of their max Health.\n\nRebel - Combat start: for 10 seconds, your team gains a Shield and Damage Amp for each adjacent ally.\n\nSet 4: Fates\n\nElderwood - Every 2 seconds, your team grows, gaining bonus stats. This effect stacks up to 5 times.\n\nThe Boss - Gain equipable Boss Knuckles. When the holder first drops below a percentage Health threshold, they become The Boss and leave combat to start doing sit-ups. Each sit-up restores maximum Health and grants Attack Speed.\n\nSet 5: Reckoning\n\nHellion - When an allied champion dies, a Doppelhellion (a one less star copy) will leap from the Hellion portal and join the fight.\n\nCoven - At the start of combat, the unit nearest to the center of your team is chosen as the Coven Leader, gaining bonus Ability Power. Each time a unit casts, the coven leader gains mana.\n\nSet 6: Gizmos and Gadgets\n\nSocialite - Gain a spotlight hex. The unit standing in the spotlight at the start of combat gains Damage Amp and Mana per second.\n\nYordle - After each player combat, a random 1, 2, or 3 cost champion that usually fits your team is added to your bench for free.\n\nSet 7: Dragonlands\n\nTrainer - After combat, the 3 champions closest to Nomsy feed her 1 Snax per star level, adding Health and Ability Power. Nomsy’s star level increases every 25 Snax!\n\nShimmerscale - Gain Shimmerscale items. These items give gold as well as combat power.\n\nSet 8: Monsters Attack!\n\nLaser Corps - Your team gains laser drones. When a unit attacks or is hit by an attack, their drone deals magic damage to the target (has a cooldown). Drones are reassigned to another ally on death.\n\nMascot - Your team heals a percentage of their max Health every 2 seconds. When a champion dies, they retreat to the sidelines to cheer on your team. Your team’s healing increases for each cheering champion.\n\nSet 9: Runeterra Reforged\n\nShurima - After 8 seconds, your strongest champion Ascends and gains maximum Health and Attack Speed.\n\nBilgewater - Your team\'s attacks and Abilities mark enemies. The mark stores a percentage of damage dealt to the enemy. Marked enemies are struck by a cannonball after 1.5 seconds, dealing the stored damage plus a flat value as physical damage.\n\nSet 10: Remix Rumble\n\nPunk - Your team gains bonus Health, Attack Damage, and Ability Power, which increases every time you spend gold on a shop reroll. After each combat, gain a 1 gold reroll for that round. Your first reroll each round grants extra bonus stats instead.\n\nJazz - For each active trait, your team gains bonus Health and Damage Amp.\n\nSet 11: Inkborn Fables\n\nDragonlord - After 8 seconds of combat, the Dragon strikes the board, dealing true damage and stunning all enemies. Allies gain Attack Speed for the rest of combat.\n\nStoryweaver - Summon Kayle and evolve her as you level up!\n\nSet 12: Magic n’ Mayhem\n\nPyro - Your team gains attack speed. For each kill, your team creates an infernal cinder that you collect next round. For every 5 cinders you collect, your team gains more attack speed.\n\nPreserver - Your team heals for a percent of their Max Health every 3 seconds. If they are full health, restore mana instead.\n\nSet 13: Into the Arcane\n\nConqueror - Your team\'s takedowns grant stacks of Conquest. After gaining enough Conquest, open War Chests full of loot! Your team gains Attack Damage and Ability Power, increased for each War chest open.\n\nHigh Roller - Gain a Sevika’s Jinxed Arm item that periodically rolls a random Jinx modification. It also grants HP, AD, AP and Omnivamp!\n\nReminder that values are subject to change, and there are prismatic versions of each trait waiting to be discovered as well! hello?', 'A1', 'L1', '2025-06-04 20:38:06', '2025-06-04 20:39:23'),
(5, '<p><img src=\"https://www.riotgames.com/darkroom/2880/f7bb98ec59615ae708efce22603777db:fb85860a53255d7dea6861a2f41753b7/2025-pride-article-header-2up.png?raw=true\" alt=\"img\"></p>\n<p>June 1st is right around the corner which means it\'s almost time to celebrate Pride Month! This year, we\'re providing ways for players to represent themselves in game, celebrating all the LGBTQIA+ players that contribute to our community, and investing in a more welcoming future for games industry talent.</p>\n<p><img src=\"https://www.riotgames.com/darkroom/2240/118b8039d55f69413a4ab83a8fd2c8cc:b158a3eca46afc42f4aca8d88e487a0c/pride2025-articleassets-ingamegoodies.png?raw=true\" alt=\"img\"></p>\n<p><strong>Pride in Our Games</strong></p>\n<p>The Pride collection grows every year. This year we’ve got new emotes, minigames, and gun buddies spread across our games as well as the return of a lot of previous years’ Pride content.</p>\n<p>In League, Rainbow Warpaint, a new emote featuring Rell hits the rift. The rainbow Rell joins TF and Graves, K’Sante, and Vi emotes which are all returning from the past few years of Pride.</p>\n<p>On TFT’s Convergence, you can claim the Little Legend Arcade QiQi who brings an iconic energy; double down with the QiQi Strut emote and you’re ready for the runway. See everything both games are doing for Pride, as well as how to get this new content, over in our League &amp; TFT article.</p>\n<p>Over in Wild Rift, the poros are almost ready to party. They just need a new fit. The team created a new minigame where you can deck out poros in all the colors of the rainbow to make sure they’re ready for their Pride party.</p>\n<p>As Twisted Fate makes his debut in Path of Champions, Legends of Runeterra will be bringing back the Pride Bundle featuring a Twisted Fate &amp; Graves Card Back, icons, and guardians from years past.</p>\n<p>In VALORANT, a gun buddy featuring Dan The Penguin saddling up a rainbow heart leads the new content. Check out everything they’re offering in game and some of the incredible LGBTQIA+ art from around the community in VALORANT’s article coming on June 2. Oh, and if you happen to be in Toronto for VCT Masters, head over to the corner of Trinity-Bellwoods park to check out the Pride mural we commissioned from Strawberry7.\n<img src=\"https://www.riotgames.com/darkroom/2240/963e27a78b90c4955f4f64cb034427dd:ec4075a4ed55e4f6e49d1483c5adc0ab/2025-pride-article-ostem.png?raw=true\" alt=\"img\"></p>\n<p><strong>Donating to oSTEM</strong></p>\n<p>As part of our Pride celebration this year we’re making a $100,000 donation to oSTEM, an organization that empowers LGBTQIA+ people to pursue STEM education and careers through its dedicated community-building efforts. Rainbow Rioters, our RIG for LGBTQIA+ Rioters and allies, has long been a champion of oSTEM so this year we wanted to contribute directly to oSTEM’s important mission. The donation will be used to bring more students to oSTEM’s 15th annual conference where they can attend presentations, connect with peers, and find mentors to help them in their journey while also funding crucial mental health workshops and resources for all attendees.</p>\n', '![img](https://www.riotgames.com/darkroom/2880/f7bb98ec59615ae708efce22603777db:fb85860a53255d7dea6861a2f41753b7/2025-pride-article-header-2up.png?raw=true)\n\nJune 1st is right around the corner which means it\'s almost time to celebrate Pride Month! This year, we\'re providing ways for players to represent themselves in game, celebrating all the LGBTQIA+ players that contribute to our community, and investing in a more welcoming future for games industry talent.\n\n![img](https://www.riotgames.com/darkroom/2240/118b8039d55f69413a4ab83a8fd2c8cc:b158a3eca46afc42f4aca8d88e487a0c/pride2025-articleassets-ingamegoodies.png?raw=true)\n\n**Pride in Our Games**\n\nThe Pride collection grows every year. This year we’ve got new emotes, minigames, and gun buddies spread across our games as well as the return of a lot of previous years’ Pride content. \n\nIn League, Rainbow Warpaint, a new emote featuring Rell hits the rift. The rainbow Rell joins TF and Graves, K’Sante, and Vi emotes which are all returning from the past few years of Pride. \n\nOn TFT’s Convergence, you can claim the Little Legend Arcade QiQi who brings an iconic energy; double down with the QiQi Strut emote and you’re ready for the runway. See everything both games are doing for Pride, as well as how to get this new content, over in our League & TFT article. \n\nOver in Wild Rift, the poros are almost ready to party. They just need a new fit. The team created a new minigame where you can deck out poros in all the colors of the rainbow to make sure they’re ready for their Pride party. \n\nAs Twisted Fate makes his debut in Path of Champions, Legends of Runeterra will be bringing back the Pride Bundle featuring a Twisted Fate & Graves Card Back, icons, and guardians from years past.\n\nIn VALORANT, a gun buddy featuring Dan The Penguin saddling up a rainbow heart leads the new content. Check out everything they’re offering in game and some of the incredible LGBTQIA+ art from around the community in VALORANT’s article coming on June 2. Oh, and if you happen to be in Toronto for VCT Masters, head over to the corner of Trinity-Bellwoods park to check out the Pride mural we commissioned from Strawberry7.\n![img](https://www.riotgames.com/darkroom/2240/963e27a78b90c4955f4f64cb034427dd:ec4075a4ed55e4f6e49d1483c5adc0ab/2025-pride-article-ostem.png?raw=true)\n\n**Donating to oSTEM**\n\nAs part of our Pride celebration this year we’re making a $100,000 donation to oSTEM, an organization that empowers LGBTQIA+ people to pursue STEM education and careers through its dedicated community-building efforts. Rainbow Rioters, our RIG for LGBTQIA+ Rioters and allies, has long been a champion of oSTEM so this year we wanted to contribute directly to oSTEM’s important mission. The donation will be used to bring more students to oSTEM’s 15th annual conference where they can attend presentations, connect with peers, and find mentors to help them in their journey while also funding crucial mental health workshops and resources for all attendees.', 'A1', 'L3', '2025-06-06 13:21:55', '2025-06-06 13:21:55'),
(6, '<p><img src=\"https://www.riotgames.com/darkroom/2880/67c1a757449f05a12607a68d3f6074fb:1fda2d39c8be93a4ae323aa32462f412/saph-ep8-thumbnail-textless.png?raw=true\" alt=\"img\"></p>\n', '![img](https://www.riotgames.com/darkroom/2880/67c1a757449f05a12607a68d3f6074fb:1fda2d39c8be93a4ae323aa32462f412/saph-ep8-thumbnail-textless.png?raw=true)', 'A1', 'L4', '2025-06-06 13:23:11', '2025-06-06 13:23:11'),
(7, '<h1>Multi-Factor Authentication How-to &amp; FAQ</h1>\n<p>When it comes to your online identity, you can never be too careful. That’s why Riot Games has introduced multi-factor authentication (MFA): a fast and easy way to keep your information secure. This new level of security will let you rest easy knowing that your purchases, messages, and countless hours of progress are safe, and it only takes a few minutes to set up! We\'ll even send you some in-game rewards as a little thank you for keeping your account secure.</p>\n<p>Read on for all the information you need to secure your account today.</p>\n<p>How does MFA work?\nEvery time you attempt to sign in, you’ll receive a six-digit code either in your Riot Mobile app or through the email associated with your Riot account. Simply enter that code into the prompt, then continue logging in as normal. And that’s really all there is to it! If you don\'t want to do this every time, you can select a checkbox at sign-in to only enter it every 30 days.</p>\n<p>How does MFA work?\nEvery time you attempt to sign in, you’ll receive a six-digit code either in your Riot Mobile app or through the email associated with your Riot account. Simply enter that code into the prompt, then continue logging in as normal. And that’s really all there is to it! If you don\'t want to do this every time, you can select a checkbox at sign-in to only enter it every 30 days.</p>\n<h3><strong>How do I activate MFA?</strong></h3>\n<ol>\n<li>Sign in to your Riot account page.</li>\n<li>Locate the Multi-Factor Authentication card.</li>\n<li>On this card, you\'ll find an Enable or Resend button. Click the button. This sends you an email to enable Multi-Factor Authentication. (You don\'t have to guess which email; we give you a hint.)</li>\n<li>Go to the inbox of your connected email address.</li>\n<li>Find and open the Multi-Factor Authentication email you received from Riot Games. (If you don’t see the email in your inbox, check the spam folder.)</li>\n<li>From the email, click the Enable Multi-Factor Authentication button.</li>\n</ol>\n<p>And that’s all there is to it! From here you’ll be redirected back to your account page, where you’ll see that Multi-Factor Authentication is enabled.</p>\n<h4><strong>Using Riot Mobile for MFA</strong></h4>\n<p>For the quickest hassle-free login, we suggest  downloading Riot Mobile on your preferred mobile device as it can serve as your MFA authenticator. You can also use it to scan the QR code for a quick login.</p>\n<h2>If I only use my email, do I have to enter the code every time?</h2>\n<p>Not if you don\'t want to! In the launcher, under the field where you enter the MFA code, you\'ll see a box that says Remember this app for 30 days. Check it, and you won\'t have to enter a code again for a whole month. Just remember to only do this on a trusted device, like your personal computer or mobile phone. (Note that this is a separate checkbox from the one that keeps you signed in.)</p>\n<h2>How do I disable MFA?</h2>\n<p>Much like the activation process, deactivating MFA only takes a few simple steps.</p>\n<ol>\n<li>Sign in to your Riot account page.</li>\n<li>Locate the Multi-Factor Authentication card.</li>\n<li>Click the Disable button.</li>\n<li>Review the pop-up, and click Disable if you’re sure.</li>\n</ol>\n<p>MFA is now disabled on your account. If you want to reactivate it, follow the steps above.</p>\n<h2>My account is connected to devices I no longer use. Can I log out of them remotely?</h2>\n<p>You sure can! To log out of all devices, follow these steps:</p>\n<ol>\n<li>Sign in to your Riot account page.</li>\n<li>Locate the Login Management card.</li>\n<li>Click the LOG OUT EVERYWHERE button.</li>\n</ol>\n<p>This will not only log you out of all devices, but also revoke their “trusted device” status.</p>\n<h2>My MFA emails are going to an email address I no longer have access to. What can I do?</h2>\n<p>In this case, your only option is contact player support. Please /submit a ticket below so we can help you get the process started.</p>\n<h2>I didn\'t activate MFA but I\'m still getting authentication emails.</h2>\n<p>Some big account changes—like updating your email, changing your password, or switching your linked social authentication—automatically include MFA for your security.</p>\n', '\n# Multi-Factor Authentication How-to & FAQ\n\n\n\nWhen it comes to your online identity, you can never be too careful. That’s why Riot Games has introduced multi-factor authentication (MFA): a fast and easy way to keep your information secure. This new level of security will let you rest easy knowing that your purchases, messages, and countless hours of progress are safe, and it only takes a few minutes to set up! We\'ll even send you some in-game rewards as a little thank you for keeping your account secure.\n\nRead on for all the information you need to secure your account today.\n\nHow does MFA work?\nEvery time you attempt to sign in, you’ll receive a six-digit code either in your Riot Mobile app or through the email associated with your Riot account. Simply enter that code into the prompt, then continue logging in as normal. And that’s really all there is to it! If you don\'t want to do this every time, you can select a checkbox at sign-in to only enter it every 30 days. \n\nHow does MFA work?\nEvery time you attempt to sign in, you’ll receive a six-digit code either in your Riot Mobile app or through the email associated with your Riot account. Simply enter that code into the prompt, then continue logging in as normal. And that’s really all there is to it! If you don\'t want to do this every time, you can select a checkbox at sign-in to only enter it every 30 days. \n\n\n### **How do I activate MFA?**\n\n\n1. Sign in to your Riot account page.\n2. Locate the Multi-Factor Authentication card.\n3. On this card, you\'ll find an Enable or Resend button. Click the button. This sends you an email to enable Multi-Factor Authentication. (You don\'t have to guess which email; we give you a hint.) \n4. Go to the inbox of your connected email address.\n5. Find and open the Multi-Factor Authentication email you received from Riot Games. (If you don’t see the email in your inbox, check the spam folder.)\n6. From the email, click the Enable Multi-Factor Authentication button.\n\n And that’s all there is to it! From here you’ll be redirected back to your account page, where you’ll see that Multi-Factor Authentication is enabled.\n\n\n#### **Using Riot Mobile for MFA**\n\n\nFor the quickest hassle-free login, we suggest  downloading Riot Mobile on your preferred mobile device as it can serve as your MFA authenticator. You can also use it to scan the QR code for a quick login.\n\n\n## If I only use my email, do I have to enter the code every time?\n\nNot if you don\'t want to! In the launcher, under the field where you enter the MFA code, you\'ll see a box that says Remember this app for 30 days. Check it, and you won\'t have to enter a code again for a whole month. Just remember to only do this on a trusted device, like your personal computer or mobile phone. (Note that this is a separate checkbox from the one that keeps you signed in.)\n\n\n## How do I disable MFA?\n\n\nMuch like the activation process, deactivating MFA only takes a few simple steps.\n\n1. Sign in to your Riot account page.\n2. Locate the Multi-Factor Authentication card.\n3. Click the Disable button.\n4. Review the pop-up, and click Disable if you’re sure.\n\nMFA is now disabled on your account. If you want to reactivate it, follow the steps above.\n\n\n## My account is connected to devices I no longer use. Can I log out of them remotely?\nYou sure can! To log out of all devices, follow these steps:\n\n\n1. Sign in to your Riot account page.\n2. Locate the Login Management card.\n3. Click the LOG OUT EVERYWHERE button.\n\nThis will not only log you out of all devices, but also revoke their “trusted device” status.\n\n\n## My MFA emails are going to an email address I no longer have access to. What can I do?\n\n\n\nIn this case, your only option is contact player support. Please /submit a ticket below so we can help you get the process started.\n\n\n## I didn\'t activate MFA but I\'m still getting authentication emails.\n\n\nSome big account changes—like updating your email, changing your password, or switching your linked social authentication—automatically include MFA for your security.', 'A1', 'L5', '2025-06-06 13:30:07', '2025-06-06 13:30:07'),
(8, '<h1>CHÚNG TÔI LÀ VALORANT</h1>\n<h1>THÁCH THỨC MỌI GIỚI HẠN</h1>\n<p>Mang phong cách và trải nghiệm cá nhân tới đấu trường cạnh tranh toàn cầu. Sử dụng kỹ năng đấu súng cùng với lối tư duy chiến thuật sắc bén với hai phe tấn công và phòng thủ, thành bại được định đoạt chỉ trong 13 vòng đấu. Với chỉ 1 mạng mỗi vòng đấu, sự nhanh nhẹn và quyết đoán sẽ là yếu tố giúp bạn sống sót. Trải nghiệm VALORANT trong các chế độ chơi: Đấu Xếp Hạng, Đấu Thường, Sinh Tử và Spike Thần Tốc.</p>\n<h1>ĐẶC VỤ CỦA BẠN</h1>\n<h1>SÁNG TẠO LÀ VŨ KHÍ TỐI THƯỢNG CỦA BẠN</h1>\n<p>Ngoài việc trang bị súng đạn, hãy chọn cho riêng mình một Đặc Vụ có kỹ năng phù hợp với lối chơi của bạn để giúp bạn tỏa sáng trong nhẫn màn đấu súng khốc liệt tại VALORANT.</p>\n<h1>BẢN ĐỒ CỦA BẠN</h1>\n<h1>CHIẾN ĐẤU KHẮP THẾ GIỚI</h1>\n<p>Mỗi bản đồ đều là một sân chơi để bạn thỏa sức thể hiện tư duy sáng tạo của mình. Được xây dựng với mục đích phát triển chiến lược đội nhóm, các bản đồ VALORANT hứa hẹn mang đến cho người chơi những trận giao tranh ngoạn ngục cùng với muôn vàn khoảnh khắc xuất thần. Hãy là nguồn cảm hứng cho tất cả người chơi VALORANT và tạo ra cho mình lối chơi độc nhất vô nhị.</p>\n', '\n# CHÚNG TÔI LÀ VALORANT\n\n\n# THÁCH THỨC MỌI GIỚI HẠN\n\n\n\nMang phong cách và trải nghiệm cá nhân tới đấu trường cạnh tranh toàn cầu. Sử dụng kỹ năng đấu súng cùng với lối tư duy chiến thuật sắc bén với hai phe tấn công và phòng thủ, thành bại được định đoạt chỉ trong 13 vòng đấu. Với chỉ 1 mạng mỗi vòng đấu, sự nhanh nhẹn và quyết đoán sẽ là yếu tố giúp bạn sống sót. Trải nghiệm VALORANT trong các chế độ chơi: Đấu Xếp Hạng, Đấu Thường, Sinh Tử và Spike Thần Tốc.\n\n\n\n# ĐẶC VỤ CỦA BẠN\n\n\n\n# SÁNG TẠO LÀ VŨ KHÍ TỐI THƯỢNG CỦA BẠN\n\n\nNgoài việc trang bị súng đạn, hãy chọn cho riêng mình một Đặc Vụ có kỹ năng phù hợp với lối chơi của bạn để giúp bạn tỏa sáng trong nhẫn màn đấu súng khốc liệt tại VALORANT.\n\n\n\n# BẢN ĐỒ CỦA BẠN\n\n\n\n# CHIẾN ĐẤU KHẮP THẾ GIỚI\n\n\nMỗi bản đồ đều là một sân chơi để bạn thỏa sức thể hiện tư duy sáng tạo của mình. Được xây dựng với mục đích phát triển chiến lược đội nhóm, các bản đồ VALORANT hứa hẹn mang đến cho người chơi những trận giao tranh ngoạn ngục cùng với muôn vàn khoảnh khắc xuất thần. Hãy là nguồn cảm hứng cho tất cả người chơi VALORANT và tạo ra cho mình lối chơi độc nhất vô nhị.', 'A2', 'S2', '2025-06-06 13:34:05', '2025-06-06 13:34:05'),
(9, '<h2>Mùa 2</h2>\n<h1>Hoa Linh Lục Địa Song Giới Chi Ngoại: Phần 1</h1>\n<p>Chỉ khi bắt đầu bước đi, con đường mới dần lộ diện. Hãy đặt bước chân đầu tiên đến thế giới thần thoại của mùa mới ngay hôm nay.</p>\n<h3>CHỌN NGAY MỘT</h3>\n<h1>TƯỚNG</h1>\n<p>Cho dù thích lao vào giao tranh, thích hỗ trợ đồng đội hoặc cả hai, bạn sẽ luôn tìm thấy vị trí thích hợp dành cho mình trong Summoner\'s Rift.</p>\n<h3>HẠ GỤC KẺ ĐỊCH</h3>\n<h1>MỘT CÁCH SANG CHẢNH</h1>\n<p>Thay đổi diện mạo các vị tướng yêu thích với trang phục để tạo nên điểm nhấn của riêng bạn.</p>\n<h3>CHẾ ĐỘ CHƠI PHỔ BIẾN NHẤT</h3>\n<p>Dọn đường, tham gia giao tranh tổng, phá hủy Nhà Chính của địch trước khi Nhà Chính của bạn bị phá hủy.</p>\n', '\n## Mùa 2\n\n\n\n# Hoa Linh Lục Địa Song Giới Chi Ngoại: Phần 1\n\n\nChỉ khi bắt đầu bước đi, con đường mới dần lộ diện. Hãy đặt bước chân đầu tiên đến thế giới thần thoại của mùa mới ngay hôm nay.\n\n\n\n### CHỌN NGAY MỘT\n\n\n\n# TƯỚNG\n\nCho dù thích lao vào giao tranh, thích hỗ trợ đồng đội hoặc cả hai, bạn sẽ luôn tìm thấy vị trí thích hợp dành cho mình trong Summoner\'s Rift.\n\n\n\n### HẠ GỤC KẺ ĐỊCH\n\n\n\n# MỘT CÁCH SANG CHẢNH\n\n\nThay đổi diện mạo các vị tướng yêu thích với trang phục để tạo nên điểm nhấn của riêng bạn.\n\n\n\n### CHẾ ĐỘ CHƠI PHỔ BIẾN NHẤT\n\n\nDọn đường, tham gia giao tranh tổng, phá hủy Nhà Chính của địch trước khi Nhà Chính của bạn bị phá hủy.', 'A2', 'S1', '2025-06-06 13:36:10', '2025-06-06 13:36:10'),
(10, '<h1><strong>TRIỆU QUÂN VÀ CHIẾN ĐẤU</strong></h1>\n<p>Lựa chọn, dàn trận và nâng cấp các tướng Liên Minh Huyền Thoại yêu thích của bạn trong trận chiến sống còn này. Tàn phá với tộc Ác Quỷ, giao tranh bằng hệ Đấu Sĩ hay biến đổi khôn lường với hệ Hóa Hình, quyết định hoàn toàn thuộc về bạn.</p>\n<h1></h1>\n<h1><strong>CHƠI Ở BẤT CỨ ĐÂU</strong></h1>\n<p>Hỗ trợ đa nền tảng cho phép bạn có thể chơi cùng bạn bè (và đè bẹp đối thủ) trên máy tính, Mac và cả di động.</p>\n<h1><strong>PHONG CÁCH CỦA RIÊNG BẠN</strong></h1>\n<p>Thể hiện bản thân bằng những điệu nhảy, biểu tượng cảm xúc của Linh Thú. Nói chung là khoe khoang một chút.</p>\n<h1><strong>ĐẤU TRƯỜNG CHÂN LÝ</strong></h1>\n<h1><strong>THÀNH PHỐ CÔNG NGHỆ</strong></h1>\n<p>Toàn bộ Thành Phố là của bạn. Họ chỉ không hiểu được điều đó mà thôi. Bên trong thế giới đẫm màn mưa của Đồng Quy Giới, các phe phái tranh đấu để tranh giành quyền kiểm soát siêu đô thị công nghệ. Vậy nên hãy tự hỏi bản thân rằng: bạn đã sẵn sàng để giành lấy vị trí của mình chưa?</p>\n', '\n# **TRIỆU QUÂN VÀ CHIẾN ĐẤU**\n\n\n\nLựa chọn, dàn trận và nâng cấp các tướng Liên Minh Huyền Thoại yêu thích của bạn trong trận chiến sống còn này. Tàn phá với tộc Ác Quỷ, giao tranh bằng hệ Đấu Sĩ hay biến đổi khôn lường với hệ Hóa Hình, quyết định hoàn toàn thuộc về bạn.\n# \n\n\n# **CHƠI Ở BẤT CỨ ĐÂU**\n\n\nHỗ trợ đa nền tảng cho phép bạn có thể chơi cùng bạn bè (và đè bẹp đối thủ) trên máy tính, Mac và cả di động.\n\n\n# **PHONG CÁCH CỦA RIÊNG BẠN**\n\n\nThể hiện bản thân bằng những điệu nhảy, biểu tượng cảm xúc của Linh Thú. Nói chung là khoe khoang một chút.\n\n\n\n# **ĐẤU TRƯỜNG CHÂN LÝ**\n\n\n\n# **THÀNH PHỐ CÔNG NGHỆ**\n\n\nToàn bộ Thành Phố là của bạn. Họ chỉ không hiểu được điều đó mà thôi. Bên trong thế giới đẫm màn mưa của Đồng Quy Giới, các phe phái tranh đấu để tranh giành quyền kiểm soát siêu đô thị công nghệ. Vậy nên hãy tự hỏi bản thân rằng: bạn đã sẵn sàng để giành lấy vị trí của mình chưa?', 'A2', 'S3', '2025-06-06 13:38:35', '2025-06-06 13:38:35'),
(11, '<h1><strong>CHÀO MỪNG ĐẾN VỚI TỐC CHIẾN</strong></h1>\n<p>Lập đội cùng bạn bè và thể hiện kỹ năng trong các trận chiến MOBA 5 đấu 5. Một trò chơi cạnh tranh khốc liệt đòi hỏi kỹ năng cao mà mọi game thủ mơ ước, được thiết kế đặc biệt dành cho thiết bị di động và console với cơ chế điều khiển phù hợp và hệ thống trận đấu tinh giản.</p>\n<h1><strong>HÃY CHỌN LẤY VỊ TƯỚNG CỦA BẠN</strong></h1>\n<p>Xông vào chiến trường với một thanh kiếm khổng lồ, đóng băng kẻ địch trên đường đi bằng mũi tên băng bay xuyên bản đồ hay nhử đối thủ đến gặp tử thần bằng bùa phép kỳ diệu. Sẽ luôn có một vị tướng phù hợp với phong cách chơi của bạn.</p>\n<h1><strong>TRANH TÀI CÙNG CHIẾN HỮU</strong></h1>\n<p>Bạn có thể tham gia hàng chờ cùng toàn đội 5 người, hoặc thử khả năng leo hạng trong chế độ đấu đơn. Mỗi trận đấu đều sẽ là cơ hội để bạn tung ra kỹ năng định hướng hoàn hảo, lật ngược thế cờ bằng khả năng phối hợp đồng đội tuyệt đỉnh hoặc thực hiện thành công pha pentakill xuất sắc.</p>\n', '\n# **CHÀO MỪNG ĐẾN VỚI TỐC CHIẾN**\n\n\nLập đội cùng bạn bè và thể hiện kỹ năng trong các trận chiến MOBA 5 đấu 5. Một trò chơi cạnh tranh khốc liệt đòi hỏi kỹ năng cao mà mọi game thủ mơ ước, được thiết kế đặc biệt dành cho thiết bị di động và console với cơ chế điều khiển phù hợp và hệ thống trận đấu tinh giản.\n\n\n# **HÃY CHỌN LẤY VỊ TƯỚNG CỦA BẠN**\n\n\nXông vào chiến trường với một thanh kiếm khổng lồ, đóng băng kẻ địch trên đường đi bằng mũi tên băng bay xuyên bản đồ hay nhử đối thủ đến gặp tử thần bằng bùa phép kỳ diệu. Sẽ luôn có một vị tướng phù hợp với phong cách chơi của bạn.\n\n\n# **TRANH TÀI CÙNG CHIẾN HỮU**\n\n\nBạn có thể tham gia hàng chờ cùng toàn đội 5 người, hoặc thử khả năng leo hạng trong chế độ đấu đơn. Mỗi trận đấu đều sẽ là cơ hội để bạn tung ra kỹ năng định hướng hoàn hảo, lật ngược thế cờ bằng khả năng phối hợp đồng đội tuyệt đỉnh hoặc thực hiện thành công pha pentakill xuất sắc.', 'A2', 'S4', '2025-06-06 13:39:43', '2025-06-06 13:39:43'),
(12, '<h3><strong>Be Legendary</strong></h3>\n<p>In this strategy card game, skill defines your success—not luck. Mix and match iconic champions, allies, and regions of Runeterra to unlock unique card synergies and outplay your opponent.</p>\n', '\n### **Be Legendary**\n\n\nIn this strategy card game, skill defines your success—not luck. Mix and match iconic champions, allies, and regions of Runeterra to unlock unique card synergies and outplay your opponent.', 'A2', 'S5', '2025-06-06 13:40:27', '2025-06-06 13:40:27'),
(13, '<h1><strong>under repair, to be continued</strong></h1>\n', '\n# **under repair, to be continued**\n', 'A3', 'Q1', '2025-06-06 13:42:39', '2025-06-06 13:42:39'),
(14, '<h1><strong>under repair, to be continued</strong></h1>\n', '# **under repair, to be continued**', 'A3', 'Q2', '2025-06-06 13:42:44', '2025-06-06 13:42:44'),
(15, '<h1><strong>under repair, to be continued</strong></h1>\n', '# **under repair, to be continued**', 'A4', 'E1', '2025-06-06 13:43:13', '2025-06-06 13:43:13'),
(16, '<h1><strong>under repair, to be continued</strong></h1>\n', '# **under repair, to be continued**', 'A4', 'E2', '2025-06-06 13:43:17', '2025-06-06 13:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('migration-create-allcode.js'),
('migration-create-inforpages.js'),
('migration-create-locationpage.js'),
('migration-Markdown.js'),
('migrations-create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `roleid`, `gender`, `phone`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'Hoàng', 'yani.gaming123@gmail.com', '$2b$10$2G6.t4AMAVJK3qnAxtzj2.TaHHtEd1wTpuK3RUb2EakWAs5jdto8u', 'Hà Nội', 'R1', 'M', 325542941, '2025-05-31 12:24:32', '2025-06-06 12:57:44'),
(6, 'User', 'van', 'yani@gmail.com', '$2b$10$MtFykF15rPHl12vaIILU5.iRX0/qWhOzj3HlNxfskCF5PaDTR5lOe', 'hai phong', 'R2', 'F', 2147483647, '2025-06-05 18:01:47', '2025-06-06 12:57:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allcodes`
--
ALTER TABLE `allcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inforpages`
--
ALTER TABLE `inforpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locationpage`
--
ALTER TABLE `locationpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markdown`
--
ALTER TABLE `markdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allcodes`
--
ALTER TABLE `allcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inforpages`
--
ALTER TABLE `inforpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locationpage`
--
ALTER TABLE `locationpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `markdown`
--
ALTER TABLE `markdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
