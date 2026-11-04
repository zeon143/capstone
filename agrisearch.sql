-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2026 at 01:41 PM
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
-- Database: `agrisearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_conversations`
--

CREATE TABLE `chat_conversations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_conversations`
--

INSERT INTO `chat_conversations` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 3, 'How do I grow rice in Laguna?', '2026-02-25 12:40:31', '2026-02-25 12:41:11'),
(2, 3, 'Common pig diseases and treatment', '2026-02-25 12:40:35', '2026-02-25 12:40:41'),
(3, 5, 'Hello who are you?', '2026-03-02 11:10:23', '2026-04-23 08:11:35'),
(4, 1, 'Kumusta', '2026-03-05 13:53:15', '2026-03-05 13:53:31'),
(5, 1, 'New Chat', '2026-03-05 14:20:19', '2026-03-05 14:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `conversation_id`, `role`, `content`, `created_at`) VALUES
(1, 1, 'user', 'How do I grow rice in Laguna?', '2026-02-25 12:40:31'),
(2, 1, 'assistant', 'Growing rice in Laguna can be a rewarding experience. Here\'s a step-by-step guide to help you get started:\n\n**Preparation:**\n* Choose a suitable variety of rice, such as IR64 or PSB Rc82, which are popular in the Philippines.\n* Prepare your land by plowing and harrowing to create a smooth, even surface.\n* Level the land to ensure proper water distribution.\n\n**Planting:**\n* Plant rice during the wet season (June to November) to take advantage of natural rainfall.\n* Use a rice transplanter or manual planting method, spacing seedlings 20-25 cm apart.\n* Apply basal fertilizers, such as urea and ammonium phosphate, according to DA Philippines guidelines.\n\n**Irrigation and Water Management:**\n* Laguna has a rainy season, but supplemental irrigation may be needed during dry spells.\n* Use a combination of rainwater and irrigation to maintain a consistent water level.\n* Drain excess water to prevent waterlogging and reduce the risk of diseases.\n\n**Pest and Disease Management:**\n* Monitor your crop regularly for signs of pests, such as golden apple snails and rice black bugs.\n* Apply integrated pest management (IPM) techniques, including crop rotation, biological control, and chemical control.\n* Inspect your crop for diseases, such as bacterial leaf blight and fungal infections, and apply fungicides as needed.\n\n**Harvesting:**\n* Rice is typically ready for harvest 120-140 days after planting.\n* Cut the rice stalks near the base, leaving a small portion of stem intact.\n* Dry the harvested rice to a moisture level of 20% or lower to preserve its quality.\n\n**Additional Tips:**\n* Consult with local farmers and agricultural experts for specific advice tailored to your area.\n* Follow DA Philippines guidelines and PAGASA weather forecasts to optimize your rice production.\n* Consider using organic or sustainable farming practices to reduce your environmental impact and improve crop resilience.\n\nBy following these steps and tips, you can successfully grow rice in Laguna and contribute to the country\'s food security. Happy farming!', '2026-02-25 12:40:34'),
(3, 2, 'user', 'Common pig diseases and treatment', '2026-02-25 12:40:39'),
(4, 2, 'assistant', 'As a farmer in Victoria, Laguna, it\'s essential to be aware of common pig diseases and their treatments. Here are some of the most common ones:\n\n**Common Pig Diseases:**\n* Swine Flu (Influenza)\n* Piglet Diarrhea (Rotavirus, Coronavirus)\n* Swine Erysipelas\n* Leptospirosis\n* African Swine Fever (ASF)\n\n**Symptoms and Treatment:**\n* Swine Flu: coughing, sneezing, fever. Treatment: vaccination, antibiotics, and supportive care.\n* Piglet Diarrhea: diarrhea, dehydration. Treatment: oral rehydration, antibiotics, and improved sanitation.\n* Swine Erysipelas: skin lesions, fever. Treatment: antibiotics, and vaccination.\n* Leptospirosis: fever, jaundice, kidney damage. Treatment: antibiotics, and vaccination.\n* African Swine Fever (ASF): fever, loss of appetite, hemorrhaging. **No treatment available**, focus on prevention through biosecurity measures.\n\n**Prevention Measures:**\n* Vaccination\n* Proper sanitation and hygiene\n* Quarantine and isolation of infected pigs\n* Use of personal protective equipment (PPE)\n* Regular monitoring of pig health\n\nIt\'s crucial to consult with a veterinarian for proper diagnosis and treatment. The Department of Agriculture (DA) Philippines also provides guidelines and support for pig farming and disease management. Remember to always follow proper biosecurity measures to prevent the spread of diseases.', '2026-02-25 12:40:41'),
(5, 1, 'user', 'hi', '2026-02-25 12:41:10'),
(6, 1, 'assistant', 'I\'m AgriBot and I can only help with agriculture-related questions. Please ask me about crops, farming, or livestock!', '2026-02-25 12:41:11'),
(7, 3, 'user', 'Hello who are you?', '2026-03-02 11:10:23'),
(8, 3, 'assistant', 'Kumusta! I\'m AgriBot, your friendly agricultural assistant for AgriSearch, a farm management system used in Victoria, Laguna, Philippines. I\'m here to help you with all your farming-related questions and concerns. Whether it\'s about planting crops, raising livestock, or managing your farm, I\'m ready to provide you with practical and actionable advice. What can I help you with today?', '2026-03-02 11:10:25'),
(9, 3, 'user', 'Aba marunong ka pala mag tagalog?', '2026-03-02 11:10:38'),
(10, 3, 'assistant', 'Oo, marunong ako mag-Tagalog! Pero sa pag-uusap natin, mas maganda siguro kung mag-English tayo para mas madali ang pag-intindi. Pero kung gusto mo, pwede rin nating mag-Tagalog. Ano ang gusto mong itanong o pag-usapan tungkol sa farming o agriculture? \n\n(But to make our conversation more efficient, let\'s stick to English. What would you like to know or discuss about farming or agriculture?)', '2026-03-02 11:10:40'),
(11, 3, 'user', 'Paano mag alaga ng baboy simula pagkabiik?', '2026-03-02 11:11:18'),
(12, 3, 'assistant', 'I\'m AgriBot and I can only help with agriculture-related questions. Please ask me about crops, farming, or livestock!\n\nHowever, since your question is related to livestock, I\'d be happy to help. Here\'s some advice on how to care for piglets from birth:\n\n**Piglet Care from Birth:**\n\n* Ensure the piglets receive adequate colostrum from their mother within the first 24 hours of birth.\n* Provide a warm and clean environment, with a temperature range of 25-30°C.\n* Monitor the piglets\' health and weight daily.\n* Start vaccination and deworming programs as recommended by a veterinarian.\n* Wean the piglets at 21-28 days old and provide a starter feed.\n\nFor more specific advice, I can provide you with some general guidelines on pig farming in the Philippines. Would you like to know more about:\n* Nutrition and feeding\n* Health and disease management\n* Breeding and reproduction\n* Housing and sanitation\n\nPlease let me know, and I\'ll do my best to assist you.', '2026-03-02 11:11:19'),
(13, 4, 'user', 'Kumusta', '2026-03-05 13:53:16'),
(14, 4, 'assistant', 'Kumusta! I\'m AgriBot and I can only help with agriculture-related questions. Please ask me about crops, farming, or livestock! \n\nIf you\'re a farmer from Victoria, Laguna, I\'d be happy to provide tips and advice on how to improve your farm\'s productivity and profitability. What\'s on your mind? Do you have questions about planting, harvesting, or taking care of your crops or livestock?', '2026-03-05 13:53:17'),
(15, 4, 'user', 'Pano magalaga ng 45 days', '2026-03-05 13:53:28'),
(16, 4, 'assistant', 'Ang 45-day crops ay mga pananim na nakakapag-anak sa loob ng 45 araw, tulad ng pechay, lettuce, at mustard. Narito ang mga tips para sa pag-aalaga ng 45-day crops:\n\n* **Pagtanim**: Magtanim ng binhi sa lupa na may sapat na tubig at nutrient.\n* **Pagpapaligo**: Bigyan ng sapat na tubig ang mga pananim, lalo na sa mga unang linggo ng pagtubong.\n* **Paggamit ng abono**: Maglagay ng abono sa lupa upang mapabuti ang paglaki ng mga pananim.\n* **Pagbantay sa mga pesteng**: Bantayan ang mga pananim sa mga pesteng gaya ng bukbok, kulisap, at iba pa.\n* **Pag-aani**: Anihin ang mga pananim sa loob ng 45 araw, depende sa uri ng pananim.\n\nSa Victoria, Laguna, ang mga 45-day crops ay pwedeng itanim tuwing tag-init o tag-ulan, depende sa klima at kondisyon ng lupa. Siguraduhin na sundin ang mga gabay ng Department of Agriculture (DA) sa pagtanim at pag-aalaga ng mga pananim.', '2026-03-05 13:53:31'),
(17, 3, 'user', 'Gano katagal magpalaki ng siling labuyo para maharvest', '2026-04-23 08:11:32'),
(18, 3, 'assistant', 'Ang siling labuyo (Capsicum frutescens) ay isang popular na sili na ginagamit sa mga lutong Pinoy. Ang pagpalaki nito ay depende sa ilang kadahilanan, tulad ng klima, lupa, at pag-aalaga.\n\n**Pagpalaki ng Siling Labuyo:**\n\n* Sa mga lugar na may mainit na klima, tulad ng sa Laguna, ang siling labuyo ay tumataas nang mabilis at may mahabang panahon ng pagbubunga.\n* Ang pagpalaki ng siling labuyo ay karaniwang tumatagal ng 60-90 araw mula sa pagtanim ng binhi hanggang sa pag-anak ng unang bunga.\n* Ang mga halaman ng siling labuyo ay nagbubunga ng paulit-ulit, kaya\'t ang pag-anak ng bunga ay maaaring magpatuloy ng ilang buwan.\n\n**Mga tips para sa pagpalaki ng siling labuyo:**\n\n* Tanimin ang mga binhi ng siling labuyo sa lupa na may kaunting asin at may sapat na nutrisyon.\n* Bigyan ng sapat na tubig at araw ang mga halaman ng siling labuyo.\n* Alisin ang mga damong ligaw at iba pang mga hadlang sa paglaki ng mga halaman.\n* Pumayag sa mga halaman na magbunga nang paulit-ulit, at alisin ang mga bunga na hindi na kailangan.\n\nSa Victoria, Laguna, ang siling labuyo ay pwedeng itanim sa mga buwan ng Pebrero hanggang Abril, at sa mga buwan ng Agosto hanggang Oktubre, ayon sa klima at panahon ng PAGASA.', '2026-04-23 08:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `crop_type` varchar(100) NOT NULL,
  `planting_date` date NOT NULL,
  `current_growth_stage` varchar(50) DEFAULT NULL,
  `expected_harvest_date` date DEFAULT NULL,
  `yield_amount` float DEFAULT NULL,
  `yield_unit` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `actual_harvest_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `farm_id`, `crop_type`, `planting_date`, `current_growth_stage`, `expected_harvest_date`, `yield_amount`, `yield_unit`, `notes`, `status`, `created_at`, `updated_at`, `actual_harvest_date`) VALUES
(1, 1, 'Rice', '2026-01-01', 'seedling', '2026-04-01', NULL, 'kg', '', 'harvested', '2026-02-20 13:16:32', '2026-05-03 04:56:22', NULL),
(2, 4, 'Chili', '2026-04-23', 'mature', '2026-07-23', NULL, 'kg', '', 'active', '2026-04-23 08:12:20', '2026-08-25 08:56:27', '2026-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `crop_growth_records`
--

CREATE TABLE `crop_growth_records` (
  `id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `record_date` date NOT NULL,
  `growth_stage` varchar(50) DEFAULT NULL,
  `height_cm` float DEFAULT NULL,
  `health_status` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disease_records`
--

CREATE TABLE `disease_records` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `disease_name` varchar(200) NOT NULL,
  `disease_code` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `severity` varchar(50) DEFAULT NULL,
  `onset_date` datetime NOT NULL,
  `diagnosis_date` datetime DEFAULT NULL,
  `treatment_start_date` datetime DEFAULT NULL,
  `recovery_date` datetime DEFAULT NULL,
  `symptoms` text DEFAULT NULL,
  `diagnosis_method` varchar(200) DEFAULT NULL,
  `treatment_given` text DEFAULT NULL,
  `medications_used` text DEFAULT NULL,
  `veterinarian_name` varchar(200) DEFAULT NULL,
  `clinic_name` varchar(200) DEFAULT NULL,
  `outcome` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `treatment_cost` float DEFAULT NULL,
  `medication_cost` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distribution_cycles`
--

CREATE TABLE `distribution_cycles` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `cycle_start_date` datetime NOT NULL,
  `cycle_end_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distribution_events`
--

CREATE TABLE `distribution_events` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(300) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `scheduled_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distribution_records`
--

CREATE TABLE `distribution_records` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `quantity_distributed` float NOT NULL,
  `remarks` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `distributed_by_id` int(11) DEFAULT NULL,
  `distribution_time` datetime DEFAULT NULL,
  `verification_code` varchar(10) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by_id` int(11) DEFAULT NULL,
  `verification_notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `distribution_requests`
--

CREATE TABLE `distribution_requests` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `supply_type` varchar(100) NOT NULL,
  `supply_name` varchar(200) NOT NULL,
  `quantity_requested` float NOT NULL,
  `unit` varchar(50) NOT NULL,
  `reason` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `requested_by_id` int(11) NOT NULL,
  `reviewed_by_officer_id` int(11) DEFAULT NULL,
  `officer_review_date` datetime DEFAULT NULL,
  `officer_notes` text DEFAULT NULL,
  `approved_by_admin_id` int(11) DEFAULT NULL,
  `admin_approval_date` datetime DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `rejection_date` datetime DEFAULT NULL,
  `distribution_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `requested_at` datetime NOT NULL DEFAULT current_timestamp(),
  `request_type` varchar(50) NOT NULL DEFAULT 'via_officer',
  `claim_code` varchar(10) DEFAULT NULL,
  `claim_location` varchar(200) DEFAULT NULL,
  `claim_deadline` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distribution_requests`
--

INSERT INTO `distribution_requests` (`id`, `farm_id`, `supply_type`, `supply_name`, `quantity_requested`, `unit`, `reason`, `status`, `requested_by_id`, `reviewed_by_officer_id`, `officer_review_date`, `officer_notes`, `approved_by_admin_id`, `admin_approval_date`, `rejection_reason`, `rejection_date`, `distribution_id`, `created_at`, `updated_at`, `requested_at`, `request_type`, `claim_code`, `claim_location`, `claim_deadline`) VALUES
(3, 1, 'fertilizer', 'Atlas 14-14-14', 50, 'kg', '', 'approved', 5, 4, '2026-03-04 03:27:15', '', NULL, NULL, NULL, NULL, NULL, '2026-02-22 14:13:33', '2026-03-12 14:38:52', '2026-02-22 14:13:33', 'via_officer', NULL, NULL, NULL),
(4, 1, 'fertilizer', 'Atlas', 50, 'kg', 'For rice', 'approved', 5, 4, '2026-03-04 03:24:14', '', NULL, NULL, NULL, NULL, NULL, '2026-03-04 03:09:38', '2026-03-12 14:38:50', '2026-03-04 03:09:38', 'via_officer', NULL, NULL, NULL),
(5, 1, 'feed', 'Grower', 5, 'bags', '', 'officer_approved', 5, 4, '2026-03-12 15:37:30', '', NULL, NULL, NULL, NULL, NULL, '2026-03-12 14:37:01', '2026-03-12 15:37:30', '2026-03-12 14:37:01', 'via_officer', NULL, NULL, NULL),
(6, 1, 'feed', 'Starter', 5, 'bags', '', 'claimed', 5, NULL, NULL, 'Magdala ng sako', NULL, NULL, NULL, NULL, NULL, '2026-03-12 14:54:50', '2026-03-12 15:24:47', '2026-03-12 14:54:50', 'direct_municipal', 'C3D5D7130B', 'Agriculture Office', '2026-03-21'),
(7, 1, 'feed', 'Finisher', 5, 'bags', '', 'ready_to_claim', 5, NULL, NULL, 'Magdala ng sako', NULL, NULL, NULL, NULL, NULL, '2026-03-13 04:28:02', '2026-03-13 04:28:56', '2026-03-13 04:28:02', 'direct_municipal', 'A8059F7C8F', 'Agriculture Office', '2026-03-21'),
(8, 1, 'feed', 'Uno feeds', 50, 'kg', 'Pakain', 'claimed', 5, NULL, NULL, 'Pakikuha agad', NULL, NULL, NULL, NULL, NULL, '2026-04-23 08:20:17', '2026-04-23 08:23:28', '2026-04-23 08:20:17', 'direct_municipal', '5275E88D40', 'ICT department', '2026-04-30'),
(9, 1, 'fertilizer', '14-14-14', 50, 'kg', 'For the seeds', 'ready_to_claim', 5, NULL, NULL, 'Magdala ng sako', NULL, NULL, NULL, NULL, NULL, '2026-04-28 09:42:07', '2026-04-28 09:43:10', '2026-04-28 09:42:07', 'direct_municipal', 'D0B4C4CBAD', 'Pulis station victoria', '2026-05-05'),
(10, 1, 'feed', 'Uno Grower', 50, 'kg', '', 'ready_to_claim', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-04-28 09:51:49', '2026-04-28 09:52:34', '2026-04-28 09:51:49', 'direct_municipal', 'BB51992718', 'Kalsada', '2026-05-05'),
(11, 1, 'fertilizer', '14-14-14', 12, 'bags', '', 'pending', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-05-03 05:39:40', '2026-05-03 05:39:40', '2026-05-03 05:39:40', 'direct_municipal', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `farms`
--

CREATE TABLE `farms` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `crop_type` varchar(100) NOT NULL,
  `area_square_meters` float NOT NULL,
  `barangay_id` int(11) NOT NULL,
  `barangay_name` varchar(100) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `lot_boundary_geojson` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farms`
--

INSERT INTO `farms` (`id`, `name`, `description`, `crop_type`, `area_square_meters`, `barangay_id`, `barangay_name`, `latitude`, `longitude`, `owner_id`, `is_active`, `created_at`, `updated_at`, `lot_boundary_geojson`) VALUES
(1, 'Jako Pig Farm', '', 'Pig', 500, 3, 'Masapang', 14.1879, 121.337, 5, 1, '2026-02-20 05:26:21', '2026-03-03 08:50:54', NULL),
(2, 'Jako Poultry', '', 'Chicken', 1650, 5, 'Pagalangan', 14.2346, 121.332, 5, 1, '2026-03-02 12:57:18', '2026-03-13 04:23:43', '{\"type\": \"Polygon\", \"coordinates\": [[[121.331334, 14.234518], [121.331742, 14.233343], [121.331817, 14.233135], [121.332192, 14.23328], [121.332525, 14.233873], [121.332246, 14.234497], [121.331763, 14.234632], [121.331334, 14.234518]]]}'),
(3, 'Jako rice field', '', 'Rice', 25285, 4, 'Nanhaya', 14.2339, 121.331, 5, 1, '2026-03-12 06:49:36', '2026-03-13 07:14:20', '{\"type\": \"Polygon\", \"coordinates\": [[[121.330749, 14.233764], [121.329862, 14.233374], [121.329985, 14.233111], [121.330151, 14.232784], [121.330253, 14.232838], [121.330331, 14.232662], [121.330224, 14.232617], [121.330304, 14.232428], [121.331474, 14.23276], [121.33186, 14.232885], [121.332281, 14.233033], [121.332195, 14.233236], [121.331758, 14.233104], [121.33123, 14.234546], [121.330996, 14.234494], [121.331176, 14.233943], [121.330749, 14.233764]]]}'),
(4, 'Jako Silihan', '', 'Chili', 4027.41, 9, 'San Roque', 14.2266, 121.323, 5, 1, '2026-04-23 07:58:32', '2026-04-23 07:58:32', '{\"type\": \"Polygon\", \"coordinates\": [[[121.3234, 14.22606], [121.322797, 14.225938], [121.322558, 14.226367], [121.323204, 14.226586], [121.3234, 14.22606]]]}'),
(5, 'Asngalan', '', 'Rice', 3540.39, 6, 'San Benito', 14.2337, 121.331, 8, 1, '2026-09-06 16:40:52', '2026-09-06 16:40:52', '{\"type\": \"Polygon\", \"coordinates\": [[[121.331275, 14.234445], [121.331586, 14.23444], [121.332021, 14.233873], [121.331484, 14.233728], [121.331275, 14.234445]]]}');

-- --------------------------------------------------------

--
-- Table structure for table `farm_supply_inventory`
--

CREATE TABLE `farm_supply_inventory` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(20) NOT NULL,
  `source` varchar(50) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `unit_cost` float DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm_supply_inventory`
--

INSERT INTO `farm_supply_inventory` (`id`, `farm_id`, `item_name`, `item_type`, `quantity`, `unit`, `source`, `purchase_date`, `unit_cost`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'Perfect grow 14-14-14', 'fertilizer', 100, 'kg', 'farmer_purchased', '2026-02-20', 1500, '', '2026-02-20 13:11:49', '2026-02-20 13:11:49'),
(3, 2, 'Vaccine', 'other', 100, 'doses', 'farmer_purchased', '2026-04-23', 4999.97, '', '2026-04-23 08:14:16', '2026-04-23 08:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `farm_supply_usage`
--

CREATE TABLE `farm_supply_usage` (
  `id` int(11) NOT NULL,
  `farm_supply_id` int(11) NOT NULL,
  `usage_type` varchar(50) NOT NULL,
  `related_model` varchar(50) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `quantity_used` float NOT NULL,
  `usage_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `recorded_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm_supply_usage`
--

INSERT INTO `farm_supply_usage` (`id`, `farm_supply_id`, `usage_type`, `related_model`, `related_id`, `quantity_used`, `usage_date`, `notes`, `recorded_by_id`, `created_at`) VALUES
(1, 1, 'crop_application', 'crop', NULL, 10, '2026-02-24', '', 5, '2026-02-24 13:08:40'),
(2, 1, 'crop_application', 'crop', NULL, 10, '2026-02-24', '', 5, '2026-02-24 13:21:13'),
(3, 1, 'crop_application', 'crop', NULL, 20, '2026-02-24', '', 5, '2026-02-24 13:33:01'),
(4, 1, 'crop_application', 'crop', 1, 5, '2026-02-24', '', 5, '2026-02-24 13:51:47'),
(5, 1, 'crop_application', 'crop', 1, 2, '2026-02-24', '', 5, '2026-02-24 14:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `health_alerts`
--

CREATE TABLE `health_alerts` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `alert_type` varchar(50) NOT NULL,
  `alert_title` varchar(200) NOT NULL,
  `alert_message` text DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `alert_date` datetime NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `resolved_date` datetime DEFAULT NULL,
  `is_resolved` tinyint(1) DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL,
  `related_record_id` int(11) DEFAULT NULL,
  `related_record_type` varchar(50) DEFAULT NULL,
  `notification_sent` tinyint(1) DEFAULT NULL,
  `notification_method` varchar(50) DEFAULT NULL,
  `notification_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `health_records`
--

CREATE TABLE `health_records` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `vaccine_inventory_id` int(11) DEFAULT NULL,
  `record_type` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `date_administered` datetime NOT NULL,
  `next_due_date` datetime DEFAULT NULL,
  `veterinarian_name` varchar(200) DEFAULT NULL,
  `clinic_name` varchar(200) DEFAULT NULL,
  `contact_info` varchar(200) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `result` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_records`
--

INSERT INTO `health_records` (`id`, `livestock_id`, `vaccine_inventory_id`, `record_type`, `name`, `description`, `dosage`, `date_administered`, `next_due_date`, `veterinarian_name`, `clinic_name`, `contact_info`, `cost`, `result`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'vitamin', 'Ascorbic Acid', '', '10ml', '2026-02-01 00:00:00', '2026-03-01 00:00:00', 'Dodong', '', NULL, NULL, NULL, 'completed', NULL, '2026-02-20 05:30:20', '2026-02-20 05:30:20'),
(2, 1, 1, 'vaccine', 'FMD Vaccine', 'FMD-2024-001', '1 dose', '2026-02-24 14:56:58', NULL, 'Juan dela Cruzs', NULL, NULL, 150, NULL, 'completed', '', '2026-02-24 14:56:58', '2026-02-24 14:56:58'),
(3, 1, 1, 'vaccine', 'FMD Vaccine', 'FMD-2024-001', '1 dose', '2026-02-24 15:03:37', NULL, 'Juan dela Cruzs', NULL, NULL, 150, NULL, 'completed', '', '2026-02-24 15:03:37', '2026-02-24 15:03:37'),
(4, 1, 3, 'vaccine', 'Newcastle Disease Vaccine', 'ND-2024-003', '10 vial (10 head)', '2026-02-24 15:35:35', NULL, 'Juan dela Cruzs', NULL, NULL, 750, NULL, 'completed', '', '2026-02-24 15:35:35', '2026-02-24 15:35:35'),
(5, 2, 3, 'vaccine', 'Newcastle Disease Vaccine', 'ND-2024-003', '9 vial (9 head)', '2026-03-03 08:13:06', NULL, 'System Administrator', NULL, NULL, 675, NULL, 'completed', '', '2026-03-03 08:13:06', '2026-03-03 08:13:06'),
(6, 1, 1, 'vaccine', 'FMD Vaccine', 'FMD-2024-001', '10 dose (10 head)', '2026-04-23 08:17:19', NULL, 'Juan dela Cruzs', NULL, NULL, 1500, NULL, 'completed', '', '2026-04-23 08:17:19', '2026-04-23 08:17:19'),
(7, 1, 1, 'vaccine', 'FMD Vaccine', 'FMD-2024-001', '10 dose (10 head)', '2026-04-23 08:18:48', NULL, 'Juan dela Cruzs', NULL, NULL, 1500, NULL, 'completed', '', '2026-04-23 08:18:48', '2026-04-23 08:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `livestock`
--

CREATE TABLE `livestock` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `animal_type` varchar(50) NOT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `unique_id` varchar(100) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `age_months` int(11) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `weight_kg` float DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `status_date` datetime DEFAULT NULL,
  `acquisition_date` datetime NOT NULL,
  `acquisition_cost` float DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `location_description` varchar(200) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestock`
--

INSERT INTO `livestock` (`id`, `farm_id`, `animal_type`, `breed`, `unique_id`, `name`, `age_months`, `birth_date`, `gender`, `weight_kg`, `count`, `status`, `status_date`, `acquisition_date`, `acquisition_cost`, `source`, `location_description`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'pig', 'Berkshire', '001', NULL, 1, NULL, 'male', 30, 10, 'active', NULL, '2026-01-01 00:00:00', 50000, 'Mang kaloy', 'Banlat 1', '', '2026-02-20 05:28:41', '2026-03-02 11:08:15'),
(2, 1, 'chicken', '45 days', '01', NULL, 0, NULL, 'male', 0.1, 9, 'active', NULL, '2026-03-02 00:00:00', 25, 'Local', '', '', '2026-03-02 10:01:38', '2026-03-02 11:04:17'),
(3, 2, 'chicken', '45 days', '', NULL, 0, NULL, '', 0.1, 480, 'active', NULL, '2026-03-02 00:00:00', 25000, 'Breeder', 'Poultry house 1', '', '2026-03-02 12:59:56', '2026-04-23 08:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `livestock_events`
--

CREATE TABLE `livestock_events` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `event_type` varchar(20) NOT NULL,
  `event_date` datetime NOT NULL,
  `count_affected` int(11) NOT NULL,
  `cause_of_death` varchar(100) DEFAULT NULL,
  `buyer_name` varchar(200) DEFAULT NULL,
  `buyer_contact` varchar(200) DEFAULT NULL,
  `price_per_head` float DEFAULT NULL,
  `total_revenue` float DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestock_events`
--

INSERT INTO `livestock_events` (`id`, `livestock_id`, `event_type`, `event_date`, `count_affected`, `cause_of_death`, `buyer_name`, `buyer_contact`, `price_per_head`, `total_revenue`, `notes`, `created_at`) VALUES
(1, 2, 'death', '2026-03-02 00:00:00', 1, 'disease', NULL, NULL, NULL, NULL, '', '2026-03-02 11:04:17'),
(2, 3, 'sale', '2026-03-02 00:00:00', 10, NULL, 'Sean', '', 80, 800, '', '2026-03-02 13:00:46'),
(3, 3, 'death', '2026-04-23 00:00:00', 10, 'unknown', NULL, NULL, NULL, NULL, '', '2026-04-23 08:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `livestock_weight_logs`
--

CREATE TABLE `livestock_weight_logs` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `weight_kg` float NOT NULL,
  `weighed_at` datetime NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestock_weight_logs`
--

INSERT INTO `livestock_weight_logs` (`id`, `livestock_id`, `weight_kg`, `weighed_at`, `notes`, `created_at`) VALUES
(1, 1, 30, '2026-03-02 00:00:00', '', '2026-03-02 11:08:15'),
(2, 3, 0.1, '2026-03-02 00:00:00', '', '2026-03-02 13:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `municipal_distributions`
--

CREATE TABLE `municipal_distributions` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `cycle_id` int(11) NOT NULL,
  `supply_type` varchar(100) NOT NULL,
  `supply_name` varchar(200) NOT NULL,
  `quantity_distributed` float NOT NULL,
  `unit` varchar(50) NOT NULL,
  `distribution_model` varchar(20) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `distribution_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `recommended_by_officer_id` int(11) DEFAULT NULL,
  `officer_recommendation_date` datetime DEFAULT NULL,
  `officer_notes` text DEFAULT NULL,
  `approved_by_admin_id` int(11) DEFAULT NULL,
  `admin_approval_date` datetime DEFAULT NULL,
  `distributed_by_id` int(11) DEFAULT NULL,
  `received_by_farmer` tinyint(1) DEFAULT NULL,
  `received_confirmation_date` datetime DEFAULT NULL,
  `farmer_notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipal_offers`
--

CREATE TABLE `municipal_offers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `supply_name` varchar(200) NOT NULL,
  `supply_type` varchar(100) NOT NULL,
  `total_quantity` float NOT NULL,
  `quantity_per_farmer` float NOT NULL,
  `unit` varchar(50) NOT NULL,
  `claim_location` varchar(200) NOT NULL,
  `claim_start` date DEFAULT NULL,
  `claim_deadline` date NOT NULL,
  `target_barangay` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipal_offers`
--

INSERT INTO `municipal_offers` (`id`, `name`, `supply_name`, `supply_type`, `total_quantity`, `quantity_per_farmer`, `unit`, `claim_location`, `claim_start`, `claim_deadline`, `target_barangay`, `notes`, `status`, `created_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Rice seedling', 'sample', 'seed', 5000, 10, 'bags', 'ICT department', '2026-04-23', '2026-05-07', NULL, 'Pakikuha agad', 'open', 2, '2026-04-23 08:25:12', '2026-04-23 08:25:59'),
(2, 'Avocado plant', 'Avocado', 'seed', 5000, 10, 'pieces', 'Agriculture Office', '2026-04-28', '2026-05-05', NULL, 'Magdala sako', 'open', 2, '2026-04-28 09:50:03', '2026-04-28 09:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `municipal_offer_claims`
--

CREATE TABLE `municipal_offer_claims` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `quantity_reserved` float NOT NULL,
  `claim_code` varchar(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `claimed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipal_offer_claims`
--

INSERT INTO `municipal_offer_claims` (`id`, `offer_id`, `farm_id`, `farmer_id`, `quantity_reserved`, `claim_code`, `status`, `registered_at`, `claimed_at`) VALUES
(1, 1, 1, 5, 10, '202CA36917', 'claimed', '2026-04-23 08:26:17', '2026-04-23 08:26:55'),
(2, 2, 1, 5, 10, '363F9DFF62', 'no_show', '2026-04-28 09:50:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_records`
--

CREATE TABLE `nutrition_records` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `food_type` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `quantity_kg` float NOT NULL,
  `quantity_unit` varchar(50) DEFAULT NULL,
  `feeding_frequency` varchar(100) DEFAULT NULL,
  `feeding_time` varchar(100) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total_cost` float DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `supplier_contact` varchar(200) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `last_restocked` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition_records`
--

INSERT INTO `nutrition_records` (`id`, `livestock_id`, `food_type`, `description`, `quantity_kg`, `quantity_unit`, `feeding_frequency`, `feeding_time`, `cost_per_unit`, `total_cost`, `supplier_name`, `supplier_contact`, `start_date`, `end_date`, `last_restocked`, `is_active`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'Starter', NULL, 200, 'g', '2', 'Morning, Afternoon', 25, NULL, 'Sherly', '09123456877', '2026-02-20 05:32:40', NULL, NULL, 1, '', '2026-02-20 05:32:40', '2026-02-20 05:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `is_used` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productivity_records`
--

CREATE TABLE `productivity_records` (
  `id` int(11) NOT NULL,
  `livestock_id` int(11) NOT NULL,
  `metric_type` varchar(100) NOT NULL,
  `quantity` float NOT NULL,
  `unit` varchar(50) NOT NULL,
  `record_date` datetime NOT NULL,
  `market_value` float DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productivity_records`
--

INSERT INTO `productivity_records` (`id`, `livestock_id`, `metric_type`, `quantity`, `unit`, `record_date`, `market_value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'meat_produced', 15, 'kg', '2026-02-01 00:00:00', 5000, '', '2026-02-20 05:33:25', '2026-02-20 05:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `supply_type` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `unit` varchar(20) NOT NULL,
  `unit_cost` float DEFAULT NULL,
  `reorder_level` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `supply_type`, `name`, `description`, `unit`, `unit_cost`, `reorder_level`, `created_at`, `updated_at`) VALUES
(1, 'vaccine', 'Anti rabies', '', 'doses', 500, 10, '2026-04-23 08:30:32', '2026-04-23 08:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `supply_distributions`
--

CREATE TABLE `supply_distributions` (
  `id` int(11) NOT NULL,
  `supply_id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `distributed_by` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `distribution_date` datetime NOT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supply_inventory`
--

CREATE TABLE `supply_inventory` (
  `id` int(11) NOT NULL,
  `supply_id` int(11) NOT NULL,
  `quantity_available` float DEFAULT NULL,
  `quantity_reserved` float DEFAULT NULL,
  `warehouse_location` varchar(100) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supply_usage_feedback`
--

CREATE TABLE `supply_usage_feedback` (
  `id` int(11) NOT NULL,
  `distribution_id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `metric_type` varchar(100) NOT NULL,
  `metric_unit` varchar(50) DEFAULT NULL,
  `before_value` varchar(100) DEFAULT NULL,
  `after_value` varchar(100) DEFAULT NULL,
  `improvement` varchar(100) DEFAULT NULL,
  `general_feedback` text DEFAULT NULL,
  `challenges` text DEFAULT NULL,
  `suggestions` text DEFAULT NULL,
  `feedback_date` date NOT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `submitted_by_farmer_id` int(11) NOT NULL,
  `verified_by_officer_id` int(11) DEFAULT NULL,
  `verification_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supply_usage_records`
--

CREATE TABLE `supply_usage_records` (
  `id` int(11) NOT NULL,
  `supply_id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `record_type` varchar(50) NOT NULL,
  `related_id` int(11) DEFAULT NULL,
  `quantity_used` float NOT NULL,
  `usage_date` date NOT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `role` varchar(30) NOT NULL,
  `barangay_id` int(11) DEFAULT NULL,
  `barangay_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `middle_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `account_status` varchar(20) NOT NULL DEFAULT 'approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `full_name`, `role`, `barangay_id`, `barangay_name`, `is_active`, `is_verified`, `created_at`, `updated_at`, `last_login`, `first_name`, `middle_name`, `last_name`, `account_status`) VALUES
(1, 'admin_system', 'admin@agrisearch.local', 'scrypt:32768:8:1$tvVkbasPbUviys4o$378932af11954c1e4e24d2189a2c7a0f31c5e07a0818f7804fa5a859ac95a193c43171d7b25fe487b036f17a5438ea6203094ce852297c05615ef2b1b5b3682c', 'System Administrator', 'system_admin', 1, 'Banca-Banca', 1, 1, '2026-02-20 04:35:20', '2026-09-06 16:07:05', '2026-09-06 16:07:05', 'System', NULL, 'Administrator', 'approved'),
(2, 'admin_victoria', 'victoria_admin@agrisearch.local', 'scrypt:32768:8:1$3I16nsRSNm0hF3J0$352b7d04b86bfa8113b9ad654a7b37b8a469ac9eb51d31d35df226f3eb09fbabf9b8dca14c8c7809520d3235f556facdfe34bb30cd8753c10b71f4da717c7e4c', 'Victoria Administrator', 'victoria_admin', 1, 'Banca-Banca', 1, 1, '2026-02-20 04:35:20', '2026-09-06 14:14:35', '2026-09-06 14:14:35', 'Victoria', NULL, 'Administrator', 'approved'),
(3, 'coordinator_mun', 'coordinator@agrisearch.local', 'scrypt:32768:8:1$GkqrY5a0dR8Cippr$1dd9d9a153d89165188f813619fd1cdce917eef371192263f7a1e516488403f8e11e7f72e31d55a184e728edae99f4fc024835fb2f18ab718f730d136670ac38', 'Municipal Coordinator', 'municipal_coordinator', 2, 'Daniw', 1, 1, '2026-02-20 04:35:20', '2026-02-22 15:02:11', '2026-02-22 15:02:11', 'Municipal', NULL, 'Coordinator', 'approved'),
(4, 'officer_barangay', 'barangay_officer@agrisearch.local', 'scrypt:32768:8:1$4ViRxi4F0i4ZL8GG$815ec15b15fec05c68e64095fb8d4f9265a3338f790f2ae9966456e2c210d047aefeb96c5b5bee5fac6c0666034ce71fab67605dbadd8eac1d359445db0c7577', 'Barangay Officer', 'barangay_officer', 3, 'Masapang', 1, 1, '2026-02-20 04:35:20', '2026-03-12 14:40:05', '2026-03-12 14:40:05', 'Barangay', NULL, 'Officer', 'approved'),
(5, 'farmer_juan', 'farmer@agrisearch.local', 'scrypt:32768:8:1$FD6XVKW2UUE6zjS4$7fb8bf93fbdd9a9773827fe9186ea0a58a199461fb7f5f453633448d631dba20a8d0797902179b19f2af79ae79e22f40e4d3e128679bce2ce4e2057cd137533b', 'Juan dela Cruzs', 'farmer', 4, 'Nanhaya', 1, 1, '2026-02-20 04:35:20', '2026-08-25 08:51:35', '2026-08-25 08:51:35', 'Juan', NULL, 'dela Cruzs', 'approved'),
(8, 'ajrecio17', 'amiljuliusr1@gmail.com', 'scrypt:32768:8:1$UBV8C2RyLrc0EZYf$05c79a8f39cf6f87f413d2e94306b0ba375785d8a50ae304024d29574756a04cc42c2b5f1401b58874484d0dea48ee3d58594989871817924355e50af9e25d03', 'Amil Julius G. Recio', 'farmer', 6, 'San Benito', 1, 1, '2026-09-06 15:51:50', '2026-09-06 16:39:18', '2026-09-06 16:39:18', 'Amil', 'Julius G.', 'Recio', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `user_approval_audits`
--

CREATE TABLE `user_approval_audits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `reason` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_approval_audits`
--

INSERT INTO `user_approval_audits` (`id`, `user_id`, `admin_id`, `action`, `reason`, `created_at`) VALUES
(2, 8, 1, 'approved', NULL, '2026-09-06 15:52:24'),
(4, 8, 1, 'suspended', '231', '2026-09-06 16:15:23'),
(5, 8, 1, 'reactivated', 'Reactivated from user management', '2026-09-06 16:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_disposals`
--

CREATE TABLE `vaccine_disposals` (
  `id` int(11) NOT NULL,
  `vaccine_inventory_id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `disposed_by_id` int(11) NOT NULL,
  `quantity_disposed` int(11) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `notes` text DEFAULT NULL,
  `disposed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccine_disposals`
--

INSERT INTO `vaccine_disposals` (`id`, `vaccine_inventory_id`, `farm_id`, `disposed_by_id`, `quantity_disposed`, `reason`, `notes`, `disposed_at`) VALUES
(1, 2, 1, 1, 30, 'Expired', 'Disposed during inventory cleanup verification.', '2026-08-25 08:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_inventory`
--

CREATE TABLE `vaccine_inventory` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `vaccine_name` varchar(200) NOT NULL,
  `vaccine_code` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity_units` int(11) NOT NULL,
  `unit_type` varchar(50) DEFAULT NULL,
  `quantity_used` int(11) DEFAULT NULL,
  `storage_location` varchar(200) DEFAULT NULL,
  `storage_temperature` varchar(100) DEFAULT NULL,
  `purchase_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `opened_date` datetime DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total_cost` float DEFAULT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `supplier_contact` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `quantity_disposed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccine_inventory`
--

INSERT INTO `vaccine_inventory` (`id`, `farm_id`, `vaccine_name`, `vaccine_code`, `description`, `quantity_units`, `unit_type`, `quantity_used`, `storage_location`, `storage_temperature`, `purchase_date`, `expiry_date`, `opened_date`, `cost_per_unit`, `total_cost`, `supplier_name`, `supplier_contact`, `is_active`, `notes`, `created_at`, `updated_at`, `quantity_disposed`) VALUES
(1, 1, 'FMD Vaccine', 'FMD-2024-001', NULL, 50, 'dose', 22, 'Refrigerator A', '2-8°C', '2026-02-23 16:06:56', '2027-02-23 16:06:56', NULL, 150, NULL, 'Vetcare Supplies', NULL, 1, NULL, '2026-02-23 16:06:56', '2026-04-23 08:18:48', 0),
(2, 1, 'Rabies Vaccine', 'RAB-2024-002', NULL, 30, 'dose', 0, 'Refrigerator B', '2-8°C', '2026-02-23 16:06:56', '2026-08-22 16:06:56', NULL, 200, NULL, 'Vetcare Supplies', NULL, 0, NULL, '2026-02-23 16:06:56', '2026-08-25 08:04:36', 30),
(3, 1, 'Newcastle Disease Vaccine', 'ND-2024-003', NULL, 100, 'vial', 19, 'Freezer', '-20°C', '2026-02-23 16:06:56', '2026-11-20 16:06:56', NULL, 75, NULL, 'Bio-Pharma Ltd', NULL, 1, NULL, '2026-02-23 16:06:56', '2026-03-03 08:13:06', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_chat_conversations_user_id` (`user_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_chat_messages_conversation_id` (`conversation_id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_id` (`farm_id`);

--
-- Indexes for table `crop_growth_records`
--
ALTER TABLE `crop_growth_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crop_id` (`crop_id`);

--
-- Indexes for table `disease_records`
--
ALTER TABLE `disease_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_disease_outcome` (`outcome`),
  ADD KEY `ix_disease_livestock_id` (`livestock_id`),
  ADD KEY `ix_disease_onset_date` (`onset_date`);

--
-- Indexes for table `distribution_cycles`
--
ALTER TABLE `distribution_cycles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_distribution_cycles_created_by_id` (`created_by_id`),
  ADD KEY `ix_distribution_cycles_status` (`status`);

--
-- Indexes for table `distribution_events`
--
ALTER TABLE `distribution_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_id` (`created_by_id`),
  ADD KEY `ix_distribution_events_scheduled_date` (`scheduled_date`),
  ADD KEY `ix_distribution_events_status` (`status`),
  ADD KEY `ix_distribution_events_barangay` (`barangay`);

--
-- Indexes for table `distribution_records`
--
ALTER TABLE `distribution_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verification_code` (`verification_code`),
  ADD KEY `distributed_by_id` (`distributed_by_id`),
  ADD KEY `verified_by_id` (`verified_by_id`),
  ADD KEY `ix_distribution_records_event_id` (`event_id`),
  ADD KEY `ix_distribution_records_verification_code` (`verification_code`),
  ADD KEY `ix_distribution_records_request_id` (`request_id`),
  ADD KEY `ix_distribution_records_status` (`status`);

--
-- Indexes for table `distribution_requests`
--
ALTER TABLE `distribution_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_requests_requested_by_id` (`requested_by_id`),
  ADD KEY `ix_requests_farm_id` (`farm_id`),
  ADD KEY `ix_requests_status` (`status`),
  ADD KEY `reviewed_by_officer_id` (`reviewed_by_officer_id`),
  ADD KEY `distribution_id` (`distribution_id`),
  ADD KEY `approved_by_admin_id` (`approved_by_admin_id`);

--
-- Indexes for table `farms`
--
ALTER TABLE `farms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_farms_owner_id` (`owner_id`),
  ADD KEY `ix_farms_barangay_id` (`barangay_id`),
  ADD KEY `ix_farms_is_active` (`is_active`);

--
-- Indexes for table `farm_supply_inventory`
--
ALTER TABLE `farm_supply_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_farm_supply_inventory_source` (`source`),
  ADD KEY `ix_farm_supply_inventory_farm_id` (`farm_id`);

--
-- Indexes for table `farm_supply_usage`
--
ALTER TABLE `farm_supply_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_supply_id` (`farm_supply_id`),
  ADD KEY `recorded_by_id` (`recorded_by_id`);

--
-- Indexes for table `health_alerts`
--
ALTER TABLE `health_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_alert_priority` (`priority`),
  ADD KEY `ix_alert_livestock_id` (`livestock_id`),
  ADD KEY `ix_alert_is_resolved` (`is_resolved`),
  ADD KEY `ix_alert_type` (`alert_type`);

--
-- Indexes for table `health_records`
--
ALTER TABLE `health_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_health_livestock_id` (`livestock_id`),
  ADD KEY `ix_health_record_type` (`record_type`),
  ADD KEY `ix_health_status` (`status`),
  ADD KEY `fk_vaccine_inventory` (`vaccine_inventory_id`);

--
-- Indexes for table `livestock`
--
ALTER TABLE `livestock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `ix_livestock_animal_type` (`animal_type`),
  ADD KEY `ix_livestock_unique_id` (`unique_id`),
  ADD KEY `ix_livestock_farm_id` (`farm_id`),
  ADD KEY `ix_livestock_status` (`status`);

--
-- Indexes for table `livestock_events`
--
ALTER TABLE `livestock_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_livestock_events_livestock_id` (`livestock_id`);

--
-- Indexes for table `livestock_weight_logs`
--
ALTER TABLE `livestock_weight_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_weight_log_livestock_id` (`livestock_id`);

--
-- Indexes for table `municipal_distributions`
--
ALTER TABLE `municipal_distributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_distributions_status` (`status`),
  ADD KEY `ix_distributions_distribution_date` (`distribution_date`),
  ADD KEY `ix_distributions_farm_id` (`farm_id`),
  ADD KEY `ix_distributions_cycle_id` (`cycle_id`),
  ADD KEY `approved_by_admin_id` (`approved_by_admin_id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `distributed_by_id` (`distributed_by_id`),
  ADD KEY `recommended_by_officer_id` (`recommended_by_officer_id`);

--
-- Indexes for table `municipal_offers`
--
ALTER TABLE `municipal_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_id` (`created_by_id`);

--
-- Indexes for table `municipal_offer_claims`
--
ALTER TABLE `municipal_offer_claims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `claim_code` (`claim_code`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `nutrition_records`
--
ALTER TABLE `nutrition_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_nutrition_livestock_id` (`livestock_id`),
  ADD KEY `ix_nutrition_is_active` (`is_active`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_password_resets_token` (`token`),
  ADD KEY `ix_password_resets_user_id` (`user_id`);

--
-- Indexes for table `productivity_records`
--
ALTER TABLE `productivity_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_productivity_livestock_id` (`livestock_id`),
  ADD KEY `ix_productivity_metric_type` (`metric_type`),
  ADD KEY `ix_productivity_record_date` (`record_date`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supply_distributions`
--
ALTER TABLE `supply_distributions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supply_id` (`supply_id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `distributed_by` (`distributed_by`);

--
-- Indexes for table `supply_inventory`
--
ALTER TABLE `supply_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supply_id` (`supply_id`);

--
-- Indexes for table `supply_usage_feedback`
--
ALTER TABLE `supply_usage_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submitted_by_farmer_id` (`submitted_by_farmer_id`),
  ADD KEY `verified_by_officer_id` (`verified_by_officer_id`),
  ADD KEY `ix_feedback_farm_id` (`farm_id`),
  ADD KEY `ix_feedback_distribution_id` (`distribution_id`),
  ADD KEY `ix_feedback_metric_type` (`metric_type`);

--
-- Indexes for table `supply_usage_records`
--
ALTER TABLE `supply_usage_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supply_id` (`supply_id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `recorded_by` (`recorded_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_users_email` (`email`),
  ADD UNIQUE KEY `ix_users_username` (`username`),
  ADD KEY `ix_users_is_active` (`is_active`);

--
-- Indexes for table `user_approval_audits`
--
ALTER TABLE `user_approval_audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_user_approval_audits_user_id` (`user_id`),
  ADD KEY `ix_user_approval_audits_admin_id` (`admin_id`);

--
-- Indexes for table `vaccine_disposals`
--
ALTER TABLE `vaccine_disposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `disposed_by_id` (`disposed_by_id`),
  ADD KEY `ix_vaccine_disposals_vaccine_id` (`vaccine_inventory_id`),
  ADD KEY `ix_vaccine_disposals_disposed_at` (`disposed_at`);

--
-- Indexes for table `vaccine_inventory`
--
ALTER TABLE `vaccine_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_vaccine_farm_id` (`farm_id`),
  ADD KEY `ix_vaccine_expiry_date` (`expiry_date`),
  ADD KEY `ix_vaccine_is_active` (`is_active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crop_growth_records`
--
ALTER TABLE `crop_growth_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disease_records`
--
ALTER TABLE `disease_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distribution_cycles`
--
ALTER TABLE `distribution_cycles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distribution_events`
--
ALTER TABLE `distribution_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distribution_records`
--
ALTER TABLE `distribution_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distribution_requests`
--
ALTER TABLE `distribution_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `farms`
--
ALTER TABLE `farms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `farm_supply_inventory`
--
ALTER TABLE `farm_supply_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `farm_supply_usage`
--
ALTER TABLE `farm_supply_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `health_alerts`
--
ALTER TABLE `health_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_records`
--
ALTER TABLE `health_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `livestock`
--
ALTER TABLE `livestock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `livestock_events`
--
ALTER TABLE `livestock_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `livestock_weight_logs`
--
ALTER TABLE `livestock_weight_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `municipal_distributions`
--
ALTER TABLE `municipal_distributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `municipal_offers`
--
ALTER TABLE `municipal_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `municipal_offer_claims`
--
ALTER TABLE `municipal_offer_claims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nutrition_records`
--
ALTER TABLE `nutrition_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productivity_records`
--
ALTER TABLE `productivity_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supply_distributions`
--
ALTER TABLE `supply_distributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply_inventory`
--
ALTER TABLE `supply_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply_usage_feedback`
--
ALTER TABLE `supply_usage_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply_usage_records`
--
ALTER TABLE `supply_usage_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_approval_audits`
--
ALTER TABLE `user_approval_audits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccine_disposals`
--
ALTER TABLE `vaccine_disposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vaccine_inventory`
--
ALTER TABLE `vaccine_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD CONSTRAINT `chat_conversations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `chat_conversations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crops`
--
ALTER TABLE `crops`
  ADD CONSTRAINT `crops_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);

--
-- Constraints for table `crop_growth_records`
--
ALTER TABLE `crop_growth_records`
  ADD CONSTRAINT `crop_growth_records_ibfk_1` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`id`);

--
-- Constraints for table `disease_records`
--
ALTER TABLE `disease_records`
  ADD CONSTRAINT `disease_records_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `distribution_cycles`
--
ALTER TABLE `distribution_cycles`
  ADD CONSTRAINT `distribution_cycles_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `distribution_events`
--
ALTER TABLE `distribution_events`
  ADD CONSTRAINT `distribution_events_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `distribution_records`
--
ALTER TABLE `distribution_records`
  ADD CONSTRAINT `distribution_records_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `distribution_requests` (`id`),
  ADD CONSTRAINT `distribution_records_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `distribution_events` (`id`),
  ADD CONSTRAINT `distribution_records_ibfk_3` FOREIGN KEY (`distributed_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `distribution_records_ibfk_4` FOREIGN KEY (`verified_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `distribution_requests`
--
ALTER TABLE `distribution_requests`
  ADD CONSTRAINT `distribution_requests_ibfk_1` FOREIGN KEY (`reviewed_by_officer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `distribution_requests_ibfk_2` FOREIGN KEY (`distribution_id`) REFERENCES `municipal_distributions` (`id`),
  ADD CONSTRAINT `distribution_requests_ibfk_4` FOREIGN KEY (`approved_by_admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `distribution_requests_ibfk_5` FOREIGN KEY (`requested_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `distribution_requests_ibfk_6` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);

--
-- Constraints for table `farms`
--
ALTER TABLE `farms`
  ADD CONSTRAINT `farms_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `farm_supply_inventory`
--
ALTER TABLE `farm_supply_inventory`
  ADD CONSTRAINT `farm_supply_inventory_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);

--
-- Constraints for table `farm_supply_usage`
--
ALTER TABLE `farm_supply_usage`
  ADD CONSTRAINT `farm_supply_usage_ibfk_1` FOREIGN KEY (`farm_supply_id`) REFERENCES `farm_supply_inventory` (`id`),
  ADD CONSTRAINT `farm_supply_usage_ibfk_2` FOREIGN KEY (`recorded_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `health_alerts`
--
ALTER TABLE `health_alerts`
  ADD CONSTRAINT `health_alerts_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `health_records`
--
ALTER TABLE `health_records`
  ADD CONSTRAINT `fk_vaccine_inventory` FOREIGN KEY (`vaccine_inventory_id`) REFERENCES `vaccine_inventory` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `health_records_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `livestock`
--
ALTER TABLE `livestock`
  ADD CONSTRAINT `livestock_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);

--
-- Constraints for table `livestock_events`
--
ALTER TABLE `livestock_events`
  ADD CONSTRAINT `livestock_events_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `livestock_weight_logs`
--
ALTER TABLE `livestock_weight_logs`
  ADD CONSTRAINT `livestock_weight_logs_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `municipal_distributions`
--
ALTER TABLE `municipal_distributions`
  ADD CONSTRAINT `municipal_distributions_ibfk_1` FOREIGN KEY (`cycle_id`) REFERENCES `distribution_cycles` (`id`),
  ADD CONSTRAINT `municipal_distributions_ibfk_2` FOREIGN KEY (`approved_by_admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `municipal_distributions_ibfk_3` FOREIGN KEY (`request_id`) REFERENCES `distribution_requests` (`id`),
  ADD CONSTRAINT `municipal_distributions_ibfk_4` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `municipal_distributions_ibfk_5` FOREIGN KEY (`distributed_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `municipal_distributions_ibfk_6` FOREIGN KEY (`recommended_by_officer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `municipal_offers`
--
ALTER TABLE `municipal_offers`
  ADD CONSTRAINT `municipal_offers_ibfk_1` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `municipal_offer_claims`
--
ALTER TABLE `municipal_offer_claims`
  ADD CONSTRAINT `municipal_offer_claims_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `municipal_offers` (`id`),
  ADD CONSTRAINT `municipal_offer_claims_ibfk_2` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `municipal_offer_claims_ibfk_3` FOREIGN KEY (`farmer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `nutrition_records`
--
ALTER TABLE `nutrition_records`
  ADD CONSTRAINT `nutrition_records_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `productivity_records`
--
ALTER TABLE `productivity_records`
  ADD CONSTRAINT `productivity_records_ibfk_1` FOREIGN KEY (`livestock_id`) REFERENCES `livestock` (`id`);

--
-- Constraints for table `supply_distributions`
--
ALTER TABLE `supply_distributions`
  ADD CONSTRAINT `supply_distributions_ibfk_1` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`id`),
  ADD CONSTRAINT `supply_distributions_ibfk_2` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `supply_distributions_ibfk_3` FOREIGN KEY (`distributed_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `supply_inventory`
--
ALTER TABLE `supply_inventory`
  ADD CONSTRAINT `supply_inventory_ibfk_1` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`id`);

--
-- Constraints for table `supply_usage_feedback`
--
ALTER TABLE `supply_usage_feedback`
  ADD CONSTRAINT `supply_usage_feedback_ibfk_1` FOREIGN KEY (`distribution_id`) REFERENCES `municipal_distributions` (`id`),
  ADD CONSTRAINT `supply_usage_feedback_ibfk_2` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `supply_usage_feedback_ibfk_3` FOREIGN KEY (`submitted_by_farmer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `supply_usage_feedback_ibfk_4` FOREIGN KEY (`verified_by_officer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `supply_usage_records`
--
ALTER TABLE `supply_usage_records`
  ADD CONSTRAINT `supply_usage_records_ibfk_1` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`id`),
  ADD CONSTRAINT `supply_usage_records_ibfk_2` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `supply_usage_records_ibfk_3` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_approval_audits`
--
ALTER TABLE `user_approval_audits`
  ADD CONSTRAINT `user_approval_audits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_approval_audits_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vaccine_disposals`
--
ALTER TABLE `vaccine_disposals`
  ADD CONSTRAINT `vaccine_disposals_ibfk_1` FOREIGN KEY (`vaccine_inventory_id`) REFERENCES `vaccine_inventory` (`id`),
  ADD CONSTRAINT `vaccine_disposals_ibfk_2` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`),
  ADD CONSTRAINT `vaccine_disposals_ibfk_3` FOREIGN KEY (`disposed_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vaccine_inventory`
--
ALTER TABLE `vaccine_inventory`
  ADD CONSTRAINT `vaccine_inventory_ibfk_1` FOREIGN KEY (`farm_id`) REFERENCES `farms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
