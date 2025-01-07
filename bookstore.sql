-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 07, 2025 at 09:08 AM
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
(3, 'Dale Carnegie'),
(4, 'James Clear'),
(5, 'Michael E. Gerber'),
(6, 'Sun Tzu'),
(8, 'Simon Sinek'),
(9, 'Joseph Murphy'),
(10, 'Viktor E. Frankl'),
(11, 'Robert T. Kiyosaki'),
(12, 'Hans Rosling'),
(13, 'Daniel Kahneman'),
(15, 'Charles Duhigg'),
(16, 'Ks. Jan Kaczkowski'),
(17, 'Spencer Johnson'),
(18, 'Susan Cain'),
(20, 'Adam Leszczyński'),
(25, 'Malcolm Gladwell'),
(27, 'Edith Eger'),
(32, 'Wojciech Drewniak'),
(40, 'Carol S. Dweck'),
(41, 'Stephen R. Covey'),
(43, 'Angela Duckworth'),
(44, 'Eric Ries'),
(45, 'David Goggins'),
(46, 'Tim Ferriss'),
(47, 'Morgan Housel'),
(48, 'Brené Brown'),
(49, 'Héctor García'),
(50, 'Francesc Miralles'),
(51, 'John Doerr'),
(53, 'Kerry Patterson'),
(54, 'David Epstein'),
(55, 'Matthew Walker'),
(57, 'Eckhart Tolle'),
(58, 'Daniel Kahneman'),
(59, 'Daniel H. Pink');

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
(1, 1, 1, 'Sapiens. Od zwierząt do bogów', 45.99, 'Yuval Noah Harari opowiada o wielkich zmianach, jakie przeszła ludzkość od czasów prehistorycznych do współczesności. Analizuje ewolucję, rozwój religii, nauki, języka i struktur społecznych, które pozwoliły ludziom zdominować świat. To fascynująca opowieść o historii gatunku ludzkiego i jego wpływie na planetę.', 'Historia'),
(3, 3, 3, 'Jak zdobyć przyjaciół i zjednać sobie ludzi', 35.99, 'Dale Carnegie w swoim kultowym poradniku przedstawia techniki nawiązywania trwałych relacji międzyludzkich, które mogą pomóc zarówno w życiu zawodowym, jak i osobistym. Książka uczy, jak budować autentyczne zaufanie, zdobywać sympatię i wpływać na innych w sposób etyczny i skuteczny. To uniwersalny przewodnik po relacjach.', 'Poradnik'),
(4, 4, 4, 'Atomic Habits', 34.99, 'James Clear wyjaśnia, jak małe, codzienne zmiany mogą prowadzić do ogromnych efektów w dłuższej perspektywie. Książka oferuje naukowo poparte strategie budowania dobrych nawyków, eliminowania złych nawyków i wprowadzania trwałych zmian w życiu osobistym oraz zawodowym. To przewodnik po transformacji codziennych rutyn.', 'Rozwój osobisty'),
(5, 5, 5, 'Mit przedsiębiorczości', 29.99, 'Michael E. Gerber obala popularny mit, że przedsiębiorcy rodzą się z naturalnym talentem do biznesu. Prezentuje sprawdzony model budowania skutecznego biznesu, który skupia się na tworzeniu powtarzalnych procesów, systematyzacji pracy i efektywnym zarządzaniu. Książka pokazuje, jak przejść od pracy w biznesie do pracy nad biznesem, co pozwala osiągnąć długoterminowy sukces i niezależność finansową.', 'Biznes'),
(6, 6, 6, 'Sztuka wojny', 25.99, '„Sztuka wojny” autorstwa Sun Tzu to ponadczasowe dzieło o strategii, które jest wykorzystywane w wielu dziedzinach życia – od biznesu po politykę i życie osobiste. Autor przedstawia zasady skutecznego planowania, przewidywania działań przeciwników i osiągania celów przy minimalnym ryzyku oraz kosztach. To obowiązkowa lektura o przywództwie i taktyce.', 'Strategia'),
(8, 8, 8, 'Zaczynaj od dlaczego', 37.99, 'Simon Sinek w swojej książce „Zaczynaj od dlaczego” podkreśla znaczenie odkrycia własnego celu i pasji jako podstawy sukcesu. Wyjaśnia, dlaczego to właśnie „dlaczego” motywuje ludzi bardziej niż „co” czy „jak”. Pokazuje liderom, jak inspirować innych do działania poprzez jasne komunikowanie swoich wartości i misji.', 'Rozwój osobisty'),
(9, 9, 9, 'Potęga podświadomości', 29.99, 'Joseph Murphy w książce „Potęga podświadomości” analizuje, jak nasze myśli i przekonania wpływają na nasze życie. Autor wyjaśnia, w jaki sposób można programować podświadomość, aby osiągać sukcesy, zdrowie i szczęście. Książka oferuje praktyczne wskazówki dotyczące zmiany negatywnych wzorców myślowych na pozytywne.', 'Psychologia'),
(10, 10, 10, 'Człowiek w poszukiwaniu sensu', 28.99, '„Człowiek w poszukiwaniu sensu” autorstwa Viktora E. Frankla to poruszająca relacja z pobytu autora w obozach koncentracyjnych. Książka łączy osobiste doświadczenia z psychologią egzystencjalną, podkreślając, że odnalezienie sensu życia może pomóc człowiekowi przetrwać nawet najcięższe próby i przezwyciężyć cierpienie.', 'Biografia'),
(11, 11, 11, 'Bogaty ojciec, biedny ojciec', 33.99, 'Robert T. Kiyosaki w książce „Bogaty ojciec, biedny ojciec” przedstawia dwie różne filozofie dotyczące finansów. Bogaty ojciec uczy go, jak budować aktywa i dążyć do niezależności finansowej, podczas gdy biedny ojciec pokazuje tradycyjne podejście do pracy. Autor podkreśla znaczenie edukacji finansowej w osiągnięciu sukcesu.', 'Finanse'),
(12, 12, 12, 'Factfulness', 40.99, 'Hans Rosling w książce „Factfulness” obala mity i pokazuje, jak zrozumienie faktów i danych może zmienić nasze postrzeganie świata. Autor uczy, jak rozpoznawać własne uprzedzenia, analizować dane i podejmować bardziej racjonalne decyzje. To książka, która otwiera oczy na rzeczywisty stan świata i globalne wyzwania.', 'Nauka'),
(13, 13, 13, 'Pułapki myślenia', 44.99, 'Daniel Kahneman, laureat Nagrody Nobla w dziedzinie ekonomii, w książce „Pułapki myślenia” wyjaśnia, jak ludzki umysł podejmuje decyzje. Rozróżnia szybkie, intuicyjne myślenie i powolne, analityczne myślenie, pokazując, jak często popełniamy błędy poznawcze. Książka dostarcza narzędzi do lepszego podejmowania decyzji.', 'Psychologia'),
(15, 15, 15, 'Siła nawyku', 34.99, 'Charles Duhigg o tym, jak nawyki kształtują życie.', 'Psychologia'),
(16, 16, 16, 'Życie na pełnej petardzie', 36.99, 'Ks. Jan Kaczkowski w książce „Życie na pełnej petardzie” opowiada o swoim życiu pełnym wyzwań i pasji. Autor dzieli się swoimi przemyśleniami na temat wiary, śmierci, sensu życia i odwagi, by żyć pełnią życia. Książka pełna jest humoru, inspiracji i praktycznych rad, jak cieszyć się każdą chwilą i nie bać się trudności.', 'Biografia'),
(17, 17, 17, 'Kto zabrał mój ser?', 21.99, '„Kto zabrał mój ser?” autorstwa Spencera Johnsona to inspirująca opowieść o zmianach w życiu i sposobach radzenia sobie z nimi. Historia czterech bohaterów szukających sera uczy, jak reagować na zmieniające się okoliczności, adaptować się do nowej rzeczywistości i odnosić sukcesy, mimo trudności i niepewności.', 'Rozwój osobisty'),
(18, 18, 18, 'Ciszej proszę', 32.99, 'Susan Cain w książce „Ciszej proszę” bada, jak introwertycy mogą odnaleźć się w świecie, w którym dominuje ekstrawertyczny styl życia. Podkreśla wartość cech takich jak uważne słuchanie, refleksja i empatia. Książka zachęca do docenienia różnorodności osobowości i pokazuje, jak każdy może odnieść sukces na swoich warunkach.', 'Psychologia'),
(20, 1, 20, 'Homo Deus', 45.99, 'Yuval Noah Harari w książce „Homo Deus” analizuje przyszłość ludzkości, zastanawiając się, jak nowe technologie, sztuczna inteligencja i rozwój biologii mogą wpłynąć na nasze życie. Autor bada, czy ludzkość stanie się bogami przyszłości, i jakie wyzwania etyczne i społeczne przed nami stoją.', 'Historia'),
(21, 1, 21, '21 lekcji na XXI wiek', 39.99, 'W książce „21 lekcji na XXI wiek” Yuval Noah Harari przedstawia współczesne wyzwania, takie jak globalizacja, zmiany klimatyczne, rozwój technologii i dezinformacja. Autor analizuje, jak społeczeństwa mogą radzić sobie z tymi problemami, zachęcając do krytycznego myślenia i świadomego podejmowania decyzji.', 'Historia'),
(22, 20, 22, 'Głosy: Ludowa historia Polski', 39.99, 'Adam Leszczyński w książce „Głosy: Ludowa historia Polski” przedstawia historię Polski z perspektywy zwykłych ludzi, którzy przez wieki byli wykluczani z oficjalnych narracji historycznych. Autor opowiada o życiu chłopów, robotników i innych grup, które miały ogromny wpływ na kształtowanie się polskiego społeczeństwa.', 'Historia'),
(27, 25, 27, 'Punkt przełomowy', 36.99, 'Malcolm Gladwell w książce „Punkt przełomowy” analizuje momenty, które zmieniają bieg wydarzeń w społeczeństwach. Autor pokazuje, jak małe zmiany mogą prowadzić do wielkich efektów, podkreślając znaczenie ludzi, trendów i wydarzeń, które mogą wywołać rewolucyjne zmiany w naszym życiu i kulturze.', 'Psychologia'),
(29, 27, 29, 'Wybór. Przetrwać niewyobrażalne', 37.99, 'Edith Eger w książce „Wybór. Przetrwać niewyobrażalne” opowiada o swoich przeżyciach z obozu Auschwitz i o trudnej drodze do uzdrowienia. Książka łączy osobistą historię autorki z psychologią, pokazując, jak każdy może dokonać wyboru, by uwolnić się od traumy i odnaleźć sens w życiu, mimo cierpienia.', 'Biografia'),
(34, 32, 34, 'Historia bez cenzury', 28.99, 'Wojciech Drewniak w książce „Historia bez cenzury” w zabawny i nietypowy sposób przedstawia wybrane wydarzenia z historii Polski i świata. Autor skupia się na ciekawostkach, kontrowersjach i mniej znanych faktach, które nie zawsze trafiają do podręczników. To świeże spojrzenie na historię, pełne humoru i anegdot.', 'Historia'),
(41, 40, 41, 'Mindset: The New Psychology of Success', 37.99, 'Carol S. Dweck w książce „Mindset: The New Psychology of Success” opisuje różnicę między nastawieniem stałym a rozwojowym. Pokazuje, jak nasze przekonania o własnych możliwościach wpływają na sukcesy w życiu zawodowym, edukacji i relacjach. Książka dostarcza narzędzi do budowania bardziej elastycznego i otwartego umysłu.', 'Rozwój osobisty'),
(42, 41, 42, 'The 7 Habits of Highly Effective People', 45.99, 'Stephen R. Covey w swojej klasycznej książce „The 7 Habits of Highly Effective People” przedstawia siedem fundamentalnych nawyków, które mogą pomóc osiągnąć sukces osobisty i zawodowy. Autor omawia zasady proaktywności, wyznaczania celów, priorytetyzacji i budowania efektywnych relacji, tworząc kompleksowy przewodnik po rozwoju osobistym.', 'Rozwój osobisty'),
(44, 58, 44, 'Thinking, Fast and Slow', 44.99, 'Daniel Kahneman w książce „Thinking, Fast and Slow” wprowadza czytelników w świat ludzkiego myślenia, wyróżniając dwa systemy: szybkie, intuicyjne myślenie i powolne, analityczne myślenie. Autor analizuje błędy poznawcze, które wpływają na nasze decyzje, i podpowiada, jak je minimalizować. To lektura dla każdego, kto chce lepiej rozumieć procesy decyzyjne.', 'Psychologia'),
(45, 43, 45, 'Grit: The Power of Passion and Perseverance', 36.99, 'Angela Duckworth w książce „Grit: The Power of Passion and Perseverance” podkreśla, że wytrwałość i pasja są kluczowe dla osiągnięcia sukcesu. Autorka analizuje, dlaczego talent to tylko część równania sukcesu, a ciężka praca i konsekwencja mogą przynieść lepsze efekty. To inspirująca książka o sile charakteru i dążeniu do celu.', 'Rozwój osobisty'),
(46, 44, 46, 'The Lean Startup', 42.99, 'Eric Ries w książce „The Lean Startup” przedstawia innowacyjne podejście do tworzenia biznesów. Metoda lean opiera się na ciągłym testowaniu pomysłów, szybkim reagowaniu na zmiany i minimalizacji ryzyka. Autor pokazuje, jak budować produkty, które naprawdę odpowiadają na potrzeby klientów, i jak unikać kosztownych błędów.', 'Biznes'),
(47, 8, 47, 'Start With Why', 38.99, 'Simon Sinek w książce „Start With Why” wyjaśnia, dlaczego zrozumienie własnego „dlaczego” jest kluczowe dla sukcesu. Autor analizuje, jak wielcy liderzy inspirują innych, koncentrując się na głębszym celu swojej działalności. Książka dostarcza praktycznych wskazówek dla osób chcących zbudować autentyczne i trwałe przywództwo.', 'Biznes'),
(48, 45, 48, 'Can’t Hurt Me', 41.99, 'David Goggins w książce „Can’t Hurt Me” opowiada swoją niezwykłą historię przemiany z otyłego, wycofanego mężczyzny w jednego z najtwardszych ludzi na świecie. Książka zawiera inspirujące lekcje na temat siły psychicznej, pokonywania ograniczeń i wytrwałości w dążeniu do celu. To manifest nieustępliwości i hartu ducha.', 'Rozwój osobisty'),
(49, 46, 49, 'Tools of Titans', 47.99, 'Tim Ferriss w książce „Tools of Titans” dzieli się poradami, narzędziami i nawykami ludzi sukcesu, których sam spotkał podczas swoich wywiadów i rozmów. Autor gromadzi praktyczne wskazówki z zakresu produktywności, zdrowia, finansów i rozwoju osobistego, tworząc kompleksowy przewodnik dla tych, którzy pragną żyć na własnych warunkach.', 'Rozwój osobisty'),
(50, 47, 50, 'The Psychology of Money', 39.99, 'Morgan Housel w książce „The Psychology of Money” wyjaśnia, jak nasze podejście do pieniędzy i decyzje finansowe są kształtowane przez emocje, doświadczenia i psychologię. Autor podkreśla, że zrozumienie ludzkich zachowań jest kluczowe w budowaniu stabilności finansowej. Książka oferuje praktyczne lekcje dotyczące mądrego zarządzania pieniędzmi.', 'Finanse'),
(51, 48, 51, 'Dare to Lead', 36.99, 'Brené Brown w książce „Dare to Lead” podkreśla znaczenie odwagi i wrażliwości w budowaniu silnego przywództwa. Autorka pokazuje, jak autentyczność i empatia mogą pomóc liderom w budowaniu zaufania, rozwijaniu zespołów i osiąganiu wspólnych celów. To przewodnik po nowoczesnym przywództwie opartym na wartościach.', 'Rozwój osobisty'),
(52, 49, 52, 'Ikigai: The Japanese Secret to a Long and Happy Life', 31.99, 'Héctor García i Francesc Miralles w książce „Ikigai: The Japanese Secret to a Long and Happy Life” przedstawiają filozofię ikigai, czyli japońską koncepcję odnajdywania sensu życia. Autorzy analizują, jak ikigai wpływa na zdrowie, szczęście i długowieczność, oferując praktyczne wskazówki dotyczące odkrywania swojej życiowej misji.', 'Rozwój osobisty'),
(54, 51, 54, 'Measure What Matters', 35.99, 'John Doerr w książce „Measure What Matters” przedstawia system OKR (Objectives and Key Results), który pomaga firmom i organizacjom osiągać cele. Autor opisuje, jak skutecznie definiować priorytety, mierzyć postępy i osiągać wyniki. Książka zawiera przykłady z życia największych firm technologicznych, które odniosły sukces dzięki OKR.', 'Biznes'),
(55, 59, 55, 'Drive: The Surprising Truth About What Motivates Us', 37.99, 'Daniel H. Pink w książce „Drive: The Surprising Truth About What Motivates Us” przedstawia naukowe podejście do zrozumienia motywacji. Autor obala tradycyjne modele nagród i kar, podkreślając znaczenie wewnętrznej motywacji opartej na autonomii, mistrzostwie i celowości. Książka oferuje praktyczne wskazówki dla liderów i menedżerów.', 'Psychologia'),
(56, 53, 56, 'Crucial Conversations', 33.99, 'Kerry Patterson w książce „Crucial Conversations” analizuje, jak prowadzić trudne rozmowy w sposób skuteczny i konstruktywny. Autor przedstawia narzędzia i strategie, które pomagają w rozwiązywaniu konfliktów, budowaniu porozumienia i osiąganiu pozytywnych rezultatów. To praktyczny przewodnik po komunikacji w życiu prywatnym i zawodowym.', 'Rozwój osobisty'),
(58, 54, 58, 'Range: Why Generalists Triumph in a Specialized World', 39.99, 'David Epstein w książce „Range: Why Generalists Triumph in a Specialized World” analizuje, dlaczego osoby o szerokim zakresie wiedzy i umiejętności odnoszą większe sukcesy niż wąsko wyspecjalizowani eksperci. Autor podkreśla znaczenie kreatywności, elastyczności i umiejętności łączenia różnych dziedzin w dynamicznie zmieniającym się świecie.', 'Rozwój osobisty'),
(59, 55, 59, 'Why We Sleep', 44.99, 'Matthew Walker w książce „Why We Sleep” przedstawia najnowsze odkrycia naukowe dotyczące znaczenia snu dla zdrowia i wydajności. Autor analizuje, jak sen wpływa na naszą pamięć, emocje, system odpornościowy i procesy regeneracyjne. Książka dostarcza praktycznych wskazówek dotyczących poprawy jakości snu i optymalizacji rytmu dobowego.', 'Nauka'),
(60, 57, 60, 'The Power of Now', 32.99, 'Eckhart Tolle w książce „The Power of Now” przedstawia koncepcję życia w teraźniejszości jako klucz do wewnętrznego spokoju i duchowego przebudzenia. Autor pokazuje, jak uwolnić się od przeszłości i obaw o przyszłość, koncentrując się na chwili obecnej. To książka o praktykowaniu uważności i odkrywaniu głębszego sensu życia.', 'Rozwój osobisty');

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
(20, 'homo_deus', '.png'),
(21, '21_lekcji', '.png'),
(22, 'ludowa_historia_polski', '.png'),
(27, 'punkt_przelomowy', '.png'),
(29, 'wybor_przetrwac', '.png'),
(34, 'historia_bez_cenzury', '.png'),
(41, 'mindset_the_new_psychology', '.png'),
(42, 'the_7_habits', '.png'),
(44, 'thinking_fast_and_slow', '.png'),
(45, 'grit_the_power', '.png'),
(46, 'lean_startup', '.png'),
(47, 'start_with_why', '.png'),
(48, 'cant_hurt_me', '.png'),
(49, 'tools_of_titans', '.png'),
(50, 'the_psychology_of_money', '.png'),
(51, 'dare_to_lead', '.png'),
(52, 'ikigai', '.png'),
(54, 'measure_what_matters', '.png'),
(55, 'drive_the_suprising_truth', '.png'),
(56, 'crucial_conversations', '.png'),
(58, 'range_why_generalists_triumph', '.png'),
(59, 'why_we_sleep', '.png'),
(60, 'the_power_of_now', '.png');

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
(3, 'tomek123', 'Tomasz', 'Kowalski', '$2y$10$S.yGPIBNPznV5IbePdY1yuvoRKMBt9jv1EX8bwwQF4.Yms1yYvTnO', 'mistrz.azbestus@gmail.com'),
(4, 'admin', 'Krystian', 'Stanik', '$2y$10$ca9KcMfbX.t2pS8Nk.proOuMBlS7F1SAmBnI2ZtoK0eeAZwwBLe8a', 'krystian.stanik877@gmail.com'),
(5, 'sylwia', 'sylwia2', 'fksanfjsanfj', '$2y$10$.gqupQVuP15tnerkzJTflefhN/B1zDrc9SQ9UEYbSyqrm.1Px2idG', 'krystian$@gmail.com');

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
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
