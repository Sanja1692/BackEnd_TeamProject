-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 04:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team1_mealplanner`
--
CREATE DATABASE IF NOT EXISTS `team1_mealplanner` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `team1_mealplanner`;

-- --------------------------------------------------------

--
-- Table structure for table `allergenesinrecipes`
--

CREATE TABLE `allergenesinrecipes` (
  `id` int(11) NOT NULL,
  `fkAllergens` int(11) DEFAULT NULL,
  `fkRecipes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allergenesinrecipes`
--

INSERT INTO `allergenesinrecipes` (`id`, `fkAllergens`, `fkRecipes`) VALUES
(1, 3, 2),
(2, 7, 3),
(3, 8, 11),
(4, 7, 7),
(5, 7, 5),
(6, 7, 2),
(7, 7, 15),
(8, 7, 16),
(9, 7, 18),
(10, 7, 19),
(11, 3, 15),
(12, 3, 17),
(13, 3, 18),
(14, 3, 19),
(15, 8, 20),
(16, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `allergens`
--

CREATE TABLE `allergens` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allergens`
--

INSERT INTO `allergens` (`id`, `name`, `picture`) VALUES
(1, 'gluten', 'gluten.jpg'),
(2, 'crustaceans', 'crustaceans.jpg'),
(3, 'eggs', 'egg.jpg'),
(4, 'fish', 'fish.jpg'),
(5, 'peanuts', 'peanut.jpg'),
(6, 'soybeans', 'soybean.jpg'),
(7, 'milk', 'milk.jpg'),
(8, 'nuts', 'hazelnut.jpg'),
(9, 'celery', 'celery.jpg'),
(10, 'mustard', 'mustard.jpg'),
(11, 'sesame seeds', 'sesame.jpg'),
(12, 'sulphur dioxide and sulphites', 'sulph.jpg'),
(13, 'lupin', 'lupin.jpg'),
(14, 'molluscs', 'shell.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE `buys` (
  `id` int(11) NOT NULL,
  `fkUser` int(11) DEFAULT NULL,
  `fkIngredient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catName`) VALUES
(1, 'breakfast'),
(2, 'pre'),
(3, 'main'),
(4, 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220414123116', '2022-04-14 14:32:14', 33),
('DoctrineMigrations\\Version20220414125249', '2022-04-14 14:52:58', 27),
('DoctrineMigrations\\Version20220418004012', '2022-04-18 02:40:28', 32),
('DoctrineMigrations\\Version20220419072219', '2022-04-19 09:22:37', 37),
('DoctrineMigrations\\Version20220419080007', '2022-04-19 10:00:14', 30),
('DoctrineMigrations\\Version20220419084158', '2022-04-19 10:42:06', 34);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`) VALUES
(1, 'eggs'),
(2, 'granulated sugar'),
(3, 'mascarpone cheese'),
(4, 'Italian ladyfingers'),
(5, 'coffee'),
(6, 'rum'),
(7, 'unsweetend cocoa powder'),
(8, 'olive oil'),
(9, 'yellow onions'),
(10, 'garlic cloves'),
(11, 'carrots'),
(12, 'ginger'),
(13, 'apple cider vinegar'),
(14, 'vegetable broth'),
(15, 'black pepper'),
(16, 'maple syrup'),
(17, 'milk'),
(18, 'gluten free flour'),
(19, 'xanthan gum omit'),
(20, 'instant yeast'),
(21, 'banana'),
(22, 'salt'),
(23, 'water'),
(24, 'coriander'),
(25, 'cumin'),
(26, 'turmeric'),
(27, 'fennel seeds'),
(28, 'cinnamon'),
(29, 'mustard'),
(30, 'cloves'),
(32, 'chicken broth'),
(33, 'tomatoe'),
(34, 'chicken breast'),
(35, 'heavy cream'),
(36, 'cilantro'),
(37, 'romaine heart'),
(38, 'leafy lettuce'),
(39, 'shallot'),
(40, 'cucumber'),
(41, 'pepperoncini'),
(42, 'olive'),
(43, 'Parmesan'),
(44, 'spelt flour'),
(45, 'coconut oil'),
(47, 'organic sugar'),
(48, 'baking soda'),
(49, 'baking powder'),
(50, 'vanilla wxtract'),
(51, 'almond milk'),
(52, 'walnuts'),
(53, 'chocolate chips'),
(54, 'butter'),
(55, 'tomato sauce'),
(56, 'basil'),
(57, 'oregano'),
(58, 'beef'),
(59, 'tarragon'),
(60, 'berries'),
(61, 'vanilla coconut sugar'),
(62, 'lemon zest'),
(63, 'lemon juice'),
(64, 'prosciutto'),
(65, 'lean beef mince'),
(66, 'hot beef stock'),
(67, 'nutmeg'),
(68, 'lasagne sheets'),
(69, 'mozzarella'),
(70, 'white sauce'),
(71, 'shrimp'),
(72, 'white wine'),
(73, 'parsley'),
(74, 'tomato puree'),
(75, 'chicken stock'),
(76, 'Italian herb blend'),
(77, 'vegetable stock'),
(78, 'thyme'),
(79, 'button mushrooms'),
(80, 'rice'),
(81, 'portobello mushrooms'),
(82, 'peas'),
(83, 'garam masala'),
(84, 'Kasuri methi'),
(85, 'red chili'),
(86, 'cranberry juice'),
(87, 'frozen raspberry'),
(88, 'natural yogurt'),
(89, 'chilli'),
(91, 'blueberries'),
(92, 'coconut aminos'),
(93, 'sweet potato'),
(94, 'thyme'),
(95, 'lentils'),
(96, 'bread crumbs');

-- --------------------------------------------------------

--
-- Table structure for table `ingredientslist`
--

CREATE TABLE `ingredientslist` (
  `id` int(11) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `fkRecipes` int(11) DEFAULT NULL,
  `fkIngredients` int(11) DEFAULT NULL,
  `fkUnits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ingredientslist`
--

INSERT INTO `ingredientslist` (`id`, `qty`, `fkRecipes`, `fkIngredients`, `fkUnits`) VALUES
(8, '300', 2, 4, 2),
(9, '500', 2, 3, 2),
(10, '4', 2, 1, 1),
(11, '100', 2, 2, 2),
(12, '300', 2, 5, 3),
(13, '2', 2, 6, 7),
(14, '1', 3, 8, 7),
(15, '1', 3, 9, 8),
(16, '3', 3, 10, 1),
(17, '2', 3, 11, 8),
(18, '1', 3, 12, 4),
(19, '1', 3, 13, 7),
(20, '3', 3, 14, 8),
(21, '1', 3, 15, 4),
(22, '1', 3, 16, 1),
(23, '1', 3, 17, 1),
(24, '420', 5, 18, 2),
(25, '1', 5, 19, 7),
(26, '6', 5, 2, 2),
(27, '9', 5, 22, 2),
(28, '1', 5, 23, 8),
(29, '63', 5, 8, 2),
(30, '9', 12, 24, 2),
(31, '1', 12, 25, 4),
(32, '6', 12, 26, 2),
(33, '6', 12, 28, 2),
(34, '6', 12, 27, 2),
(35, '6', 12, 15, 2),
(36, '4', 12, 29, 2),
(37, '4', 12, 30, 2),
(38, '2', 12, 8, 4),
(39, '1', 12, 9, 1),
(40, '4', 12, 10, 1),
(41, '1', 12, 12, 4),
(42, '1', 12, 32, 8),
(43, '1', 12, 33, 8),
(44, '6', 12, 22, 2),
(45, '4', 12, 15, 2),
(46, '1', 12, 34, 1),
(47, '1', 12, 35, 8),
(48, '2', 12, 36, 7),
(49, '1', 10, 37, 1),
(50, '5', 10, 38, 8),
(51, '1', 10, 39, 1),
(52, '2', 10, 40, 8),
(53, '1', 10, 42, 8),
(54, '1', 10, 33, 6),
(55, '1', 10, 41, 8),
(56, '1', 10, 43, 8),
(57, '1', 10, 15, 4),
(58, '210', 11, 44, 2),
(59, '75', 11, 47, 2),
(60, '2', 11, 49, 4),
(61, '1', 11, 48, 4),
(62, '4', 11, 22, 2),
(64, '3', 11, 21, 1),
(65, '0', 11, 51, 8),
(66, '1', 11, 52, 8),
(67, '1', 11, 53, 8),
(68, '1', 11, 28, 4),
(69, '3', 13, 10, 1),
(70, '2', 13, 54, 4),
(71, '1', 13, 55, 8),
(72, '1', 13, 33, 8),
(73, '1', 13, 56, 4),
(74, '1', 13, 22, 4),
(75, '1', 13, 57, 4),
(76, '500', 13, 58, 2),
(77, '2', 14, 60, 8),
(78, '0', 14, 61, 8),
(79, '2', 14, 63, 4),
(80, '1', 14, 62, 4),
(81, '2', 7, 8, 4),
(82, '750', 7, 65, 2),
(83, '90', 7, 64, 2),
(84, '200', 7, 66, 3),
(85, '300', 7, 68, 2),
(86, '125', 7, 69, 2),
(87, '500', 8, 71, 2),
(88, '5', 8, 10, 1),
(89, '1', 8, 22, 4),
(90, '3', 8, 8, 7),
(91, '4', 8, 54, 7),
(92, '0', 8, 72, 8),
(93, '20', 8, 63, 3),
(94, '1', 8, 62, 1),
(95, '0', 8, 73, 8),
(96, '1', 4, 74, 8),
(97, '1', 4, 55, 8),
(98, '1', 4, 75, 8),
(99, '1', 4, 8, 4),
(100, '2', 4, 76, 4),
(101, '1', 4, 22, 4),
(102, '1', 4, 15, 4),
(103, '8', 6, 77, 6),
(104, '1', 6, 9, 1),
(105, '2', 6, 10, 1),
(106, '1', 6, 78, 4),
(107, '2', 6, 8, 7),
(108, '3', 6, 79, 8),
(109, '2', 6, 81, 8),
(110, '2', 6, 80, 8),
(111, '2', 6, 22, 4),
(112, '1', 6, 62, 7),
(113, '0', 6, 73, 8),
(114, '1', 6, 54, 5),
(115, '200', 9, 79, 2),
(116, '0', 9, 82, 8),
(117, '1', 9, 55, 8),
(118, '1', 9, 9, 1),
(119, '1', 9, 10, 1),
(120, '1', 9, 45, 8),
(121, '1', 9, 83, 4),
(122, '0', 9, 26, 4),
(123, '1', 9, 85, 4),
(124, '1', 9, 25, 4),
(125, '2', 9, 8, 7),
(126, '1', 9, 84, 4),
(127, '1', 12, 27, 4),
(128, '1', 12, 28, 4),
(129, '1', 12, 15, 4),
(130, '0', 12, 29, 4),
(131, '0', 12, 30, 4),
(132, '2', 12, 8, 7),
(133, '1', 12, 9, 1),
(134, '4', 12, 10, 1),
(135, '1', 12, 12, 7),
(136, '1', 12, 32, 8),
(137, '1', 12, 33, 8),
(138, '500', 12, 34, 2),
(139, '0', 12, 35, 8),
(140, '2', 12, 36, 7),
(141, '1', 10, 37, 1),
(142, '5', 10, 38, 6),
(143, '1', 10, 39, 1),
(144, '1', 10, 40, 1),
(145, '1', 10, 33, 8),
(146, '1', 10, 42, 8),
(147, '1', 10, 41, 6),
(148, '0', 10, 43, 8),
(149, '210', 11, 44, 2),
(150, '75', 11, 47, 2),
(151, '2', 11, 49, 4),
(152, '1', 11, 48, 4),
(153, '75', 11, 45, 3),
(154, '1', 11, 50, 4),
(155, '4', 11, 21, 1),
(156, '56', 11, 51, 3),
(157, '1', 11, 52, 8),
(158, '1', 11, 53, 8),
(159, '1', 11, 28, 4),
(162, '125', 15, 18, 2),
(163, '1', 15, 1, 1),
(164, '250', 15, 17, 3),
(165, '100', 16, 17, 3),
(166, '1', 16, 2, 7),
(167, '1', 17, 8, 7),
(168, '200', 16, 86, 3),
(169, '175', 16, 87, 2),
(170, '200', 16, 88, 3),
(171, '2', 17, 9, 1),
(172, '1', 17, 85, 1),
(175, '1', 17, 10, 1),
(177, '2', 17, 33, 8),
(178, '1', 17, 2, 4),
(179, '4', 17, 1, 1),
(180, '320', 18, 2, 2),
(181, '285', 18, 18, 2),
(182, '65', 18, 7, 2),
(183, '6', 18, 49, 2),
(184, '8', 18, 48, 2),
(185, '6', 18, 22, 2),
(186, '2', 18, 1, 1),
(187, '1', 18, 17, 8),
(188, '110', 18, 45, 3),
(189, '260', 18, 17, 3),
(190, '110', 18, 45, 3),
(191, '4', 18, 50, 2),
(192, '150', 18, 23, 3),
(193, '115', 18, 54, 2),
(194, '4', 18, 50, 2),
(195, '50', 18, 7, 2),
(196, '450', 18, 2, 2),
(197, '50', 18, 17, 3),
(198, '1', 19, 2, 8),
(199, '115', 19, 54, 2),
(200, '1', 19, 62, 1),
(201, '20', 19, 63, 3),
(202, '2', 19, 1, 1),
(203, '1', 19, 17, 8),
(204, '1', 19, 50, 4),
(205, '300', 19, 44, 2),
(207, '2', 19, 49, 5),
(208, '2', 19, 22, 2),
(209, '6', 19, 67, 2),
(210, '220', 19, 91, 2),
(211, '1', 20, 45, 4),
(212, '3', 20, 79, 8),
(213, '4', 20, 22, 2),
(214, '4', 20, 15, 2),
(215, '2', 20, 92, 7),
(216, '1', 20, 45, 7),
(217, '2', 20, 93, 8),
(218, '2', 20, 52, 8),
(219, '2', 20, 78, 7),
(220, '2', 20, 95, 8),
(221, '4', 20, 74, 7),
(222, '2', 20, 92, 7),
(223, '1', 20, 96, 8);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutriotion`
--

CREATE TABLE `nutriotion` (
  `id` int(11) NOT NULL,
  `calories` int(11) NOT NULL,
  `protein` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `fkRecipes` int(11) DEFAULT NULL,
  `carbohydrates` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nutriotion`
--

INSERT INTO `nutriotion` (`id`, `calories`, `protein`, `fat`, `fkRecipes`, `carbohydrates`) VALUES
(2, 383, 4, 28, 2, 25),
(3, 69, 1, 3, 3, 12),
(7, 145, 4, 6, 5, 18),
(8, 362, 38, 19, 12, 7),
(9, 111, 2, 11, 10, 2),
(10, 214, 3, 1, 11, 35),
(11, 92, 6, 5, 13, 6),
(12, 214, 3, 3, 14, 48),
(13, 580, 44, 32, 7, 31),
(14, 187, 0, 0, 8, 2),
(15, 231, 24, 5, 4, 27),
(16, 308, 8, 3, 6, 60),
(17, 148, 1, 11, 9, 5),
(18, 119, 6, 4, 15, 16),
(19, 100, 4, 2, 16, 17),
(20, 340, 21, 2021, 17, 0),
(21, 100, 4, 2, 16, 17),
(22, 340, 21, 20, 17, 21),
(23, 407, 4, 14, 18, 66),
(24, 242, 5, 17, 19, 46),
(25, 337, 10, 21, 20, 32);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `fkRecipes` int(11) DEFAULT NULL,
  `fkUser` int(11) DEFAULT NULL,
  `datum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `time`, `fkRecipes`, `fkUser`, `datum`) VALUES
(1, 'Breakfast', 14, 1, 'Monday'),
(2, 'Lunch', 3, 1, 'Tuesday'),
(3, 'Dinner', 20, 1, 'Wednesday'),
(4, 'Lunch', 12, 1, 'Thursday'),
(5, 'Breakfast', 19, 1, 'Friday'),
(6, 'Dinner', 8, 1, 'Saturday'),
(7, 'Breakfast', 16, 13, 'Monday'),
(8, 'Lunch', 17, 13, 'Tuesday'),
(9, 'Breakfast', 18, 15, 'Monday'),
(10, 'Lunch', 19, 15, 'Tuesday'),
(11, 'Dinner', 7, 13, 'Friday'),
(12, 'Dinner', 13, 13, 'Thursday'),
(13, 'Breakfast', 10, 13, 'Saturday'),
(14, 'Lunch', 6, 13, 'Sunday'),
(15, 'Lunch', 13, 7, 'Monday'),
(16, 'Breakfast', 19, 12, 'Tuesday'),
(17, 'Lunch', 13, 6, 'Monday'),
(18, 'Breakfast', 19, 6, 'Tuesday'),
(23, 'Breakfast', 14, 6, 'Friday'),
(24, 'Dinner', 8, 18, 'Thursday'),
(25, 'Breakfast', 14, 8, 'Friday'),
(26, 'Dinner', 8, 19, 'Thursday'),
(27, 'Breakfast', 13, 10, 'Friday'),
(28, 'Dinner', 10, 16, 'Thursday'),
(29, 'Lunch', 12, 16, 'Wednesday'),
(30, 'Dinner', 6, 16, 'Saturday'),
(31, 'Lunch', 12, 15, 'Wednesday'),
(32, 'Dinner', 6, 15, 'Saturday'),
(33, 'Lunch', 13, 13, 'Wednesday'),
(34, 'Dinner', 6, 13, 'Saturday'),
(57, 'Breakfast', 10, 8, 'Monday'),
(58, '[Lunch]', 17, 8, 'Monday'),
(59, '[Dinner]', 6, 8, 'Monday'),
(60, '[Breakfast]', 15, 8, 'Tuesday'),
(61, '[Lunch]', 4, 8, 'Tuesday'),
(62, 'Dinner', 5, 8, 'Tuesday'),
(63, '[Breakfast]', 14, 8, 'Wednesday'),
(64, '[Lunch]', 5, 8, 'Wednesday'),
(65, '[Lunch]', 20, 8, 'Sunday'),
(66, '[Lunch]', 12, 8, 'Friday'),
(67, 'Dinner', 6, 8, 'Thursday'),
(68, 'Breakfast', 10, 18, 'Monday'),
(69, '[Lunch]', 17, 18, 'Monday'),
(70, '[Dinner]', 6, 18, 'Monday'),
(71, '[Breakfast]', 15, 18, 'Tuesday'),
(72, '[Lunch]', 4, 18, 'Tuesday'),
(73, 'Dinner', 5, 18, 'Tuesday'),
(74, '[Breakfast]', 14, 18, 'Wednesday'),
(75, '[Lunch]', 5, 18, 'Wednesday'),
(76, '[Lunch]', 20, 18, 'Sunday'),
(77, '[Lunch]', 12, 18, 'Friday'),
(78, 'Dinner', 6, 19, 'Thursday'),
(79, 'Breakfast', 10, 14, 'Monday'),
(80, '[Lunch]', 17, 14, 'Monday'),
(81, '[Dinner]', 6, 14, 'Monday'),
(82, '[Breakfast]', 15, 14, 'Tuesday'),
(83, '[Lunch]', 4, 14, 'Tuesday'),
(84, 'Dinner', 5, 14, 'Tuesday'),
(85, '[Breakfast]', 14, 14, 'Wednesday'),
(86, '[Lunch]', 5, 14, 'Wednesday'),
(87, '[Lunch]', 20, 14, 'Sunday'),
(88, '[Lunch]', 12, 14, 'Friday'),
(89, 'Dinner', 6, 14, 'Thursday'),
(90, 'Breakfast', 10, 17, 'Monday'),
(91, '[Lunch]', 17, 17, 'Monday'),
(92, '[Dinner]', 6, 17, 'Monday'),
(93, '[Breakfast]', 15, 17, 'Tuesday'),
(94, '[Lunch]', 4, 17, 'Tuesday'),
(95, 'Dinner', 5, 17, 'Tuesday'),
(96, '[Breakfast]', 14, 17, 'Wednesday'),
(97, '[Lunch]', 5, 17, 'Wednesday'),
(98, '[Lunch]', 20, 17, 'Sunday'),
(99, '[Lunch]', 12, 17, 'Friday'),
(100, 'Dinner', 17, 17, 'Thursday'),
(101, 'Lunch', 20, 3, 'Sunday'),
(102, 'Dinner', 16, 3, 'Sunday'),
(103, 'Breakfast', 14, 3, 'Sunday'),
(104, 'Lunch', 8, 3, 'Wednesday'),
(105, 'Breakfast', 14, 3, 'Wednesday'),
(106, 'Dinner', 5, 3, 'Wednesday'),
(107, 'Lunch', 18, 3, 'Monday'),
(108, 'Breakfast', 14, 3, 'Monday'),
(109, 'Dinner', 7, 3, 'Monday'),
(110, 'Lunch', 9, 3, 'Thursday'),
(111, 'Breakfast', 14, 3, 'Thursday'),
(112, 'Dinner', 11, 3, 'Thursday'),
(113, 'Lunch', 17, 3, 'Tuesday'),
(114, 'Lunch', 20, 3, 'Sunday'),
(115, 'Dinner', 16, 4, 'Sunday'),
(116, 'Breakfast', 14, 4, 'Sunday'),
(117, 'Lunch', 8, 4, 'Wednesday'),
(118, 'Breakfast', 14, 4, 'Wednesday'),
(119, 'Dinner', 5, 4, 'Wednesday'),
(120, 'Lunch', 18, 4, 'Monday'),
(121, 'Breakfast', 14, 4, 'Monday'),
(122, 'Dinner', 7, 4, 'Monday'),
(123, 'Lunch', 9, 4, 'Thursday'),
(124, 'Breakfast', 14, 4, 'Thursday'),
(125, 'Dinner', 11, 4, 'Thursday'),
(126, 'Lunch', 17, 4, 'Tuesday'),
(127, 'Lunch', 20, 2, 'Sunday'),
(128, 'Dinner', 16, 2, 'Sunday'),
(129, 'Breakfast', 14, 2, 'Sunday'),
(130, 'Lunch', 8, 2, 'Wednesday'),
(131, 'Breakfast', 14, 2, 'Wednesday'),
(132, 'Dinner', 5, 2, 'Wednesday'),
(133, 'Lunch', 18, 2, 'Monday'),
(134, 'Breakfast', 14, 2, 'Monday'),
(135, 'Dinner', 7, 2, 'Monday'),
(136, 'Lunch', 9, 2, 'Thursday'),
(137, 'Breakfast', 14, 2, 'Thursday'),
(138, 'Dinner', 11, 2, 'Thursday'),
(139, 'Lunch', 17, 2, 'Tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `name`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reciperating`
--

CREATE TABLE `reciperating` (
  `id` int(11) NOT NULL,
  `fkRating` int(11) DEFAULT NULL,
  `fkRecipes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reciperating`
--

INSERT INTO `reciperating` (`id`, `fkRating`, `fkRecipes`) VALUES
(1, 5, 14),
(2, 5, 19),
(3, 5, 2),
(4, 5, 3),
(5, 5, 4),
(6, 5, 5),
(7, 4, 7),
(8, 4, 17),
(9, 4, 8),
(10, 4, 18),
(11, 5, 5),
(12, 3, 4),
(13, 5, 9),
(14, 3, 10),
(15, 5, 12),
(16, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `preSteps` varchar(255) NOT NULL,
  `approveStat` varchar(255) DEFAULT NULL,
  `fkCategory` int(11) DEFAULT NULL,
  `fkUserid` int(11) DEFAULT NULL,
  `cook_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `description`, `picture`, `preSteps`, `approveStat`, `fkCategory`, `fkUserid`, `cook_time`) VALUES
(2, 'Tiramisu', 'Add whipping cream to a mixing bowl and beat on medium speed with electric mixers (or use a stand mixer). Slowly add sugar and vanilla and continue to beat until stiff peaks. Add mascarpone cheese and mix just until combined. Set aside.\n\nAD\nAdd coffee and', 'tiramisu.jpg', 'Step 1) – First of all, make the coffee. For a quick and delicious Italian coffee we used an Espresso Machine. Then add 2 tablespoons of Rum or Marsala wine. This is optional. If you don’t like liqueurs or you are making Tiramisu for children, don’t use i', 'approved', 4, 1, 30),
(3, 'Carrotsoup', 'Heat the olive oil in a large pot over medium heat. Add the onions and a generous pinch of salt and pepper and cook until softened, stirring occasionally, about 8 minutes. Add the smashed garlic cloves (they’ll get blended later) and carrots to the pot an', 'carrotsoup.jpg', '1. Rinse, peel and chop 350 grams carrots or 3 Delhi carrots. Also chop 1 medium onion (60 grams) and 8 grams ginger. You will need 1 tablespoon chopped ginger. carrots to make carrot ginger soup recipe 2. Heat 1 tablespoon olive oil in a pan or saucepan.', 'approved', 2, NULL, 10),
(4, 'Low Carb Pasta', 'To make sauce  AD Add all sauce ingredients except turkey to slow cooker and stir to combine. Cut ground turkey into cubes, add to slow cooker, and cover with sauce. Do not stir. Cook on low for 6-8 hours. Once the sauce is done, use a potato masher to br', 'pasta.jpg', 'Step 1 Heat olive oil in a skillet over medium heat; cook and stir onions and Italian sausage until the sausage is browned, about 10 minutes. Transfer the sausage and onions to a slow cooker. In the same skillet, cook and stir the ground beef, Italian sea', 'no', 3, NULL, 370),
(5, 'Gluten Free Pizza', 'MAKE THE PIZZA DOUGH. In the bowl of your stand mixer fitted with the paddle attachment or your food processor fitted with the metal blade, place the flour, xanthan gum, (optional Expandex), yeast, and sugar, and whisk to combine with a separate, handheld', 'gluten free pizza.jpg', '1. Mix your warm water, sugar, and yeast. Let it sit until proofed. 2. Add ingredients to mixer and mix until combined. 3. Scrap the sides of the bowl until the dough is in a loose ball. 4. Using oiled hands, spread the dough into a circle about 10-12 inc', 'no', 3, NULL, 40),
(6, 'Mushroom Risotto', 'Start by bring the vegetable stock to boil in a pot. This is a very important step in making the risotto as we need the stock to be hot when we start cooking the rice.  In a separate medium-sized pot, heat the olive oil over medium-low heat. Add the onion', 'risotto.jpg', 'STEP 1 Put 50g dried porcini mushrooms into a large bowl and pour over 1 litre boiling water. Soak for 20 mins, then drain into a bowl, discarding the last few tbsp of liquid left in the bowl.  STEP 2 Crumble 1 vegetable stock cube into the mushroom liqui', 'no', 3, NULL, 55),
(7, 'Lasagne', 'In a large pan, heat the olive oil over a low heat. Fry the onion, carrot, celery and garlic for 5 mins, or until softened. Add the mince and fry on a medium heat until golden. Turn up the heat, pour in the wine and bubble until reduced. Stir in the tomat', 'lasagne.jpg', 'STEP 1 To make the meat sauce, heat 2 tbsp olive oil in a frying pan and cook 750g lean beef mince in two batches for about 10 mins until browned all over. STEP 2 Finely chop 4 slices of prosciutto from a 90g pack, then stir through the meat mixture. STEP', 'approved', 3, NULL, 120),
(8, 'Scampi', 'Pat the shrimp dry and put them in a mixing bowl. Add a pinch of kosher salt, half the garlic, and 1 tablespoon extra virgin olive oil. Toss to combine. Set aside for 15 to 20 minutes (or refrigerate for 30 mins to 1 hour). In a large cast iron skillet, h', 'scampi.jpg', 'STEP1 Pat the shrimp dry and put them in a mixing bowl. Add a pinch of kosher salt, half the garlic, and 1 tablespoon extra virgin olive oil. Toss to combine. Set aside for 15 to 20 minutes (or refrigerate for 30 mins to 1 hour). In a large cast iron skil', 'approved', 3, 1, 30),
(9, 'Easy Mushroom Curry', 'Start with preparing the sauce by blending canned tomatoes, chopped onions, and garlic. Press the saute mode on instant pot and add a couple of teaspoons of oil. When the oil heats up, add the sauce and cook for 2 minutes. Then add red chili powder, turme', 'mcurry.jpg', 'Step 1 Start with preparing the sauce by blending canned tomatoes, chopped onions, and garlic. Press the saute mode on instant pot and add a couple of teaspoons of oil. When the oil heats up, add the sauce and cook for 2 minutes. Then add red chili powder', 'no', 1, 2, 20),
(10, 'Mixed Salad', 'Make the Homemade Italian Dressing. Chop romaine and lettuce. Thinly slice the shallot. Peel and chop cucumber. Slice tomatoes and olives in half. Mix together all the ingredients for the salad, including the dressing, and toss to combine. If making in ad', 'mixed salad.jpg', 'Step 1 Make the Homemade Italian Dressing. Chop romaine and lettuce. Thinly slice the shallot. Peel and chop cucumber. Slice tomatoes and olives in half. Mix together all the ingredients for the salad, including the dressing, and toss to combine. If makin', 'no', 3, 2, 15),
(11, 'Vegan Banana Bread', 'AD Preheat oven to 350 degrees F. Grease your loaf pan.  One bowl method: In a medium sized mixing bowl, mash 3 – 4 bananas (about 1 1/2 cups to 1 3/4 cups works well), add oil/applesauce and vanilla extract, mix again. Add the flour, sugar, baking soda, ', 'vegan banana bread.jpg', 'Step 1 AD Preheat oven to 350 degrees F. Grease your loaf pan.  One bowl method: In a medium sized mixing bowl, mash 3 – 4 bananas (about 1 1/2 cups to 1 3/4 cups works well), add oil/applesauce and vanilla extract, mix again. Add the flour, sugar, baking', 'approved', 4, 2, 65),
(12, 'Chicken Curry', 'Instructions In a small mixing bowl whisk together all of the spices in the spice blend, set aside. Heat olive oil in a 12-inch non-stick skillet over medium-high heat.  Add in onion and saute until slightly golden brown, about 4 - 6 minutes.  Add in garl', 'curry.jpg', 'Step 1 Instructions In a small mixing bowl whisk together all of the spices in the spice blend, set aside. Heat olive oil in a 12-inch non-stick skillet over medium-high heat.  Add in onion and saute until slightly golden brown, about 4 - 6 minutes.', 'no', 3, 2, 20),
(13, 'Vegetarian Spaghetti', 'Mince the garlic. Add the butter to a medium saucepan over medium heat: once melted, add the garlic and sauté until fragrant, about 1 minute. Turn down the heat and carefully add the crushed tomatoes, tomato sauce, basil, tarragon, ½ teaspoon kosher salt,', 'vegetarian Spaghetti.jpg', 'Step 1 Mince the garlic. Add the butter to a medium saucepan over medium heat: once melted, add the garlic and sauté until fragrant, about 1 minute. Turn down the heat and carefully add the crushed tomatoes, tomato sauce, basil, tarragon, ½ teaspoon koshe', 'no', 3, 2, 15),
(14, 'Berry Breakfast Bowl', 'PLACE 2 cups mixed berries into a medium bowl. ADD 1/4 cup vanilla coconut sugar, 1 teaspoon lemon zest, and 2 tablespoons lemon juice. TOSS gently until berries are evenly coated. ALLOW TO REST at room temperature 1 – 2 hours and STIR gently every 30 min', 'berry breakfast bowl.jpg', 'Step 1 PLACE 2 cups mixed berries into a medium bowl. ADD 1/4 cup vanilla coconut sugar, 1 teaspoon lemon zest, and 2 tablespoons lemon juice. TOSS gently until berries are evenly coated. ALLOW TO REST at room temperature 1 – 2 hours and STIR gently every', 'no', 1, 2, 5),
(15, 'Gluten-free pancakes', 'Put the flour in a bowl and make a well in the centre. Crack the egg in the middle and pour in a quarter of the milk. Use an electric or balloon whisk to thoroughly combine the mixture. Once you have a paste, mix in another quarter and once lump fr', 'pancakes.jpg', 'STEP 1 Put the flour in a bowl and make a well in the centre. Crack the egg in the middle and pour in a quarter of the milk. Use an electric or balloon whisk to thoroughly combine the mixture. Once you have a paste, mix in another quarter and once lump fr', 'no', 1, 2, 25),
(16, 'Cranberry & raspberry smoothie', 'Place all the ingredients into a blender and pulse until smooth. Pour into glasses and serve topped with fresh mint', 'smoothie.jpg', 'Step 1 Place all the ingredients into a blender and pulse until smooth. Pour into glasses and serve topped with fresh mint', 'no', 1, 2, 10),
(17, 'Shakshuka', 'STEP 1 Heat the oil in a frying pan that has a lid, then soften the onions, chilli, garlic and coriander stalks for 5 mins until soft. Stir in the tomatoes and sugar, then bubble for 8-10 mins until thick. Can be frozen for 1 month.  STEP 2 Using the back', 'Shakshuka.jpg', 'aaa', 'approved', 2, 2, 20),
(18, 'Easy Chocolate Cake', 'Preheat oven to 350°F (180°C). Position rack in center of oven. Grease two 8-inch round cake pans; set aside. In a large mixing bowl, stir together sugar, flour, cocoa, baking powder, baking soda, and salt until there are no visible clumps. Add eggs, milk', 'gfcacke.jpg', 'Step 1 Preheat oven to 350°F (180°C). Position rack in center of oven. Grease two 8-inch round cake pans; set aside. In a large mixing bowl, stir together sugar, flour, cocoa, baking powder, baking soda, and salt until there are no visible clumps. Add egg', 'no', 4, 2, 65),
(19, 'Blueberry Lemon Muffins', 'Begin by preheating the oven to 350 Fahrenheit / 180 Celsius. Place the sugar, butter or lemon zest in a mixer and beating until it is light and fluffy. Next, add in the eggs, milk, lemon juice and vanilla extract a little at a time, beating quickly as yo', 'muffins.jpg', 'Step 1 Begin by preheating the oven to 350 Fahrenheit / 180 Celsius. Place the sugar, butter or lemon zest in a mixer and beating until it is light and fluffy. Next, add in the eggs, milk, lemon juice and vanilla extract a little at a time, beating quickl', 'no', 4, 2, 40),
(20, 'Lentil Nut “Meatloaf”', 'Heat the oven to 350 degrees F (176 C) and line a standard loaf pan (or 8×8-inch baking pan) with parchment paper. Set aside. Heat a large cast-iron or metal skillet over medium heat. Once hot, add the oil and mushrooms and season with a pinch each salt a', 'meatloaf.jpg', 'Step 1 Heat the oven to 350 degrees F (176 C) and line a standard loaf pan (or 8×8-inch baking pan) with parchment paper. Set aside. Heat a large cast-iron or metal skillet over medium heat. Once hot, add the oil and mushrooms and season with a pinch each', 'no', 2, 2, 90);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Vegetarian'),
(2, 'Vegan'),
(3, 'Gluten-free'),
(4, 'Low carb'),
(5, 'Normal'),
(6, 'Pescetarian'),
(7, 'Mediterranean'),
(8, 'Paleo'),
(9, 'Dairy-free'),
(10, 'Kid-friendly'),
(11, 'Whole Foods');

-- --------------------------------------------------------

--
-- Table structure for table `typeslist`
--

CREATE TABLE `typeslist` (
  `id` int(11) NOT NULL,
  `fkTypes` int(11) DEFAULT NULL,
  `fkRecipes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeslist`
--

INSERT INTO `typeslist` (`id`, `fkTypes`, `fkRecipes`) VALUES
(1, 7, 14),
(2, 6, 19),
(3, 4, 3),
(4, 5, 12),
(5, 2, 16),
(6, 3, 18),
(7, 2, 9),
(8, 3, 15),
(9, 3, 5),
(10, 5, 7),
(11, 4, 4),
(12, 4, 10),
(13, 4, 8),
(14, 3, 17),
(15, 5, 2),
(16, 2, 20),
(17, 2, 11),
(18, 2, 6),
(19, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unitname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unitname`) VALUES
(1, 'pc(s)'),
(2, 'g'),
(3, 'ml'),
(4, 'tsp(s)'),
(5, 'ssp(s)'),
(6, 'dsp(s)'),
(7, 'tbsp(s)'),
(8, 'cup(s)'),
(9, 'fl.oz');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `fname`, `lname`, `picture`, `blocked`) VALUES
(1, 'user@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'John', 'Grand', 'm1.jpg', 'allowed'),
(2, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$yuN6Y2s/aCpnULQS/g1ReuUY3t9UmTd4z4xPdDKShXrbleq2xz7wi', 'David', 'Brown', 'm2.jpg', 'allowed'),
(3, 'anna@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Anna', 'Atten', 'w3.jpg', 'blocked'),
(4, 'milos89@gmail.com', '[]', '$2y$13$Jo1hBmN6M/CCC5hmeHvvROY2fWe8TJZMV2n72N1me.N8aB1EhJgeG', 'Milos', 'Pavic', 'm7.jpg', 'allowed'),
(5, 'hoffling@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Stephany', 'Hoffling', 'w4.jpg', 'allowed'),
(6, 'zippermann@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Mark', 'Zippermann', 'm3.jpg', 'allowed'),
(7, 'bookmann@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Marry', 'Bookmann', 'w1.jpg', 'allowed'),
(8, 'ultmann@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Marry', 'Ultmann', 'w2.jpg', 'allowed'),
(9, 'hofer@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Stephan', 'Hofer', 'm4.jpg', 'allowed'),
(10, 'grey@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Peter', 'Gray', 'm5.jpg', 'allowed'),
(11, 'sgrey@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Susanna', 'Grey', 'w4.jpg', 'allowed'),
(12, 'groom@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Michael', 'Groom', 'm7.jpg', 'allowed'),
(13, 'dorsch@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Maria', 'Dorsch', 'w7.jpg', 'allowed'),
(14, 'dilan@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Bob', 'Dilan', 'm6.jpg', 'blocked'),
(15, 'Karew@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Alex', 'Karew', 'm8.jpg', 'allowed'),
(16, 'smith@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Meredith', 'Smith', 'w8.jpg', 'allowed'),
(17, 'Johnson@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Penny', 'Johnson', 'w11.jpg', 'allowed'),
(18, 'williams@gmail.com', '[]', '$2y$13$JxdFXJmxUAidwWkVkYB.SeY2JMphB/l/1sd8Molc1qaqqQg.nrtVq', 'Dora', 'Williams', 'w12.jpg', 'allowed'),
(19, 'smithjohanna@gmail.com', '[]', '$2y$13$9TARj7VFBGkMCarZPv7GPut89AJ4cu2Ec5ExrUPln4jTfZu9SKin.', 'Johanna', 'Smith', 'w10-6259522a69bcb.jpg', 'allowed'),
(20, 'sanja@gmail.com', '[]', '$2y$13$pO02RAtBrr7ae0Mm.qMK6eeDJthZ9dBPH71bsaF7EgR6USiR/W/ba', 'Sanja', 'Kostantinovic', 'w10-6259522a69bcb-62597a979dcb7.jpg', 'allowed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergenesinrecipes`
--
ALTER TABLE `allergenesinrecipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkAllergens` (`fkAllergens`),
  ADD KEY `fkRecipes` (`fkRecipes`);

--
-- Indexes for table `allergens`
--
ALTER TABLE `allergens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIngredient` (`fkIngredient`),
  ADD KEY `fkUser` (`fkUser`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredientslist`
--
ALTER TABLE `ingredientslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIngredients` (`fkIngredients`),
  ADD KEY `fkRecipes` (`fkRecipes`),
  ADD KEY `fkUnits` (`fkUnits`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `nutriotion`
--
ALTER TABLE `nutriotion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkRecipes` (`fkRecipes`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkRecipes` (`fkRecipes`),
  ADD KEY `fkUser` (`fkUser`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reciperating`
--
ALTER TABLE `reciperating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkRating` (`fkRating`),
  ADD KEY `fkRecipes` (`fkRecipes`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkCategory` (`fkCategory`),
  ADD KEY `fkUserid` (`fkUserid`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeslist`
--
ALTER TABLE `typeslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkTypes` (`fkTypes`),
  ADD KEY `id` (`fkRecipes`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergenesinrecipes`
--
ALTER TABLE `allergenesinrecipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `allergens`
--
ALTER TABLE `allergens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `buys`
--
ALTER TABLE `buys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `ingredientslist`
--
ALTER TABLE `ingredientslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nutriotion`
--
ALTER TABLE `nutriotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reciperating`
--
ALTER TABLE `reciperating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `typeslist`
--
ALTER TABLE `typeslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allergenesinrecipes`
--
ALTER TABLE `allergenesinrecipes`
  ADD CONSTRAINT `allergenesinrecipes_ibfk_1` FOREIGN KEY (`fkAllergens`) REFERENCES `allergens` (`id`),
  ADD CONSTRAINT `allergenesinrecipes_ibfk_2` FOREIGN KEY (`fkRecipes`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `buys`
--
ALTER TABLE `buys`
  ADD CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`fkIngredient`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`fkUser`) REFERENCES `users` (`id`);

--
-- Constraints for table `ingredientslist`
--
ALTER TABLE `ingredientslist`
  ADD CONSTRAINT `ingredientslist_ibfk_1` FOREIGN KEY (`fkIngredients`) REFERENCES `ingredients` (`id`),
  ADD CONSTRAINT `ingredientslist_ibfk_2` FOREIGN KEY (`fkRecipes`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `ingredientslist_ibfk_3` FOREIGN KEY (`fkUnits`) REFERENCES `units` (`id`);

--
-- Constraints for table `nutriotion`
--
ALTER TABLE `nutriotion`
  ADD CONSTRAINT `nutriotion_ibfk_1` FOREIGN KEY (`fkRecipes`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`fkRecipes`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `plans_ibfk_2` FOREIGN KEY (`fkUser`) REFERENCES `users` (`id`);

--
-- Constraints for table `reciperating`
--
ALTER TABLE `reciperating`
  ADD CONSTRAINT `reciperating_ibfk_1` FOREIGN KEY (`fkRating`) REFERENCES `rating` (`id`),
  ADD CONSTRAINT `reciperating_ibfk_2` FOREIGN KEY (`fkRecipes`) REFERENCES `recipes` (`id`);

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `fkUserid` FOREIGN KEY (`fkUserid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`fkCategory`) REFERENCES `category` (`id`);

--
-- Constraints for table `typeslist`
--
ALTER TABLE `typeslist`
  ADD CONSTRAINT `id` FOREIGN KEY (`fkRecipes`) REFERENCES `recipes` (`id`),
  ADD CONSTRAINT `typeslist_ibfk_1` FOREIGN KEY (`fkTypes`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
