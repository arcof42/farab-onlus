-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 16, 2018 alle 20:08
-- Versione del server: 5.7.17
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faraba`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `attivita`
--

CREATE TABLE `attivita` (
  `idatt` int(90) NOT NULL COMMENT 'Utile per identificare facilmente ogni singola attività',
  `idt` varchar(90) NOT NULL COMMENT 'Il nome completo possibilimente dell''attività che si andrà a svolgere o che si svolge',
  `inizio` datetime NOT NULL COMMENT 'Data inizio attivita',
  `fine` datetime NOT NULL COMMENT 'Data fine attivita',
  `descrizione` varchar(500) NOT NULL COMMENT 'Descrizione dell''ìattivita che verra visualizzata sul sito',
  `idimg` int(90) NOT NULL,
  `nome` varchar(90) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `attivita`
--

INSERT INTO `attivita` (`idatt`, `idt`, `inizio`, `fine`, `descrizione`, `idimg`, `nome`) VALUES
(1, 'attivita', '2018-04-20 20:45:00', '2018-04-20 21:45:00', 'discuteremo del testo di giacomo mazzaroli', 1, 'mio fratello rincorre i dinosauri');

-- --------------------------------------------------------

--
-- Struttura della tabella `media`
--

CREATE TABLE `media` (
  `idimg` int(90) NOT NULL COMMENT 'identificatore di ogni singola immagine',
  `link` varchar(500) NOT NULL,
  `nome` varchar(90) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `media`
--

INSERT INTO `media` (`idimg`, `link`, `nome`, `data`) VALUES
(1, 'https://scontent-mxp1-1.xx.fbcdn.net/v/t1.0-9/30516444_2053856524903690_1223052440740298752_n.jpg?_nc_cat=0&oh=bc49b434b2a41029ecdceef854f3a537&oe=5B29676D', 'fammyspazio', '2018-04-16 12:02:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `tipo`
--

CREATE TABLE `tipo` (
  `idt` varchar(90) NOT NULL,
  `descrizione` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tipo`
--

INSERT INTO `tipo` (`idt`, `descrizione`) VALUES
('attivita', ''),
('laboratori', ''),
('corsi', ''),
('corsi speciali', '');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `attivita`
--
ALTER TABLE `attivita`
  ADD PRIMARY KEY (`idatt`),
  ADD UNIQUE KEY `idimg` (`idimg`),
  ADD KEY `idt` (`idt`);

--
-- Indici per le tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`idimg`);

--
-- Indici per le tabelle `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idt`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `attivita`
--
ALTER TABLE `attivita`
  MODIFY `idatt` int(90) NOT NULL AUTO_INCREMENT COMMENT 'Utile per identificare facilmente ogni singola attività', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `media`
--
ALTER TABLE `media`
  MODIFY `idimg` int(90) NOT NULL AUTO_INCREMENT COMMENT 'identificatore di ogni singola immagine', AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
