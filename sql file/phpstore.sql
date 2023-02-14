-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 01:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acrokart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'yadavprakhar1809@gmail.com', '12191219');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'School Supplies', '2021-10-26 06:21:00', '2021-10-26 06:21:00'),
(3, 'Office Supplies', '2021-10-26 06:21:20', '2021-10-26 06:21:20'),
(4, 'Arts & Crafts Supplies', '2021-10-26 06:23:10', '2021-10-26 06:23:10'),
(5, 'Files & Folders', '2021-10-26 06:25:42', '2021-10-26 06:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'yadavprakhar1809@gmail.com', 'how you doin', '2021-10-17 12:19:29', '2021-10-17 12:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'yadavprakhar1809@gmail.com', '123', '2021-10-22 06:03:09', '2021-10-22 06:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `pay_method` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_ at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `phone`, `total`, `pay_method`, `created_at`, `updated_ at`) VALUES
(14, 0, '', '', 0, 'cash', '2021-10-28 05:18:02', '2021-10-28 05:18:02'),
(15, 0, '', '', 0, 'paypal', '2021-10-28 05:18:13', '2021-10-28 05:18:13'),
(16, 1, '183,, Sukhdevnagar,Ext.1, Near Airport Road', '9826009880', 230, 'paypal', '2021-11-07 13:02:48', '2021-11-07 13:02:48'),
(17, 1, '183,, Sukhdevnagar,Ext.1, Near Airport Road', '9826009880', 50, 'paypal', '2021-11-07 14:58:52', '2021-11-07 14:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_ at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_ at`) VALUES
(10, 16, 11, 1, '2021-11-07 13:02:48', '2021-11-07 13:02:48'),
(11, 17, 10, 1, '2021-11-07 14:58:53', '2021-11-07 14:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(30) NOT NULL,
  `description` mediumtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'Pens', 10, 'uploads/pen.jpg', '• Octane gel pen<br>\r\n• Japanese water proof ink.<br>\r\n• Stylishly sculpted design.<br>\r\n• Textured grip for super grasp.', 2, '2021-10-26 06:34:26', '2021-10-26 06:34:26'),
(10, 'Apsara Platinum Pencils ', 50, 'uploads/pencil.jpg', '• Dark lead needs less pressure when writing <br>\r\n• Soft wood for easy sharpening<br>\r\n• Writing stays dark longer<br>\r\n• Superior bonded lead is strong and resists breakage<br>\r\n• Superior quality wood makes sharpening easy<br>\r\n• Meets international quality standards', 2, '2021-10-26 06:50:26', '2021-10-26 06:50:26'),
(11, ' Geometry Box', 230, 'uploads/geometrybox.jpg', '• Color: Purple<br>\r\n• Number of Geometry Boxes: 1<br>\r\n• Contains: 1 Compass, 1 Eraser, 1 Protractor, 1 Set Squares, 1 Half-Length Pencil, 1 Ruler<br>\r\n• Geometry Box Material: Metal<br>\r\n• Compass with Unique \"ARM - LOCK\" mechanism for continued precision of measurements while drawing<br>\r\n• Die-Casted, Self-Centering Compass Cum Divider for Un-Matched and Consistent Precision<br>\r\n• Special Mechanical pencil 0.5mm and lead box with 10 leads<br>\r\n• Foldable 30 cm scale with \"AUTO PRESS - LOCK\" for convenient use<br>', 2, '2021-10-26 06:54:46', '2021-10-26 06:54:46'),
(12, 'Fountain Pen', 160, 'uploads/fountainpen.jpg', '• Classic Smooth Writing Pen<br>\r\n• Length: 140 mm; Nib : Iridium Fine<br>\r\n• Pen weight: 15g; Diameter: 13.5mm; Cap: Push Type<br>\r\n• Ink: compatible with bottled ink only<br>', 2, '2021-10-26 07:14:01', '2021-10-26 07:14:01'),
(13, 'Schneider Pastel Fountain Pen ', 380, 'uploads/ink.jpg', '• Discover a whole new variety of colours for your fountain pen with the exceptional pastel inks from Schneider.<br>\r\n• Best results when writing can be achieved together with the Schneider ink converter and the Callissima calligraphy pen.<br>\r\n• Emphasise your calligraphic works of art with a unique colour world.<br>\r\n• Ink in resealable ink jar for refilling fountain pens with piston technology/converter. Ideal for calligraphy The pastel ink is non-erasable.<br>\r\n• Box contents: 15 ml glass pastel ink for filling via a converter.<br>\r\n', 2, '2021-10-26 07:22:49', '2021-10-26 07:22:49'),
(14, 'Artline White Board Marker', 120, 'uploads/whiteboardmarker.jpg', '• Big nib whiteboard marker gives thick 10 millimeters<br>\r\n• Vivid lines clearly visible from a distance and consistent dense ink flow<br>\r\n• Easily erasable with either a whiteboard eraser or dry cloth.<br>\r\n• Chisel tip black<br>\r\n• Refillable markers and the ink is free from harmful chemicals like Xylene, long term exposure to Xylene causes cancer<br>', 2, '2021-10-26 07:25:55', '2021-10-26 07:25:55'),
(15, 'Classmate Long Notebook - 140 Pages, Single Line', 499, 'uploads/notebooks.jpg', '• The cover design of the notebook is subject to change, it depends on stock availability<br>\r\n• Long Notebook - 140 Pages, Single Line, 297mm x 210mm (Pack of 12)<br>\r\n• Notebooks for every subject for hassle-free note-taking during classes or lectures.<br>\r\n• Classmate uses and elemental chlorine free paper<br>\r\n• This notebook consists of high quality papers<br>', 2, '2021-10-26 07:32:17', '2021-10-26 07:32:17'),
(16, ' Oval ID Card Holder (Blue)', 40, 'uploads/idcardholder.jpg', '• Retractable reel to conveniently keep ID, badge and key safe. Secure metal clip for easy fasten to pocket, belt, waistband.<br>\r\n• Made from chrome plated plastic, and includes the urethane encased design.<br>\r\n• A snap loop to attach keys Stylish and cool retractable ID card/badge holder.', 3, '2021-10-26 14:47:31', '2021-10-26 14:47:31'),
(17, 'Kangaro Two Hole Paper Punch ', 87, 'uploads/2holepaperpuncher.jpg', '• All metal construction<br>\r\n• Removable chip tray<br>\r\n• Punching Capacity : 12 Sheets<br>\r\n• Punching Distance: 80 mm<br>\r\n• Punching Dia: 5.50 mm<br>\r\n• Color May Vary<br>', 3, '2021-10-26 14:52:28', '2021-10-26 14:52:28'),
(18, 'Kangaro HP-45 Stapler ', 257, 'uploads/kangaros.jpg', '• Half strip all metal construction with plastic cover<br>\r\n• Quick loading mechanism<br>\r\n• Rotating anvil & reload indicator<br>\r\n• Ideal for frequent stapling<br>\r\n• Staple use : 24/6 & 26/6<br>\r\n• Loading Capacity: 50/100 Staples<br>\r\n• Stapling Capacity: 30 Sheets<br>', 3, '2021-10-26 14:55:24', '2021-10-26 14:55:24'),
(19, ' Kangaro Staple  (10 boxes, Used for Popular No 10', 85, 'uploads/kangaroo.jpg', '• Made from rust resistance wire<br>\r\n• Durable<br>\r\n• High quality steel wire used<br>\r\n• 1000 staples in a pack<br>\r\n• For No 10 Stapler<br>', 3, '2021-10-26 14:58:31', '2021-10-26 14:58:31'),
(20, ' Binder Clips 19mm (12 Pcs)', 30, 'uploads/binder-clips.jpg', '• Binder Clips are handy stationery items that are a must in the office. You can use them to bind together loose sheets of paper.<br>\r\n• Holds documents firmly, Leaves no marks of binding<br>\r\n• No punching or piercing of documents, Does not destroy documents<br>\r\n• Corrosion-resistant steel, Re-usable<br>\r\n• Nickel-Plated handles can be removed for permanent binding<br>', 3, '2021-10-26 15:11:23', '2021-10-26 15:11:23'),
(21, '3M Donut Shaped Tape Dispenser', 100, 'uploads/donut.jpg', '• Cool, colorful and compact.<br>\r\n• Refillable with 1/2\" or 3/4\" tape on a 1\" core, up to 1000\" long.<br>\r\n• Great for school projects, locker decorating and more.<br>', 3, '2021-10-26 15:14:23', '2021-10-26 15:14:23'),
(22, 'Paper Clips (78Mm)', 68, 'uploads/paperclips.jpg', '• 78mm Clip<br>\r\n• Jumbo Gem Clips<br>\r\n• One box contains 50 pcs<br>\r\n• Steel Clip', 3, '2021-10-26 15:17:30', '2021-10-26 15:17:30'),
(23, 'Kangaro Scissors SL 1173 ', 115, 'uploads/scissors.jpg', '• Light weight & Comfortable<br>\r\n• Corrosion Resistant<br>\r\n• Stainless steel Blades<br>\r\n• Right & Left Handed<br>\r\n• High Impact ABS Handle<br>\r\n• Ideal for General,Home & Office Use.<br>', 3, '2021-10-26 15:19:44', '2021-10-26 15:19:44'),
(24, '   FeviStick ', 20, 'uploads/fevistick.jpg', '• Fevistick is perfect for the time you need to stick paper-to-paper without dirtying your fingers. <br>\r\n• It is easy to carry,can be stored anywhere and is available in super economy roll-out tubes. <br>\r\n• Disapperaing coloured glue stick.Ideal for paper-to-paper bonding. <br>\r\n• Ideal for paper to paper bonding <br>\r\n• Non messy, convenient to use glue stick, leaves no stain <br>\r\n• Premium & consistent quality one can rely on  <br>', 3, '2021-10-26 17:05:49', '2021-10-26 17:05:49'),
(25, 'Deli Correction pen (W28253)', 25, 'uploads/correction-pen.jpg', '• Correction Pen<br>\r\n• Steel Tip 4ml<br>\r\n• Easy Dry\r\n ', 3, '2021-10-26 17:11:39', '2021-10-26 17:11:39'),
(26, 'Stamp Pad', 140, 'uploads/stamp.jpg', '•  Aluminum body ensures longer life of stamp pad<br>\r\n•  No blur, no fade water-based dye-stuff ink<br>\r\n•  Finely textured cotton pad<br>\r\n•  Long lasting clear impressions<br>\r\n•  India\'s only stamp pad with more than 2000 impressions without refilling<br>\r\n•  Clear stamp impressions across complete surface of pad<br>', 0, '2021-10-26 17:37:44', '2021-10-26 17:37:44'),
(28, 'Artline Love Art Sketch Pencils (6 Grades) -HB,2B,4B,6B,8B,10B', 70, 'uploads/sktech-pencils.jpg', '• Pack of 6 sketch pencils in six different grades<br>\r\n• Ultra Dark and super smooth<br>\r\n• Ideal for drawing, sketching, hatching, shading, etc<br>\r\n• 6 sketch pencils of range HB, 2B, 4B, 6B, 8B, and 10B', 4, '2021-10-26 18:00:53', '2021-10-26 18:00:53'),
(29, 'Camel Charcoal Pencil Assorted (Soft, Medium,Hard)', 55, 'uploads/charcoalpencil.jpg', '• Hexagonal shaped color pencils<br>\r\n• Set of 3<br>\r\n• Black Colour', 4, '2021-10-26 18:05:27', '2021-10-26 18:05:27'),
(30, ' Paper Stumps (Set Of 6)', 99, 'uploads/paper-stump.jpg', '• A paper stump is a stick of tightly rolled up soft paper with 2 pointed ends.The blending stump is a useful drawing accessory; Stumps are excellent for blending and smoothing pastels, charcoals, graphite or any other dry media<br>\r\n• Use it to smoothly blend shaded areas, soften lines and mix colors without using your fingers<br>\r\n• Easy to sharpen with a sanding block or a pencil knife<br>\r\n• A blending stump is a useful drawing accessory<br>\r\n• Stumps are excellent for blending and smoothing pastels, charcoals, graphite or any other dry media', 4, '2021-10-26 18:09:16', '2021-10-26 18:09:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
