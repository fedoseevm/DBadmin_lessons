-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 12:04 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uczniowie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane_personalne`
--

CREATE TABLE `dane_personalne` (
  `ID_ucznia` int(11) NOT NULL,
  `Imie` varchar(50) DEFAULT NULL,
  `Nazwisko` varchar(50) DEFAULT NULL,
  `Miasto_urodzenia` varchar(75) DEFAULT NULL,
  `Data_urodzenia` date DEFAULT NULL,
  `Kod_pocztowy` varchar(10) DEFAULT NULL,
  `Miasto` varchar(75) DEFAULT NULL,
  `Ulica` varchar(75) DEFAULT NULL,
  `Nr_domu` int(11) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL,
  `Nr_telefonu_ucznia` varchar(12) DEFAULT NULL,
  `Nr_telefonu_rodzica` varchar(12) DEFAULT NULL,
  `imOjca` varchar(50) DEFAULT NULL,
  `imMatki` varchar(50) DEFAULT NULL,
  `ID_klasy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dane_personalne`
--

INSERT INTO `dane_personalne` (`ID_ucznia`, `Imie`, `Nazwisko`, `Miasto_urodzenia`, `Data_urodzenia`, `Kod_pocztowy`, `Miasto`, `Ulica`, `Nr_domu`, `PESEL`, `Nr_telefonu_ucznia`, `Nr_telefonu_rodzica`, `imOjca`, `imMatki`, `ID_klasy`) VALUES
(1, 'Jan', 'Kowalski', 'Warszawa', '2005-05-01', '00-001', 'Warszawa', 'Marszałkowska', 1, '05050112345', '123456789', '987654321', 'Adam', 'Ewa', 1),
(2, 'Anna', 'Nowak', 'Kraków', '2006-06-02', '30-002', 'Kraków', 'Floriańska', 2, '06060223456', '234567890', '098765432', 'Bartosz', 'Katarzyna', 2),
(3, 'Piotr', 'Wiśniewski', 'Wrocław', '2007-07-03', '50-003', 'Wrocław', 'Oławska', 3, '07070334567', '345678901', '109876543', 'Cezary', 'Magdalena', 3),
(4, 'Katarzyna', 'Zielińska', 'Poznań', '2008-08-04', '60-004', 'Poznań', 'Półwiejska', 4, '08080445678', '456789012', '210987654', 'Dariusz', 'Joanna', 4),
(5, 'Marek', 'Jankowski', 'Gdańsk', '2009-09-05', '80-005', 'Gdańsk', 'Długa', 5, '09090556789', '567890123', '321098765', 'Eugeniusz', 'Barbara', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `ID_klasy` int(11) NOT NULL,
  `Nazwa` varchar(255) DEFAULT NULL,
  `Nauczyciel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klasy`
--

INSERT INTO `klasy` (`ID_klasy`, `Nazwa`, `Nauczyciel`) VALUES
(1, '1A', 1),
(2, '2B', 2),
(3, '3C', 3),
(4, '4D', 4),
(5, '5E', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `ID_nauczyciela` int(11) NOT NULL,
  `Imie` varchar(50) DEFAULT NULL,
  `Nazwisko` varchar(50) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`ID_nauczyciela`, `Imie`, `Nazwisko`, `PESEL`) VALUES
(1, 'Bartosz', 'Nowak', '12345678900'),
(2, 'Jan', 'Kowalski', '09876543210'),
(3, 'Anna', 'Zielińska', '10293847560'),
(4, 'Piotr', 'Wiśniewski', '01928374650'),
(5, 'Katarzyna', 'Szymańska', '56473829100');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane_personalne`
--
ALTER TABLE `dane_personalne`
  ADD PRIMARY KEY (`ID_ucznia`),
  ADD KEY `ID_klasy` (`ID_klasy`);

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`ID_klasy`),
  ADD KEY `Nauczyciel` (`Nauczyciel`);

--
-- Indeksy dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`ID_nauczyciela`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dane_personalne`
--
ALTER TABLE `dane_personalne`
  MODIFY `ID_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `klasy`
--
ALTER TABLE `klasy`
  MODIFY `ID_klasy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `ID_nauczyciela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dane_personalne`
--
ALTER TABLE `dane_personalne`
  ADD CONSTRAINT `dane_personalne_ibfk_1` FOREIGN KEY (`ID_klasy`) REFERENCES `klasy` (`ID_klasy`);

--
-- Constraints for table `klasy`
--
ALTER TABLE `klasy`
  ADD CONSTRAINT `klasy_ibfk_1` FOREIGN KEY (`Nauczyciel`) REFERENCES `nauczyciele` (`ID_nauczyciela`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
