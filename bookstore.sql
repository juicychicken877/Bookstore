-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 09:41 PM
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
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
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
(19, 'Jim Kwik'),
(20, 'Adam Leszczyński'),
(21, 'Olga Tokarczuk'),
(22, 'Piotr Zychowicz'),
(23, 'Justyna Kopińska'),
(24, 'Andrzej Leder'),
(25, 'Malcolm Gladwell'),
(26, 'Martyna Wojciechowska'),
(27, 'Edith Eger'),
(28, 'Beata Pawlikowska'),
(29, 'Małgorzata Szejnert'),
(30, 'Witold Szabłowski'),
(31, 'Tomasz Piątek'),
(32, 'Wojciech Drewniak'),
(33, 'Andrzej Zygmuntowicz'),
(34, 'Marek Rabij'),
(35, 'Dariusz Rosiak'),
(36, 'Filip Springer'),
(37, 'Tomasz Łabuszewski'),
(40, 'Carol S. Dweck'),
(41, 'Stephen R. Covey'),
(42, 'Cal Newport'),
(43, 'Angela Duckworth'),
(44, 'Eric Ries'),
(45, 'David Goggins'),
(46, 'Tim Ferriss'),
(47, 'Morgan Housel'),
(48, 'Brené Brown'),
(49, 'Héctor García'),
(50, 'Francesc Miralles'),
(51, 'John Doerr'),
(52, 'Daniel H. Pink'),
(53, 'Kerry Patterson'),
(54, 'David Epstein'),
(55, 'Matthew Walker'),
(56, 'Eckhart Tolle');

-- --------------------------------------------------------

--
-- Table structure for table `books`
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
(20, 1, 20, 'Homo Deus', 45.99, 'Yuval Noah Harari o przyszłości ludzkości.', 'Historia'),
(21, 1, 21, '21 lekcji na XXI wiek', 39.99, 'Yuval Noah Harari analizuje współczesne wyzwania.', 'Historia'),
(22, 20, 22, 'Głosy: Ludowa historia Polski', 39.99, 'Adam Leszczyński przedstawia historię Polski z perspektywy ludowej.', 'Historia'),
(23, 21, 23, 'Czuły narrator', 44.99, 'Olga Tokarczuk dzieli się swoimi przemyśleniami na temat literatury.', 'Eseje'),
(24, 22, 24, 'Wojna się skończyła, ale…', 49.99, 'Piotr Zychowicz analizuje powojenną historię Polski.', 'Historia'),
(25, 23, 25, 'Opowieści podręczne', 34.99, 'Zbiór reportaży Justyny Kopińskiej.', 'Reportaż'),
(26, 24, 26, 'Prześniona rewolucja', 32.99, 'Andrzej Leder bada rewolucję społeczną w Polsce w XX wieku.', 'Historia'),
(27, 25, 27, 'Punkt przełomowy', 36.99, 'Malcolm Gladwell o przełomowych momentach w społeczeństwach.', 'Psychologia'),
(28, 26, 28, 'Poza horyzonty', 41.99, 'Martyna Wojciechowska o swoich podróżach.', 'Podróże'),
(29, 27, 29, 'Wybór. Przetrwać niewyobrażalne', 37.99, 'Edith Eger o przeżyciach z obozu Auschwitz.', 'Biografia'),
(30, 28, 30, 'Księga dobrych myśli', 27.99, 'Beata Pawlikowska o pozytywnym myśleniu.', 'Rozwój osobisty'),
(31, 29, 31, 'Duchy Minionej Wojny', 33.99, 'Małgorzata Szejnert analizuje historię wojny.', 'Historia'),
(32, 30, 32, 'Zabójca z miasta moreli', 29.99, 'Witold Szabłowski o tureckiej historii i społeczeństwie.', 'Reportaż'),
(33, 31, 33, 'Polskie Piekiełko', 39.99, 'Tomasz Piątek analizuje polską politykę i historię.', 'Historia'),
(34, 32, 34, 'Historia bez cenzury', 28.99, 'Wojciech Drewniak prezentuje historię w nietypowy sposób.', 'Historia'),
(35, 33, 35, 'Sekrety wojennej Warszawy', 31.99, 'Andrzej Zygmuntowicz opowiada o wojennych tajemnicach Warszawy.', 'Historia'),
(36, 34, 36, 'Życie na miarę', 38.99, 'Marek Rabij o prawdziwych historiach produkcji odzieży.', 'Reportaż'),
(37, 35, 37, 'Polacy na krańcach świata', 42.99, 'Dariusz Rosiak bada emigrację Polaków.', 'Podróże'),
(38, 36, 38, 'Miasto Archipelag', 39.99, 'Filip Springer o dawnych miastach wojewódzkich Polski.', 'Reportaż'),
(39, 37, 39, 'Powstanie Warszawskie w relacjach', 46.99, 'Tomasz Łabuszewski analizuje relacje uczestników powstania.', 'Historia'),
(41, 40, 41, 'Mindset: The New Psychology of Success', 37.99, 'Carol S. Dweck o nastawieniu, które prowadzi do sukcesu.', 'Rozwój osobisty'),
(42, 41, 42, 'The 7 Habits of Highly Effective People', 45.99, 'Stephen R. Covey o nawykach skutecznych ludzi.', 'Rozwój osobisty'),
(43, 42, 43, 'Deep Work', 39.99, 'Cal Newport o koncentracji w pracy.', 'Produktywność'),
(44, 43, 44, 'Thinking, Fast and Slow', 44.99, 'Daniel Kahneman o błędach poznawczych i procesach myślowych.', 'Psychologia'),
(45, 44, 45, 'Grit: The Power of Passion and Perseverance', 36.99, 'Angela Duckworth o wytrwałości i pasji.', 'Rozwój osobisty'),
(46, 45, 46, 'The Lean Startup', 42.99, 'Eric Ries o nowoczesnym podejściu do tworzenia biznesów.', 'Biznes'),
(47, 46, 47, 'Start With Why', 38.99, 'Simon Sinek o inspirującym przywództwie.', 'Biznes'),
(48, 47, 48, 'Can’t Hurt Me', 41.99, 'David Goggins o przezwyciężaniu trudności.', 'Rozwój osobisty'),
(49, 48, 49, 'Tools of Titans', 47.99, 'Tim Ferriss o nawykach i strategiach ludzi sukcesu.', 'Rozwój osobisty'),
(50, 49, 50, 'The Psychology of Money', 39.99, 'Morgan Housel o decyzjach finansowych i ich psychologii.', 'Finanse'),
(51, 50, 51, 'Dare to Lead', 36.99, 'Brené Brown o odwadze i przywództwie.', 'Rozwój osobisty'),
(52, 51, 52, 'Ikigai: The Japanese Secret to a Long and Happy Life', 31.99, 'Héctor García i Francesc Miralles o japońskiej filozofii szczęścia.', 'Rozwój osobisty'),
(54, 53, 54, 'Measure What Matters', 35.99, 'John Doerr o celach i efektywności.', 'Biznes'),
(55, 54, 55, 'Drive: The Surprising Truth About What Motivates Us', 37.99, 'Daniel H. Pink o motywacji.', 'Psychologia'),
(56, 55, 56, 'Crucial Conversations', 33.99, 'Kerry Patterson o trudnych rozmowach i ich skuteczności.', 'Rozwój osobisty'),
(58, 57, 58, 'Range: Why Generalists Triumph in a Specialized World', 39.99, 'David Epstein o przewadze bycia generalistą.', 'Rozwój osobisty'),
(59, 58, 59, 'Why We Sleep', 44.99, 'Matthew Walker o znaczeniu snu dla zdrowia i wydajności.', 'Nauka'),
(60, 59, 60, 'The Power of Now', 32.99, 'Eckhart Tolle o życiu w teraźniejszości.', 'Rozwój osobisty');

-- --------------------------------------------------------

--
-- Table structure for table `images`
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
-- Table structure for table `users`
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
(3, 'tomek123', 'Tomasz', 'Kowalski', '$2y$10$S.yGPIBNPznV5IbePdY1yuvoRKMBt9jv1EX8bwwQF4.Yms1yYvTnO', 'mistrz.azbestus@gmail.com'),
(4, 'admin', 'Krystian', 'Stanik', '$2y$10$ca9KcMfbX.t2pS8Nk.proOuMBlS7F1SAmBnI2ZtoK0eeAZwwBLe8a', 'krystian.stanik877@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `users`
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
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
