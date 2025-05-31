-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Mai 2025 um 23:44
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bookexchange`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address` - gehört zur Kategorie "Userdata" | darin werden die Adressen der Nutzer gespeichert
--
/* Der CREATE TABLE Befehl wird dann verwendet, wenn eine neue Tabelle in einer Datenbank erstellt werden soll. Es folgt der Name der Tabelle "address" sowie in Klammer () die Attribute z.B. "AddressID", welche die Tabelle näher beschreiben und
letzlich die Informationen speichern. Nach den Attributnamen erfolgt der Datentyp, in welchem Format die Informationen gespeichert werden z.B. int: Zahlenformat. Zusätzliche können den Attributen weitere Eigenschaften zugewiesen werden
z.B. NOT NULL: Das Attribut muss zu jeder Datenzeile ein Wert gespeichert haben.*/
--
CREATE TABLE `address` (
  `AddressID` int(11) NOT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `HouseNumber` varchar(5) DEFAULT NULL,
  `CityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `address` - 10 Dateneinträge und 1 Testeintrag
--
/* Der INSERT INTO Befehl füllt die Attribute einer Tabelle mit Werten. In der ersten Klammer () werden die zu füllenden Attribute erwähnt und anschließend mit VALUES in erneuten Klammern () die Werte eingetragen. Jede abgeschlossene Klammer
zählt dabei als eigene Datenzeile.*/
--
INSERT INTO `address` (`AddressID`, `Street`, `HouseNumber`, `CityID`) VALUES
(1, 'Reichsstraße', '40', 1),
(2, 'Silberstraße', '17', 2),
(3, 'Mühlener Torweg', '23', 3),
(4, 'Oberer Schulweg', '23', 4),
(5, 'Lombacherstraße', '51', 5),
(6, 'Klosterplatz', '2', 6),
(7, 'Hauptstraße', '35', 7),
(8, 'Zeißstraße', '6', 8),
(9, 'Dornstetterstraße', '21', 9),
(10, 'Im Auchtert', '5', 10),
(11, 'Stuttgarter Straße', '4', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author` - gehört zur Kategorie "Book/Booksummary" | darin werden die Autoren der Bücher gespeichert
--

CREATE TABLE `author` (
  `AuthorID` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `author` - 14 Dateneinträge und 1 Testeintrag
--

INSERT INTO `author` (`AuthorID`, `FirstName`, `LastName`) VALUES
(1, 'Ana', 'Sampson'),
(2, 'David', 'Safier'),
(3, 'Ewald', 'Arenz'),
(4, 'Friedrich', 'Dürrenmatt'),
(5, 'George', 'Orwell'),
(6, 'Judith', 'Kuckart'),
(7, 'Katharina', 'Fuchs'),
(8, 'Kristin', 'Hannah'),
(9, 'Marta', 'Breen'),
(10, 'Michael', 'Ende'),
(11, 'Michelle', 'Obama'),
(12, 'Richard', 'Osman'),
(13, 'Sebastian', 'Fitzek'),
(14, 'Thomas Olde', 'Heuvelt'),
(15, 'Lisa', 'Gardner');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book` - gehört zur Kategorie "Book/Boosummary" | darin werden die Informationen der Bücher gespeichert
--

CREATE TABLE `book` (
  `BookID` int(11) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `PublisherID` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL,
  `LanguageID` int(11) NOT NULL,
  `PageID` int(11) NOT NULL,
  `CoverID` int(11) NOT NULL,
  `WeightID` int(11) NOT NULL,
  `DimensionsID` int(11) NOT NULL,
  `YearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `book` - 16 Dateneinträge und 1 Testeintrag
--

INSERT INTO `book` (`BookID`, `Title`, `ISBN`, `PublisherID`, `GenreID`, `LanguageID`, `PageID`, `CoverID`, `WeightID`, `DimensionsID`, `YearID`) VALUES
(1, 'Die Physiker', '978-3-257-23047-5', 3, 6, 1, 1, 2, 1, 2, 1),
(2, '1984', '978-3-7306-0976-7', 1, 9, 1, 7, 1, 12, 7, 8),
(3, 'Momo', '978-3-522-20210-7', 14, 5, 1, 5, 2, 10, 16, 3),
(4, 'Passagier23', '978-3-426-51017-9', 8, 8, 1, 9, 2, 14, 9, 4),
(5, 'AchtNacht', '978-3-426-52108-3', 8, 10, 1, 8, 2, 9, 10, 5),
(6, 'Flugangst7A', '978-3-426-51019-3', 8, 8, 1, 8, 2, 7, 11, 6),
(7, 'Alte Sorten', '978-3-8321-6530-7', 5, 9, 1, 4, 2, 4, 4, 7),
(8, 'Lebenssekunden', '978-3-426-30837-0', 4, 9, 1, 8, 2, 6, 3, 9),
(9, 'Der Junge von Angel Falls', '978-3-7466-3572-9', 2, 9, 1, 6, 2, 11, 13, 10),
(10, 'Jesus liebt mich', '978-3-499-24811-5', 13, 9, 1, 5, 2, 3, 8, 2),
(11, 'The Book of Cat Poems', '978-1-78627-944-6', 9, 2, 2, 2, 1, 8, 6, 8),
(12, 'Becoming', '978-0-241-98297-6', 12, 1, 2, 10, 2, 13, 1, 8),
(13, 'Rebellische Frauen - Women in Battle', '978-3-458-68311-7', 7, 3, 1, 2, 2, 5, 15, 10),
(14, 'HEX', '978-3-453-31906-6', 6, 4, 1, 9, 2, 15, 12, 5),
(15, 'Der Donnerstagsmordclub', '978-3-471-36014-9', 10, 7, 1, 10, 2, 16, 14, 8),
(16, 'Café der Unsichtbaren', '978-3-8321-6674-8', 5, 9, 1, 3, 2, 2, 5, 10),
(17, 'Before She Dissappeared', '978-1-787-46439-1', 12, 2, 2, 8, 2, 17, 17, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookauthor` - gehört zur Kategorie "Book/Boosummary" | darin werden die Autoren zu den Bücher verknüpft
--

CREATE TABLE `bookauthor` (
  `BookID` int(11) NOT NULL,
  `AuthorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bookauthor` - 16 Dateneinträge und 1 Testeintrag
--

INSERT INTO `bookauthor` (`BookID`, `AuthorID`) VALUES
(1, 4),
(2, 5),
(3, 10),
(4, 13),
(5, 13),
(6, 13),
(7, 3),
(8, 7),
(9, 8),
(10, 2),
(11, 1),
(12, 11),
(13, 9),
(14, 14),
(15, 12),
(16, 6),
(17, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookcover` - gehört zur Kategorie "Book/Boosummary" | darin werden die Einbände der Bücher gespeichert
--

CREATE TABLE `bookcover` (
  `CoverID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bookcover` - 2 Dateneinträge: es wird bewusst auf weitere Einträge verzichtet, da in der Realität meist auch nicht mehr vorhanden sind. Die Realitätsnähe soll dadurch sichergestellt werden.
--

INSERT INTO `bookcover` (`CoverID`, `Name`) VALUES
(1, 'Gebundenes Buch: Hardcover'),
(2, 'Taschenbuch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookquality` - gehört zur Kategorie "Book/Boosummary" | darin wird die Qualität der Bücher gespeichert
--

CREATE TABLE `bookquality` (
  `QualityID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `bookquality` - 5 Dateneinträge: es wird auf weitere bewusst verzichtet, da eine größere Unterscheidung des Buchzustandes die Nutzer nur verwirren könnte und eine Eingruppierung erschwert. 
--

INSERT INTO `bookquality` (`QualityID`, `Name`, `Description`) VALUES
(1, 'neu', 'Noch nicht gelesen und evtl. mit Originalverpackung'),
(2, 'wie neu', 'Keine Gebrauchsspuren, Knicke, Verfärbungen, Einträge, wie ungelesen'),
(3, 'leichte Gebrauchsspuren', 'Leichte Knicke am Einband/bei Seiten, wenige Einträge, vergilbte Seiten, kleine Flecken'),
(4, 'deutliche Gebrauchsspuren', 'Knicke oder Flecken am Einband/bei Seiten, leichte Risse, mehrere Einträge'),
(5, 'stark abgenutzt', 'Viele Knicke, Flecken oder Risse, einzelne lose Seiten (aber vollständig), Wasserschaden');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookrating` - gehört zur Kategorie "Bookrating/UserratingLender/UserratingReceiver" | darin werden die abgegebenen Buchbewertungen nach einem abgeschlossenen Tausch gespeichert
--

CREATE TABLE `bookrating` (
  `RatingID` int(11) NOT NULL,
  `BorrowID` int(11) NOT NULL,
  `Quality` int(11) NOT NULL,
  `Content` int(11) NOT NULL,
  `Recommendation` int(11) NOT NULL,
  `AverageRate` decimal(3,2) GENERATED ALWAYS AS ((`Quality` + `Content` + `Recommendation`) / 3.0) STORED,
  `FreeText` varchar(100) DEFAULT NULL
) ;

--
-- Daten für Tabelle `bookrating` - 10 Dateneinträge und 1 Testeintrag
--

INSERT INTO `bookrating` (`RatingID`, `BorrowID`, `Quality`, `Content`, `Recommendation`, `FreeText`) VALUES
(1, 1, 3, 4, 5, 'Gutes Buch mit kleineren Mängeln'),
(2, 2, 4, 4, 5, 'Sehr lesenswert'),
(3, 3, 4, 3, 3, 'Durchschnittliche Lektüre'),
(4, 4, 3, 5, 4, 'Interessante Handlung, lässt einen nachdenklich zurück'),
(5, 5, 1, 5, 3, 'Inhaltlich schönes Buch, auch wenn es sehr mitgenommen aussieht'),
(6, 6, 4, 4, 5, 'Sehr gut, würde ich weiterempfehlen'),
(7, 7, 5, 4, 4, 'Tolles Buch!'),
(8, 9, 2, 5, 5, 'Ungewöhnliche Geschichte und nichts für schwache Nerven, aber spannend'),
(9, 10, 2, 4, 5, 'Erzählt die Vergangenheit mal anders … gerne wieder'),
(10, 11, 3, 2, 2, 'Das Genre war leider nichts für mich, aber vielleicht für jemand anders :)'),
(11, 16, 4, 5, 5, 'Mein erstes englisches Buch, habe es geliebt :)');

--
-- Trigger `bookrating`
--
/* Trigger werden verwendet, um bestimmte Aktionen automatisch bei Änderung in der Datenbank auszuführen. In diesem Fall sorgt der Trigger dafür, dass beim Löschen einer Buchbewertung in der Tabelle "bookrating" automatisch 
der Durchschnittswert der Bewertungen in der Tabelle "booksummary" aktualisiert wird. So wird sichergestellt, dass Nutzer immer die aktuellen Durchschnittsbewertungen sehen.
Ohne diesen Trigger könnten zwar Bewertungen gelöscht werden, dies würde sich aber nicht auf die sichtbare Gesamtnote auswirken.*/
--
DELIMITER $$
-- Der Trigger wird mit CREATE TRIGGER erstellt, bekommt einen Namen "Update_Book_AVGRatingBook_OnDelete" und wird ausgelöst, nachdem ein bestehender Datensatz in die Tabelle "bookrating" gelöscht wurde (AFTER DELETE).
CREATE TRIGGER `Update_Book_AVGRatingBook_OnDelete` AFTER DELETE ON `bookrating` FOR EACH ROW BEGIN 
DECLARE summary_id INT;

/* Die zum gelöschten Datensatz gehörige "SummaryID" wird ermittelt, indem die Tabelle "booksummary" mit "borrowingperiod" über "SummaryID" verknüpft wird. Gefiltert wird dabei nach der "BorrowID", die dem alten gelöschten Wert (OLD.BorrowID) entspricht.
Das Ergebnis wird in die lokale Variable "summary_id" gespeichert. */
SELECT BS.SummaryID INTO summary_id FROM 
Booksummary BS INNER JOIN Borrowingperiod B ON BS.SummaryID = B.SummaryID 
WHERE B.BorrowID = OLD.BorrowID;

-- Der Durchschnitt aller Bewertungen ("AverageRate") für das betroffene Buch wird neu berechnet und in das Attribut "Bookrating" der Tabelle "booksummary" geschrieben, basierend auf der ermittelten "SummaryID".
UPDATE Booksummary BS SET Bookrating = ( SELECT AVG(BR.AverageRate) FROM 
Bookrating BR INNER JOIN Borrowingperiod B ON BR.BorrowID = B.BorrowID INNER JOIN Booksummary BS ON B.SummaryID = BS.SummaryID 
WHERE BS.SummaryID = summary_id ) 
WHERE BS.SummaryID = summary_id; 
END
$$
DELIMITER ;

/* Trigger werden verwendet, um bestimmte Aktionen automatisch bei Änderung in der Datenbank auszuführen. In diesem Fall sorgt der Trigger dafür, dass beim Einfügen einer neuen Buchbewertung in der Tabelle "bookrating" automatisch 
der Durchschnittswert der Bewertungen in der Tabelle "booksummary" aktualisiert wird. So wird sichergestellt, dass Nutzer immer die aktuellen Durchschnittsbewertungen sehen.
Ohne diesen Trigger könnten zwar Bewertungen abgegeben werden, sie würden sich aber nicht auf die sichtbare Gesamtnote auswirken.*/
--
DELIMITER $$
-- Der Trigger wird mit CREATE TRIGGER erstellt, bekommt einen Namen "Update_Book_AVGRatingBook_OnInsert" und wird ausgelöst, nachdem ein neuer Datensatz in die Tabelle "bookrating" eingefügt wurde (AFTER INSERT).
CREATE TRIGGER `Update_Book_AVGRatingBook_OnInsert` AFTER INSERT ON `bookrating` FOR EACH ROW BEGIN 
DECLARE summary_id INT;

/* Die zum eingefügten Datensatz gehörige "SummaryID" wird ermittelt, indem die Tabelle "booksummary" mit "borrowingperiod" über "SummaryID" verknüpft wird. Gefiltert wird dabei nach der "BorrowID", die dem neu eingefügten Wert (NEW.BorrowID) entspricht.
Das Ergebnis wird in die lokale Variable "summary_id" gespeichert. */
SELECT BS.SummaryID INTO summary_id FROM 
Booksummary BS INNER JOIN Borrowingperiod B ON BS.SummaryID = B.SummaryID 
WHERE B.BorrowID = NEW.BorrowID; 

-- Der Durchschnitt aller Bewertungen ("AverageRate") für das betroffene Buch wird neu berechnet und in das Attribut "Bookrating" der Tabelle "booksummary" geschrieben, basierend auf der ermittelten "SummaryID".
UPDATE Booksummary BS SET Bookrating = (SELECT AVG(BR.AverageRate) FROM 
Bookrating BR INNER JOIN Borrowingperiod B ON BR.BorrowID = B.BorrowID INNER JOIN Booksummary BS ON B.SummaryID = BS.SummaryID 
WHERE BS.SummaryID = summary_id ) 
WHERE BS.SummaryID = summary_id; 
END
$$
DELIMITER ;

/* Trigger werden verwendet, um bestimmte Aktionen automatisch bei Änderung in der Datenbank auszuführen. In diesem Fall sorgt der Trigger dafür, dass beim Ändern einer bestehenden Buchbewertung in der Tabelle "bookrating" automatisch 
der Durchschnittswert der Bewertungen in der Tabelle "booksummary" aktualisiert wird. So wird sichergestellt, dass Nutzer immer die aktuellen Durchschnittsbewertungen sehen.
Ohne diesen Trigger könnten zwar Bewertungen abgegeben werden, sie würden sich aber nicht auf die sichtbare Gesamtnote auswirken.*/

DELIMITER $$
-- Der Trigger wird mit CREATE TRIGGER erstellt, bekommt einen Namen "Update_Book_AVGRatingBook_OnUpdate" und wird ausgelöst, nachdem ein Datensatz in die Tabelle "bookrating" geändert wurde (AFTER INSERT).
CREATE TRIGGER `Update_Book_AVGRatingBook_OnUpdate` AFTER UPDATE ON `bookrating` FOR EACH ROW BEGIN 
DECLARE summary_id INT;

/* Die zum geänderten Datensatz gehörige "SummaryID" wird ermittelt, indem die Tabelle "booksummary" mit "borrowingperiod" über "SummaryID" verknüpft wird. Gefiltert wird dabei nach der "BorrowID", die dem neu geänderten Wert (NEW.BorrowID) entspricht.
Das Ergebnis wird in die lokale Variable "summary_id" gespeichert. */
SELECT BS.SummaryID INTO summary_id FROM 
Booksummary BS INNER JOIN Borrowingperiod B ON BS.SummaryID = B.SummaryID 
WHERE B.BorrowID = NEW.BorrowID;

-- Der Durchschnitt aller Bewertungen ("AverageRate") für das betroffene Buch wird neu berechnet und in das Attribut "Bookrating" der Tabelle "booksummary" geschrieben, basierend auf der ermittelten "SummaryID".
UPDATE Booksummary BS SET Bookrating = ( SELECT AVG(BR.AverageRate) FROM 
Bookrating BR INNER JOIN Borrowingperiod B ON BR.BorrowID = B.BorrowID INNER JOIN Booksummary BS ON B.SummaryID = BS.SummaryID 
WHERE BS.SummaryID = summary_id ) 
WHERE BS.SummaryID = summary_id; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `booksummary` - gehört zur Kategorie "Book/Booksummary" | darin werden die auszuleihenden Bücher als Buchüberischt gespeichert
--

CREATE TABLE `booksummary` (
  `SummaryID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `QualityID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `StatusID` int(11) NOT NULL,
  `AvailableFrom` date DEFAULT NULL,
  `AvailableUntil` date DEFAULT NULL,
  `Mailing` tinyint(1) DEFAULT NULL,
  `BookRating` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `booksummary` - 16 Dateneinträge und 1 Testeintrag
--

INSERT INTO `booksummary` (`SummaryID`, `BookID`, `QualityID`, `UserID`, `StatusID`, `AvailableFrom`, `AvailableUntil`, `Mailing`, `BookRating`) VALUES
(1, 1, 2, 1, 4, '2024-12-26', '0000-00-00', 1, NULL),
(2, 2, 2, 4, 1, '2024-12-23', '2025-01-07', 1, 4.33),
(3, 3, 2, 3, 1, '2024-12-23', '2025-01-02', 0, 3.33),
(4, 4, 3, 2, 3, '2025-01-08', '2025-01-18', 0, NULL),
(5, 5, 3, 4, 1, '2024-12-23', '2025-01-03', 1, 4.00),
(6, 6, 3, 5, 4, '2024-12-26', '2024-12-31', 1, 4.00),
(7, 7, 2, 6, 1, '2024-12-23', '2024-12-29', 0, 4.33),
(8, 8, 4, 6, 1, '2024-12-23', '2025-01-15', 0, 3.34),
(9, 9, 2, 7, 1, '2024-12-23', '2025-01-11', 0, NULL),
(10, 10, 3, 5, 2, '2025-01-03', '0000-00-00', 1, NULL),
(11, 11, 2, 8, 2, '2025-01-04', '2025-01-31', 1, 4.33),
(12, 12, 2, 5, 3, '2025-01-16', '2025-02-01', 1, NULL),
(13, 13, 2, 8, 1, '2024-12-23', '2025-01-28', 1, NULL),
(14, 14, 4, 10, 5, '0000-00-00', '0000-00-00', 0, NULL),
(15, 15, 3, 7, 1, '2024-12-23', '2025-01-03', 0, 2.33),
(16, 16, 4, 9, 3, '2025-01-05', '2025-02-04', 1, NULL),
(17, 17, 3, 11, 1, '2024-12-30', NULL, 0, 4.67);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `borrowingperiod` - gehört zur Kategorie "Borrowingperiod" | darin werden die Buchtausch Transaktionen erfasst
--

CREATE TABLE `borrowingperiod` (
  `BorrowID` int(11) NOT NULL,
  `SummaryID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BorrowingStart` timestamp NOT NULL DEFAULT current_timestamp(),
  `BorrowingEnd` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `borrowingperiod` - 15 Dateneinträge und 1 Testeintrag
--

INSERT INTO `borrowingperiod` (`BorrowID`, `SummaryID`, `UserID`, `BorrowingStart`, `BorrowingEnd`) VALUES
(1, 5, 8, '2024-11-01 09:33:28', '2024-11-28 12:03:14'),
(2, 2, 1, '2024-11-02 14:18:36', '2024-12-18 16:02:45'),
(3, 3, 7, '2024-11-04 16:55:41', '2024-11-28 11:27:31'),
(4, 6, 6, '2024-11-11 10:52:31', '2024-11-25 14:41:25'),
(5, 8, 3, '2024-11-13 16:31:46', '2024-12-02 14:12:53'),
(6, 7, 9, '2024-11-15 18:07:15', '2024-11-30 17:22:47'),
(7, 11, 7, '2024-11-22 10:17:45', '2024-12-12 18:39:02'),
(8, 6, 8, '2024-11-29 16:50:33', '2024-12-25 00:00:00'),
(9, 5, 5, '2024-11-30 12:51:46', '2024-12-19 16:37:09'),
(10, 8, 9, '2024-12-04 08:24:38', '2024-12-21 10:13:41'),
(11, 15, 6, '2024-12-06 14:17:52', '2024-12-19 17:49:21'),
(12, 16, 3, '2024-12-07 13:16:55', '2025-01-04 00:00:00'),
(13, 1, 4, '2024-12-14 15:55:12', '2024-12-25 00:00:00'),
(14, 12, 7, '2024-12-16 17:58:02', '2025-01-15 00:00:00'),
(15, 4, 10, '2024-12-20 08:15:19', '2025-01-07 00:00:00'),
(16, 17, 4, '2024-12-25 13:03:22', '2024-12-29 15:04:45');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `city` - gehört zur Kategorie "Userdata" | darin werden Städte der Nutzer gespeichert
--

CREATE TABLE `city` (
  `CityID` int(11) NOT NULL,
  `Postcode` varchar(10) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `city`- 10 Dateneinträge
--

INSERT INTO `city` (`CityID`, `Postcode`, `Name`, `CountryID`) VALUES
(1, '72250', 'Freudenstadt', 1),
(2, '72280', 'Dornstetten', 1),
(3, '72160', 'Horb am Neckar', 1),
(4, '72290', 'Loßburg', 1),
(5, '72293', 'Glatten', 1),
(6, '72275', 'Alpirsbach', 1),
(7, '72178', 'Waldachtal', 1),
(8, '72285', 'Pfalzgrafenweiler', 1),
(9, '72296', 'Schopfloch', 1),
(10, '72186', 'Empfingen', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country` - gehört zur Kategorie "Userdata" | darin werden Länder der Nutzer gespeichert
--

CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `country` - 1 Dateneintrag: es wird bewusst auf weitere Einträge verzichtet, da die Nutzung der App bisher nur in einem regionalen Teil innerhalb von Deutschland stattfindet und daher weitere Länder nicht der Realität entsprechend
--

INSERT INTO `country` (`CountryID`, `Name`) VALUES
(1, 'Deutschland');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dimensions` - gehört zur Kategorie "Book/Booksummary" | darin werden die Amessungen der Bücher gespeichert
--

CREATE TABLE `dimensions` (
  `DimensionsID` int(11) NOT NULL,
  `LengthWidthHeightInCm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `dimensions` - 16 Dateneinträge und 1 Testeintrag
--

INSERT INTO `dimensions` (`DimensionsID`, `LengthWidthHeightInCm`) VALUES
(1, '12,70/19,6/3,10'),
(2, '18,00/11,20/1,20'),
(3, '18,60/12,20/3,30'),
(4, '18,70/12,30/2,50'),
(5, '18,80/12,20/2,00'),
(6, '18,80/13,80/1,70'),
(7, '19,20/13,10/3,80'),
(8, '19,30/11,30/2,70'),
(9, '19,00/12,40/3,20'),
(10, '19,00/12,50/3,50'),
(11, '19,00/12,60/3,10'),
(12, '20,50/13,40/4,50'),
(13, '20,50/13,50/3,20'),
(14, '20,50/13,50/4,30'),
(15, '20,80/14,40/1,20'),
(16, '21,40/13,50/2,90'),
(17, '17,60/11,10/2,80');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `favouritelist` - gehört zur Kategorie "Userdata" | darin werden die favourisierten Bücher der Nutzer gespeichert
--

CREATE TABLE `favouritelist` (
  `BookID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `favouritelist` - 10 Dateneinträge
--

INSERT INTO `favouritelist` (`BookID`, `UserID`) VALUES
(1, 9),
(3, 5),
(5, 2),
(5, 3),
(6, 7),
(9, 10),
(11, 5),
(12, 1),
(15, 1),
(16, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre` gehört zur Kategorie "Book/Booksummary" | darin werden die Buchgenres gespeichert
--

CREATE TABLE `genre` (
  `GenreID` int(11) NOT NULL,
  `Genre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `genre` - 10 Dateneinträge
--

INSERT INTO `genre` (`GenreID`, `Genre`) VALUES
(1, 'Biografie'),
(2, 'Englische Bücher'),
(3, 'Graphic Novel'),
(4, 'Horror Roman'),
(5, 'Kinder- und Jugendbücher'),
(6, 'Komödie'),
(7, 'Kriminalroman'),
(8, 'Psychothriller'),
(9, 'Roman'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `language` - gehört zur Kategorie "Book/Booksummary" | darin werden die Buchsprachen gespeichert
--

CREATE TABLE `language` (
  `LanguageID` int(11) NOT NULL,
  `Code` varchar(2) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `language` - 2 Dateneinträge: es wird bewusst auf weitere verzichtet, da die Nutzung der App bisher nur in einem regionalen Teil innerhalb von Deutschland stattfindet und daher weitere Buchsprachen nicht zu erwarten sind
--

INSERT INTO `language` (`LanguageID`, `Code`, `Name`) VALUES
(1, 'de', 'deutsch'),
(2, 'en', 'englisch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logindata` - gehört zur Kategorie "Userdata" | darin werden die Logindaten der Nutzer gespeichert
--

CREATE TABLE `logindata` (
  `LoginID` int(11) NOT NULL,
  `EmailAddress` varchar(50) DEFAULT NULL,
  `Passwort` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `logindata` - 10 Dateneinträge und 1 Testeintrag
--

INSERT INTO `logindata` (`LoginID`, `EmailAddress`, `Passwort`) VALUES
(1, 'alejandro.maier91@gmx.de', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9'),
(2, 'f.alhassan87@web.de', '*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19'),
(3, 'yuki_tanaka22@t-online.de', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1'),
(4, 'liam.oconnor@gmx.de', '*668425423DB5193AF921380129F465A6425216D0'),
(5, 'nora.flaig@web.de', '*CFBF459D9D6057BC2A85477A38327B96F06B1597'),
(6, 'levi.becker@freenet.de', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441'),
(7, 'z.kowalska92@t-online.de', '*57B45B99D00B420E8C241804DE72C06746CBD3FD'),
(8, 'elia.schlag@web.de', '*BE71F5F97A7B78E55610E58F699A35E8F82783A0'),
(9, 'chenwei79@gmx.de', '*B29BC36FE811FEBD6370DF7902F59A24B8706E5F'),
(10, 'hans.mueller@mail.de', '*841425A6F8B904DA1722607D9EE9E59986B73A39'),
(11, 'l.paulsen@gmx.de', '*68F01921DDBAA44A6AAE67EEF4BF2DA9FB488F2B');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `numberofpages` - gehört zur Kategorie "Book/Booksummary" | darin werden die Buchseiten gespeichert
--

CREATE TABLE `numberofpages` (
  `PageID` int(11) NOT NULL,
  `Pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `numberofpages` - 10 Dateneinträge
--

INSERT INTO `numberofpages` (`PageID`, `Pages`) VALUES
(1, 96),
(2, 128),
(3, 208),
(4, 256),
(5, 304),
(6, 345),
(7, 400),
(8, 416),
(9, 432),
(10, 464);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher` - gehört zur Kategorie "Book/Booksummary" | darin werden die Verlage der Bücher gespeichert
--

CREATE TABLE `publisher` (
  `PublisherID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `publisher` - 14 Dateneinträge
--

INSERT INTO `publisher` (`PublisherID`, `Name`) VALUES
(1, 'Anaconda'),
(2, 'Aufbau TB'),
(3, 'Diogenes'),
(4, 'Droemer Taschenbuch'),
(5, 'DuMont Buchverlag'),
(6, 'Heyne'),
(7, 'Insel'),
(8, 'Knaur'),
(9, 'Laurence King Publishing'),
(10, 'List'),
(11, 'Lübbe'),
(12, 'Penguin Books Ltd'),
(13, 'Rowohlt Taschenbuch'),
(14, 'Thienemann Esslinger Verlag');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status` - gehört zur Kategorie "Book/Booksummary" | darin werden die Ausleihstatus gespeichert
--

CREATE TABLE `status` (
  `StatusID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `status` - 5 Dateneinträge: es wird bewusst auf weitere Einträge verzichtet, da es bei einem Ausleihvorgang zu keinen weiteren Buchzuständen kommen kann
--

INSERT INTO `status` (`StatusID`, `Name`) VALUES
(1, 'verfügbar'),
(2, 'reserviert'),
(3, 'zurzeit ausgeliehen'),
(4, 'bald wieder verfügbar'),
(5, 'nicht verfügbar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdata` - gehört zur Kategorie "Userdata" | darin werden die persönlichen Daten der Nutzer gespeichert
--

CREATE TABLE `userdata` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `MobileNumber` varchar(50) DEFAULT NULL,
  `LoginID` int(11) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `RatingReceiver` decimal(3,2) DEFAULT NULL,
  `RatingLender` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `userdata` - 10 Dateneinträge und 1 Testeintrag
--

INSERT INTO `userdata` (`UserID`, `FirstName`, `LastName`, `MobileNumber`, `LoginID`, `AddressID`, `RatingReceiver`, `RatingLender`) VALUES
(1, 'Alejandro', 'Maier', '+49 1571 2345678', 1, 1, 4.00, NULL),
(2, 'Fatima', 'Al-Hassan', '+49 1522 98766543', 2, 2, NULL, NULL),
(3, 'Yuki', 'Tanaka', '+49 1573 4567890', 3, 3, 4.75, 3.75),
(4, 'Liam', 'O‘Connor', '+49 1521 6789123', 4, 4, 5.00, 3.92),
(5, 'Nora', 'Flaig', '+49 1579 2341567', 5, 5, 4.00, 3.00),
(6, 'Levi', 'Becker', '+49 1523 4567123', 6, 6, 3.63, 4.33),
(7, 'Zofia', 'Kowalska', '+49 1578 3456789', 7, 7, 2.75, 4.50),
(8, 'Elia', 'Schlag', '+49 1524 7891234', 8, 8, 4.50, 3.00),
(9, 'Chen', 'Wei', '+49 1575 9876123', 9, 9, 4.88, NULL),
(10, 'Hans', 'Müller', '+49 1520 1234567', 10, 10, NULL, NULL),
(11, 'Lisa', 'Paulsen', '+49 1578 9891245', 11, 11, NULL, 4.75);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userratinglender` - gehört zur Kategorie "Bookrating/UserratingLender/UserratingReceiver" | darin werden die Bewertungen zum ausgebenden Nutzer nach einem abgeschlossenen Tausch gespeichert
--

CREATE TABLE `userratinglender` (
  `RatingLenID` int(11) NOT NULL,
  `BorrowID` int(11) NOT NULL,
  `Friendliness` int(11) NOT NULL,
  `Reliability` int(11) NOT NULL,
  `AccuracyOfTheBook` int(11) NOT NULL,
  `Recommendation` int(11) NOT NULL,
  `AverageRate` decimal(3,2) GENERATED ALWAYS AS ((`Friendliness` + `Reliability` + `AccuracyOfTheBook` + `Recommendation`) / 4.0) STORED,
  `FreeText` varchar(100) DEFAULT NULL
) ;

--
-- Daten für Tabelle `userratinglender` - 10 Dateneinträge und 1 Testeintrag
--

INSERT INTO `userratinglender` (`RatingLenID`, `BorrowID`, `Friendliness`, `Reliability`, `AccuracyOfTheBook`, `Recommendation`, `FreeText`) VALUES
(1, 1, 5, 4, 4, 5, 'Sehr freundlicher Nutzer, alles lief problemlos.'),
(2, 2, 3, 4, 4, 3, 'Zuverlässig, aber leider fand ich die Kommunikation etwas holprig.'),
(3, 3, 3, 3, 5, 4, 'Das Buch entsprach der Beschreibung, Kommunikation war okay.'),
(4, 4, 3, 2, 4, 3, 'Beim Abholen musste ich leider doch länger warten, bis das Buch zur Hand war.'),
(5, 5, 4, 2, 4, 4, 'Er war freundlich, doch für ein Abholtermin musste ich etwas warten.'),
(6, 6, 4, 4, 5, 5, 'Perfekter Austausch, sehr zuverlässig und freundlich!'),
(7, 7, 2, 3, 4, 3, 'Leider konnte ich das Buch durch die Abwicklung mit der Userin nicht so genießen :('),
(8, 9, 5, 3, 3, 4, 'Sehr freundlich, doch die Buchqualität könnte mal angepasst werden'),
(9, 10, 5, 5, 5, 5, 'Alles lief hervorragend, ich werde zukünftig mehr bei ihm ausleihen'),
(10, 11, 4, 4, 5, 5, 'Gerne wieder :)'),
(11, 16, 4, 5, 5, 5, 'Terminvereinbarung lief super, das Haus war auch gut zu finden');

--
-- Trigger `userratinglender`
--
-- nähere Beschreibung des Triggers siehe Beschreibung der einzelnen Bestandteile bei Trigger zu bookrating. Prinzipip, Umsetzung und Ziel ist nahezu identisch
DELIMITER $$
CREATE TRIGGER `Update_User_AVGRatingLender_OnDelete` AFTER DELETE ON `userratinglender` FOR EACH ROW BEGIN 
DECLARE user_id INT; 

SELECT BS.UserID INTO user_id FROM 
Booksummary BS INNER JOIN Borrowingperiod B ON BS.SummaryID = B.SummaryID 
WHERE B.BorrowID = OLD.BorrowID; 

UPDATE Userdata U SET RatingLender = (SELECT AVG(L.AverageRate) 
FROM UserratingLender L INNER JOIN Borrowingperiod B ON L.BorrowID = B.BorrowID INNER JOIN Booksummary BS ON B.SummaryID = BS.SummaryID 
WHERE BS.UserID = user_id ) 
WHERE U.UserID = user_id; 
END
$$
DELIMITER ;

-- nähere Beschreibung des Triggers siehe Beschreibung der einzelnen Bestandteile bei Trigger zu bookrating. Prinzipip, Umsetzung und Ziel ist nahezu identisch
DELIMITER $$
CREATE TRIGGER `Update_User_AVGRatingLender_OnInsert` AFTER INSERT ON `userratinglender` FOR EACH ROW BEGIN 
DECLARE user_id INT; 

SELECT BS.UserID INTO user_id FROM 
Booksummary BS INNER JOIN Borrowingperiod B ON BS.SummaryID = B.SummaryID 
WHERE B.BorrowID = NEW.BorrowID; 

UPDATE Userdata U SET RatingLender = (SELECT AVG(L.AverageRate) 
FROM UserratingLender L INNER JOIN Borrowingperiod B ON L.BorrowID = B.BorrowID INNER JOIN Booksummary BS ON B.SummaryID = BS.SummaryID 
WHERE BS.UserID = user_id ) 
WHERE U.UserID = user_id; 
END
$$
DELIMITER ;

-- nähere Beschreibung des Triggers siehe Beschreibung der einzelnen Bestandteile bei Trigger zu bookrating. Prinzipip, Umsetzung und Ziel ist nahezu identisch
DELIMITER $$
CREATE TRIGGER `Update_User_AVGRatingLender_OnUpdate` AFTER UPDATE ON `userratinglender` FOR EACH ROW BEGIN 
DECLARE user_id INT; 

SELECT BS.UserID INTO user_id FROM 
Booksummary BS INNER JOIN Borrowingperiod B ON BS.SummaryID = B.SummaryID 
WHERE B.BorrowID = NEW.BorrowID; 

UPDATE Userdata U SET RatingLender = (SELECT AVG(L.AverageRate) 
FROM UserratingLender L INNER JOIN Borrowingperiod B ON L.BorrowID = B.BorrowID INNER JOIN Booksummary BS ON B.SummaryID = BS.SummaryID 
WHERE BS.UserID = user_id ) 
WHERE U.UserID = user_id; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userratingreceiver` - gehört zur Kategorie "Bookrating/UserratingLender/UserratingReceiver" | darin werden die Bewertungen zum empfangenden Nutzer nach einem abgeschlossenen Tausch gespeichert
--

CREATE TABLE `userratingreceiver` (
  `RatingRecID` int(11) NOT NULL,
  `BorrowID` int(11) NOT NULL,
  `Friendliness` int(11) NOT NULL,
  `Reliability` int(11) NOT NULL,
  `BookQualityAfterReturn` int(11) NOT NULL,
  `Recommendation` int(11) NOT NULL,
  `AverageRate` decimal(3,2) GENERATED ALWAYS AS ((`Friendliness` + `Reliability` + `BookQualityAfterReturn` + `Recommendation`) / 4.0) STORED,
  `FreeText` varchar(100) DEFAULT NULL
) ;

--
-- Daten für Tabelle `userratingreceiver` - 10 Dateneinträge und 1 Testeintrag
--

INSERT INTO `userratingreceiver` (`RatingRecID`, `BorrowID`, `Friendliness`, `Reliability`, `BookQualityAfterReturn`, `Recommendation`, `FreeText`) VALUES
(1, 1, 5, 4, 4, 5, 'Problemlose und unkomplizierte Absprache, gerne wieder :).'),
(2, 2, 4, 3, 5, 4, 'Die Rückgabe wurde kurzfristig verlängert, eine frühere Info wäre besser gewesen.'),
(3, 3, 3, 3, 5, 4, 'Buch kam leicht verspätet zurück, die Kommunikation war okay.'),
(4, 4, 3, 2, 5, 3, 'Er hat das Buch viel zu spät zurückgegeben und war schlecht erreichbar.'),
(5, 5, 4, 5, 5, 5, 'Trotz Terminschwierigkeiten meinerseits eine geduldige und freundliche Person.'),
(6, 6, 5, 5, 5, 5, 'Sehr freundlicher Nutzer, Buch kam pünktlich und in perfektem Zustand zurück.'),
(7, 7, 2, 2, 2, 1, 'Sie war unfreundlich und hat das Buch mit beschädigtem Einband zurückgegeben.'),
(8, 9, 5, 4, 3, 4, 'Sie war sehr freundlich und hat mich aktiv auf Qualitätsmängel zum Buch hingewiesen.'),
(9, 10, 4, 5, 5, 5, 'Super zuverlässig – Buch wurde wie vereinbart zurückgegeben, absolut problemlos.'),
(10, 11, 5, 5, 3, 3, 'Zuverlässiger Nutzer, aber die Seiten waren stellenweise geknickt.'),
(11, 16, 5, 5, 5, 5, 'Super Erfahrung zu meinem ersten Tausch mit ihm gehabt');

--
-- Trigger `userratingreceiver`
--
-- nähere Beschreibung des Triggers siehe Beschreibung der einzelnen Bestandteile bei Trigger zu bookrating. Prinzipip, Umsetzung und Ziel ist nahezu identisch
DELIMITER $$
CREATE TRIGGER `Update_User_AVGRatingReceiver_OnDelete` AFTER DELETE ON `userratingreceiver` FOR EACH ROW BEGIN 
DECLARE user_id INT; 

SELECT B.UserID INTO user_id FROM 
Borrowingperiod B 
WHERE B.BorrowID = OLD.BorrowID; 

UPDATE Userdata U SET RatingReceiver= (SELECT AVG(R.AverageRate) 
FROM UserratingReceiver R INNER JOIN Borrowingperiod B ON R.BorrowID = B.BorrowID
WHERE B.UserID = user_id ) 
WHERE U.UserID = user_id; 
END
$$
DELIMITER ;

-- nähere Beschreibung des Triggers siehe Beschreibung der einzelnen Bestandteile bei Trigger zu bookrating. Prinzipip, Umsetzung und Ziel ist nahezu identisch
DELIMITER $$
CREATE TRIGGER `Update_User_AVGRatingReceiver_OnInsert` AFTER INSERT ON `userratingreceiver` FOR EACH ROW BEGIN 
DECLARE user_id INT; 

SELECT B.UserID INTO user_id FROM 
Borrowingperiod B 
WHERE B.BorrowID = NEW.BorrowID; 

UPDATE Userdata U SET RatingReceiver= (SELECT AVG(R.AverageRate) 
FROM UserratingReceiver R INNER JOIN Borrowingperiod B ON R.BorrowID = B.BorrowID
WHERE B.UserID = user_id ) 
WHERE U.UserID = user_id; 
END
$$
DELIMITER ;

-- nähere Beschreibung des Triggers siehe Beschreibung der einzelnen Bestandteile bei Trigger zu bookrating. Prinzipip, Umsetzung und Ziel ist nahezu identisch
DELIMITER $$
CREATE TRIGGER `Update_User_AVGRatingReceiver_OnUpdate` AFTER UPDATE ON `userratingreceiver` FOR EACH ROW BEGIN 
DECLARE user_id INT; 

SELECT B.UserID INTO user_id FROM 
Borrowingperiod B 
WHERE B.BorrowID = NEW.BorrowID; 

UPDATE Userdata U SET RatingReceiver= (SELECT AVG(R.AverageRate) 
FROM UserratingReceiver R INNER JOIN Borrowingperiod B ON R.BorrowID = B.BorrowID
WHERE B.UserID = user_id ) 
WHERE U.UserID = user_id; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weight` - gehört zur Kategorie "Book/Booksummary" | darin werden die Buchgewichte gespeichert
--

CREATE TABLE `weight` (
  `WeightID` int(11) NOT NULL,
  `WeightInGrams` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `weight`- 16 Dateneinträge und 1 Testeintrag
--

INSERT INTO `weight` (`WeightID`, `WeightInGrams`) VALUES
(1, 106),
(2, 206),
(3, 247),
(4, 257),
(5, 263),
(6, 312),
(7, 317),
(8, 320),
(9, 355),
(10, 372),
(11, 397),
(12, 398),
(13, 400),
(14, 415),
(15, 462),
(16, 553),
(17, 226);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `yearofpublication` - gehört zur Kategorie "Book/Booksummary" | darin werden die Veröffentlichungsjahre der Bücher gespeichert
--

CREATE TABLE `yearofpublication` (
  `YearID` int(11) NOT NULL,
  `Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `yearofpublication` - 10 Dateneinträge
--

INSERT INTO `yearofpublication` (`YearID`, `Year`) VALUES
(1, 1998),
(2, 2009),
(3, 2014),
(4, 2015),
(5, 2017),
(6, 2019),
(7, 2020),
(8, 2021),
(9, 2022),
(10, 2023);

--
-- Indizes der exportierten Tabellen
-- Zu den Tabellen werden sowohl die Primärschlüssel, als auch die Fremdschlüsselbeziehungen erstellt

--
-- Indizes für die Tabelle `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `CityID` (`CityID`);

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indizes für die Tabelle `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `GenreID` (`GenreID`),
  ADD KEY `LanguageID` (`LanguageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `CoverID` (`CoverID`),
  ADD KEY `WeightID` (`WeightID`),
  ADD KEY `DimensionsID` (`DimensionsID`),
  ADD KEY `YearID` (`YearID`);

--
-- Indizes für die Tabelle `bookauthor`
--
-- Erstellung eines zusammenhängenden Primärschlüssels, um ein zusätzlichen Primärschlüssel zu vermeiden. Daten zu Buch und Autor ermöglichen eine Eindeutigkeit des jeweiligen Primärschlüssels eines Datensatzes
ALTER TABLE `bookauthor`
  ADD PRIMARY KEY (`BookID`,`AuthorID`),
  ADD KEY `AuthorID` (`AuthorID`);

--
-- Indizes für die Tabelle `bookcover`
--
ALTER TABLE `bookcover`
  ADD PRIMARY KEY (`CoverID`);

--
-- Indizes für die Tabelle `bookquality`
--
ALTER TABLE `bookquality`
  ADD PRIMARY KEY (`QualityID`);

--
-- Indizes für die Tabelle `bookrating`
--
ALTER TABLE `bookrating`
  ADD PRIMARY KEY (`RatingID`),
  ADD KEY `BorrowID` (`BorrowID`);

--
-- Indizes für die Tabelle `booksummary`
--
ALTER TABLE `booksummary`
  ADD PRIMARY KEY (`SummaryID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `QualityID` (`QualityID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `StatusID` (`StatusID`);

--
-- Indizes für die Tabelle `borrowingperiod`
--
ALTER TABLE `borrowingperiod`
  ADD PRIMARY KEY (`BorrowID`),
  ADD KEY `SummaryID` (`SummaryID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indizes für die Tabelle `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CityID`),
  ADD KEY `CountryID` (`CountryID`);

--
-- Indizes für die Tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indizes für die Tabelle `dimensions`
--
ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`DimensionsID`);

--
-- Indizes für die Tabelle `favouritelist`
--
-- Erstellung eines zusammenhängenden Primärschlüssels, um ein zusätzlichen Primärschlüssel zu vermeiden. Daten zu Buch und User ermöglichen eine Eindeutigkeit des jeweiligen Primärschlüssels eines Datensatzes
ALTER TABLE `favouritelist`
  ADD PRIMARY KEY (`BookID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`GenreID`);

--
-- Indizes für die Tabelle `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`LanguageID`);

--
-- Indizes für die Tabelle `logindata`
--
ALTER TABLE `logindata`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indizes für die Tabelle `numberofpages`
--
ALTER TABLE `numberofpages`
  ADD PRIMARY KEY (`PageID`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PublisherID`);

--
-- Indizes für die Tabelle `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indizes für die Tabelle `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `LoginID` (`LoginID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indizes für die Tabelle `userratinglender`
--
ALTER TABLE `userratinglender`
  ADD PRIMARY KEY (`RatingLenID`),
  ADD KEY `BorrowID` (`BorrowID`);

--
-- Indizes für die Tabelle `userratingreceiver`
--
ALTER TABLE `userratingreceiver`
  ADD PRIMARY KEY (`RatingRecID`),
  ADD KEY `BorrowID` (`BorrowID`);

--
-- Indizes für die Tabelle `weight`
--
ALTER TABLE `weight`
  ADD PRIMARY KEY (`WeightID`);

--
-- Indizes für die Tabelle `yearofpublication`
--
ALTER TABLE `yearofpublication`
  ADD PRIMARY KEY (`YearID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
-- Automatische Vergabe von eindeutigen Primärschlüsselwerten wird durch AUTO_INCREMENT für jeden Datensatz erreicht
--
-- AUTO_INCREMENT für Tabelle `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `author`
--
ALTER TABLE `author`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `book`
--
ALTER TABLE `book`
  MODIFY `BookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `bookcover`
--
ALTER TABLE `bookcover`
  MODIFY `CoverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `bookquality`
--
ALTER TABLE `bookquality`
  MODIFY `QualityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `bookrating`
--
ALTER TABLE `bookrating`
  MODIFY `RatingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `booksummary`
--
ALTER TABLE `booksummary`
  MODIFY `SummaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `borrowingperiod`
--
ALTER TABLE `borrowingperiod`
  MODIFY `BorrowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `city`
--
ALTER TABLE `city`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `dimensions`
--
ALTER TABLE `dimensions`
  MODIFY `DimensionsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `language`
--
ALTER TABLE `language`
  MODIFY `LanguageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `logindata`
--
ALTER TABLE `logindata`
  MODIFY `LoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `numberofpages`
--
ALTER TABLE `numberofpages`
  MODIFY `PageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `PublisherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `status`
--
ALTER TABLE `status`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `userdata`
--
ALTER TABLE `userdata`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `userratinglender`
--
ALTER TABLE `userratinglender`
  MODIFY `RatingLenID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `userratingreceiver`
--
ALTER TABLE `userratingreceiver`
  MODIFY `RatingRecID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `weight`
--
ALTER TABLE `weight`
  MODIFY `WeightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `yearofpublication`
--
ALTER TABLE `yearofpublication`
  MODIFY `YearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
-- Fremdschlüsselbeziehungen werden in den einzelnen Tabellen erstellt

--
-- Constraints der Tabelle `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`CityID`) REFERENCES `city` (`CityID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`PublisherID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`GenreID`) REFERENCES `genre` (`GenreID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`LanguageID`) REFERENCES `language` (`LanguageID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`PageID`) REFERENCES `numberofpages` (`PageID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`CoverID`) REFERENCES `bookcover` (`CoverID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_6` FOREIGN KEY (`WeightID`) REFERENCES `weight` (`WeightID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_7` FOREIGN KEY (`DimensionsID`) REFERENCES `dimensions` (`DimensionsID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_ibfk_8` FOREIGN KEY (`YearID`) REFERENCES `yearofpublication` (`YearID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `bookauthor`
--
ALTER TABLE `bookauthor`
  ADD CONSTRAINT `bookauthor_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bookauthor_ibfk_2` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`AuthorID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `bookrating`
--
ALTER TABLE `bookrating`
  ADD CONSTRAINT `bookrating_ibfk_1` FOREIGN KEY (`BorrowID`) REFERENCES `borrowingperiod` (`BorrowID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `booksummary`
--
ALTER TABLE `booksummary`
  ADD CONSTRAINT `booksummary_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `booksummary_ibfk_2` FOREIGN KEY (`QualityID`) REFERENCES `bookquality` (`QualityID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `booksummary_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `userdata` (`UserID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `booksummary_ibfk_4` FOREIGN KEY (`StatusID`) REFERENCES `status` (`StatusID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `borrowingperiod`
--
ALTER TABLE `borrowingperiod`
  ADD CONSTRAINT `borrowingperiod_ibfk_1` FOREIGN KEY (`SummaryID`) REFERENCES `booksummary` (`SummaryID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowingperiod_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `userdata` (`UserID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryID`) REFERENCES `country` (`CountryID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `favouritelist`
--
ALTER TABLE `favouritelist`
  ADD CONSTRAINT `favouritelist_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `favouritelist_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `userdata` (`UserID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `userdata`
--
ALTER TABLE `userdata`
  ADD CONSTRAINT `userdata_ibfk_1` FOREIGN KEY (`LoginID`) REFERENCES `logindata` (`LoginID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userdata_ibfk_2` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `userratinglender`
--
ALTER TABLE `userratinglender`
  ADD CONSTRAINT `userratinglender_ibfk_1` FOREIGN KEY (`BorrowID`) REFERENCES `borrowingperiod` (`BorrowID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `userratingreceiver`
--
ALTER TABLE `userratingreceiver`
  ADD CONSTRAINT `userratingreceiver_ibfk_1` FOREIGN KEY (`BorrowID`) REFERENCES `borrowingperiod` (`BorrowID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
