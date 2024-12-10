-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 04:04 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id_author`, `full_name`) VALUES
(1, 'Yuval Noah Harari'),
(2, 'Peter H. Diamandis'),
(3, 'Dale Carnegie'),
(4, 'James Clear'),
(5, 'Michael E. Gerber'),
(6, 'Sun Tzu'),
(7, 'T.K. Rowling'),
(8, 'Simon Sinek'),
(9, 'Joseph Murphy'),
(10, 'Viktor E. Frankl'),
(11, 'Robert T. Kiyosaki'),
(12, 'Hans Rosling'),
(13, 'Daniel Kahneman'),
(14, 'Piotr Stankiewicz'),
(15, 'Charles Duhigg'),
(16, 'Ks. Jan Kaczkowski'),
(17, 'Spencer Johnson'),
(18, 'Susan Cain'),
(19, 'Jim Kwik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_image` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id_book`, `id_author`, `id_image`, `title`, `price`, `description`, `category`) VALUES
(1, 1, 1, 'Sapiens. Od zwierząt do bogów', 45.99, 'Yuval Noah Harari opowiada o historii ludzkości.', 'Historia'),
(3, 3, 3, 'Jak zdobyć przyjaciół i zjednać sobie ludzi', 35.99, 'Klasyczny poradnik Dale Carnegie o relacjach międzyludzkich.', 'Poradnik'),
(4, 4, 4, 'Atomic Habits', 34.99, 'James Clear o budowaniu dobrych nawyków.', 'Rozwój osobisty'),
(5, 5, 5, 'Mit przedsiębiorczości', 29.99, 'Michael E. Gerber o tym, jak budować skuteczny biznes.', 'Biznes'),
(6, 6, 6, 'Sztuka wojny', 25.99, 'Sun Tzu – klasyczne dzieło o strategii i taktyce.', 'Strategia'),
(7, 7, 7, 'Biedni, ale bogaci', 49.99, 'T.K. Rowling o różnicach między bogactwem a biedą.', 'Ekonomia'),
(8, 8, 8, 'Zaczynaj od dlaczego', 37.99, 'Simon Sinek o inspirującym przywództwie.', 'Rozwój osobisty'),
(9, 9, 9, 'Potęga podświadomości', 29.99, 'Joseph Murphy o wpływie myśli na życie.', 'Psychologia'),
(10, 10, 10, 'Człowiek w poszukiwaniu sensu', 28.99, 'Viktor E. Frankl o przeżyciach w obozach koncentracyjnych.', 'Biografia'),
(11, 11, 11, 'Bogaty ojciec, biedny ojciec', 33.99, 'Robert T. Kiyosaki o finansowej niezależności.', 'Finanse'),
(12, 12, 12, 'Factfulness', 40.99, 'Hans Rosling o tym, jak widzieć świat racjonalniej.', 'Nauka'),
(13, 13, 13, 'Pułapki myślenia', 44.99, 'Daniel Kahneman o błędach poznawczych.', 'Psychologia'),
(14, 14, 14, 'Lekcje stoicyzmu', 22.99, 'Piotr Stankiewicz o współczesnym stoicyzmie.', 'Filozofia'),
(15, 15, 15, 'Siła nawyku', 34.99, 'Charles Duhigg o tym, jak nawyki kształtują życie.', 'Psychologia'),
(16, 16, 16, 'Życie na pełnej petardzie', 36.99, 'Ks. Jan Kaczkowski o życiu pełnym pasji.', 'Biografia'),
(17, 17, 17, 'Kto zabrał mój ser?', 21.99, 'Spencer Johnson o zmianach w życiu i biznesie.', 'Rozwój osobisty'),
(18, 18, 18, 'Ciszej proszę', 32.99, 'Susan Cain o sile introwertyków.', 'Psychologia'),
(19, 19, 19, 'Nieograniczony', 38.99, 'Jim Kwik o wykorzystaniu potencjału umysłu.', 'Rozwój osobisty'),
(20, 1, 20, 'Homo Deus', 45.99, 'Yuval Noah Harari o przyszłości ludzkości.', 'Historia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `images`
--

CREATE TABLE `images` (
  `id_image` int(11) NOT NULL,
  `id_file` varchar(100) NOT NULL,
  `extension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_image`, `id_file`, `extension`) VALUES
(1, 'sapiens', '.png'),
(3, 'jak_zdobyc_przyjaciol', '.png'),
(4, 'atomic_habits', '.png'),
(5, 'mit_przedsiebiorczosci', '.png'),
(6, 'sztuka_wojny', '.png'),
(8, 'zaczynaj_od_dlaczego', '.png'),
(9, 'potega_podswiadomosci', '.png'),
(10, 'w_poszukiwaniu_sensu', '.png'),
(11, 'bogaty_biedny_ojciec', '.png'),
(12, 'factfullness', '.png'),
(13, 'pulapki_myslenia', '.png'),
(15, 'sila_nawyku', '.png'),
(16, 'zycie_na_pelnej_petardzie', '.png'),
(17, 'kto_zabral_moj_ser', '.png'),
(18, 'ciszej_prosze', '.png'),
(20, 'homo_deus', '.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `name`, `surname`, `password`, `email`) VALUES
(3, 'tomek123', 'Tomasz', 'Kowalski', '$2y$10$S.yGPIBNPznV5IbePdY1yuvoRKMBt9jv1EX8bwwQF4.Yms1yYvTnO', 'mistrz.azbestus@gmail.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`);

--
-- Indeksy dla tabeli `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
