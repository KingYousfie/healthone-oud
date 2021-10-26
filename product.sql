-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 25 okt 2021 om 20:13
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(1, 'crosstrainer 1', 'categories/crosstrainer/cr1.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor thuisgebruik. Deze crosstrainer is fluisterstil, heeft een relatief lange lengtepas, is stabiel en heeft een zwaar vliegwiel. Hierdoor heeft de Fox 3 al vier keer de \'Best Reviewed\' award van Kieskeurig.nl verdiend! Door de vele trainingsprogramma\'s is het mogelijk om effectief je persoonlijke doelen te behalen met deze crosstrainer.', 1),
(2, 'crosstrainer 2', 'categories/crosstrainer/cr2.jpg', 'De Focus Fitness Fox 4 is een fantastische crosstrainer voor elke thuissporter. Deze voorwiel aangedreven crosstrainer heeft een ongelooflijk scherpe prijs voor de uitstekende specificaties die hij te bieden heeft. Met een eigen gewicht van 67 kg, een vliegwiel van 7 kg en een lengtepas van 50 cm is een comfortabele en stabiele sportervaring gegarandeerd.', 1),
(3, 'crosstrainer 3', 'categories/crosstrainer/cr3.jpg', 'De Fox 5 iPlus is een fantastische crosstrainer om intensief thuis te gebruiken. Deze crosstrainer is ijzersterk, geruisloos, beschikt over een zwaar vliegwiel en een grote lengtepas, heeft een uitgebreid display en heeft daarnaast de mogelijkheid om een koppeling met een tablet/smartphone te maken. Mede door al deze voordelen hebben consumenten de Fox 5 iPlus eerder verkozen tot de best gewaardeerde crosstrainer van Nederland!', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
