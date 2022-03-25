-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 09:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `plain_colour` varchar(20) NOT NULL,
  `pattern` varchar(20) DEFAULT NULL,
  `figure` varchar(20) DEFAULT NULL,
  `size` enum('xs','s','m','l','xl','','') DEFAULT NULL,
  `prize` double DEFAULT NULL,
  `gender` enum('man','woman','unisex','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `plain_colour`, `pattern`, `figure`, `size`, `prize`, `gender`) VALUES
(1, 'Fluconazole', 'Goldenrod', 'Infiniti', 'Stone', 'm', 196, 'woman'),
(2, 'ESIKA', 'Fuscia', 'Suzuki', 'Stone', 'm', 106, 'man'),
(3, 'ESIKA', 'Mauv', 'Ford', 'Granite', 's', 643, 'woman'),
(4, 'ESIKA', 'Green', 'Saab', 'Vinyl', 'xl', 70, 'woman'),
(5, 'ESIKA', 'Aquamarine', 'BMW', 'Granite', 'l', 346, 'woman'),
(6, 'Paroxetine', 'Turquoise', 'GMC', 'Granite', 'l', 212, 'man'),
(7, 'Bio Star of Bethlehem', 'Purple', 'Volvo', 'Steel', 'm', 199, 'woman'),
(8, 'ALPRAZOLAM', 'Crimson', 'Mercury', 'Rubber', 'm', 474, 'woman'),
(9, 'DawnMist Antiperspirant Deodorant', 'Teal', 'Porsche', 'Stone', 'm', 695, 'woman'),
(10, 'Amoxicillin and Clavulanate Potassium', 'Turquoise', 'Pontiac', 'Stone', 'xs', 892, 'woman'),
(11, 'Yves Saint Laurent', 'Yellow', 'Buick', 'Glass', 'l', 215, 'woman'),
(12, 'Propranolol Hydrochloride', 'Yellow', 'Audi', 'Stone', 'l', 697, 'woman'),
(13, 'BLACK WALNUT FOOD', 'Pink', 'Nissan', 'Rubber', 'xs', 772, 'woman'),
(14, 'Queen Palm', 'Orange', 'Bentley', 'Wood', 'm', 163, 'woman'),
(15, 'Lamotrigine', 'Teal', 'Porsche', 'Plexiglass', 'l', 869, 'unisex'),
(16, 'SHISEIDO SUN PROTECTION COMPACT FOUNDATION (REFILL)', 'Yellow', 'Nissan', 'Granite', 's', 399, 'man'),
(17, 'Lyrica', 'Orange', 'Subaru', 'Rubber', 'xl', 769, 'woman'),
(18, 'Allergy Complete Relief', 'Yellow', 'Mercedes-Benz', 'Steel', 'xs', 741, 'woman'),
(19, 'soCALM Pain Relieving', 'Red', 'Infiniti', 'Aluminum', 'xs', 760, 'man'),
(20, 'Periodontium Quartz Special Order', 'Purple', 'GMC', 'Vinyl', 'l', 13, 'man'),
(21, 'Fluoxetine Hydrochloride', 'Pink', 'GMC', 'Stone', 's', 474, 'man'),
(22, 'LanoGuard', 'Aquamarine', 'Dodge', 'Aluminum', 'xl', 676, 'woman'),
(23, 'ConRx AR', 'Indigo', 'Nissan', 'Glass', 'xs', 748, 'man'),
(24, 'Simvastatin', 'Goldenrod', 'Toyota', 'Wood', 'xs', 922, 'unisex'),
(25, 'Simvastatin', 'Green', 'BMW', 'Stone', 'm', 175, 'unisex'),
(26, 'Simvastatin', 'Goldenrod', 'Ram', 'Rubber', 's', 383, 'man'),
(27, 'Tretinoin', 'Turquoise', 'Infiniti', 'Brass', 'm', 349, 'woman'),
(28, 'METOPROLOL SUCCINATE', 'Goldenrod', 'Toyota', 'Wood', 'm', 825, 'woman'),
(29, 'TACLONEX', 'Blue', 'Chrysler', 'Stone', 'l', 782, 'unisex'),
(30, 'Chantix', 'Indigo', 'GMC', 'Granite', 'm', 723, 'woman'),
(31, 'Sodium Bicarbonate', 'Turquoise', 'Ford', 'Aluminum', 'xl', 467, 'woman'),
(32, 'Infected Cuts and Punctures', 'Violet', 'Audi', 'Glass', 'l', 967, 'man'),
(33, 'Oxygen', 'Aquamarine', 'GMC', 'Plastic', 'xs', 748, 'unisex'),
(34, 'Oxcarbazepine', 'Turquoise', 'Ford', 'Aluminum', 'l', 136, 'unisex'),
(35, 'Dakins Half', 'Red', 'Acura', 'Glass', 'l', 235, 'woman'),
(36, 'Perrigo Hydroquinone', 'Indigo', 'Volkswagen', 'Vinyl', 'm', 560, 'unisex'),
(37, 'Antacid Supreme Cherry', 'Turquoise', 'Chevrolet', 'Aluminum', 'l', 908, 'woman'),
(38, 'Scrub Pine', 'Khaki', 'Volkswagen', 'Plexiglass', 'l', 426, 'unisex'),
(39, 'Aurum Crataegus Nausea Relief', 'Violet', 'Volvo', 'Stone', 'm', 106, 'man'),
(40, 'care one nasal', 'Turquoise', 'Saturn', 'Plexiglass', 'm', 928, 'man'),
(41, 'Acetaminophen-APAP 8 Hour', 'Aquamarine', 'Lexus', 'Plexiglass', 'l', 577, 'man'),
(42, 'kids cold', 'Turquoise', 'Mercury', 'Wood', 'xl', 849, 'man'),
(43, 'Hog Epithelium', 'Yellow', 'Pontiac', 'Aluminum', 'l', 469, 'woman'),
(44, 'Arthritis Plus Gel', 'Yellow', 'Pontiac', 'Granite', 'l', 319, 'woman'),
(45, 'Lamivudine and Zidovudine', 'Pink', 'Dodge', 'Granite', 'xs', 27, 'man'),
(46, 'Citalopram Hydrobromide', 'Khaki', 'Suzuki', 'Glass', 'm', 760, 'woman'),
(47, 'DG Health Childrens Mucus Relief Cough', 'Orange', 'Chevrolet', 'Steel', 'm', 117, 'woman'),
(48, 'Scrub Pine', 'Yellow', 'Chevrolet', 'Glass', 'm', 85, 'woman'),
(49, 'Sani-Hands', 'Teal', 'Porsche', 'Granite', 'xl', 884, 'man'),
(50, 'Chestal Childrens Cough and Cold', 'Red', 'Eagle', 'Wood', 'xs', 879, 'woman'),
(51, 'Family Care Nasal Relief', 'Indigo', 'Audi', 'Rubber', 's', 149, 'man'),
(52, 'Satin Pink', 'Red', 'GMC', 'Vinyl', 'xl', 940, 'woman'),
(53, 'DrxNoze Nosebleed Relief', 'Blue', 'GMC', 'Steel', 'xl', 77, 'woman'),
(54, 'Low Dose Aspirin', 'Turquoise', 'Honda', 'Wood', 'l', 630, 'unisex'),
(55, 'Scrub Pine', 'Maroon', 'Dodge', 'Steel', 'l', 431, 'man'),
(56, 'Prevnar', 'Pink', 'Volkswagen', 'Steel', 'l', 759, 'man'),
(57, 'Diclofenac Sodium', 'Crimson', 'Audi', 'Vinyl', 'l', 346, 'woman'),
(58, 'CARE ONE Antibacterial Foaming Hand Soap', 'Red', 'Volkswagen', 'Steel', 'xs', 871, 'man'),
(59, 'Divalproex Sodium', 'Aquamarine', 'Aston Martin', 'Aluminum', 'm', 245, 'woman'),
(60, 'Hydrogen Peroxide', 'Goldenrod', 'Chevrolet', 'Glass', 'xs', 826, 'man'),
(61, 'Sleep Aid', 'Red', 'Chrysler', 'Brass', 'l', 887, 'man'),
(62, 'H-Varicose Veins Formula', 'Orange', 'GMC', 'Brass', 'm', 106, 'woman'),
(63, 'Scrub Pine', 'Puce', 'Smart', 'Stone', 'xl', 179, 'woman'),
(64, 'PHOSLYRA', 'Yellow', 'Ford', 'Plastic', 'xs', 190, 'man'),
(65, 'Anti-Fungal', 'Blue', 'Lexus', 'Steel', 'l', 188, 'man'),
(66, 'ARUBA ALOE ISLAND REMEDY DAILY ULTRA ALOE', 'Crimson', 'BMW', 'Rubber', 'm', 186, 'woman'),
(67, 'Peptic Relief', 'Fuscia', 'Chevrolet', 'Vinyl', 'm', 679, 'unisex'),
(68, 'Standardized Kentucky Blue (June) Grass', 'Orange', 'Chevrolet', 'Brass', 'l', 808, 'woman'),
(69, 'ciprofloxacin', 'Red', 'Ford', 'Vinyl', 'm', 222, 'man'),
(70, 'AK-POLY-BAC', 'Turquoise', 'Cadillac', 'Vinyl', 'xl', 950, 'woman'),
(71, 'Low Dose Aspirin', 'Goldenrod', 'Hyundai', 'Aluminum', 'l', 599, 'man'),
(72, 'wal tussin cf max', 'Purple', 'GMC', 'Aluminum', 'l', 304, 'man'),
(73, 'V-Natal', 'Indigo', 'BMW', 'Plexiglass', 's', 373, 'woman'),
(74, 'Trimethobenzamide Hydrochloride', 'Khaki', 'Chevrolet', 'Stone', 'xs', 304, 'man'),
(75, 'Ropinirole Hydrochloride', 'Green', 'GMC', 'Brass', 'xs', 906, 'woman'),
(76, 'PredniSONE', 'Puce', 'Chevrolet', 'Stone', 'xl', 448, 'woman'),
(77, 'Chantix', 'Pink', 'Ford', 'Plexiglass', 'xs', 609, 'man'),
(78, 'Zolpidem Tartrate', 'Mauv', 'Mercury', 'Stone', 'm', 703, 'man'),
(79, 'CUPRUM METALLICUM', 'Crimson', 'Buick', 'Granite', 'm', 248, 'unisex'),
(80, 'Pink Bismuth Maximum Strength', 'Orange', 'Ford', 'Wood', 'xl', 942, 'woman'),
(81, 'RISPERDAL', 'Fuscia', 'Mazda', 'Aluminum', 'xs', 819, 'woman'),
(82, 'Acyclovir', 'Indigo', 'Oldsmobile', 'Plexiglass', 's', 18, 'man'),
(83, 'DR. RECKEWEG R7 Hepagalen', 'Orange', 'Austin', 'Vinyl', 'l', 125, 'woman'),
(84, 'ProClearz', 'Violet', 'Honda', 'Steel', 's', 738, 'man'),
(85, 'Citalopram Hydrobromide', 'Mauv', 'Suzuki', 'Steel', 's', 711, 'man'),
(86, 'Sumatriptan Succinate', 'Purple', 'Ford', 'Plastic', 'xs', 652, 'woman'),
(87, 'Relief', 'Maroon', 'Pontiac', 'Wood', 'm', 536, 'unisex'),
(88, 'ESIKA HD COLOR HIGH DEFINITION COLOR SPF 20', 'Puce', 'Hyundai', 'Glass', 'l', 634, 'man'),
(89, 'Divalproex Sodium', 'Mauv', 'Mercedes-Benz', 'Rubber', 'm', 662, 'woman'),
(90, 'NEOMYCIN AND POLYMYXIN B SULFATES AND GRAMICIDIN', 'Blue', 'BMW', 'Steel', 'm', 785, 'woman'),
(91, 'Oxygen', 'Aquamarine', 'Dodge', 'Plastic', 'm', 96, 'woman'),
(92, 'ZAFIRLUKAST', 'Turquoise', 'Mercedes-Benz', 'Brass', 'l', 203, 'woman'),
(93, 'ondansetron hydrochloride', 'Teal', 'Cadillac', 'Plexiglass', 'm', 341, 'woman'),
(94, 'AHC Revitalizing Special Gen Solution', 'Mauv', 'Ford', 'Granite', 's', 965, 'man'),
(95, 'Etodolac', 'Blue', 'Saturn', 'Wood', 'm', 905, 'woman'),
(96, 'Infants Gas Relief Drops', 'Green', 'GMC', 'Stone', 'xl', 57, 'man'),
(97, 'Lidocaine Hydrochloride', 'Goldenrod', 'Lexus', 'Plexiglass', 'm', 337, 'man'),
(98, 'Metronidazole', 'Orange', 'Nissan', 'Plexiglass', 'l', 318, 'woman'),
(99, 'Snore Soothe', 'Orange', 'GMC', 'Vinyl', 'xl', 94, 'unisex'),
(100, 'Medicated Apricot Scrub', 'Turquoise', 'Buick', 'Aluminum', 'l', 210, 'woman');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `transactionid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactionheads`
--

CREATE TABLE `transactionheads` (
  `id` int(11) NOT NULL,
  `totalprize` double NOT NULL,
  `address` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_status` enum('initial','pending','complete','fail') DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionheads`
--
ALTER TABLE `transactionheads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactionheads`
--
ALTER TABLE `transactionheads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
