-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 10:48 AM
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
-- Database: `app1`
--

-- --------------------------------------------------------

--
-- Table structure for table `app1_api_data`
--

CREATE TABLE `app1_api_data` (
  `id` int(11) NOT NULL,
  `Symbol` varchar(20) NOT NULL,
  `DayDate` date NOT NULL,
  `OpenValue` double NOT NULL,
  `HighValue` double NOT NULL,
  `LowValue` double NOT NULL,
  `CloseValue` double NOT NULL,
  `VolumeValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app1_api_data`
--

INSERT INTO `app1_api_data` (`id`, `Symbol`, `DayDate`, `OpenValue`, `HighValue`, `LowValue`, `CloseValue`, `VolumeValue`) VALUES
(1, 'IBM', '2020-07-10', 115.5, 118.57, 115.29, 118.35, 4285100),
(2, 'IBM', '2020-07-09', 118, 118, 115.2, 115.71, 4760900),
(3, 'IBM', '2020-07-08', 118.06, 118.64, 116.48, 117.71, 5191800),
(4, 'IBM', '2020-07-07', 119, 119.51, 117.33, 117.58, 4278100),
(5, 'IBM', '2020-07-06', 121.25, 121.85, 119.46, 120.19, 4044200),
(6, 'IBM', '2020-07-02', 119.69, 121.42, 119.26, 119.7, 3745663),
(7, 'IBM', '2020-07-01', 120.27, 121.225, 118.37, 118.54, 4657168),
(8, 'IBM', '2020-06-30', 119.19, 121.2, 119, 120.77, 3916381),
(9, 'IBM', '2020-06-29', 117.98, 119.78, 117.37, 119.75, 4157205),
(10, 'IBM', '2020-06-26', 118.26, 118.99, 116.26, 117.19, 10749166),
(11, 'IBM', '2020-06-25', 116.76, 119.21, 116.1, 119.03, 6128720),
(12, 'IBM', '2020-06-24', 118.32, 118.32, 115.88, 116.42, 6747421),
(13, 'IBM', '2020-06-23', 122.01, 122.9, 119.23, 119.41, 6628278),
(14, 'IBM', '2020-06-22', 122.12, 122.5, 120.53, 121.07, 4762601),
(15, 'IBM', '2020-06-19', 126.17, 126.82, 122.25, 122.47, 8098994),
(16, 'IBM', '2020-06-18', 123, 124.4, 122.33, 124.16, 2860286),
(17, 'IBM', '2020-06-17', 125.83, 126.25, 123.4, 124.15, 3153862),
(18, 'IBM', '2020-06-16', 125, 127.5, 123.16, 125.15, 5605791),
(19, 'IBM', '2020-06-15', 119.19, 122.367, 118.29, 121.65, 5148756),
(20, 'IBM', '2020-06-12', 121.25, 123.12, 119.28, 121.91, 6218003),
(21, 'IBM', '2020-06-11', 126.03, 126.1, 117.8352, 118.01, 11753674),
(22, 'IBM', '2020-06-10', 132.15, 132.23, 129.8, 129.87, 4725055),
(23, 'IBM', '2020-06-09', 133.52, 133.6, 131.02, 131.87, 5391520),
(24, 'IBM', '2020-06-08', 132.27, 135.88, 132.27, 135.75, 5368387),
(25, 'IBM', '2020-06-05', 133.885, 134.23, 131.75, 132.06, 5892718),
(26, 'IBM', '2020-06-04', 127.78, 128.95, 127.02, 128.89, 3864131),
(27, 'IBM', '2020-06-03', 127.15, 129.595, 127, 129.05, 3913804),
(28, 'IBM', '2020-06-02', 125.67, 126, 124.66, 126, 2976908),
(29, 'IBM', '2020-06-01', 124.64, 125.75, 124.03, 124.89, 2867306),
(30, 'IBM', '2020-05-29', 123.67, 125.13, 122.24, 124.9, 7929905),
(31, 'IBM', '2020-05-28', 126.87, 126.97, 124.22, 124.53, 3915224),
(32, 'IBM', '2020-05-27', 123.94, 125.83, 123.47, 125.54, 5725163),
(33, 'IBM', '2020-05-26', 121.3, 122.62, 121.0101, 121.76, 5467436),
(34, 'IBM', '2020-05-22', 119.37, 119.465, 117.59, 118.39, 4179906),
(35, 'IBM', '2020-05-21', 120.99, 121.72, 118.97, 119.12, 4018329),
(36, 'IBM', '2020-05-20', 120.93, 122.4659, 120.6, 121.38, 3840563),
(37, 'IBM', '2020-05-19', 121.19, 122.17, 120.14, 120.29, 3239964),
(38, 'IBM', '2020-05-18', 119.88, 122.36, 119.75, 121.56, 4205425),
(39, 'IBM', '2020-05-15', 115.93, 117.39, 115.25, 116.98, 4785773),
(40, 'IBM', '2020-05-14', 114.57, 117.09, 111.81, 116.95, 5255607),
(41, 'IBM', '2020-05-13', 119.95, 119.99, 114.85, 115.73, 5874676),
(42, 'IBM', '2020-05-12', 123.01, 124.32, 120.26, 120.26, 4779635),
(43, 'IBM', '2020-05-11', 121.81, 123.45, 120.67, 122.59, 3533382),
(44, 'IBM', '2020-05-08', 122.67, 123.23, 121.06, 122.99, 5002450),
(45, 'IBM', '2020-05-07', 122.98, 123.26, 120.85, 121.23, 4412047),
(46, 'IBM', '2020-05-06', 123.24, 124.05, 122.41, 123.17, 3861081),
(47, 'IBM', '2020-05-05', 123.39, 124.32, 122.47, 122.58, 3897761),
(48, 'IBM', '2020-05-04', 120.82, 121.97, 119.391, 121.68, 4016551),
(49, 'IBM', '2020-05-01', 123.19, 123.47, 121.39, 121.87, 4923913),
(50, 'IBM', '2020-04-30', 126.52, 127.27, 125.22, 125.56, 6630032),
(51, 'IBM', '2020-04-29', 128.88, 129.31, 127.53, 128.69, 5252734),
(52, 'IBM', '2020-04-28', 128.03, 128.2, 125.38, 126.27, 4775867),
(53, 'IBM', '2020-04-27', 125.56, 126.99, 125.47, 125.92, 4920443),
(54, 'IBM', '2020-04-24', 122.41, 125, 120.7634, 124.72, 4985575),
(55, 'IBM', '2020-04-23', 119.57, 123.03, 119.12, 121.35, 6873899),
(56, 'IBM', '2020-04-22', 119.87, 120.33, 117.55, 119.31, 7085901),
(57, 'IBM', '2020-04-21', 114, 117.145, 112.06, 116.76, 14341304),
(58, 'IBM', '2020-04-20', 119.15, 122.8635, 118.14, 120.41, 7965530),
(59, 'IBM', '2020-04-17', 119.3, 120.39, 117.92, 120.12, 4964018),
(60, 'IBM', '2020-04-16', 119.01, 119.75, 114.42, 115.73, 6438128),
(61, 'IBM', '2020-04-15', 119.12, 120.1852, 116.76, 118.69, 5632156),
(62, 'IBM', '2020-04-14', 123.46, 125.18, 122.62, 123.91, 5087292),
(63, 'IBM', '2020-04-13', 121.63, 121.8, 118.04, 121.15, 5118777),
(64, 'IBM', '2020-04-09', 120.48, 122.92, 120.1672, 121.5, 5576210),
(65, 'IBM', '2020-04-08', 116.31, 119.96, 115.0742, 119.29, 5155987),
(66, 'IBM', '2020-04-07', 118.8, 119.57, 114.87, 114.94, 5592463),
(67, 'IBM', '2020-04-06', 110.35, 115.63, 110.13, 114.82, 7026457),
(68, 'IBM', '2020-04-03', 108.92, 110.07, 104.92, 106.34, 4538113),
(69, 'IBM', '2020-04-02', 105.37, 110.32, 105.14, 110, 6327540),
(70, 'IBM', '2020-04-01', 106.36, 109.92, 104.521, 105.14, 6111890),
(71, 'IBM', '2020-03-31', 112, 113.81, 110.17, 110.93, 6342167),
(72, 'IBM', '2020-03-30', 108.09, 113.46, 107.81, 112.93, 5562501),
(73, 'IBM', '2020-03-27', 108.58, 111.5, 107.645, 108.03, 6421470),
(74, 'IBM', '2020-03-26', 106.91, 113.15, 105.57, 112.89, 7153135),
(75, 'IBM', '2020-03-25', 105.48, 112.4779, 102.83, 105.85, 8646557),
(76, 'IBM', '2020-03-24', 99.99, 106.04, 99.26, 105.48, 7967768),
(77, 'IBM', '2020-03-23', 94.6, 97.74, 90.56, 94.77, 9718602),
(78, 'IBM', '2020-03-20', 100.92, 100.99, 94.71, 95.39, 10543213),
(79, 'IBM', '2020-03-19', 102.33, 103.69, 98.235, 100.34, 8391294),
(80, 'IBM', '2020-03-18', 99.41, 106.9345, 99.4, 103.55, 8751994),
(81, 'IBM', '2020-03-17', 100.61, 107.395, 97.1, 106.65, 8887501),
(82, 'IBM', '2020-03-16', 98, 107.41, 95, 99.08, 10564044),
(83, 'IBM', '2020-03-13', 108.68, 109.16, 100.81, 107.95, 12493419),
(84, 'IBM', '2020-03-12', 109.65, 109.8, 102.28, 102.81, 12485925),
(85, 'IBM', '2020-03-11', 121.01, 122.58, 116.3838, 117.97, 8446480),
(86, 'IBM', '2020-03-10', 122.78, 124.88, 115.76, 124.77, 11403865),
(87, 'IBM', '2020-03-09', 120.16, 122.41, 117.28, 117.81, 10750357),
(88, 'IBM', '2020-03-06', 126.7, 128.33, 124.52, 127.73, 8192525),
(89, 'IBM', '2020-03-05', 130.5, 132.29, 128.45, 129.55, 5445193),
(90, 'IBM', '2020-03-04', 131.58, 134.28, 129, 134.22, 4994682),
(91, 'IBM', '2020-03-03', 134.48, 136.095, 127.8, 128.9, 7893390),
(92, 'IBM', '2020-03-02', 130.75, 134.44, 127.95, 134.3, 8528971),
(93, 'IBM', '2020-02-28', 129.98, 131.09, 126.36, 130.15, 13009236),
(94, 'IBM', '2020-02-27', 137.24, 138.69, 133.01, 133.11, 8404903),
(95, 'IBM', '2020-02-26', 142.9, 144.06, 139.6, 139.75, 5407690),
(96, 'IBM', '2020-02-25', 146.51, 147.07, 141.261, 141.71, 6210878),
(97, 'IBM', '2020-02-24', 145.51, 148.05, 145.38, 146.43, 5447948),
(98, 'IBM', '2020-02-21', 151.04, 151.04, 148.84, 149.84, 3536740),
(99, 'IBM', '2020-02-20', 150.81, 151.62, 149.51, 151.22, 2880483),
(100, 'IBM', '2020-02-19', 151.54, 151.89, 150.31, 150.86, 2732905),
(101, 'MSFT', '2020-07-10', 213.62, 214.08, 211.08, 213.67, 26178700),
(102, 'MSFT', '2020-07-09', 216.33, 216.38, 211.47, 214.32, 33122300),
(103, 'MSFT', '2020-07-08', 210.07, 213.26, 208.69, 212.83, 33602200),
(104, 'MSFT', '2020-07-07', 210.45, 214.67, 207.99, 208.25, 33600700),
(105, 'MSFT', '2020-07-06', 208.83, 211.13, 208.09, 210.7, 32033700),
(106, 'MSFT', '2020-07-02', 205.68, 208.02, 205, 206.26, 29322547),
(107, 'MSFT', '2020-07-01', 203.14, 206.35, 201.77, 204.7, 32071431),
(108, 'MSFT', '2020-06-30', 197.8816, 204.4, 197.74, 203.51, 34310283),
(109, 'MSFT', '2020-06-29', 195.78, 198.53, 193.55, 198.44, 26701586),
(110, 'MSFT', '2020-06-26', 199.73, 199.89, 194.88, 196.33, 54675780),
(111, 'MSFT', '2020-06-25', 197.8, 200.61, 195.4675, 200.34, 27803933),
(112, 'MSFT', '2020-06-24', 201.6043, 203.25, 196.56, 197.84, 36740647),
(113, 'MSFT', '2020-06-23', 202.09, 203.95, 201.425, 201.91, 30917447),
(114, 'MSFT', '2020-06-22', 195.79, 200.76, 195.2301, 200.57, 32818929),
(115, 'MSFT', '2020-06-19', 198.59, 199.29, 194.37, 195.15, 44441141),
(116, 'MSFT', '2020-06-18', 194, 196.49, 194, 196.32, 23061648),
(117, 'MSFT', '2020-06-17', 195.03, 196.32, 193.69, 194.24, 25687822),
(118, 'MSFT', '2020-06-16', 192.89, 195.58, 191.46, 193.57, 42556656),
(119, 'MSFT', '2020-06-15', 184.58, 190.82, 184.01, 188.94, 32770189),
(120, 'MSFT', '2020-06-12', 190.54, 191.72, 185.18, 187.74, 43373587),
(121, 'MSFT', '2020-06-11', 193.13, 195.76, 186.07, 186.27, 52854672),
(122, 'MSFT', '2020-06-10', 191.125, 198.52, 191.01, 196.84, 43872329),
(123, 'MSFT', '2020-06-09', 188, 190.7, 187.2605, 189.8, 29783916),
(124, 'MSFT', '2020-06-08', 185.94, 188.55, 184.44, 188.36, 33211590),
(125, 'MSFT', '2020-06-05', 182.62, 187.73, 182.01, 187.2, 39893643),
(126, 'MSFT', '2020-06-04', 184.3, 185.84, 182.3, 182.92, 28761809),
(127, 'MSFT', '2020-06-03', 184.815, 185.94, 183.58, 185.36, 27311016),
(128, 'MSFT', '2020-06-02', 184.25, 185, 181.35, 184.91, 30794585),
(129, 'MSFT', '2020-06-01', 182.54, 183, 181.46, 182.83, 22668821),
(130, 'MSFT', '2020-05-29', 182.73, 184.27, 180.41, 183.25, 42146720),
(131, 'MSFT', '2020-05-28', 180.74, 184.1474, 180.38, 181.4, 33831824),
(132, 'MSFT', '2020-05-27', 180.2, 181.9877, 176.6, 181.81, 39517146),
(133, 'MSFT', '2020-05-26', 186.34, 186.5, 181.1, 181.57, 36073609),
(134, 'MSFT', '2020-05-22', 183.19, 184.46, 182.54, 183.51, 20826898),
(135, 'MSFT', '2020-05-21', 185.4, 186.67, 183.29, 183.43, 29032741),
(136, 'MSFT', '2020-05-20', 184.81, 185.85, 183.94, 185.66, 31261334),
(137, 'MSFT', '2020-05-19', 185.03, 186.6, 183.49, 183.63, 26799116),
(138, 'MSFT', '2020-05-18', 185.75, 186.2, 183.96, 184.91, 35306620),
(139, 'MSFT', '2020-05-15', 179.06, 187.06, 177, 183.16, 46610382),
(140, 'MSFT', '2020-05-14', 177.54, 180.69, 175.68, 180.53, 41873911),
(141, 'MSFT', '2020-05-13', 182.55, 184.05, 176.54, 179.75, 44711488),
(142, 'MSFT', '2020-05-12', 186.9, 187.04, 182.3, 182.51, 32038199),
(143, 'MSFT', '2020-05-11', 183.15, 187.51, 182.85, 186.74, 30892660),
(144, 'MSFT', '2020-05-08', 184.9797, 185, 183.36, 184.68, 30912638),
(145, 'MSFT', '2020-05-07', 184.17, 184.55, 182.58, 183.6, 28315992),
(146, 'MSFT', '2020-05-06', 182.08, 184.2, 181.6306, 182.54, 32139299),
(147, 'MSFT', '2020-05-05', 180.62, 183.65, 179.9, 180.76, 36839168),
(148, 'MSFT', '2020-05-04', 174.49, 179, 173.8, 178.84, 30372862),
(149, 'MSFT', '2020-05-01', 175.8, 178.64, 174.01, 174.57, 39370474),
(150, 'MSFT', '2020-04-30', 180, 180.4, 176.23, 179.21, 53875857),
(151, 'MSFT', '2020-04-29', 173.22, 177.68, 171.88, 177.43, 51286559),
(152, 'MSFT', '2020-04-28', 175.4556, 175.67, 169.39, 169.81, 34392694),
(153, 'MSFT', '2020-04-27', 176.59, 176.9, 173.3, 174.05, 33194384),
(154, 'MSFT', '2020-04-24', 172.06, 174.56, 170.71, 174.55, 34305320),
(155, 'MSFT', '2020-04-23', 174.11, 175.06, 170.91, 171.42, 32790804),
(156, 'MSFT', '2020-04-22', 171.39, 174, 170.82, 173.52, 34651604),
(157, 'MSFT', '2020-04-21', 173.5, 173.6699, 166.1102, 167.82, 56203749),
(158, 'MSFT', '2020-04-20', 176.63, 178.75, 174.99, 175.06, 36669595),
(159, 'MSFT', '2020-04-17', 179.5, 180, 175.87, 178.6, 52765625),
(160, 'MSFT', '2020-04-16', 174.3, 177.28, 172.9, 177.04, 50479610),
(161, 'MSFT', '2020-04-15', 171.2, 173.57, 169.24, 171.88, 40940833),
(162, 'MSFT', '2020-04-14', 169, 173.75, 168, 173.7, 52874338),
(163, 'MSFT', '2020-04-13', 164.35, 165.57, 162.3, 165.51, 41905264),
(164, 'MSFT', '2020-04-09', 166.36, 167.37, 163.33, 165.14, 51431775),
(165, 'MSFT', '2020-04-08', 165.67, 166.67, 163.5, 165.13, 48318234),
(166, 'MSFT', '2020-04-07', 169.5923, 170, 163.26, 163.49, 62769038),
(167, 'MSFT', '2020-04-06', 160.32, 166.5, 157.58, 165.27, 67111697),
(168, 'MSFT', '2020-04-03', 155.1, 157.38, 152.19, 153.83, 41243284),
(169, 'MSFT', '2020-04-02', 151.86, 155.48, 150.36, 155.26, 49630735),
(170, 'MSFT', '2020-04-01', 153, 157.75, 150.82, 152.11, 57969926),
(171, 'MSFT', '2020-03-31', 159.4, 164.78, 156.56, 157.71, 77927186),
(172, 'MSFT', '2020-03-30', 152.44, 160.6, 150.01, 160.23, 63420326),
(173, 'MSFT', '2020-03-27', 151.75, 154.89, 149.2, 149.7, 57042291),
(174, 'MSFT', '2020-03-26', 148.4, 156.66, 148.37, 156.11, 64694427),
(175, 'MSFT', '2020-03-25', 148.91, 154.33, 144.44, 146.92, 75638224),
(176, 'MSFT', '2020-03-24', 143.75, 149.6, 141.27, 148.34, 82516727),
(177, 'MSFT', '2020-03-23', 137.01, 140.57, 132.52, 135.98, 78975176),
(178, 'MSFT', '2020-03-20', 146, 147.1, 135.86, 137.35, 84866215),
(179, 'MSFT', '2020-03-19', 142.77, 150.15, 139, 142.71, 85922661),
(180, 'MSFT', '2020-03-18', 138, 146, 135.02, 140.4, 81593173),
(181, 'MSFT', '2020-03-17', 140, 147.4998, 135, 146.57, 81059817),
(182, 'MSFT', '2020-03-16', 140, 149.35, 135, 135.42, 87905868),
(183, 'MSFT', '2020-03-13', 147.5, 161.91, 140.73, 158.83, 92727446),
(184, 'MSFT', '2020-03-12', 145.3, 153.47, 138.58, 139.06, 93226366),
(185, 'MSFT', '2020-03-11', 157.1304, 157.7, 151.15, 153.63, 56504304),
(186, 'MSFT', '2020-03-10', 158.16, 161.03, 152.58, 160.92, 65354385),
(187, 'MSFT', '2020-03-09', 151, 157.75, 150, 150.62, 70419274),
(188, 'MSFT', '2020-03-06', 162.61, 163.11, 156, 161.57, 72821057),
(189, 'MSFT', '2020-03-05', 166.045, 170.87, 165.69, 166.27, 47817251),
(190, 'MSFT', '2020-03-04', 168.485, 170.7, 165.62, 170.55, 49814383),
(191, 'MSFT', '2020-03-03', 173.8, 175, 162.26, 164.51, 71677019),
(192, 'MSFT', '2020-03-02', 165.31, 172.92, 162.31, 172.79, 71030810),
(193, 'MSFT', '2020-02-28', 152.41, 163.71, 152, 162.01, 97073557),
(194, 'MSFT', '2020-02-27', 163.32, 167.03, 157.98, 158.18, 93174906),
(195, 'MSFT', '2020-02-26', 169.71, 173.26, 168.21, 170.17, 56387148),
(196, 'MSFT', '2020-02-25', 174.2, 174.84, 167.6462, 168.07, 68073295),
(197, 'MSFT', '2020-02-24', 167.77, 174.55, 163.23, 170.89, 68311066),
(198, 'MSFT', '2020-02-21', 183.17, 183.5, 177.25, 178.59, 48600385),
(199, 'MSFT', '2020-02-20', 186.95, 187.25, 181.1, 184.42, 36862376),
(200, 'MSFT', '2020-02-19', 188.06, 188.18, 186.47, 187.28, 29997471);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app1_api_data`
--
ALTER TABLE `app1_api_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app1_api_data`
--
ALTER TABLE `app1_api_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;