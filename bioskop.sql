-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2020 at 10:47 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bioskopi`
--

CREATE TABLE `bioskopi` (
  `bioskop` varchar(50) NOT NULL,
  `lokacija` varchar(50) NOT NULL,
  `grad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bioskopi`
--

INSERT INTO `bioskopi` (`bioskop`, `lokacija`, `grad`) VALUES
('Cineplexx', 'Ušće', 'Novi Beograd'),
('Dolly Bell', 'Kralja Petra 20', 'Visegrad'),
('Fontana', 'Париске комуне 13', 'Novi Beograd'),
('Roda', 'Požeška 83a', 'Voždovac');

-- --------------------------------------------------------

--
-- Table structure for table `detaljifilma`
--

CREATE TABLE `detaljifilma` (
  `detalji_ID` int(11) NOT NULL,
  `film_ID` int(11) NOT NULL,
  `sala_ID` int(11) NOT NULL,
  `bioskop` varchar(50) NOT NULL,
  `datumvreme` varchar(100) NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detaljifilma`
--

INSERT INTO `detaljifilma` (`detalji_ID`, `film_ID`, `sala_ID`, `bioskop`, `datumvreme`, `cena`) VALUES
(1, 1, 1, 'Roda', '2020-11-02 00:37:24', 350),
(2, 2, 2, 'Roda', '2020-09-26 18:30:00', 450),
(3, 3, 3, 'Roda', '2020-09-29 20:30:17', 400),
(4, 4, 4, 'Fontana', '2020-09-30 20:36:33', 350),
(5, 5, 5, 'Cineplexx', '2020-09-29 18:37:32', 400),
(6, 6, 4, 'Fontana', '2020-09-25 18:38:54', 400),
(9, 11, 3, 'Fontana', '2020-11-09 16:56:06', 450);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `film_ID` int(11) NOT NULL,
  `film` varchar(60) NOT NULL,
  `tehnologija` varchar(30) NOT NULL,
  `trajanje` varchar(20) NOT NULL,
  `reziser` varchar(30) NOT NULL,
  `glumci` varchar(100) NOT NULL,
  `godina` varchar(10) NOT NULL,
  `zanr` varchar(40) NOT NULL,
  `opis` varchar(1500) NOT NULL,
  `video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`film_ID`, `film`, `tehnologija`, `trajanje`, `reziser`, `glumci`, `godina`, `zanr`, `opis`, `video`) VALUES
(1, ' The Shawshank Redemption ', '2D', '98', 'Frank Darabont', ' Tim Robbins, Morgan Freeman, Bob Gunton', '1994', 'Drama', 'Godine 1947, bankar Endi Dufren (Tim Robins) je otpužen za ubistvo svoje supruge i njenog ljubavnika, i osuđen je na dve doživotne kazne u Šošenk Državnom zatvoru. Endi se ubrzo sprijateljio sa švercerom Elisom \"Redom\" Redingom (Morgan Frimen), zatvorenikom koji služi doživotnu. Red nabljva Endiju čekić, što mu pruža mogućnost pravljenja malih figura za šah. Red mu kasnije nabavlja veliki poster Rite Hejvort, zatim i fotografije Merlin Monro i Rakel Velč. Endi radi u perionici veša, ali ga redovno napadaju gejevi tzv. \"Sestrice\" sa vođom, Bogsom (Mark Rolston).', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6hB3S9bIaco\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 'Venom', '3D', '102', 'Ruben Fleischer', 'Tom Hardy, Riz Ahmed, Michelle Williams', '2018', 'akcija, fantazija, horor, SF', 'Kada novinar Edi Brok u svojem istraživanju igrom slučaja postane domaćin vanzemaljskog stvorenja, on postaje Venom. Vanzemaljski oblik ga potpuno obuzima i oduzima mu slobodnu volju. Edi postaje svestan da pravila sada neko drugi diktira i da je svako opiranje uzaludno. Pored Toma Hardija, glumačku postavu pojačala je i prelepa Mišel Vilijams u jednoj od glavnih uloga, dok je za filmsku akciju zaslužan reditelj Ruben Flajšer, poznat po odličnom balansiranju između komedije i zabave.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xLCn88bfW1o\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 'Peter Rabbit', '2D', '90', 'Will Gluck', 'James Corden, Fayssal Bazzi, Domhnall Gleeson', '2018', 'Adventure, Comedy, Family', 'Kada na farmu po svoje nasledstvo dođe mlađi gospodin Toma Gregor, koji je daleko bistriji i oštroumniji, za Petra to znači samo dodatni izazov, nikako prestanak zabave. Ali mladi Gregor nije samo neverovatan neprijatelj, već i potencijalni suparnik. On se zaljubljuje u lokalnu slikarku Bibu koja je ujedno i zekina surogat majka. Sada Petar ima dvostruko više razloga da otera uljeza što na kraju rezultira pravom bitkom, kako za farmu, tako i za naklonost lepe Bibe.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7Pa_Weidt08\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 'DeadPool', '3D', '130', 'David Leitch', 'Ryan Reynolds, Morena Baccarin, Josh Brolin, Brianna Hildebrand', '2018', 'Action, Fantasy', 'Ne bi li nekako sebi zabiberio život, a u potrazi za kondenzatorom fluksa, Vejd mora da se bori protiv nindži, jakuza i čopora seksualno agresivnih pasa, putujući po svetu i otkrivajući važnost porodice, prijatelja i ukusa. Ono što će naći jeste dašak avanture i nešto za čime je žudeo, a to je šolja za kafu s titulom „Najbolji ljubavnik na svetu\" na njoj.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/D86RtevtfrA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'Adrift', '2D', '120', 'Baltasar Kormákur', 'Shailene Woodley, Sam Claflin, Jeffrey Thomas', '2018', 'Action, Adventure, Biography', 'ilm je zasnovan na istinitoj priči o Tami Oldham i njenom vereniku, Ričardu Šarpu, koji su se zaputili na putovanje preko okeana, ne sluteći da će ih zadesiti najveći uragan u istoriji. Nakon oluje, Tami se budi i pronalazi njihov uništeni brod i teško povređenog Ričarda. Bez ikakve navigacije i drugih pomagala, Tami će morati da skupi snagu i vrati ih na sigurno.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/If2lCD0SQrE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, 'Pacific Rim: Uprising', '3D', '95', 'Action, Adventure, Sci-Fi ', 'John Boyega, Scott Eastwood, Cailee Spaeny', '2018', 'Action, Adventure, Sci-Fi', 'Globalni sukob između čudovišta za masovno uništenje koja nisu sa planete Zemlje i super mašina koje su stvorene da ih unište, a kojima upravljaju ljudi, biće samo uvod u napad na čovečanstvo epskih razmera, u filmu BITKA ZA PACIFIK – POBUNA. Džon Bojega (Star Wars – Buđenje Sile) igra pobunjenika Džejka Pentekosta, nekada talentovanog pilota čiji je otac postao legenda rizikujući svoj život da bi se osigurala pobeda čovečanstva nad monstruoznim \'\'Kaiju\'\'. Džejk je od tada napustio trening i obuku i oprobao se u svetu kriminala. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_EhiLLOhVis\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(11, 'Shindlers List', '2D', '105', 'Steven Spielberg', ' Liam Neeson, Ralph Fiennes, Ben Kingsley', '1993', ' Biography, Drama, History', 'Holokaust je definitivno jedan od najstraÅ¡nijih i najupeÄatljivijih dogaÄaja dvadesetog veka. U periodu izmeÄu 1938 â 1945 godine, Jevrejska populacija je bila uhoÄena i izdvajana, imajuÄi kao rezultat nemilosrdno ubijanje oko Å¡est miliona neduÅ¾nih ljudi. Usred svog ovog pokolja, jedan Äovek je odluÄio da se zaloÅ¾i i istakne, tako Å¡to Äe spasiti oko 1100 ljudi, Å¡to Å¾ena, Å¡to dece ovih trenutno potlaÄenih ljudi.', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mxphAlJID9U\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnik_ID` int(11) NOT NULL,
  `ime` varchar(40) NOT NULL,
  `prezime` varchar(40) NOT NULL,
  `userType` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `telefon` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_ID`, `ime`, `prezime`, `userType`, `password`, `userName`, `telefon`, `email`, `pol`) VALUES
(1, 'Petar', 'Petrovic', 'admin', 'admin', 'admin', '0645216565', 'petar@qq.com', 'Muski'),
(2, 'Marko', 'Markovic', 'menadzer', '1234', 'Mare', '06455454578', 'Marko@gmail.com', 'Muski'),
(263, 'Mitar', 'Miric', 'korisnik', 'mitar', 'mitar', '065452565', 'Mitar', 'MuÅ¡ki'),
(270, 'Matija', 'Topalovic', 'menadzer', '1234', 'mato', '032566566', 'mato@gmail.com', 'MuÅ¡ki'),
(272, 'Milos', 'Bojanic', 'menadzer', '1234', 'mile', '02156554', 'mile@gmail.com', 'MuÅ¡ki'),
(273, 'Sanja', 'Maric', 'menadzer', '1234', 'sanja', '0645522545', 'Sanja@gmail.com', 'Å½enski');

-- --------------------------------------------------------

--
-- Table structure for table `narudzbe`
--

CREATE TABLE `narudzbe` (
  `narudzbe_ID` int(11) NOT NULL,
  `korisnik_ID` int(11) NOT NULL,
  `film_ID` int(11) NOT NULL,
  `sediste_ID` int(11) NOT NULL,
  `datum` varchar(50) NOT NULL,
  `ukupnaCena` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `narudzbe`
--

INSERT INTO `narudzbe` (`narudzbe_ID`, `korisnik_ID`, `film_ID`, `sediste_ID`, `datum`, `ukupnaCena`) VALUES
(25, 263, 2, 145, '2020-09-27 20:57:00', 450),
(26, 263, 1, 41, '2020-09-27 21:28:52', 350);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `sala_ID` int(11) NOT NULL,
  `brojredova` int(11) NOT NULL,
  `brojkolona` int(11) NOT NULL,
  `ukupno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`sala_ID`, `brojredova`, `brojkolona`, `ukupno`) VALUES
(1, 12, 12, 144),
(2, 12, 12, 144),
(3, 12, 12, 144),
(4, 12, 12, 144),
(5, 12, 12, 144);

-- --------------------------------------------------------

--
-- Table structure for table `sedista`
--

CREATE TABLE `sedista` (
  `sediste_ID` int(11) NOT NULL,
  `detalji_ID` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  `kolona` int(11) NOT NULL,
  `rezervisano` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sedista`
--

INSERT INTO `sedista` (`sediste_ID`, `detalji_ID`, `red`, `kolona`, `rezervisano`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 2, 0),
(3, 1, 1, 3, 0),
(4, 1, 1, 4, 0),
(5, 1, 1, 5, 0),
(6, 1, 1, 6, 0),
(7, 1, 1, 7, 0),
(8, 1, 1, 8, 0),
(9, 1, 1, 9, 0),
(10, 1, 1, 10, 0),
(11, 1, 1, 11, 0),
(12, 1, 1, 12, 0),
(13, 1, 2, 1, 0),
(14, 1, 2, 2, 0),
(15, 1, 2, 3, 0),
(16, 1, 2, 4, 0),
(17, 1, 2, 5, 0),
(18, 1, 2, 6, 0),
(19, 1, 2, 7, 0),
(20, 1, 2, 8, 0),
(21, 1, 2, 9, 0),
(22, 1, 2, 10, 0),
(23, 1, 2, 11, 0),
(24, 1, 2, 12, 0),
(25, 1, 3, 1, 1),
(26, 1, 3, 2, 0),
(27, 1, 3, 3, 0),
(28, 1, 3, 4, 0),
(29, 1, 3, 5, 0),
(30, 1, 3, 6, 0),
(31, 1, 3, 7, 0),
(32, 1, 3, 8, 0),
(33, 1, 3, 9, 0),
(34, 1, 3, 10, 0),
(35, 1, 3, 11, 0),
(36, 1, 3, 12, 0),
(37, 1, 4, 1, 0),
(38, 1, 4, 2, 0),
(39, 1, 4, 3, 0),
(40, 1, 4, 4, 1),
(41, 1, 4, 5, 1),
(42, 1, 4, 6, 0),
(43, 1, 4, 7, 0),
(44, 1, 4, 8, 0),
(45, 1, 4, 9, 0),
(46, 1, 4, 10, 0),
(47, 1, 4, 11, 0),
(48, 1, 4, 12, 0),
(49, 1, 5, 1, 0),
(50, 1, 5, 2, 0),
(51, 1, 5, 3, 0),
(52, 1, 5, 4, 0),
(53, 1, 5, 5, 0),
(54, 1, 5, 6, 0),
(55, 1, 5, 7, 0),
(56, 1, 5, 8, 0),
(57, 1, 5, 9, 0),
(58, 1, 5, 10, 0),
(59, 1, 5, 11, 0),
(60, 1, 5, 12, 0),
(61, 1, 6, 1, 1),
(62, 1, 6, 2, 0),
(63, 1, 6, 3, 0),
(64, 1, 6, 4, 0),
(65, 1, 6, 5, 0),
(66, 1, 6, 6, 0),
(67, 1, 6, 7, 0),
(68, 1, 6, 8, 0),
(69, 1, 6, 9, 0),
(70, 1, 6, 10, 0),
(71, 1, 6, 11, 0),
(72, 1, 6, 12, 0),
(73, 1, 7, 1, 0),
(74, 1, 7, 2, 0),
(75, 1, 7, 3, 0),
(76, 1, 7, 4, 0),
(77, 1, 7, 5, 0),
(78, 1, 7, 6, 0),
(79, 1, 7, 7, 0),
(80, 1, 7, 8, 0),
(81, 1, 7, 9, 0),
(82, 1, 7, 10, 0),
(83, 1, 7, 11, 0),
(84, 1, 7, 12, 0),
(85, 1, 8, 1, 0),
(86, 1, 8, 2, 0),
(87, 1, 8, 3, 0),
(88, 1, 8, 4, 0),
(89, 1, 8, 5, 0),
(90, 1, 8, 6, 0),
(91, 1, 8, 7, 0),
(92, 1, 8, 8, 0),
(93, 1, 8, 9, 0),
(94, 1, 8, 10, 0),
(95, 1, 8, 11, 0),
(96, 1, 8, 12, 0),
(97, 1, 9, 1, 0),
(98, 1, 9, 2, 0),
(99, 1, 9, 3, 0),
(100, 1, 9, 4, 0),
(101, 1, 9, 5, 0),
(102, 1, 9, 6, 0),
(103, 1, 9, 7, 0),
(104, 1, 9, 8, 0),
(105, 1, 9, 9, 0),
(106, 1, 9, 10, 0),
(107, 1, 9, 11, 0),
(108, 1, 9, 12, 0),
(109, 1, 10, 1, 0),
(110, 1, 10, 2, 0),
(111, 1, 10, 3, 0),
(112, 1, 10, 4, 0),
(113, 1, 10, 5, 0),
(114, 1, 10, 6, 0),
(115, 1, 10, 7, 0),
(116, 1, 10, 8, 0),
(117, 1, 10, 9, 0),
(118, 1, 10, 10, 0),
(119, 1, 10, 11, 0),
(120, 1, 10, 12, 0),
(121, 1, 11, 1, 0),
(122, 1, 11, 2, 0),
(123, 1, 11, 3, 0),
(124, 1, 11, 4, 0),
(125, 1, 11, 5, 0),
(126, 1, 11, 6, 0),
(127, 1, 11, 7, 0),
(128, 1, 11, 8, 0),
(129, 1, 11, 9, 0),
(130, 1, 11, 10, 0),
(131, 1, 11, 11, 0),
(132, 1, 11, 12, 0),
(133, 1, 12, 1, 0),
(134, 1, 12, 2, 0),
(135, 1, 12, 3, 0),
(136, 1, 12, 4, 0),
(137, 1, 12, 5, 0),
(138, 1, 12, 6, 0),
(139, 1, 12, 7, 0),
(140, 1, 12, 8, 0),
(141, 1, 12, 9, 0),
(142, 1, 12, 10, 0),
(143, 1, 12, 11, 0),
(144, 1, 12, 12, 0),
(145, 2, 1, 1, 1),
(146, 2, 1, 2, 0),
(147, 2, 1, 3, 0),
(148, 2, 1, 4, 0),
(149, 2, 1, 5, 0),
(150, 2, 1, 6, 0),
(151, 2, 1, 7, 0),
(152, 2, 1, 8, 0),
(153, 2, 1, 9, 0),
(154, 2, 1, 10, 0),
(155, 2, 1, 11, 0),
(156, 2, 1, 12, 0),
(157, 2, 2, 1, 0),
(158, 2, 2, 2, 0),
(159, 2, 2, 3, 0),
(160, 2, 2, 4, 0),
(161, 2, 2, 5, 0),
(162, 2, 2, 6, 0),
(163, 2, 2, 7, 0),
(164, 2, 2, 8, 0),
(165, 2, 2, 9, 0),
(166, 2, 2, 10, 0),
(167, 2, 2, 11, 0),
(168, 2, 2, 12, 0),
(169, 2, 3, 1, 0),
(170, 2, 3, 2, 0),
(171, 2, 3, 3, 0),
(172, 2, 3, 4, 0),
(173, 2, 3, 5, 0),
(174, 2, 3, 6, 0),
(175, 2, 3, 7, 0),
(176, 2, 3, 8, 0),
(177, 2, 3, 9, 0),
(178, 2, 3, 10, 0),
(179, 2, 3, 11, 0),
(180, 2, 3, 12, 0),
(181, 2, 4, 1, 0),
(182, 2, 4, 2, 0),
(183, 2, 4, 3, 0),
(184, 2, 4, 4, 0),
(185, 2, 4, 5, 0),
(186, 2, 4, 6, 0),
(187, 2, 4, 7, 0),
(188, 2, 4, 8, 0),
(189, 2, 4, 9, 0),
(190, 2, 4, 10, 0),
(191, 2, 4, 11, 0),
(192, 2, 4, 12, 0),
(193, 2, 5, 1, 0),
(194, 2, 5, 2, 0),
(195, 2, 5, 3, 0),
(196, 2, 5, 4, 0),
(197, 2, 5, 5, 0),
(198, 2, 5, 6, 0),
(199, 2, 5, 7, 0),
(200, 2, 5, 8, 0),
(201, 2, 5, 9, 0),
(202, 2, 5, 10, 0),
(203, 2, 5, 11, 0),
(204, 2, 5, 12, 0),
(205, 2, 6, 1, 0),
(206, 2, 6, 2, 0),
(207, 2, 6, 3, 0),
(208, 2, 6, 4, 0),
(209, 2, 6, 5, 0),
(210, 2, 6, 6, 0),
(211, 2, 6, 7, 0),
(212, 2, 6, 8, 0),
(213, 2, 6, 9, 0),
(214, 2, 6, 10, 0),
(215, 2, 6, 11, 0),
(216, 2, 6, 12, 0),
(217, 2, 7, 1, 0),
(218, 2, 7, 2, 0),
(219, 2, 7, 3, 0),
(220, 2, 7, 4, 0),
(221, 2, 7, 5, 0),
(222, 2, 7, 6, 0),
(223, 2, 7, 7, 1),
(224, 2, 7, 8, 0),
(225, 2, 7, 9, 0),
(226, 2, 7, 10, 0),
(227, 2, 7, 11, 0),
(228, 2, 7, 12, 0),
(229, 2, 8, 1, 0),
(230, 2, 8, 2, 0),
(231, 2, 8, 3, 0),
(232, 2, 8, 4, 0),
(233, 2, 8, 5, 0),
(234, 2, 8, 6, 0),
(235, 2, 8, 7, 0),
(236, 2, 8, 8, 0),
(237, 2, 8, 9, 0),
(238, 2, 8, 10, 0),
(239, 2, 8, 11, 0),
(240, 2, 8, 12, 0),
(241, 2, 9, 1, 0),
(242, 2, 9, 2, 0),
(243, 2, 9, 3, 0),
(244, 2, 9, 4, 0),
(245, 2, 9, 5, 0),
(246, 2, 9, 6, 0),
(247, 2, 9, 7, 0),
(248, 2, 9, 8, 0),
(249, 2, 9, 9, 0),
(250, 2, 9, 10, 0),
(251, 2, 9, 11, 0),
(252, 2, 9, 12, 0),
(253, 2, 10, 1, 0),
(254, 2, 10, 2, 0),
(255, 2, 10, 3, 0),
(256, 2, 10, 4, 0),
(257, 2, 10, 5, 0),
(258, 2, 10, 6, 0),
(259, 2, 10, 7, 0),
(260, 2, 10, 8, 0),
(261, 2, 10, 9, 0),
(262, 2, 10, 10, 0),
(263, 2, 10, 11, 0),
(264, 2, 10, 12, 0),
(265, 2, 11, 1, 0),
(266, 2, 11, 2, 0),
(267, 2, 11, 3, 0),
(268, 2, 11, 4, 0),
(269, 2, 11, 5, 0),
(270, 2, 11, 6, 0),
(271, 2, 11, 7, 0),
(272, 2, 11, 8, 0),
(273, 2, 11, 9, 0),
(274, 2, 11, 10, 0),
(275, 2, 11, 11, 0),
(276, 2, 11, 12, 0),
(277, 2, 12, 1, 0),
(278, 2, 12, 2, 0),
(279, 2, 12, 3, 0),
(280, 2, 12, 4, 0),
(281, 2, 12, 5, 0),
(282, 2, 12, 6, 0),
(283, 2, 12, 7, 0),
(284, 2, 12, 8, 0),
(285, 2, 12, 9, 0),
(286, 2, 12, 10, 0),
(287, 2, 12, 11, 0),
(288, 2, 12, 12, 0),
(289, 3, 1, 1, 1),
(290, 3, 1, 2, 0),
(291, 3, 1, 3, 0),
(292, 3, 1, 4, 0),
(293, 3, 1, 5, 0),
(294, 3, 1, 6, 0),
(295, 3, 1, 7, 0),
(296, 3, 1, 8, 0),
(297, 3, 1, 9, 0),
(298, 3, 1, 10, 0),
(299, 3, 1, 11, 0),
(300, 3, 1, 12, 0),
(301, 3, 2, 1, 0),
(302, 3, 2, 2, 0),
(303, 3, 2, 3, 0),
(304, 3, 2, 4, 0),
(305, 3, 2, 5, 0),
(306, 3, 2, 6, 0),
(307, 3, 2, 7, 0),
(308, 3, 2, 8, 0),
(309, 3, 2, 9, 0),
(310, 3, 2, 10, 0),
(311, 3, 2, 11, 0),
(312, 3, 2, 12, 0),
(313, 3, 3, 1, 0),
(314, 3, 3, 2, 0),
(315, 3, 3, 3, 0),
(316, 3, 3, 4, 0),
(317, 3, 3, 5, 0),
(318, 3, 3, 6, 0),
(319, 3, 3, 7, 0),
(320, 3, 3, 8, 0),
(321, 3, 3, 9, 0),
(322, 3, 3, 10, 0),
(323, 3, 3, 11, 0),
(324, 3, 3, 12, 0),
(325, 3, 4, 1, 0),
(326, 3, 4, 2, 0),
(327, 3, 4, 3, 0),
(328, 3, 4, 4, 0),
(329, 3, 4, 5, 0),
(330, 3, 4, 6, 0),
(331, 3, 4, 7, 0),
(332, 3, 4, 8, 0),
(333, 3, 4, 9, 0),
(334, 3, 4, 10, 0),
(335, 3, 4, 11, 0),
(336, 3, 4, 12, 0),
(337, 3, 5, 1, 0),
(338, 3, 5, 2, 0),
(339, 3, 5, 3, 0),
(340, 3, 5, 4, 0),
(341, 3, 5, 5, 1),
(342, 3, 5, 6, 0),
(343, 3, 5, 7, 0),
(344, 3, 5, 8, 0),
(345, 3, 5, 9, 0),
(346, 3, 5, 10, 0),
(347, 3, 5, 11, 0),
(348, 3, 5, 12, 0),
(349, 3, 6, 1, 0),
(350, 3, 6, 2, 0),
(351, 3, 6, 3, 0),
(352, 3, 6, 4, 0),
(353, 3, 6, 5, 0),
(354, 3, 6, 6, 0),
(355, 3, 6, 7, 0),
(356, 3, 6, 8, 0),
(357, 3, 6, 9, 0),
(358, 3, 6, 10, 0),
(359, 3, 6, 11, 0),
(360, 3, 6, 12, 0),
(361, 3, 7, 1, 0),
(362, 3, 7, 2, 0),
(363, 3, 7, 3, 0),
(364, 3, 7, 4, 0),
(365, 3, 7, 5, 0),
(366, 3, 7, 6, 0),
(367, 3, 7, 7, 0),
(368, 3, 7, 8, 0),
(369, 3, 7, 9, 0),
(370, 3, 7, 10, 0),
(371, 3, 7, 11, 0),
(372, 3, 7, 12, 0),
(373, 3, 8, 1, 0),
(374, 3, 8, 2, 0),
(375, 3, 8, 3, 0),
(376, 3, 8, 4, 0),
(377, 3, 8, 5, 0),
(378, 3, 8, 6, 0),
(379, 3, 8, 7, 0),
(380, 3, 8, 8, 0),
(381, 3, 8, 9, 0),
(382, 3, 8, 10, 0),
(383, 3, 8, 11, 0),
(384, 3, 8, 12, 0),
(385, 3, 9, 1, 0),
(386, 3, 9, 2, 0),
(387, 3, 9, 3, 0),
(388, 3, 9, 4, 0),
(389, 3, 9, 5, 0),
(390, 3, 9, 6, 0),
(391, 3, 9, 7, 0),
(392, 3, 9, 8, 0),
(393, 3, 9, 9, 0),
(394, 3, 9, 10, 0),
(395, 3, 9, 11, 0),
(396, 3, 9, 12, 0),
(397, 3, 10, 1, 0),
(398, 3, 10, 2, 0),
(399, 3, 10, 3, 0),
(400, 3, 10, 4, 0),
(401, 3, 10, 5, 0),
(402, 3, 10, 6, 0),
(403, 3, 10, 7, 0),
(404, 3, 10, 8, 0),
(405, 3, 10, 9, 0),
(406, 3, 10, 10, 0),
(407, 3, 10, 11, 0),
(408, 3, 10, 12, 0),
(409, 3, 11, 1, 0),
(410, 3, 11, 2, 0),
(411, 3, 11, 3, 0),
(412, 3, 11, 4, 0),
(413, 3, 11, 5, 0),
(414, 3, 11, 6, 0),
(415, 3, 11, 7, 0),
(416, 3, 11, 8, 0),
(417, 3, 11, 9, 0),
(418, 3, 11, 10, 0),
(419, 3, 11, 11, 0),
(420, 3, 11, 12, 0),
(421, 3, 12, 1, 0),
(422, 3, 12, 2, 0),
(423, 3, 12, 3, 0),
(424, 3, 12, 4, 0),
(425, 3, 12, 5, 0),
(426, 3, 12, 6, 0),
(427, 3, 12, 7, 0),
(428, 3, 12, 8, 0),
(429, 3, 12, 9, 0),
(430, 3, 12, 10, 0),
(431, 3, 12, 11, 0),
(432, 3, 12, 12, 0),
(433, 4, 1, 1, 1),
(434, 4, 1, 2, 0),
(435, 4, 1, 3, 0),
(436, 4, 1, 4, 0),
(437, 4, 1, 5, 0),
(438, 4, 1, 6, 0),
(439, 4, 1, 7, 0),
(440, 4, 1, 8, 0),
(441, 4, 1, 9, 0),
(442, 4, 1, 10, 0),
(443, 4, 1, 11, 0),
(444, 4, 1, 12, 0),
(445, 4, 2, 1, 0),
(446, 4, 2, 2, 0),
(447, 4, 2, 3, 0),
(448, 4, 2, 4, 0),
(449, 4, 2, 5, 0),
(450, 4, 2, 6, 0),
(451, 4, 2, 7, 0),
(452, 4, 2, 8, 0),
(453, 4, 2, 9, 0),
(454, 4, 2, 10, 0),
(455, 4, 2, 11, 0),
(456, 4, 2, 12, 0),
(457, 4, 3, 1, 0),
(458, 4, 3, 2, 0),
(459, 4, 3, 3, 1),
(460, 4, 3, 4, 0),
(461, 4, 3, 5, 0),
(462, 4, 3, 6, 0),
(463, 4, 3, 7, 0),
(464, 4, 3, 8, 0),
(465, 4, 3, 9, 0),
(466, 4, 3, 10, 0),
(467, 4, 3, 11, 0),
(468, 4, 3, 12, 0),
(469, 4, 4, 1, 0),
(470, 4, 4, 2, 0),
(471, 4, 4, 3, 0),
(472, 4, 4, 4, 0),
(473, 4, 4, 5, 0),
(474, 4, 4, 6, 0),
(475, 4, 4, 7, 0),
(476, 4, 4, 8, 0),
(477, 4, 4, 9, 0),
(478, 4, 4, 10, 0),
(479, 4, 4, 11, 0),
(480, 4, 4, 12, 0),
(481, 4, 5, 1, 0),
(482, 4, 5, 2, 0),
(483, 4, 5, 3, 0),
(484, 4, 5, 4, 0),
(485, 4, 5, 5, 0),
(486, 4, 5, 6, 0),
(487, 4, 5, 7, 0),
(488, 4, 5, 8, 0),
(489, 4, 5, 9, 0),
(490, 4, 5, 10, 0),
(491, 4, 5, 11, 0),
(492, 4, 5, 12, 0),
(493, 4, 6, 1, 0),
(494, 4, 6, 2, 0),
(495, 4, 6, 3, 0),
(496, 4, 6, 4, 0),
(497, 4, 6, 5, 0),
(498, 4, 6, 6, 0),
(499, 4, 6, 7, 0),
(500, 4, 6, 8, 0),
(501, 4, 6, 9, 0),
(502, 4, 6, 10, 0),
(503, 4, 6, 11, 0),
(504, 4, 6, 12, 0),
(505, 4, 7, 1, 0),
(506, 4, 7, 2, 0),
(507, 4, 7, 3, 0),
(508, 4, 7, 4, 0),
(509, 4, 7, 5, 0),
(510, 4, 7, 6, 0),
(511, 4, 7, 7, 0),
(512, 4, 7, 8, 0),
(513, 4, 7, 9, 0),
(514, 4, 7, 10, 0),
(515, 4, 7, 11, 0),
(516, 4, 7, 12, 0),
(517, 4, 8, 1, 0),
(518, 4, 8, 2, 0),
(519, 4, 8, 3, 0),
(520, 4, 8, 4, 0),
(521, 4, 8, 5, 0),
(522, 4, 8, 6, 0),
(523, 4, 8, 7, 0),
(524, 4, 8, 8, 0),
(525, 4, 8, 9, 0),
(526, 4, 8, 10, 0),
(527, 4, 8, 11, 0),
(528, 4, 8, 12, 0),
(529, 4, 9, 1, 0),
(530, 4, 9, 2, 0),
(531, 4, 9, 3, 0),
(532, 4, 9, 4, 0),
(533, 4, 9, 5, 0),
(534, 4, 9, 6, 0),
(535, 4, 9, 7, 0),
(536, 4, 9, 8, 0),
(537, 4, 9, 9, 0),
(538, 4, 9, 10, 0),
(539, 4, 9, 11, 0),
(540, 4, 9, 12, 0),
(541, 4, 10, 1, 0),
(542, 4, 10, 2, 0),
(543, 4, 10, 3, 0),
(544, 4, 10, 4, 0),
(545, 4, 10, 5, 0),
(546, 4, 10, 6, 0),
(547, 4, 10, 7, 0),
(548, 4, 10, 8, 0),
(549, 4, 10, 9, 0),
(550, 4, 10, 10, 0),
(551, 4, 10, 11, 0),
(552, 4, 10, 12, 0),
(553, 4, 11, 1, 0),
(554, 4, 11, 2, 0),
(555, 4, 11, 3, 0),
(556, 4, 11, 4, 0),
(557, 4, 11, 5, 0),
(558, 4, 11, 6, 0),
(559, 4, 11, 7, 0),
(560, 4, 11, 8, 0),
(561, 4, 11, 9, 0),
(562, 4, 11, 10, 0),
(563, 4, 11, 11, 0),
(564, 4, 11, 12, 0),
(565, 4, 12, 1, 0),
(566, 4, 12, 2, 0),
(567, 4, 12, 3, 0),
(568, 4, 12, 4, 0),
(569, 4, 12, 5, 0),
(570, 4, 12, 6, 0),
(571, 4, 12, 7, 0),
(572, 4, 12, 8, 0),
(573, 4, 12, 9, 0),
(574, 4, 12, 10, 0),
(575, 4, 12, 11, 0),
(576, 4, 12, 12, 0),
(577, 5, 1, 1, 0),
(578, 5, 1, 2, 0),
(579, 5, 1, 3, 0),
(580, 5, 1, 4, 0),
(581, 5, 1, 5, 0),
(582, 5, 1, 6, 0),
(583, 5, 1, 7, 0),
(584, 5, 1, 8, 0),
(585, 5, 1, 9, 0),
(586, 5, 1, 10, 0),
(587, 5, 1, 11, 0),
(588, 5, 1, 12, 0),
(589, 5, 2, 1, 0),
(590, 5, 2, 2, 0),
(591, 5, 2, 3, 0),
(592, 5, 2, 4, 0),
(593, 5, 2, 5, 0),
(594, 5, 2, 6, 0),
(595, 5, 2, 7, 0),
(596, 5, 2, 8, 0),
(597, 5, 2, 9, 0),
(598, 5, 2, 10, 0),
(599, 5, 2, 11, 0),
(600, 5, 2, 12, 0),
(601, 5, 3, 1, 0),
(602, 5, 3, 2, 0),
(603, 5, 3, 3, 0),
(604, 5, 3, 4, 0),
(605, 5, 3, 5, 0),
(606, 5, 3, 6, 0),
(607, 5, 3, 7, 0),
(608, 5, 3, 8, 0),
(609, 5, 3, 9, 0),
(610, 5, 3, 10, 0),
(611, 5, 3, 11, 0),
(612, 5, 3, 12, 0),
(613, 5, 4, 1, 0),
(614, 5, 4, 2, 0),
(615, 5, 4, 3, 0),
(616, 5, 4, 4, 0),
(617, 5, 4, 5, 0),
(618, 5, 4, 6, 0),
(619, 5, 4, 7, 0),
(620, 5, 4, 8, 0),
(621, 5, 4, 9, 0),
(622, 5, 4, 10, 0),
(623, 5, 4, 11, 0),
(624, 5, 4, 12, 0),
(625, 5, 5, 1, 0),
(626, 5, 5, 2, 0),
(627, 5, 5, 3, 0),
(628, 5, 5, 4, 0),
(629, 5, 5, 5, 0),
(630, 5, 5, 6, 0),
(631, 5, 5, 7, 0),
(632, 5, 5, 8, 0),
(633, 5, 5, 9, 0),
(634, 5, 5, 10, 0),
(635, 5, 5, 11, 0),
(636, 5, 5, 12, 0),
(637, 5, 6, 1, 0),
(638, 5, 6, 2, 0),
(639, 5, 6, 3, 0),
(640, 5, 6, 4, 0),
(641, 5, 6, 5, 0),
(642, 5, 6, 6, 0),
(643, 5, 6, 7, 0),
(644, 5, 6, 8, 0),
(645, 5, 6, 9, 0),
(646, 5, 6, 10, 0),
(647, 5, 6, 11, 0),
(648, 5, 6, 12, 0),
(649, 5, 7, 1, 0),
(650, 5, 7, 2, 0),
(651, 5, 7, 3, 0),
(652, 5, 7, 4, 0),
(653, 5, 7, 5, 0),
(654, 5, 7, 6, 0),
(655, 5, 7, 7, 0),
(656, 5, 7, 8, 0),
(657, 5, 7, 9, 0),
(658, 5, 7, 10, 0),
(659, 5, 7, 11, 0),
(660, 5, 7, 12, 0),
(661, 5, 8, 1, 0),
(662, 5, 8, 2, 0),
(663, 5, 8, 3, 0),
(664, 5, 8, 4, 0),
(665, 5, 8, 5, 0),
(666, 5, 8, 6, 0),
(667, 5, 8, 7, 0),
(668, 5, 8, 8, 0),
(669, 5, 8, 9, 0),
(670, 5, 8, 10, 0),
(671, 5, 8, 11, 0),
(672, 5, 8, 12, 0),
(673, 5, 9, 1, 0),
(674, 5, 9, 2, 0),
(675, 5, 9, 3, 0),
(676, 5, 9, 4, 0),
(677, 5, 9, 5, 0),
(678, 5, 9, 6, 0),
(679, 5, 9, 7, 1),
(680, 5, 9, 8, 0),
(681, 5, 9, 9, 0),
(682, 5, 9, 10, 0),
(683, 5, 9, 11, 0),
(684, 5, 9, 12, 0),
(685, 5, 10, 1, 0),
(686, 5, 10, 2, 0),
(687, 5, 10, 3, 0),
(688, 5, 10, 4, 0),
(689, 5, 10, 5, 0),
(690, 5, 10, 6, 0),
(691, 5, 10, 7, 0),
(692, 5, 10, 8, 0),
(693, 5, 10, 9, 0),
(694, 5, 10, 10, 0),
(695, 5, 10, 11, 0),
(696, 5, 10, 12, 0),
(697, 5, 11, 1, 0),
(698, 5, 11, 2, 0),
(699, 5, 11, 3, 0),
(700, 5, 11, 4, 0),
(701, 5, 11, 5, 0),
(702, 5, 11, 6, 0),
(703, 5, 11, 7, 0),
(704, 5, 11, 8, 0),
(705, 5, 11, 9, 0),
(706, 5, 11, 10, 0),
(707, 5, 11, 11, 0),
(708, 5, 11, 12, 0),
(709, 5, 12, 1, 0),
(710, 5, 12, 2, 0),
(711, 5, 12, 3, 0),
(712, 5, 12, 4, 0),
(713, 5, 12, 5, 0),
(714, 5, 12, 6, 0),
(715, 5, 12, 7, 0),
(716, 5, 12, 8, 0),
(717, 5, 12, 9, 0),
(718, 5, 12, 10, 0),
(719, 5, 12, 11, 0),
(720, 5, 12, 12, 0),
(721, 6, 1, 1, 0),
(722, 6, 1, 2, 0),
(723, 6, 1, 3, 0),
(724, 6, 1, 4, 0),
(725, 6, 1, 5, 0),
(726, 6, 1, 6, 0),
(727, 6, 1, 7, 0),
(728, 6, 1, 8, 0),
(729, 6, 1, 9, 0),
(730, 6, 1, 10, 0),
(731, 6, 1, 11, 0),
(732, 6, 1, 12, 0),
(733, 6, 2, 1, 0),
(734, 6, 2, 2, 0),
(735, 6, 2, 3, 0),
(736, 6, 2, 4, 0),
(737, 6, 2, 5, 0),
(738, 6, 2, 6, 0),
(739, 6, 2, 7, 0),
(740, 6, 2, 8, 0),
(741, 6, 2, 9, 0),
(742, 6, 2, 10, 0),
(743, 6, 2, 11, 0),
(744, 6, 2, 12, 0),
(745, 6, 3, 1, 0),
(746, 6, 3, 2, 0),
(747, 6, 3, 3, 0),
(748, 6, 3, 4, 0),
(749, 6, 3, 5, 0),
(750, 6, 3, 6, 0),
(751, 6, 3, 7, 0),
(752, 6, 3, 8, 0),
(753, 6, 3, 9, 0),
(754, 6, 3, 10, 0),
(755, 6, 3, 11, 0),
(756, 6, 3, 12, 0),
(757, 6, 4, 1, 0),
(758, 6, 4, 2, 0),
(759, 6, 4, 3, 0),
(760, 6, 4, 4, 0),
(761, 6, 4, 5, 0),
(762, 6, 4, 6, 0),
(763, 6, 4, 7, 0),
(764, 6, 4, 8, 0),
(765, 6, 4, 9, 0),
(766, 6, 4, 10, 0),
(767, 6, 4, 11, 0),
(768, 6, 4, 12, 0),
(769, 6, 5, 1, 0),
(770, 6, 5, 2, 0),
(771, 6, 5, 3, 0),
(772, 6, 5, 4, 0),
(773, 6, 5, 5, 0),
(774, 6, 5, 6, 0),
(775, 6, 5, 7, 0),
(776, 6, 5, 8, 0),
(777, 6, 5, 9, 0),
(778, 6, 5, 10, 0),
(779, 6, 5, 11, 0),
(780, 6, 5, 12, 0),
(781, 6, 6, 1, 0),
(782, 6, 6, 2, 0),
(783, 6, 6, 3, 0),
(784, 6, 6, 4, 0),
(785, 6, 6, 5, 0),
(786, 6, 6, 6, 0),
(787, 6, 6, 7, 0),
(788, 6, 6, 8, 0),
(789, 6, 6, 9, 0),
(790, 6, 6, 10, 0),
(791, 6, 6, 11, 0),
(792, 6, 6, 12, 0),
(793, 6, 7, 1, 0),
(794, 6, 7, 2, 0),
(795, 6, 7, 3, 0),
(796, 6, 7, 4, 0),
(797, 6, 7, 5, 0),
(798, 6, 7, 6, 0),
(799, 6, 7, 7, 0),
(800, 6, 7, 8, 0),
(801, 6, 7, 9, 0),
(802, 6, 7, 10, 0),
(803, 6, 7, 11, 0),
(804, 6, 7, 12, 0),
(805, 6, 8, 1, 0),
(806, 6, 8, 2, 0),
(807, 6, 8, 3, 0),
(808, 6, 8, 4, 0),
(809, 6, 8, 5, 0),
(810, 6, 8, 6, 0),
(811, 6, 8, 7, 0),
(812, 6, 8, 8, 0),
(813, 6, 8, 9, 0),
(814, 6, 8, 10, 0),
(815, 6, 8, 11, 0),
(816, 6, 8, 12, 0),
(817, 6, 9, 1, 0),
(818, 6, 9, 2, 0),
(819, 6, 9, 3, 0),
(820, 6, 9, 4, 0),
(821, 6, 9, 5, 0),
(822, 6, 9, 6, 0),
(823, 6, 9, 7, 0),
(824, 6, 9, 8, 0),
(825, 6, 9, 9, 0),
(826, 6, 9, 10, 0),
(827, 6, 9, 11, 0),
(828, 6, 9, 12, 0),
(829, 6, 10, 1, 0),
(830, 6, 10, 2, 0),
(831, 6, 10, 3, 0),
(832, 6, 10, 4, 0),
(833, 6, 10, 5, 0),
(834, 6, 10, 6, 0),
(835, 6, 10, 7, 0),
(836, 6, 10, 8, 0),
(837, 6, 10, 9, 0),
(838, 6, 10, 10, 0),
(839, 6, 10, 11, 0),
(840, 6, 10, 12, 0),
(841, 6, 11, 1, 0),
(842, 6, 11, 2, 0),
(843, 6, 11, 3, 0),
(844, 6, 11, 4, 0),
(845, 6, 11, 5, 0),
(846, 6, 11, 6, 0),
(847, 6, 11, 7, 0),
(848, 6, 11, 8, 0),
(849, 6, 11, 9, 0),
(850, 6, 11, 10, 0),
(851, 6, 11, 11, 0),
(852, 6, 11, 12, 0),
(853, 6, 12, 1, 0),
(854, 6, 12, 2, 0),
(855, 6, 12, 3, 0),
(856, 6, 12, 4, 0),
(857, 6, 12, 5, 0),
(858, 6, 12, 6, 0),
(859, 6, 12, 7, 0),
(860, 6, 12, 8, 0),
(861, 6, 12, 9, 0),
(862, 6, 12, 10, 0),
(863, 6, 12, 11, 0),
(864, 6, 12, 12, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bioskopi`
--
ALTER TABLE `bioskopi`
  ADD PRIMARY KEY (`bioskop`);

--
-- Indexes for table `detaljifilma`
--
ALTER TABLE `detaljifilma`
  ADD PRIMARY KEY (`detalji_ID`),
  ADD KEY `film_ID` (`film_ID`),
  ADD KEY `sala_ID` (`sala_ID`),
  ADD KEY `bioskop` (`bioskop`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_ID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_ID`);

--
-- Indexes for table `narudzbe`
--
ALTER TABLE `narudzbe`
  ADD PRIMARY KEY (`narudzbe_ID`),
  ADD KEY `film_ID` (`film_ID`),
  ADD KEY `sediste_ID` (`sediste_ID`),
  ADD KEY `korisnik_ID` (`korisnik_ID`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`sala_ID`);

--
-- Indexes for table `sedista`
--
ALTER TABLE `sedista`
  ADD PRIMARY KEY (`sediste_ID`),
  ADD KEY `detalji_ID` (`detalji_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detaljifilma`
--
ALTER TABLE `detaljifilma`
  MODIFY `detalji_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `film_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `narudzbe`
--
ALTER TABLE `narudzbe`
  MODIFY `narudzbe_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sedista`
--
ALTER TABLE `sedista`
  MODIFY `sediste_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1153;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detaljifilma`
--
ALTER TABLE `detaljifilma`
  ADD CONSTRAINT `bioskop` FOREIGN KEY (`bioskop`) REFERENCES `bioskopi` (`bioskop`),
  ADD CONSTRAINT `film_ID` FOREIGN KEY (`film_ID`) REFERENCES `film` (`film_ID`),
  ADD CONSTRAINT `sala_ID` FOREIGN KEY (`sala_ID`) REFERENCES `sala` (`sala_ID`);

--
-- Constraints for table `narudzbe`
--
ALTER TABLE `narudzbe`
  ADD CONSTRAINT `narudzbe_ibfk_1` FOREIGN KEY (`film_ID`) REFERENCES `film` (`film_ID`),
  ADD CONSTRAINT `narudzbe_ibfk_2` FOREIGN KEY (`sediste_ID`) REFERENCES `sedista` (`sediste_ID`),
  ADD CONSTRAINT `narudzbe_ibfk_3` FOREIGN KEY (`korisnik_ID`) REFERENCES `korisnik` (`korisnik_ID`);

--
-- Constraints for table `sedista`
--
ALTER TABLE `sedista`
  ADD CONSTRAINT `detalji_ID` FOREIGN KEY (`detalji_ID`) REFERENCES `detaljifilma` (`detalji_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
