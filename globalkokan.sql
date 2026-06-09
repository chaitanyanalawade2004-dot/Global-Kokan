-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2025 at 06:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `globalkokan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `phone`, `email`, `password`) VALUES
(3, 'Mahesh', 'patil', '9955856555', 'root@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customer_booking`
--

CREATE TABLE `customer_booking` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `no_of_person` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `tour_id` int(11) NOT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_booking`
--

INSERT INTO `customer_booking` (`booking_id`, `name`, `email`, `mobileno`, `no_of_person`, `date`, `tour_id`, `message`) VALUES
(1, 'Ganesh Sutar', 'ganesh@gmail.com', '7845120102', 4, '2025-05-24', 15, 'test'),
(2, 'prathmesh', 'prathmesh11@gamil.com', '1234567890', 2, '2024-11-14', 21, 'hii'),
(3, 'Mayur Sakat', 'mayur12@gamil.com', '9370401403', 8, '2024-02-15', 29, 'Couples'),
(4, 'Chaitanya Nalawade', 'chaitanya2004@gmail.com', '8600197441', 4, '2025-06-02', 31, 'done'),
(5, 'Dhiraj Jadhav ', 'dhiraj12@gmail.com', '123556633', 3, '2025-01-01', 10, 'holiday plan'),
(6, 'Kunal Mali', 'kunal@gmail.com', '78451425010', 3, '2025-05-30', 10, 'test'),
(7, 'Kunal Mali', 'kunal@gmail.com', '78451425010', 3, '2025-05-30', 21, 'jjio');

-- --------------------------------------------------------

--
-- Table structure for table `customized_packages`
--

CREATE TABLE `customized_packages` (
  `customized_id` int(11) NOT NULL,
  `per_head` varchar(2000) NOT NULL,
  `delux` varchar(2000) NOT NULL,
  `ac_delux` varchar(2000) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customized_packages`
--

INSERT INTO `customized_packages` (`customized_id`, `per_head`, `delux`, `ac_delux`, `tour_id`) VALUES
(1, '02 Guest', '27,800/- Per Person', '29,200/- Per Person', 1),
(2, '04 Guest', '18,800/- Per Person', '20,400/- Per Person', 1),
(3, '06 Guest', '15,800/- Per Person', '17,400/- Per Person', 1),
(4, 'Extra Adult', '9,900/- Per Person', '10,900/- Per Person', 1),
(5, 'Child 4 – 11 yrs.', '8,900/- Per Person', '9,900/- Per Person', 1),
(6, '2 Guest', 'Rs. 33,200/- Per Person', 'Rs. 34,900/-Per Person', 7),
(7, '04 Guest', 'Rs. 22,600/- Per Person', 'Rs. 24,900/-Per Person', 7),
(8, '06 Guest', 'Rs. 18,900/-Per Person', 'Rs. 20,900/- Per Person', 7),
(9, 'Extra Adult', 'Rs. 10,900/- Per Person', 'Rs. 11,900/- Per Person', 7),
(10, 'Child 4 – 11 yrs', 'Rs. 9,900/-Per Person', 'Rs. 10,900/- Per Person', 7),
(11, '02 Guest', '27,800/- Per Person', '29,200/- Per Person', 10),
(12, '04 Guest', '18,800/- Per Person', '20,400/- Per Person', 10),
(13, '06 Guest', '15,800/- Per Person', '17,400/- Per Person', 10),
(14, 'Extra Adult', '9,900/- Per Person', '10,900/- Per Person', 10),
(15, 'Child 4 – 11 yrs.', '8,900/- Per Person', '9,900/- Per Person', 10),
(16, '02 Guest', '25,600/- Per Person', '26,800/- Per Person', 11),
(17, '04 Guest', '16,900/- Per Person', '17,800/- Per Person', 11),
(18, '06 Guest', '13,900/- Per Person', '14,800/- Per Person', 11),
(19, 'Extra Adult', '7,900/- Per Person', '8,800/- Per Person', 11),
(20, 'Child 4 – 11 yrs.', '6,900/- Per Person', '7,800/- Per Person', 11),
(21, '02 Guest', '15,900/- Per Person', '16,700/- Per Person', 12),
(22, '04 Guest', '10,900/- Per Person', '11,800/- Per Person', 12),
(23, '06 Guest', '9,400/- Per Person', '9,900/- Per Person', 12),
(24, 'Extra Adult', '5,400/- Per Person', '5,900/- Per Person', 12),
(25, 'Child 4 – 11 yrs.', '4,400/- Per Person', '4,900/- Per Person', 12),
(26, '02 Guest', 'Rs. 9,400/- per person', 'Rs. 13,000/- Per Person', 13),
(27, '04 Guest', 'Rs. 6,800/- Per Person', 'Rs. 8,900/- Per Person', 13),
(28, '06 Guest', 'Rs. 5,750/- Per Person', 'Rs. 7,850/- Per Person', 13),
(29, 'Extra Adult', 'Rs. 4,200/- Per Person', 'Rs. 6,300/- Per Person', 13),
(30, 'Child 4 – 11 yrs.', 'Rs. 3,150/- Per Person', 'Rs. 4,700/- Per Person', 13),
(31, '02 Guest', 'Rs. 21,400/- Per Person', 'Rs. 22,600/- Per Person', 14),
(32, '04 Guest', 'Rs. 14,800/- Per Person', 'Rs. 15,900/- Per Person', 14),
(33, '06 Guest', 'Rs. 12,400/- Per Person', 'Rs. 13,600/- Per Person', 14),
(34, 'Extra Adult', 'Rs. 8,400/- Per Person', 'Rs. 9,900/- Per Person', 14),
(35, 'Child 4 – 11 yrs.', 'Rs. 7,400/- Per Person', 'Rs. 8,900 /- Per Person', 14),
(36, '02 Guest', 'Rs. 19,200/- per person', 'Rs. 20,400/- per person', 15),
(37, '04 Guest', 'Rs.12,600/- per person', 'Rs.13,400/- per person', 15),
(38, '06 Guest', 'Rs.10,400/- per person', 'Rs. 11,400/- per person', 15),
(39, 'Extra Adult', 'Rs.5,800/- per person', 'Rs. 6,400/- per person', 15),
(40, 'Child 4 – 11 yrs', 'Rs.4,800/- per person', 'Rs.5,400/- per person', 15),
(41, '02 Guest', 'Rs. 33,200/- Per Person', 'Rs. 34,900/-Per Person', 16),
(42, '04 Guest', 'Rs. 22,600/- Per Person', 'Rs. 24,900/-Per Person', 16),
(43, '06 Guest', 'Rs. 18,900/-Per Person', 'Rs. 20,900/- Per Person', 16),
(44, 'Extra Adult', 'Rs. 10,900/- Per Person', 'Rs. 11,900/- Per Person', 16),
(45, 'Child 4 – 11 yrs.', 'Rs. 9,900/-Per Person', 'Rs. 10,900/- Per Person', 16),
(46, '02 Guest', '33,500/-Per Person', '34,800/- Per Person', 23),
(47, '04 Guest', '22,500/- Per Person', '23,800/- Per Person', 23),
(48, '06 Guest', '18,800 /- Per Person', '19,800/- Per Person', 23),
(49, 'Extra Adult', '10,500/- Per Person', '12,800/- Per Person', 23),
(50, 'Child 4 – 11 yrs.', '9,500/- Per Person', '11,800/- Per Person', 23);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `title`, `filename`) VALUES
(1, 'Explore Ratnasagar Ratnagiri for 2 Nights / 3 Days', 'assets/upload/gallery/Kokan-Paryatan-54.jpg'),
(2, 'Kokan Paryatan', 'assets/upload/gallery/Kokan-Paryatan-338.jpg'),
(3, 'Kokan Paryatan', 'assets/upload/gallery/Kokan-Paryatan-541.jpg'),
(4, 'Kokan Paryatan', 'assets/upload/gallery/Kokan-Paryatan-543.jpg'),
(5, 'Kokan Paryatan', 'assets/upload/gallery/Kokan-Paryatan-37.jpg'),
(6, 'Kokan Paryatan', 'assets/upload/gallery/Kokan-Paryatan-153-1-1024x768.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `group_fixed_packages`
--

CREATE TABLE `group_fixed_packages` (
  `group_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `title` varchar(5000) NOT NULL,
  `per_person` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_fixed_packages`
--

INSERT INTO `group_fixed_packages` (`group_id`, `tour_id`, `title`, `per_person`) VALUES
(1, 1, 'Twin Sharing', 'Rs. 14,800/-'),
(2, 1, 'Extra Adult', 'Rs.14,300/-'),
(3, 1, 'Child (5-11 yrs)', 'Rs. 14,100/-'),
(4, 1, 'Child (3-4 yrs with Seat)', 'Rs. 8,200/-'),
(5, 1, 'Single Person with Separate Room', 'Rs. 18,800/-'),
(6, 7, 'Twin Sharing ', 'Rs 16800'),
(7, 7, 'Extra Adult', 'Rs. 16,200/-'),
(8, 7, 'Child ( 5-11) ', 'Rs. 16000/- '),
(9, 7, 'Child (3-4 yrs with Seat)', 'Rs. 8,200/-'),
(10, 7, 'Single person with separate room', 'Rs. 21,900/-'),
(11, 10, 'Twin Sharing ', 'Rs. 14,800/-'),
(12, 10, 'Extra Adult', 'Rs.14,300/-'),
(13, 10, 'Child (5-11 yrs)', 'Rs. 14,100/-'),
(14, 10, 'Child (3-4 yrs with Seat)', 'Rs. 8,200/-'),
(15, 10, 'Single Person with Separate Room', 'Rs. 18,800/-'),
(16, 11, 'Twin Sharing', 'Rs. 13,200/-'),
(17, 11, 'Extra Adult', 'Rs. 12,700/-'),
(18, 11, 'Child (5-11 yrs)', 'Rs. 12,500/-'),
(19, 11, 'Child (3-4 yrs)With Seat', 'Rs. 8,100/-'),
(20, 11, 'Single Person with Separate room', 'Rs. 17,400/-'),
(21, 12, 'Twin Sharing', 'Rs.9,000/-'),
(22, 12, 'Extra Adult', 'Rs. 8500/-'),
(23, 12, 'Child (5-11 yrs)', 'Rs.8300/-'),
(24, 12, 'Child (3-4 yrs) with  seat', 'Rs.6800/-'),
(25, 12, 'Single Person with separate Room', 'Rs.11400/-'),
(26, 13, 'Twin Sharing', 'Rs. 4,200 '),
(27, 13, 'Extra Adult', 'Rs.3,700/-'),
(28, 13, 'Child (5-11 yrs)', 'Rs.3,500/-'),
(29, 13, 'Child (3-4 yrs) with Seat', 'Rs.2,600/-'),
(30, 13, 'Single Person with Separate room ', 'Rs.5,670/- '),
(31, 14, 'Twin Sharing', 'Rs.11,400/-'),
(32, 14, 'Extra Adult', 'Rs.10,900/-'),
(33, 14, 'Child (5-11 yrs)', 'Rs.10,700/-'),
(34, 14, 'Child (3-4 yrs) with seat', 'Rs.7,300/-'),
(35, 14, 'Single person with Separate Room', 'Rs. 15,200/-'),
(36, 15, 'Twin Sharing', 'Rs.7,900/-'),
(37, 15, 'Extra Adult', 'Rs.7,350/-'),
(38, 15, 'Child (5-11 yrs)', 'Rs.7,150/-'),
(39, 15, 'Child (3-4 yrs)', 'Rs.3,550/-'),
(40, 15, 'Single Person with Separate Room', 'Rs. 10,550/-'),
(41, 16, 'Twin Sharing', 'Rs. 16,800/-'),
(42, 16, 'Extra Adult', 'Rs. 16,200/-'),
(43, 16, 'Child (5-11 yrs)', 'Rs. 16,000'),
(44, 16, 'Child (3-4 yrs with Seat)', 'Rs. 8,200/-'),
(45, 16, 'Single person with separate room', 'Rs. 21,900/-'),
(46, 23, 'Twin Sharing', 'Rs.14,900/-'),
(47, 23, 'Extra Adult', 'Rs.14,400/-'),
(48, 23, 'Child (5-11 yrs)', 'Rs.14,200/-'),
(49, 23, 'Child (3-4 yrs) with Seat', 'Rs.8,350/-'),
(50, 23, 'Single Person with Separate Room', 'Rs.19,500/-'),
(51, 30, 'Historical Aurangabad ', 'Rs.7,900/-');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `name`, `position`, `message`, `filename`) VALUES
(1, 'Madhuri Pradhan', 'Solo Traveller', '  Enjoyed the tour. Food was tasty home made food. Fish thali at both place were excellent.It was my 1st solo trip as due to urgent work Mr. Pradhan couldn’t come. Thanks to Pravin sir who said one girl wants to come n both of u can get company of each ot', 'assets/upload/review/user.png'),
(2, 'Juma Mukherjee', 'Family Traveller', '  It was overall a good experience. The places and beaches were scenic and enjoyed the view totally. I must say food quality was very good maintaining its taste, delicious. Thumps up to Kokan Paryatan.', 'assets/upload/review/user.png'),
(3, 'Ravindra Shinde', 'Couple Traveller', '  आम्ही कोकण पर्यटन सोबत 23 मे 2018 पासून 28 मे पर्यंत होतो टूर अप्रतिम होती रहाण्याची व जेवण्याची सोय ऊत्तम होती सर्व ष्रेंक्शनीय स्थळे दाखविले . मज्जा आली.', 'assets/upload/review/user.png');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `tour_details` text NOT NULL,
  `urltitle` text NOT NULL,
  `price_includes` text NOT NULL,
  `price_excludes` text NOT NULL,
  `note` text NOT NULL,
  `short_description` text NOT NULL,
  `srno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`tour_id`, `tour_name`, `filename`, `cat_id`, `tour_details`, `urltitle`, `price_includes`, `price_excludes`, `note`, `short_description`, `srno`) VALUES
(10, 'Best of Kokan ', 'assets/upload/tour/Best of Kokan.jpg', 1, '<h3>About Konkan</h3>\r\n\r\n<p>Kokan is a coastal strip of land bounded by Sahyadri hills on the east and Arabian Sea on the west occupies the entire west coast of Maharashtra. It is to the heart of this serene landscape. Kokan is well known for its greenery, coconut trees, cashew, mango, jack fruit, beautiful virgin Konkan beach, waterfalls, <a href=\"https://www.kokanparyatan.com/tour/tarkarli-new-year-celebration/\">water sports in kokan</a>, mountains and lush green valleys. Fascinating Konkan beach, Hotels in Konkan, temples, creeks, sea forts is what Kokan is also Famous for.</p>\r\n\r\n<h3>Konkan Beach</h3>\r\n\r\n<p>If you are a Person who just loves Beaches and Sea then konkan is the best place for you to visit. Konkan is most famous for its Beaches. Konkan Beaches are extremely beautiful with crystal clear water and beautiful Sun temperature. In our Best of Kokan Tour experience the Konkan Beaches like never before. There are many beaches in konkan like Diveagar Beach, Nagaon Beach, Shivardhan Beach, Deogad Beach and many more. One can just never get bored in Konkan because of the beautiful Konkan Beaches. You can also do Scuba in Malvan to get adrenaline rush.</p>\r\n', 'Best-of-Kokan-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://<a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '(5 Nights / 6 Days - 4 Nights Stay) ', 1),
(11, 'Sindhuratna Sindhudurga ', 'assets/upload/tour/Sindhudurga Package.jpg', 1, '', 'Sindhuratna-Sindhudurga-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://<a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '(5 Nights / 6 Days – 3 Nights Stay.)', 4),
(12, 'Ratnasagar Ratnagiri Tour ', 'assets/upload/tour/Ratnagiri Tour.jpg', 1, '<p>Our Ratnagiri Tour Package has something special to offer to everyone. In our Ratnagiri Tour Package see Famous Folk dance culture of Ratnagiri and also enjoy various Kokani mouthwatering food especially Ukadiche Modak and Thalipheet . Most memorable place in our Ratnagiri Tour Package is Ganpatipule. Famous shrine Lord Ganesh Temple besides Virgin Beach of Ganpatipule. Enjoy different types of water sports on the beach. Pawas is a holy places one of the Naath sampradai &ldquo;Shree swami Swami swaroopanand Maharaj&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>About Ratnagiri</h3>\r\n\r\n<p>Ratnagiri district is a paradise in the world. It is not yet touched by new culture. Adventurous travellers, holiday makers and nature lovers are drawn to this beautiful paradise. Ratnagiri is the most ideal amusing holiday destination with family, with numerous opportunities for Jungle Safaris, Camping in Forest and Long Nature Walks. Ratnagiri is a famous Beach destination.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ratnagiri has a hot climate so it is ideal to visit Ratnagiri during December- May when the weather is not much hot. Ratnagiri is Famous for its Alphonso Mangoes. In Our Ratnagiri Tour Package you can visit a number of Tourist attractions in Ratnagiri such as Ratnagiri Fort, Thiba palace, Mandavi Beach, Bhatye Beach and more.</p>\r\n', 'Ratnasagar-Ratnagiri-Tour-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://<a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour</li>\r\n</ul>\r\n', '( 2 nights / 3 Days – 2 Night Stay.) ', 2),
(13, 'Shivsahi Raigad Tour ', 'assets/upload/tour/download.jpg', 3, '<p>Raigad was formerly called the Kolaba district the district was renamed after Raigad, the fort that was the former capital of the Maratha leader Shivaji Maharaj, and is located in the interior regions. Enjoy rope way to visit Raigad fort.&nbsp; Many of them go by walking through a small village near by through steps. Visit Idol of Golden Ganesh at Diveaagar and evening enjoy the beach at Shreevardhan. Harihareshwar Temple is one of the Oldest temple amongst Maharashtra and well known for Dakshin Kashi . A Holy shrine of Lord Shiva Temple right on the Beach. Very Calm &amp; Blissful atmosphere .&nbsp;</p>\r\n', 'Shivsahi-Raigad-Tour-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '(1 Night / 2 Days – 1 Night Stay)', 0),
(14, 'Raigad with Ratnagiri Tour ', 'assets/upload/tour/Raigad with Ratnagiri tour.jpg', 1, '<p>Shrivardhan is a taluka, city and municipal council in the Raigad district of</p>\r\n\r\n<p>the Indian state of Maharashtra. It has developed into a seaside resort, along with the nearby town of Harihareshwar, which also has a Shiva temple. Located on a peninsula, the town itself boasts many beaches, in addition to proximity to numerous other beach destinations such as Diveagar Beach and Kondivali Beach. People from</p>\r\n\r\n<p>across Maharashtra come to Shrivardhan and the nearby beaches all year round.</p>\r\n\r\n<p>The taluka of Shriwardhan is an ancient place of historical importance and is mentioned as being visited by Arjuna Pandav in his pilgrimage. It was an important port in the past, well known to traders of Ahmednagar and Bijapur in the 16th and 17th centuries. It appears in the accounts of leading European travellers, for example, Ziffardan. In 1538, Dom Joao de Castro described it as having little water under the pier at low tide, but that the interior of the city was large and roomy. It is notable as the birthplace of Balaji Vishwanath, the first Peshwa (1713&ndash;1720) who was the Deshmukh of the town, where there is now a monument to him. In 1713, Shriwardhan was one of the sixteen fortified places in the Konkan ceded by Balaji Vishwanath Peshwa to Kanhoji Angre of Kolaba.</p>\r\n\r\n<p>Balaji was the first Peshwa of Maratha Empire appointed by Chhatrapati Shahu, grandson of Chhatrapati Shivaji.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Diveagar (Dive Agar) is a village located in Shrivardhan Taluka, Raigad district in the Indian state of Maharashtra, approximately 170 kilometers south of Mumbai. The region includes a fishing settlement, a beach, a temple, local businesses engaged in</p>\r\n\r\n<p>coconut and beetle nut tree farming, and some tourism businesses such as restaurants, cottage rentals and hotels, and six villages (from north to south): Velas,</p>\r\n\r\n<p>Musalm?ndi, Agar Panchaitan, Diveagar, Borli Panchatan, and Karle. A Suvarna Ganesh Mandir with lord Ganesh idol of gold is famous in Diveagar for tourists, the Ganesh idol was stolen on 24.3.2012 by some miscreants. The beach, facing</p>\r\n\r\n<p>the Arabian Sea, is approximately four kilometres long and undeveloped. At the north end of the beach where a small stream enters the ocean there is the fishing settlement, Velas Agar, and some paddy farming,</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Raigad-with-Ratnagiri-Tour-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n\r\n<p>&middot;</p>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://<a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '( 3 Night / 4 Days – 3 Night Stay )  ', 0),
(15, 'Best of Sindhudurga Tour ', 'assets/upload/tour/Best of Sindhudurga.jpg', 1, '<p>Sindhudurg is full of emerald green &amp; clean beaches. The entire coastal beach of Sindhudurg is picturesque. In our Sindhudurg Tour Package, You will never forget the first impression of this beautiful land. These beaches are truly peaceful &amp; quiet. You can take a dip in its clean waters stroll around, feeling the soft sand beneath your feet &amp; the cool breeze on your face &amp; stare at beautiful sunset in the evenings. Evening is a magical time on these beaches. As the sun nears the horizon, the beach will bath in a golden glow. In our Sindhudurg Tour Package Please don&rsquo;t lose a moment &amp; quickly take some pictures of the sea. The scenic drive along the coastline is blessed with sheer beauty. The coastal strip of land is surrounded by the Sahyadri mountains on the east &amp; the Arabian sea on the west.</p>\r\n\r\n<p>The best way to enjoy our Sindhudurg Tour Package is to take a cruise on a houseboat in Sindhudurg backwaters. Another way to enjoy is a boat ride into the high sea. Both these ways means enjoy yourselves immensely.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Best-of-Sindhudurga-Tour-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://<a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com.</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour</li>\r\n</ul>\r\n', '( 4 Nights / 5 Days – 2 Nights stay)', 0),
(16, 'Amazing Kokan Tour ', 'assets/upload/tour/Amazing Kokan.jpg', 1, '<p>Dapoli is a well known hill station in Kokan region of Maharashtra. It is situated in northern part of Ratnagiri district. Dapoli Beach are perfect and are very famous tourist places in konkan. Dapoli has something to offer everyone. Dapoli is getting more and more popular because of the increased visits from tourists in Mumbai and Pune at weekends. In our Dapoli Beach Tour you will get to visit the most famous beaches in Dapoli. Visit Karde which has pristine beach and some resorts. A little far from dapoli visit Anjarle Beach. Visit Unharve, a hot spring where it is said that its water have medicinal values and can cure some skin diseases. Our Dapoli Beach Tour will give you the experience for a lifetime.</p>\r\n\r\n<p>Amazing Kokan Tour</p>\r\n\r\n<p>Amazing Kokan Tour is a combined tour of Ratnagiri and Sindhudurga</p>\r\n\r\n<p>District. Ratnagiri District is a wonderful &amp; untouched place in the world . Birth place of Lokmanya Tilak, King of Thibwa has settled here. Enjoy Scenic beaches of Karde with our Dapoli Beach Tour, Ganpatipule Hotels &amp; Virgin beach of Tarkarli with our Tarkarli Tour Package. Visit Kolhapur for darshan of Mahalaxmi Devi . Enjoy Kokani Mewa in our Amra Paryatan.</p>\r\n', 'Amazing-Kokan-Tour-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://<a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com.</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '( 6 Nights / 7 Days – 5 Night Stay)', 0),
(17, 'Anandvan - Hemalkasa Tour ', 'assets/upload/tour/tadoba-tig.jpg', 2, '<p>Anandwan literally, Forest of happiness, located around 5 kilometers from Warora in Chandrapur district in state of Maharashtra India, is an ashram &amp;</p>\r\n\r\n<p>community rehabilitation centre which was mainly started for leprosy patients and he disabled from downtrodden sections of society.It was founded in 1952 by noted social activist Baba Amte. The project is run by the organisation Maharogi Seva Samiti. Two of its other projects are Lok biradri prakalp &amp; Somnath a village for cured leprosy</p>\r\n\r\n<p>patients. Baba Amte also shaped Anandwan as an environmentally aware community to practice energy utilization, waste recycling and minimizing use of natural resources that might otherwise lead to their depletion. Anandwan today has two hospitals, a college, an orphanage, a school for the blind, a school for the deaf and a technical wing. Dr. Vikas Amte Baba Amte&rsquo;s elder son, is the chief functionary at Anandwan. He undertook various experiments in Anandwan regarding rehabilitation which have been mentioned in a book titled &lsquo;Anandwan Prayogwan&rsquo;</p>\r\n', 'Anandvan-Hemalkasa-Tour-', '<ul>\r\n	<li>4 Nights stay. (3 night stay are dormitory stay with basis amenities and 1 night stay at Nagpur on Twin sharing basis)</li>\r\n	<li>All Toll, Taxes, Entry Fees, Guide Fees, Parking Charges.</li>\r\n	<li>Local Meals as per set menu. BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner )</li>\r\n	<li>AC Tempo Traveller From Wardha Station to Nagpur Railway Station.</li>\r\n	<li>Tadoba jungle Safari.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Return Train Tickets.</li>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>Government Tax 5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of Aadhar card .</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any circumstances.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website <a href=\"http://www.kokanparyatan.com/\">www.kokanparyatan.com</a></li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '( 6 Nights / 7 Days – 4 Nights Stay)', 0),
(18, 'Memorable Andaman ', 'assets/upload/tour/cellular-jail-Andaman.jpg', 2, '<p>Andaman &amp; Nicobar island one of the seven union territories of India are a group of Island at the juncture of Bay of Bengal and Andaman Sea. The territory capital is the city of Port Blair.&nbsp;</p>\r\n\r\n<p>Rajendra Chola Used the Andaman and Nicobar Island as a Strategic naval base to launch an expedition againts the Sriwijaya Empire.&nbsp;</p>\r\n\r\n<p>The Andaman &amp; Nicobar island have a tropical rain forest canopy made of mixed flora with elements from Indian, Myanmar, Malaysian &amp; endemic floral strains.&nbsp;</p>\r\n\r\n<p>In Port Blair main places to visit are the Cellular Jail, Mahatma Gandhi Marine Park, Corbyn&rsquo;s Cove, Chidiya tapu , Naval Museum. Visit Havelock Beach, Radhanagar Beach,Neil Island are other major attractions.&nbsp;</p>\r\n', 'Memorable-Andaman-', '<ul>\r\n	<li><strong>Accommodation 05 Night Deluxe Stay on twin Sharing basis.</strong></li>\r\n	<li><strong>Ac Vehicle 2&times;1 or 2&times;2 depends upon Group Size from Port Blair Airport to Port Blair Airport.</strong></li>\r\n	<li><strong>Local Meals as per Set Menu BLD (B= Breakfast, D = Dinner)</strong></li>\r\n	<li><strong>All toll, Taxes,Entry Fees,Guide Fees, Parking Charges.</strong></li>\r\n	<li><strong>Port Blair - Havelock Island - Port Blair ferry / Cruise Tickets</strong></li>\r\n</ul>\r\n', '<ul>\r\n	<li><strong>Air Fare</strong></li>\r\n	<li><strong>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</strong></li>\r\n	<li><strong>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</strong></li>\r\n	<li><strong>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</strong></li>\r\n	<li><strong>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</strong></li>\r\n	<li><strong>Meals service during Air and Train Travels.</strong></li>\r\n	<li><strong>Government Tax 5% G.S.T. as applicable above and over Tour cost Mentioned</strong></li>\r\n</ul>\r\n', '<ul>\r\n	<li><strong>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</strong></li>\r\n	<li><strong>On tour Guests are requested to carry photo copy (xerox ) of Aadhar card . .</strong></li>\r\n	<li><strong>Tour prices are subject to change depending upon the group size.</strong></li>\r\n	<li><strong>Entrance Fees</strong></li>\r\n	<li><strong>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</strong></li>\r\n	<li><strong>Company has right to change the tour Itinerary under any circumstances.</strong></li>\r\n	<li><strong>Company has right to change the Hotel due to non-Availability.</strong></li>\r\n	<li><strong>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</strong></li>\r\n	<li><strong>Company will not be responsible for any Breakdown issues of Vehicle.</strong></li>\r\n	<li><strong>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</strong></li>\r\n	<li><strong>All payment should be made 10 days prior departure of the tour.</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '( 5 nights / 6 Days – 5 Nights Stay) ', 0),
(19, 'Uttranchal Tour ', 'assets/upload/tour/Nainital Tour.jpg', 2, '<p>Uttarakhand officially the state of Uttarakhand formerly known as &ldquo;Uttaranchal&ldquo;is a state in northern part of India. It is often refereed as DevBhumi&nbsp;due to a large number&nbsp;of&nbsp; Hindu Temples and pilgrimage centers found throughout the state. The interim capital of Uttaranchal is Dehradun.</p>\r\n\r\n<p>Uttaranchal is known for its natural environment of the Himalayas. The state is divided into two division, Garhwal &amp; Kumaon.&nbsp;Uttarakhand has a diversity of flora and fauna. Uttarakhand is home to rare species of plants and animals.</p>\r\n\r\n<p>National Parks&nbsp; in Uttarakhand include the Jim Corbett National Park (the oldest national park of India) at Ramnagar&nbsp;&nbsp;in Nainital District&nbsp;&nbsp;and Valley of Flowers and Nanda devi National Park in Chamoli District&nbsp;&nbsp;which together are a UNESCO World Heritage Site. A number of plant species in the valley are internationally threatened, including several that have not been recorded from elsewhere in Uttarakhand.&nbsp;Rajaji National Park&nbsp;&nbsp;are some other protected areas in the state.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Uttranchal-Tour-', '<ul>\r\n	<li>06&nbsp;Night Non AC Stay on Twin Sharing Basis in Convenient &amp; Comfortable Hotel with complimentary breakfast and Dinner.</li>\r\n	<li>Comfort vehicle for Transfers &amp; sightseeing. Vehicle will available to guest as per itinerary only.</li>\r\n	<li>Pick up From Delhi Railway Station and Cover Uttarakhand Destinations and back to Delhi Railway Station.</li>\r\n	<li>All Toll Parking , Driver Charges.</li>\r\n	<li>Pickup and Drop services with local sightseeing in Nainital by Hatchback ( Tempo is not allowed in Nainital city.)</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Train / Flight tickets are not included in the package.</li>\r\n	<li>Mineral water, Cold drink , Ice Cream etc are not included.</li>\r\n	<li>Lunch will not include in deluxe package.</li>\r\n	<li>Jungle Safari in Corbett, Rope way, Boating are not included in the package.</li>\r\n	<li>Personal Exp Such as Laundry, Telebills, Hotel Tips, Alcoholic Beverages &amp; Joy rides.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license , Aadhar Card.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '6 Nights / 7 Days - 6 Night Stay . ', 0),
(20, 'Kerala with Kanyakumari ', 'assets/upload/tour/Kerala Kanyakumari.jpg', 2, '<p>Kerala is a Southern west Malabar cost of India. The chera Dynasty was the prominent kingdom based in Kerala. The name Kerala has an uncertain etymology. One popular theory derives&nbsp; Kerala from Kera (&ldquo;coconut tree&rdquo; in Malayalam ) and alam (&ldquo;Land&rdquo;) thus &rdquo; Land of Coconuts&rdquo; which is nick name for state called by locals.&nbsp;</p>\r\n\r\n<p>The culture of Kerala is a composite and cosmopolitan in nature and it is integral part of Indian culture. Kerala&rsquo;s Beaches, Backwaters,Lakes, Mountain,waterfall, Palaces, wild life Sanctuaries are major attraction.&nbsp;</p>\r\n\r\n<p>Kanyakumari is a city in Kanyakumari district in the Tamil Nadu India. The name comes from&nbsp;&ldquo;Devi Kanyakumari.&rdquo; It is a Southernmost tip of peninsular India, and is surrounded on three sides by Laccadive sea. Kanyakumari is especially popular in India for its spectacular &amp; unique Sunrise &amp; Sunset , Swami Vivekanand Rock Memorial, Thiruvalluvar Statue, Gandhi Mandapam are other major tourist attractions.&nbsp;</p>\r\n', 'Kerala-with-Kanyakumari-', '<ul>\r\n	<li>Accommodation : 07 Night AC Stay on Twin Sharing Basis in Convenient &amp; Comfortable Hotel.</li>\r\n	<li>Transport: AC vehicle From Cochin to Cochin . (Depends upon Group Size)</li>\r\n	<li>Local Meals as per set menu. BD = ( B &ndash; Breakfast, D &ndash; Dinner )</li>\r\n	<li>All Toll, Taxes, D.A , Parking Charges etc</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '( 7 Nights / 8 Days - 7 Nights Stay) ', 0),
(21, 'Jannat - E- Kashmir ', 'assets/upload/tour/kashmir tour.jpg', 2, '<p>Kashmir&nbsp;&nbsp;is the northernmost geographical region of the&nbsp;Indian subcontinent. Until the mid-19th century, the term &ldquo;Kashmir&rdquo; denoted only the&nbsp;Kashmir Valley&nbsp;between the&nbsp;Great Himalayas&nbsp;and the&nbsp;Pir Panjal Range.</p>\r\n\r\n<p>Kashmir has a different climate for every region owing to the great variation in altitude. The temperatures ranges from the tropical heat of the Punjab summer to the intensity of the cold which keeps the perpetual snow on the mountains. Jammu Division, excluding the upper parts of the Chenab Valley, features a humid subtropical climate. The Vale of Kashmir has a moderate climate. The&nbsp;Astore Valley&nbsp;and some parts of&nbsp;Gilgit-Baltistan features a semi-Tibetan climate. While as the other parts of Gilgit-Baltistan and Ladakh have Tibetan climate which is considered as almost rainless climate.</p>\r\n\r\n<p>The southwestern Kashmir which includes much of the Jammu province and Muzaffarabad falls within the reach of Indian monsoon. The Pir Panjal Range acts as an effective barrier and blocks these monsoon tracts from reaching the main Kashmir Valley and the Himalayan slopes. These areas of the region receive much of their precipitation from the wind currents of the Arabian Sea. The Himalayan slope and the Pir Panjal witness greatest snow melting from March until June. These variations in snow melt and rainfall have led to destructive inundations of the main valley. It is bordered to the north and east by China (Xinjiang and Tibet), to the northwest by&nbsp;Afghanistan&nbsp;(Wakhan Corridor), to the west by&nbsp;Pakistan&nbsp;(Khyber Pakhtunkhwa and Punjab) and to the south by&nbsp;India&nbsp;(Himachal Pradesh and Punjab).&nbsp;The topography of Kashmir is mostly mountainous. It is traversed mainly by the&nbsp;Western Himalayas. The Himalayas terminate in the western boundary of Kashmir at&nbsp;Nanga Parbat. Kashmir is traversed by three rivers namely&nbsp;Indus,&nbsp;Jhelum&nbsp;and&nbsp;Chenab. It includes almost all of the&nbsp;Jammu region. High altitude lakes are frequent at high elevations. Lower down in the Vale of Kashmir there are many freshwater lakes and large areas of swamplands which include&nbsp;Wular Lake,&nbsp;Dal Lake&nbsp;and&nbsp;Hokersar&nbsp;near&nbsp;Srinagar.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Jannat-E-Kashmir-', '<ul>\r\n	<li>Accommodation : 05 Night Stay in Hotel &amp; 1 Night Stay in House boat on Twin Sharing Basis in Convenient &amp; Comfortable Hotel.</li>\r\n	<li>Transportation By Non AC Vechile ( Depends upon Group Size) ( Srinagar Airport - Srinagar Airport)</li>\r\n	<li>Local Meals as per set menu. BD = ( B &ndash; Breakfast, &amp; D &ndash; Dinner )</li>\r\n	<li>All Toll, Taxes, D.A , Parking Charges etc.</li>\r\n	<li>Shikhara ride during Houseboat Stay</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization, or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n	<li>Pahelgam Sightseeing Such as Aru Valley, Betab, Chandanwari by Union Vechile / Horse Riding , Sonmarg &amp; Gulmarg Horse Riding at Extra Cost.</li>\r\n	<li>1st / 2nd Phase Gondola Ride Ticket charges.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license / Aadhar Card.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '(6 Nights / 7 Days – 6 Nights Stay)', 0),
(22, 'Amritsar - Dalhouise- Dharamshala - Manali Tour ', 'assets/upload/tour/Amritsar tour.jpg', 2, '<p>Amritsar &nbsp;historically also known as&nbsp;R?md?spur&nbsp;and colloquially as&nbsp;Ambarsar, is the second&nbsp;largest city&nbsp;in the&nbsp;Indian&nbsp;state of&nbsp;Punjab, after&nbsp;Ludhiana. The&nbsp;Jallianwala Bagh massacre, involving the killings of hundreds of Indian civilians on the orders of British Colonel&nbsp;Reginald Edward Harry Dyer, took place on 13 April 1919 in the heart of Amritsar.Amritsar is home to&nbsp;Sri Harmandir Sahib, popularly known as &ldquo;the Golden Temple,&rdquo; one of&nbsp;Sikh&nbsp;religion&rsquo;s most spiritually significant and most-visited&nbsp;gurudwaras. The city is also known for Amritsari fish, its wooden chessboards and&nbsp;chess pieces manufacturing industry.</p>\r\n\r\n<p>Dharamshala &nbsp;is the&nbsp;winter capital&nbsp;of&nbsp;Himachal Pradesh.Dharamshala is a municipal corporation city in the upper reaches of the&nbsp;Kangra Valley&nbsp;and is surrounded by dense coniferous forest consisting mainly of stately&nbsp;Deodar&nbsp;cedar trees. The suburbs include&nbsp;McLeod Ganj,&nbsp;Bhagsunag,&nbsp;Dharamkot,&nbsp;Naddi.In May 1960, the&nbsp;Central Tibetan Administration&nbsp;(CTA) was moved to Dharamshala, making it the centre of the Tibetan exile world in India. Following the&nbsp;1959 Tibetan uprising&nbsp;there was an influx of Tibetan refugees who followed the 14th Dalai Lama. His presence and the Tibetan population have made Dharamshala a destination for Indian and foreign tourists, including students studying Tibet.&nbsp;</p>\r\n\r\n<p>Dalhousie &nbsp;is a&nbsp;hill station, near&nbsp;town&nbsp;of&nbsp;Chamba&nbsp;in&nbsp;Chamba district&nbsp;in the&nbsp;Indian&nbsp;state of&nbsp;Himachal Pradesh.</p>\r\n\r\n<p>Manali&nbsp;is a town in the Indian state of&nbsp;Himachal Pradesh.&nbsp;It is situated in the northern end of the&nbsp;Kullu Valley, formed by the Beas River.</p>\r\n', 'Amritsar-Dalhouise-Dharamshala-Manali-Tour-', '<ul>\r\n	<li>08 Night Stay on Twin Sharing Basis in Convenient &amp; Comfortable Hotel.</li>\r\n	<li>Non Ac Vechile depends upon Group Size from Amritsar to Delhi.</li>\r\n	<li>Local Meals as per set menu. BD = ( B &ndash; Breakfast, D &ndash; Dinner )</li>\r\n	<li>Toll, Taxes, Parking Charges, Driver Charges</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Air Fare / Rail ticket , Snow World Ticket , Boating. Entry Tickets at all Monuments, Amusement Park , Rohtang / Snow world Vechile Charges.</li>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms .</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>Government Tax 5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of Aadhar card.</li>\r\n	<li>our prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any circumstances.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle</li>\r\n</ul>\r\n', '(8 Nights / 9 Nights – 8 Nights Stay) ', 0);
INSERT INTO `tour` (`tour_id`, `tour_name`, `filename`, `cat_id`, `tour_details`, `urltitle`, `price_includes`, `price_excludes`, `note`, `short_description`, `srno`) VALUES
(23, 'Sindhudurga with Goa Tour ', 'assets/upload/tour/sindhu durga with Goa.jpg', 1, '<p>Sindhudurga is full of emerald green &amp; clean beaches. The entire coastal beach of sindhudurga is picturesque . You will never forget the first impression of this beautiful land. These beaches truly peaceful &amp; quiet. You can take a dip in its clean waters stroll around, feeling the soft sand beneath your feet &amp; the cool breeze on your face &amp; stare at beautiful sunset in the evenings. Evening is a magical time on these beaches . If you are a bit adventurous you can also do <a href=\"https://www.kokanparyatan.com/tour/best-of-kokan-xmas-special-5-n-6-d-5-nights-stay/\">Scuba in Malvan</a>.</p>\r\n\r\n<p>Goa is a kaleidoscopic blend of Indian and Portuguese cultures, sweetened with sun, sea, sand, seafood and spirituality, there&rsquo;s nowhere in India quite like it. &hellip; Beaches, sun and Vindaloo &ndash; Lonely Planet&rsquo;s guide to winter in Goa.</p>\r\n\r\n<p>This tour is a combination of Sindhudurga and Goa Culture.</p>\r\n', 'Sindhudurga-with-Goa-Tour-', '<ul>\r\n	<li><strong>Twin sharing AC or Non AC Accommodation as per your package.</strong></li>\r\n	<li><strong>Transport by AC or Non AC vehicle as per package group size.</strong></li>\r\n	<li><strong>Typical Kokani Meals . (3 Non Veg Meals &ndash; Fry Fish and Sweet Dish is Limited)</strong></li>\r\n	<li><strong>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</strong></li>\r\n	<li><strong>All Toll, Taxes, Parking Charges, Driver D.A. Fort Fee,Guide Fee.</strong></li>\r\n</ul>\r\n', '<ul>\r\n	<li><strong>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</strong></li>\r\n	<li><strong>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</strong></li>\r\n	<li><strong>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</strong></li>\r\n	<li><strong>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</strong></li>\r\n	<li><strong>Meals service during Air and Train Travels.</strong></li>\r\n	<li><strong>5% G.S.T. as applicable above and over Tour cost Mentioned.</strong></li>\r\n</ul>\r\n', '<ul>\r\n	<li><strong>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</strong></li>\r\n	<li><strong>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</strong></li>\r\n	<li><strong>Tour prices are subject to change depending upon the group size.</strong></li>\r\n	<li><strong>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</strong></li>\r\n	<li><strong>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</strong></li>\r\n	<li><strong>Company has right to change the Hotel due to non-Availability.</strong></li>\r\n	<li><strong>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</strong></li>\r\n	<li><strong>Company will not be responsible for any Breakdown issues of Vehicle.</strong></li>\r\n	<li><strong>Please refer all the terms &amp; conditions laid down in the website : https://</strong><a href=\"http://www.kokanparyatan.com/\"><strong>www.kokanparyatan.com.</strong></a></li>\r\n	<li><strong>All payment should be made 10 days prior departure of the tour.</strong></li>\r\n</ul>\r\n', '(6 Nights / 7 Days – 4 Nights Stay)', 0),
(24, 'Rajasthan Mewad Tour ', 'assets/upload/tour/mewad tour.jpg', 2, '<p>Mewar&nbsp;or&nbsp;Mewad&nbsp;is a region in the south-central part of&nbsp;Rajasthan&nbsp;state of India. It includes the present-day districts of&nbsp;Bhilwara,&nbsp;Chittorgarh,&nbsp;Pratapgarh,&nbsp;Rajsamand,&nbsp;Udaipur, Pirawa Tehsil of Jhalawar District of&nbsp;Rajasthan,&nbsp;Neemuch&nbsp;and&nbsp;Mandsaur&nbsp;of Madhya Pradesh and some parts of Gujarat.</p>\r\n\r\n<p>For centuries, the region was ruled by&nbsp;Rajputs. The&nbsp;princely state&nbsp;of&nbsp;Udaipur&nbsp;emerged as an administrative unit during the period of&nbsp;British East India Company&nbsp;governance in India and remained until the end of the&nbsp;British Raj&nbsp;era.</p>\r\n\r\n<p>The Mewar region lies between the&nbsp;Aravali Range&nbsp;to the northwest,&nbsp;Ajmer&nbsp;to the north,&nbsp;Gujarat&nbsp;and the&nbsp;Vagad&nbsp;region of Rajasthan to the south, the&nbsp;Malwa&nbsp;region of&nbsp;Madhya Pradesh&nbsp;state to the south and the&nbsp;Hadoti&nbsp;region of Rajasthan to the east.</p>\r\n', 'Rajasthan-Mewad-Tour-', '<ul>\r\n	<li>Accommodation 06 Night Deluxe Stay on twin Sharing basis.</li>\r\n	<li>Ac Vehicle 2&times;1 or 2&times;2 depends upon Group Size from Jaipur - Udaipur railway Station / Airport.</li>\r\n	<li>Local Meals as per Set Menu BLD (B= Breakfast, D = Dinner)</li>\r\n	<li>All toll, Taxes, D.A, Parking Charges</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Air Fare / Train Fare.</li>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities, Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>Government Tax 5% G.S.T. as applicable above and over Tour cost Mentioned</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of Aadhar card . .</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Company has right to change the tour Itinerary under any circumstances.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '( 6 Nights / 7 Days – 6 Night Stay) ', 0),
(25, 'Ashtavinayak Darshan ', 'assets/upload/tour/download.jpg', 3, '<p>Ashtavinayaka &ndash; A journey of Faith. Vinayaka is a common Name for Ganesha that appears in the puranas and Buddhist Tantras. This name is reflected in the naming of the Eight Famous Ganesha Temples in Maharashtra known as Asthvinayak. Asthvinayak &nbsp;literally means &lsquo; Eight Ganeshas&rsquo; in Sanskrit.The Ashvinayaka yatra refers to a pilgrimage to the eight temples that house the Eight distinct idols of Ganesha, in&nbsp;Pre- ascertained Sequence. The form of each idol and its trunk are very distinct from each other.Of course, we cannot know all the answers to the questions. But if you want to learn more about the gaming industry, then you should definitely learn them through&nbsp;<a href=\"https://gamblinganswer.com/\">AI system gambling system</a> Vinayaka&rdquo; is another name of Lord Ganesh, the God loved and worshiped by every Hindu. Lord Ganesh is the protector of his devotees.</p>\r\n', 'Ashtavinayak-Darshan-', '<ul>\r\n	<li>Twin sharing AC or Non AC Accommodation as per your package.</li>\r\n	<li>Transport by AC or Non AC vehicle as per package group size.</li>\r\n	<li>Pure Veg Meals.</li>\r\n	<li>BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner as per set Menu. )</li>\r\n	<li>All Toll, Taxes, Parking Charges, Driver D.A., Guide Fee.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '(2 Nights / 3 Days – 2 Night Stay)', 0),
(26, 'Honey moon Tarkarli Package ', 'assets/upload/tour/honeymoon tarkarli.jpg', 3, '<p>Tarkarli is a village in Malvan taluka in sindhudurga district. It is tourist destination and a coral beach. Tarkarli can be accessed from Sindhudurga and also from Kudal and Kankavli by the Konkan Railway. The Tarkarli Tour Package is a fun packed tour package. In our Tarkarli Tour package, you will get to visit a lot of places. The best thing about the Tarkarli Tour package is not just visiting the tourist attraction places but also get to experience the Water sports in kokan &amp; Scuba in Tarkarli. In Our Tarkarli Tour Package Main tourist attractions is Mahapurush Mandir,&nbsp; Scuba in Tarkarli, Snorkelling,Vitthal Mandir, Water sports in kokan in Karli river. Sangam Point where Karli river drains to the Arabian sea. Sindhudurga fort admist built by&nbsp; Shivaji Maharaj. Famous Golden Ganesh temple built by Astrologer Jayant Salgaonkar at his birth place &ldquo;Medha &rdquo; Malvan , Rock Garden and many other places.&nbsp;</p>\r\n', 'Honey-moon-Tarkarli-Package-', '<ul>\r\n	<li>02 Night Non AC Stay on Twin Sharing Basis in Convenient &amp; Comfortable Hotel.</li>\r\n	<li>2 Days Local Sightseeing by Rickshaw ( Auto)</li>\r\n	<li>Typical Kokani Meals - ( 2 Non veg Meals - Fry Fish &amp; Sweet Dish is Limited - Breakfast &amp; Dinner as per set Menu)</li>\r\n	<li>All D.A , Toll , Parking etc.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Mineral water , Soft Drink , Ice Cream</li>\r\n	<li>Any up gradation in Govt Tax, Flight and Hotel Rooms .</li>\r\n	<li>Any extra expense such as route change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Government Tax 5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n	<li>Bus Tickets / Train Tickets are not included in the Package.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of Aadhar card.</li>\r\n	<li>our prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions</li>\r\n	<li>Company has right to change the tour Itinerary under any circumstances.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '(3 Nights / 4 Days – 2 Night Stay)', 0),
(27, 'Statue of Unity Short Tour ', 'assets/upload/tour/Statue of Unity.jpg', 3, '<p>In Our Statue of Unity Gujarat Tour, Visit&nbsp;Statue of Unitywhich is a colossal statue of Indian statesman and independence activist Sardar Vallabhbhai patel who was the first Home minister of India and the chief adherent of Mahatma Gandhi during the non-violent Movement. With this Tour you will also get to visit Akshardham Temple Tour.</p>\r\n\r\n<p>Statue of Unity is a world&rsquo;s tallest Statue&nbsp; situated in Gujarat state of India. It is located on a river island facing the Sardar Sarovar Dam on river Narmada in Kevadiya.</p>\r\n', 'Statue-of-Unity-Short-Tour-', '<ul>\r\n	<li>Accommodation - 2 Night Stay at AC Tent</li>\r\n	<li>Transport by Ac Vechile as per group size ( Pick up and Drop at Ekta Nagar Railway Station.)</li>\r\n	<li>Local Pure Veg Meals ( B- Breakfast, L - Lunch, D- Dinner)</li>\r\n	<li>Statue of Unity , Jungle safari, Cactus / Butterfly Garden , Ekta Nursery Sardar Sarovar Dam, Valley of Flowers all entry fees.</li>\r\n	<li>All D.A , Toll, Parking Charges.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train, Bus Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n	<li>Statue of Unity Entry to avoid Standing in Queue additional cost Rs 650/- P.P</li>\r\n	<li>Train , Flights Tickets .</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com.</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n</ul>\r\n', ' ( 3 Nights / 4 Days – 2 Nights Stay ) ', 0),
(28, 'Mahabaleshwar Package', 'assets/upload/tour/pratap-gad.jpg', 3, '<p>Mahabaleshwar&nbsp;&nbsp;is a small town and a&nbsp;municipal council&nbsp;in&nbsp;Satara district. It is a place of pilgrimage for Hindus because the Krishna river has its origins here. Mahabaleshwar is located on the mountainous Sahyadri range of the&nbsp;Western ghats&nbsp;that run North to south along western coast of India.</p>\r\n\r\n<p>It reaches a height of 1,439 m (4,721 ft) at its highest peak above sea level. Mahabaleshwar comprises three villages&nbsp; Malcolm Peth, Old &ldquo;Kshetra&rdquo; Mahabaleshwar and part of the Shindola village.</p>\r\n', 'Mahabaleshwar-Package', '<ul>\r\n	<li>\r\n	<p>Mumbai - Mahabaleshwar - Mumbai Journey by 2X2 A/c Luxury Coach</p>\r\n	</li>\r\n	<li>2 Nights Accommodation and All Meals (Breakfast, Lunch, Dinner Pure Veg)</li>\r\n	<li>Sightseeing By Share a Taxi.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n	<li>Above Package rate are not valid on long weekends and Festival Period.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '(2 Night / 3 Days – 2 Night Stay )', 0),
(29, 'Goa Package', 'assets/upload/tour/Goa Tour.jpg', 3, '<p>The state of Goa, in India, is understood for its beaches and places of worship and touristy is its primary trade. Touristy is mostly targeted on the coastal areas of Goa. Goa is recognized to the globe as a former Portuguese territorial dominion on Indian soil. Touristy is alleged to be the backbone of Goa&rsquo;s economy.</p>\r\n\r\n<p>In Goa One will do plenty of fun activities and sight seeing like Water Sports in Goa, ocean plane service, Wildlife, Museums, Heritage homes, Forts &amp; more.Governed by over 450 years of Portuguese culture, Goa presents a Unique example of the country to foreigners. Some Big Major Tourist Attraction that Goa has: Bom Jesus of Nazareth Basilica, Fort Aguada, a wax deposit on Indian culture, and a heritage deposit. The Churches and Convents of Goa are declared a World Heritage site by UNESCO.</p>\r\n', 'Goa-Package', '<ul>\r\n	<li>3 Night Hotel Accomodation on Twin sharing basis in AC Deluxe Room .</li>\r\n	<li>Transport and Sightseeing by AC Vehicle as per package group size.</li>\r\n	<li>MAP Meal Plan ( B = Breakfast , D = Dinner as per set Menu )</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Railway ticket , Air Ticket , Bus Ticket</li>\r\n	<li>All Toll, Taxes, Parking Charges.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train Travels.</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '( 3 Nights / 4 Days – 3 Night Stay )', 0),
(30, 'Historical Aurangabad ', 'assets/upload/tour/download.jpg', 3, '<p>Aurangabad is a city in Aurangabad district of&nbsp; Maharashtra state in India. The city has many historical monuments like Ajanta , Ellora Caves which are UNESCO world heritage sites as well as Bibi ka Maqbara and Panchakki.&nbsp;</p>\r\n\r\n<p>Khadki was the original name of the village&nbsp;which was made a capital city by Malik Amber&nbsp;the Prime Minister of Murtaza Nizam shah of Ahmednagar. Daulatabad fort is known as Devagiri is a 14th century fort city in Maharashtra state of India.</p>\r\n', 'Historical-Aurangabad-', '<ul>\r\n	<li>02 Night AC Stay on Twin Sharing Basis in Convenient &amp; Comfortable Hotel.</li>\r\n	<li>AC Tempo Traveller From Aurangabad Station to Aurangabad Railway Station.</li>\r\n	<li>Local Meals as per set menu. BLD = ( B &ndash; Breakfast, L &ndash; Lunch, D &ndash; Dinner )</li>\r\n	<li>All Toll, Taxes, Entry Fees, Guide Fees, Parking Charges.</li>\r\n	<li>Return Sleeper Class Train Ticket.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc.</li>\r\n	<li>Any up gradation in Govt Tax, Flight Tickets and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour.</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency. Meals service during Air and Train Travels.</li>\r\n	<li>Government Tax 5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry two photo copy (xerox ) of Aadhar card .</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any circumstances.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n', '( 4 Nights / 5 Days – 2 Night Stay )', 0),
(31, 'Alibaug Gateway ', 'assets/upload/tour/Raigad with Ratnagiri tour.jpg', 3, '<p>Alibag&nbsp;is a coastal town and a&nbsp;municipal council&nbsp;in&nbsp;Raigad District&nbsp;of&nbsp;Maharashtra,&nbsp;India.Revdanda, Chaul, Nagaon, Akshi, Varsoli, Thal, Navgaon,&nbsp;Kihim, and Aawas villages were known as &ldquo;Ashtagare.</p>\r\n\r\n<p>The nearest&nbsp;jetty&nbsp;is&nbsp;Mandwa&nbsp;from where&nbsp;catamaran/ferry&nbsp;services are available to the&nbsp;Gateway of India,&nbsp;Mumbai. Another port in the vicinity is&nbsp;Rewas, from where a ferry service is available to&nbsp;Ferry Wharf&nbsp;(Bhau cha Dhakka) (Dockyard Road). There is a jetty at Custom Bandar from where fishermen in Alibag set sail.</p>\r\n\r\n<p>The well known operators of these catamarans are PNP, Maldar and Ajanta. The nearest rail&nbsp;railway station&nbsp;is at&nbsp;Pen.&nbsp;</p>\r\n', 'Alibaug-Gateway-', '<ul>\r\n	<li>Accommodation on twin sharing basis in comfortable &amp; Convenient Hotel.</li>\r\n	<li>Typical Kokani Veg &amp; Non Veg Meals . ( 2 Non Veg Meals - Fry Fish &amp; Sweet Dish is Limited )</li>\r\n	<li>BLD = (B &ndash; Breakfast, L- Lunch, D- Dinner as per set Menu.)</li>\r\n	<li>Transport by Ac Xylo , Scorpio , Innova Vehicle.</li>\r\n	<li>All D.A , Toll , Parking , Charges etc.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Any consumables other than the ones mentioned in the package inclusions e.g. Mineral Water, Cold Drink, Ice-cream, Alcoholic Beverages, etc</li>\r\n	<li>Any up gradation in Govt Tax and Hotel Rooms.</li>\r\n	<li>Any extra expense such as route change, Airline change, Date change, Accommodation facilities,Etc incurred due to the unforeseen, unavoidable circumstances during the tour</li>\r\n	<li>Any extra cost incurred on behalf of an individual due to illness, accident, hospitalization,or any personal emergency.</li>\r\n	<li>Meals service during Air and Train, Bus Travels</li>\r\n	<li>5% G.S.T. as applicable above and over Tour cost Mentioned.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to carry photo copy (xerox ) of any driving license.</li>\r\n	<li>Tour prices are subject to change depending upon the group size.</li>\r\n	<li>Entrance Fees</li>\r\n	<li>Company has right to change the tour Itinerary under any unavoidable circumstances without prior intimation.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website : https://www.kokanparyatan.com.</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n</ul>\r\n', '( 2 Nights / 3 Days – 2 Nights Stay )', 0),
(32, 'Royal Nepal Tour ', 'assets/upload/tour/Royal nepal tour.jpg', 5, '<p>Nepal&nbsp;&nbsp;officially the&nbsp;Federal Democratic Republic of Nepal&nbsp;&nbsp;is a&nbsp;landlocked country&nbsp;in&nbsp;South Asia. It is mainly situated in the&nbsp;Himalayas, but also includes parts of the&nbsp;Indo-Gangetic Plain. It borders the&nbsp;Tibet Autonomous Region&nbsp;of China&nbsp;to the north, and India&nbsp;in the south, east, and west, while it is narrowly separated from&nbsp;Bangladesh&nbsp;by the&nbsp;Siliguri Corridor, and from&nbsp;Bhutan&nbsp;by the&nbsp;Indian state&nbsp;of&nbsp;Sikkim. Nepal has a&nbsp;diverse geography, including&nbsp;fertile plains, subalpine forested hills, and eight of the world&rsquo;s ten&nbsp;tallest mountains, including&nbsp;Mount Everest, the highest point on Earth.&nbsp;Kathmandu&nbsp;is the nation&rsquo;s capital and the&nbsp;largest city. Nepal is a multi-ethnic, multi-lingual, multi-religious and multi-cultural state, with&nbsp;Nepali&nbsp;as the official language.</p>\r\n\r\n<p>The name &ldquo;Nepal&rdquo; is first recorded in texts from the&nbsp;Vedic period&nbsp;of the&nbsp;Indian subcontinent, the era in&nbsp;ancient Nepal&nbsp;when&nbsp;Hinduism&nbsp;was founded, the predominant religion of the country. In the middle of the first millennium BC,&nbsp;Gautama Buddha, the founder of&nbsp;Buddhism, was born in&nbsp;Lumbini&nbsp;in southern Nepal. Parts of northern Nepal were intertwined with the culture of&nbsp;Tibet. The centrally located&nbsp;Kathmandu Valley&nbsp;is intertwined with the culture of&nbsp;Indo-Aryans, and was the seat of the prosperous&nbsp;Newar&nbsp;confederacy known as&nbsp;Nepal Mandala. The Himalayan branch of the ancient&nbsp;Silk Road&nbsp;was dominated by the&nbsp;valley&rsquo;s traders. The cosmopolitan region developed distinct traditional&nbsp;art&nbsp;and&nbsp;architecture.</p>\r\n', 'Royal-Nepal-Tour-', '<ul>\r\n	<li>6 Night Hotel Accommodation in Deluxe rooms on twin Sharing Basis.</li>\r\n	<li>Local Meals as per set menu. AP ( B - Breakfast , L - Lunch , D - Dinner )</li>\r\n	<li>Jungle Entrance Fees / Jeep Safari . Cultural Programme once in tour during Chitwan Stay.</li>\r\n	<li>Pokhara - Kathmandu Internal Flight Tickets.</li>\r\n	<li>Entrance fees at Monuments / Manokamana Cable Car / Boating at Fewa Lake.</li>\r\n	<li>All transfer &amp; Sightseeing by AC Vechile with Toll , Parking, and Driver Charges.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>6 Night Hotel Accommodation in Deluxe rooms on twin Sharing Basis.</li>\r\n	<li>Local Meals as per set menu. AP ( B - Breakfast , L - Lunch , D - Dinner )</li>\r\n	<li>Jungle Entrance Fees / Jeep Safari . Cultural Programme once in tour during Chitwan Stay.</li>\r\n	<li>Pokhara - Kathmandu Internal Flight Tickets.</li>\r\n	<li>Entrance fees at Monuments / Manokamana Cable Car / Boating at Fewa Lake.</li>\r\n	<li>All transfer &amp; Sightseeing by AC Vechile with Toll , Parking, and Driver Charges.</li>\r\n</ul>\r\n', '<ul>\r\n	<li>Tour will be confirmed only after making 50% advance payment of Total Tour Cost.</li>\r\n	<li>On tour Guests are requested to Valid Passport / Voter Card. For Minors carry valid Birth certificate.</li>\r\n	<li>our prices are subject to change depending upon the group size.</li>\r\n	<li>Cancellation &amp; refund as per company&rsquo;s terms and conditions.</li>\r\n	<li>Company has right to change the tour Itinerary under any circumstances.</li>\r\n	<li>Company has right to change the Hotel due to non-Availability.</li>\r\n	<li>In case of any dispute, our financial liability is restricted to a maximum 20% of the total package cost.</li>\r\n	<li>Company will not be responsible for any Breakdown issues of Vehicle.</li>\r\n	<li>Please refer all the terms &amp; conditions laid down in the website: https://www.kokanparyatan.com.</li>\r\n	<li>All payment should be made 10 days prior departure of the tour.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', '( 6 Nights / 7 Days – 6 Night Stay) ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tour_category`
--

CREATE TABLE `tour_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(2000) NOT NULL,
  `urltitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tour_category`
--

INSERT INTO `tour_category` (`cat_id`, `cat_name`, `urltitle`) VALUES
(1, 'Kokan ', 'Kokan-'),
(2, 'Domestic ', 'Domestic-'),
(3, 'Short Breaks', 'Short-Breaks'),
(5, 'International ', 'International-');

-- --------------------------------------------------------

--
-- Table structure for table `tour_dates`
--

CREATE TABLE `tour_dates` (
  `date_id` int(10) NOT NULL,
  `date` varchar(200) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_dates`
--

INSERT INTO `tour_dates` (`date_id`, `date`, `name`, `cost`, `tour_id`) VALUES
(1, '06th -11th Sept', 'Best of Kokan Tour', 'Rs. 14,800/-', 1),
(2, '20th – 25th Sept', 'Best of Kokan Tour', 'Rs. 14,800/-', 1),
(3, '11th – 16th Oct', 'Best of Kokan Tour', 'Rs. 14,800/-', 1),
(5, '15 Dec - 21 Dec 2023 ', 'Amazing Kokan Tour with Kolhapur', 'Rs. 16800', 7),
(6, '24th – 27th Nov 2023', 'Dajipur Jungle Safari Tour ', 'Rs. 10,900', 8),
(7, '07th – 10th Dec 2023', 'Dajipur Jungle Safari Tour ', 'Rs. 10,900', 8),
(8, '21st – 24th Dec 2023', 'Dajipur Jungle Safari Tour ', 'Rs. 10,900', 8),
(9, '08th – 14th October', 'Anandvan - Hemalkasa Tour ', 'Rs. 14,400/-', 9),
(10, '20th – 25th Sept', 'Best of Kokan ', 'Rs. 14,800', 10),
(11, '11th – 16th Oct', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(12, '25th – 30th Oct', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(13, '08th – 13th Nov', 'Best of Kokan Tour – Diwali Special', 'Rs. 15,800/-', 10),
(14, '10th – 15th Nov', 'Best of Kokan Tour – Diwali Special', 'Rs. 15,800/-', 10),
(15, '23rd – 28th Nov', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(16, '06th – 11th Dec', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(17, '13th – 18th Dec', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(18, '20th – 25th Dec', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(19, '29th Dec -03rd Jan2024', 'Best of Kokan Tour – X’MAS Special', 'Rs. 15,800/-', 10),
(20, '10th – 15th Jan 2024', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(21, '24th – 29th Jan 2024', 'Best of Kokan Tour', 'Rs. 14,800/-', 10),
(22, '04th Oct  – 09th Oct', 'Sindhuratna Sindhudurga Tour ', 'Rs.13,200/-per person ', 11),
(23, '18th Oct  – 23rd Oct', 'Sindhuratna Sindhudurg Tour', 'Rs.13,200/-per person ', 11),
(24, '01st Nov  – 06th Nov', 'Sindhuratna Sindhudurg Tour', 'Rs.13,200/-per person ', 11),
(25, '15th Nov  – 20th Nov', 'Sindhuratna Sindhudurg Tour', 'Rs.13,200/-per person ', 11),
(26, '06th Dec – 11th Dec', 'Sindhuratna Sindhudurg Tour', 'Rs.13,200/-per person ', 11),
(27, '13th Dec – 18th Dec', 'Sindhuratna Sindhudurg Tour', 'Rs.13,200/-per person ', 11),
(28, '27th Oct  – 29th Oct', 'Ratnasagar Ratnagiri Tour', 'Rs.9,000/- per person ', 12),
(29, '25th Nov – 27th Nov', 'Ratnasagar Ratnagiri Tour', 'Rs.9,000/- per person', 12),
(30, '08th Dec – 10th Dec', 'Ratnasagar Ratnagiri Tour', 'Rs.9,000/- Per person ', 12),
(31, '29th Sept – 02nd Oct', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(32, '19th Oct  – 22nd Oct', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(33, '02nd Nov  – 05th Nov', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(34, '16th Nov  – 19th Nov', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(35, '30th Nov – 03rd Dec', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(36, '14th Dec - 17th Dec ', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(37, '23rd Dec – 26th Dec', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(38, '04th Jan  – 07th Jan 2024', 'Raigad with Ratnagiri', 'Rs. 11,400/- Per Person', 14),
(39, '10th Oct - 16th Oct ', 'Amazing Kokan Tour ', 'R. 16,800', 16),
(43, '12th Oct - 16th Oct ', 'Best of Sindhudurga Tour ', 'Rs. 7900/- Per person .', 15),
(44, '09th Nov - 13th Nov ', 'Best of Sindhudurga Tour ', 'Rs. 7,900/- Per person ', 15),
(45, '23rd Nov - 27th Nov ', 'Best of Sindhudurga Tour ', 'Rs. 7,900/- Per person ', 15),
(46, '22nd Dec - 26th Dec ', 'Best of Sindhudurga Tour ', 'Rs. 7,900/- Per person ', 15),
(47, '09th Jan - 13th Jan 2024 ', 'Best of Sindhudurga Tour ', 'Rs. 7,900/- Per person ', 15),
(48, '07th Nov - 13th Nov ', 'Amazing Kokan Tour ', 'Rs. 16800', 16),
(49, '21st Nov - 27th Nov ', 'Amazing Kokan Tour ', 'Rs. 16800', 16),
(50, '05th Dec - 11th Dec ', 'Amazing Kokan Tour ', 'Rs. 16800', 16),
(51, '07th Jan - 13th Jan 2024 ', 'Amazing Kokan Tour ', 'Rs. 16800', 16),
(52, '01st Oct - 02nd Oct ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(53, '28th Oct - 29th Oct ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(54, '18th Nov - 19th Nov ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(55, '25th Nov - 26th Nov ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(56, '09th Dec - 10th Dec ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(57, '24th Dec - 25th Dec ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(58, '27th Jan - 28th Jan ', 'Shivsahi Raigad ', 'Rs. 4,200/- Per Person ', 13),
(59, '08th – 14th October', 'Anandvan – Hemalkasa Tour', 'Rs. 14,400', 17),
(60, '29th Oct– 04th Nov', 'Anandvan – Hemalkasa Tour', 'Rs. 14,400/-', 17),
(61, '20th – 26th November', 'Anandvan – Hemalkasa Tour', 'Rs. 14,400/-', 17),
(62, '04th – 10th December', 'Anandvan – Hemalkasa Tour', 'Rs.14,400/- ', 17),
(63, '18th – 24th December', 'Anandvan – Hemalkasa Tour', 'Rs. 14,400/-', 17),
(64, '30th Oct – 04th Nov ', 'Memorable Andaman ', 'Rs.26,900/- Per person ', 18),
(65, '30th Nov – 05th Dec ', 'Memorable Andaman ', 'Rs..26,900/- Per Person. ', 18),
(66, '20th Dec - 25th Dec ', 'Memorable Andaman ', 'Rs. 26,900/- Per Person . ', 18),
(67, '14th – 21st Oct ', 'Kerala – Kanyakumari Tour ', 'Rs. 27,800/- Per Person. ', 20),
(68, ' 18th – 25th Nov 23 ', 'Kerala – Kanyakumari Tour ', 'Rs. 27,800/- Per Person. ', 20),
(69, '09th – 16th Dec 2', 'Kerala – Kanyakumari Tour', 'Rs. 27,800/- Per Person ', 20),
(70, 'Every Friday', 'Ashtavinayak Darshan ', 'Rs.6,000/- Per person Ac Bus & Ac Room', 25),
(71, 'Every Friday', 'Ashtavinayak Darshan ', 'Rs.5,500/- Per Person Ac Bus & Non Ac Room', 25),
(72, 'Daily Departures', 'Honey moon Tarkarli Package ', 'Rs.8,400/- Per person', 26),
(73, 'Daily Departures', 'Statue of Unity Short Tour ', 'Rs. 13,900/- Per Person', 27),
(74, 'Daily Departures', 'Mahabaleshwar - Panchgani - Pratapgad', 'Rs.8,900/- Per Person Onwards', 28),
(75, 'Daily Departures', 'Goa Package', 'Rs. 13,900/- Per Person Onwards', 29),
(76, '26th Sept – 02nd Oct ', 'Royal Nepal Tour ', 'Rs. 34,800/- ', 32),
(77, '25th Oct – 31st Oct ', 'Royal Nepal Tour ', 'Rs. 34,800/', 32),
(78, '16th Nov – 22nd Nov ', 'Royal Nepal Tour ', 'Rs. 34,800/-', 32),
(79, '23rd – 29th Dec ', 'Royal Nepal Tour ', 'Rs. 34,800/-', 32);

-- --------------------------------------------------------

--
-- Table structure for table `tour_itinerary`
--

CREATE TABLE `tour_itinerary` (
  `iti_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `day` varchar(200) NOT NULL,
  `day_details` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour_itinerary`
--

INSERT INTO `tour_itinerary` (`iti_id`, `tour_id`, `day`, `day_details`) VALUES
(1, 1, 'Day 1 Mumbai - Dapoli', '<p>Morning Dept. from Mumbai. Dapoli &ndash; Karde &ndash; Beach Relaxation. (Enjoy Water<br />\r\nSports at Own Cost). Stay at the Hotels in Konkan at Dapoli Karde. (BLD)</p>\r\n'),
(2, 1, 'Day 2 Dapoli - Ganpatipule', '<p>Dabhole Chandikadevi &ndash; A popular temple situated in a cave- a holy place of Pandav<br />\r\nEra. Guhagar Long Sandy beach backed with Coconut, Mango &amp; Betel plantations. Ganpatipule &ndash; Jagrut Ganesh Temple at the side of a scenic Konkan beach. Stay at Ganpatipule. (BLD)</p>\r\n'),
(3, 1, 'Day 3 Ganpatipule - Tarkarli', '<p>Pawas &ndash; Visit Swami Swaroopanand Samadhi &amp; Math .One of the famous Naath of<br />\r\nNaav Nath Sampraday. Kunkeshwar &ndash; Jagrut Shiva temple built by an Arab with inviting Konkan beach at the side of Mandir. Evening at Tarkarli Beach. Stay at Malvan / Tarkarli . (BLD)</p>\r\n'),
(4, 1, 'Day 4 Malvan - Tarkarli local sightseeing .', '<p>Sindhudurga Fort built amidst the sea by Shivaji Maharaj, Going around Kokani<br />\r\nmewa at Malvan bazaar ( Cashew nut, Kokam, Khadekade Ladu). Tarkarli Backwater &ndash; the most inviting sea Konkan Beach. (Snorkeling &amp; Scuba diving:<br />\r\nswimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air. Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jet skiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package. Stay at Sawantwadi. ( BLD)</p>\r\n'),
(5, 6, 'Day 1 ', '<p>Amritsar Railway / Airport Arrival&nbsp;</p>\r\n\r\n<p>Arrive at Amritsar Railway Station / Airport. On arrival proceed towards Amritsar. Check in at Hotel at Amritsar. Visit Durga Mandir Temple, Jalianwala Baug. Dinner &amp; Stay at Amritsar Hotel. ( BD)</p>\r\n'),
(6, 6, 'Day 2 ', '<p>Amritsar Local Sightseeing</p>\r\n\r\n<p>After breakfast visit Golden Temple , Market for Shopping. Afternoon proceed towards Indo &ndash; Pak Wagha Aatari Border to see the Ceremony. Enjoy the sentimental Ceremony of Flag Down at Wagha &ndash; Aatari Border. Dinner &amp; stay at Amritsar. (BD)</p>\r\n'),
(7, 6, 'Day 3', '<p>Amritsar - Dalhouise</p>\r\n\r\n<p>After breakfast proceed towards Dalhouise. On arrival check in at Hotel for Fresh up . After noon Visit St. Francis Church , St. John&rsquo;s Church , Thandi Sadak, Subhash Chowk, Gandhi Chowk . Visit Market for Shopping. Dinner &amp; Stay at Dalhouise Hotel. (BD)</p>\r\n'),
(8, 6, 'Day 4', '<p>Dalhouise Local Sightseeing</p>\r\n\r\n<p>After breakfast visit Khajjiar Garden (Mini Switzerland) of India. Chamba is a small but yet attractive tourist destination in Himachal Pradesh. Chamba is at an altitude of 6,500 ft. above sea level. Confronting the backdrop of dense Pines, deodars and lush green meadow, can enjoy Trekking, Horse Riding, Paragliding. Dinner &amp; Stay at Dalhouise Hotel. (BD)</p>\r\n'),
(9, 6, 'Day 5', '<p>Dalhouise - Dharamshala</p>\r\n\r\n<p>After breakfast proceed towards Dharamshala. On arrival at Dharamshala Visit Tibetan Monk residence of Dalai Lama. Dhauladhar Ranges, Dharamsala Stadium, Tibetan Monestary, Market. War Memorial, Dal Lake, Bhagsu waterfall, Bahgsunag Temple. Dinner &amp; Stay at Dharamshala Hotel. (BD)</p>\r\n'),
(10, 6, 'Day 6', '<p>Dharamshala - Manali Local Sightseeing</p>\r\n\r\n<p>After breakfast proceed towards Manali. On arrival at Manali check in at Hotel. After fresh up visit Hadima Temple, Naggar Art Gallery, Manu Temple, Van Vihar, Club House, Manali Mall Road . Dinner &amp; Stay at Manali Hotel . (BD)</p>\r\n'),
(11, 6, 'Day 7', '<p>Manali Snow Point Excursion - Manali</p>\r\n\r\n<p>Visit Snow Point / Rohtang Valley . Enjoy the fun in ice. Visit Solang Valley where you can do adventure sports like ( Hot Balloon, Flying Fox, Rope Climbing etc ) at own cost. Evening stroll on Manali Mall road for Shopping . Dinner &amp; stay at Manali Hotel. (BD)</p>\r\n'),
(12, 6, 'Day 8', '<p>Manali - Chandigarh</p>\r\n\r\n<p>After breakfast Proceed towards Chandigarh. Enjoy boating at Sukhana Lake ( at Own Cost) , Rock Garden . Dinner &amp; stay at Chandigarh Hotel. (BD)</p>\r\n'),
(13, 6, 'Day 9', '<p>Chandigarh - Delhi Drop</p>\r\n\r\n<p>After breakfast visit Rose Garden and transfer towards Delhi Railway Station / Airport for Home town Journey. (B)</p>\r\n'),
(14, 7, 'Day 1 ', '<p>Mumbai - Dapoli ( Dapoli Beach Tour )</p>\r\n\r\n<p>Morning Dept. from Mumbai. Dapoli Beach Tour &ndash; Karde &ndash; Beach Relaxation. (EnjoyWater Sports at Own Cost) Stay at Dapoli Karde. (BLD)</p>\r\n'),
(15, 7, 'Day 2 ', '<p>Dapoli - Ganpatipule</p>\r\n\r\n<p>Dapoli Chandikadevi &ndash; A popular temple situated in a cave- a holy place of Pandav Era. Guhagar Long Sandy beach backed with Coconut, Mango &amp; Betel. Ganpatipule &ndash; Jagrut Ganesh Temple at the side of a scenic Dapoli beach. Stay at Ganpatipule. (BLD)</p>\r\n'),
(16, 7, 'Day 3', '<p>Ganpatipule - Kunkeshwar - Tarkarli</p>\r\n\r\n<p>Deogad &ndash; Vijay Durga Fort Constructed by Raja Bhoj of Shilahar Dynasty in 1205 A.D. It has spread over 17 Acres of land. Gave the responsiblity of protecting this fort to brave Kanoji Angre. This fort was never conquered by anyone after that so it was known as &lsquo;Rock of Zilbratar&rsquo;. Kunkeshwar &ndash; Jagrut Shiva temple built by an Arab with inviting sea beach at the side of Mandir. Evening at Tarkarli Beach Stay at Malvan / Tarkarli. (BLD)</p>\r\n'),
(17, 7, 'Day 4', '<p>Tarkarli Local Sightseeing - Sawantwadi</p>\r\n\r\n<p>Sindhudurga Fort built amidst the sea by Shivaji Maharaj. Going around Kokani mewa at Malvan bazar ( Cashewnut, Kokam, Khadekade Ladu).Tarkarli Backwater &ndash; the most inviting sea beach of Kokan. (Snorkeling &amp; Scuba diving: swimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air. Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jetskiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package.) Tourist have to choose between Sindhudurga Fort OR Scuba Diving at Malvan Stay at Sawantwadi (BLD)</p>\r\n'),
(18, 7, 'Day 5', '<p>Sawantwadi - Amboli</p>\r\n\r\n<p>Sawantwadi Market of wooden colorful articles. Amboli Hiranyakeshi Mandir,Kawlesaad , Amboli Waterfall. Stay at Sawantwadi. (BLD)</p>\r\n'),
(19, 7, 'Day 6', '<p>Gaganbawada - Kolhapur - Mumbai</p>\r\n\r\n<p>Gaganbawada Western Ghats or Sahyadris.( Gagangiri Maharaj ) Kolhapur : Mata Mahalaxmi of Kolhapur. Departure for Mumbai. (BLD)</p>\r\n'),
(20, 7, 'Day 7', '<p>Mumbai Arrival.</p>\r\n\r\n<p>Early Morning arrival at Mumbai.</p>\r\n'),
(21, 8, 'Day 1', '<p>Mumbai - Kolhapur / Gaganbawda</p>\r\n\r\n<p>Late Night Dept. from Mumbai by AC Bus towards Kolhapur / Gaganbawada.</p>\r\n'),
(22, 8, 'Day 2 ', '<p>Kolhapur / Gaganbawada</p>\r\n\r\n<p>Morning check in Hotel. Visit Palsambe Waterfall, Bawdekar Palace, Karul &amp; Bhuiwada Ghat Darshan. Stay at Kolhapur / Gaganbawada. ( BLD)</p>\r\n'),
(23, 8, 'Day 3 ', '<p>Dajipur Jungle Safari</p>\r\n\r\n<p>Early morning at 6:00 am proceed for Bison WildLife Sanctuary and then visit Gagangiri Maharaj Samadhi Darshan at Gaganbawada. Overnight stay at Kolhapur / Gaganbawada. ( BLD)</p>\r\n'),
(24, 8, 'Day 4 ', '<p>Kolhapur / Gaganbawada - Mumbai</p>\r\n\r\n<p>After breakfast visit Mahalaxmi Mandiir and proceed towards Mumbai. Evening arrival at Mumbai. ( BL)</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(25, 10, 'Day 1', '<p><strong>Mumbai - Dapoli</strong></p>\r\n\r\n<p>Morning Dept. from Mumbai. Dapoli &ndash; Karde &ndash; Beach Relaxation. (Enjoy Water Sports at Own Cost). Stay at the Hotels in Konkan at Dapoli Karde. (BLD)</p>\r\n'),
(26, 10, 'Day 2', '<p><strong>Dapoli - Ganpatipule</strong></p>\r\n\r\n<p>Dabhole Chandikadevi &ndash; A popular temple situated in a cave- a holy place of Pandav Era. Guhagar Long Sandy beach backed with Coconut, Mango &amp; Betel plantations. Ganpatipule &ndash; Jagrut Ganesh Temple at the side of a scenic Konkan beach. Stay at Ganpatipule. (BLD)</p>\r\n'),
(27, 10, 'Day 3', '<p>Ganpatipule - Tarkarli</p>\r\n\r\n<p>Pawas &ndash; Visit Swami Swaroopanand Samadhi &amp; Math .One of the famous Naath of Naav Nath Sampraday. Kunkeshwar &ndash; Jagrut Shiva temple built by an Arab with inviting Konkan beach at the side of Mandir. Evening at Tarkarli Beach. Stay at Malvan / Tarkarli . (BLD)</p>\r\n'),
(28, 10, 'Day 4 ', '<p>Malvan - Tarkarli local sightseeing</p>\r\n\r\n<p>Sindhudurga Fort built amidst the sea by Shivaji Maharaj, Going around Kokani mewa at Malvan bazaar ( Cashew nut, Kokam, Khadekade Ladu). Tarkarli Backwater &ndash; the most inviting sea Konkan Beach. (Snorkeling &amp; Scuba diving:&nbsp;swimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air. Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jet skiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package. Stay at Sawantwadi. ( BLD)</p>\r\n'),
(29, 10, 'Day 5', '<p>Sawantwadi - Kolhapur - Mumbai</p>\r\n\r\n<p>Sawantwadi Market of Wooden Colourful articles. Amboli &ndash; Visit Amboli Water fall , Hiranyakeshi Mandir and Start up point of Hiranyakeshi Keshi River. Evening arrival at Kolhapur. Darshan of Kolhapur Mahalaxmi Devi . Night Departure for Mumbai . ( BLD)</p>\r\n'),
(30, 10, 'Day 6 ', '<p>Mumbai Arrival</p>\r\n\r\n<p>Early Morning arrival at Mumbai.</p>\r\n'),
(31, 11, 'Day 1', '<p>Mumbai -Sawantwadi</p>\r\n\r\n<p>Night Departure from Mumbai</p>\r\n'),
(32, 11, 'Day 2 ', '<p>Sawantwadi - Amboli - Sawantwadi</p>\r\n\r\n<p>Amboli Hill &ndash; Visit to Hill Station of Kokan Region Amboli. Hiranyakeshi River, Kawalesaad Point which show the entire range of Sahyadri. Sawantwadi Market of Wooden Colourful articles. Stay at Sawantwadi. (BLD)</p>\r\n'),
(33, 11, 'Day 3', '<p>Sawantwadi - Vengurla - Sawantwadi</p>\r\n\r\n<p>Vengurla &ndash; Reddi Ganesh -Famous for Swayambhu Ganesh in sitting position. Aaravali Vetoba &ndash; God Vetoba is presented with new Chappals, they believe that God Secures them from all kind of Evils. Velaghar Beach &ndash; It is a beautiful &amp; lonely beach. The greenary on the beach side is marvelous.Pleasing Bhandari Seafood. Stay at Sawantwadi. (BLD)</p>\r\n'),
(34, 11, 'Day 4', '<p>Sawantwadi - Tarkarli</p>\r\n\r\n<p>Sindhudurga Fort built amidst the sea by Shivaji Maharaj, Tarkarli Backwater &ndash; the most inviting sea beach of Kokan. (Snorkeling &amp; Scuba diving: swimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air. Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jetskiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package.) Malvan : Suvarna Ganesh Mandir &ndash; Riddhi Siddhi Ganesh. Going around Kokani mewa at Malvan bazar ( Cashewnut, Kokam, Khadekade Ladu). Stay at Malvan / Tarkarli. (BLD)</p>\r\n'),
(35, 11, 'Day 5', '<p>Tarkarli - Deogad - Ganpatipule</p>\r\n\r\n<p>Deogad &ndash; Kunkeshwar Mandir &ndash; Jagrut Shiva temple built by an Arab with inviting Sea beach at the side of it. Ganpatipule Mandir &ndash; Jagrut Ganesh Temple at the side of a Scenic beach. Departure for Mumbai. (BLD)</p>\r\n'),
(36, 11, 'Day 6', '<p>Mumbai Arrival</p>\r\n\r\n<p>Early Morning arrival at Mumbai</p>\r\n'),
(37, 12, 'Day 1', '<p>Mumbai - Dapoli</p>\r\n\r\n<p>Morning Dept. from Dadar. Anjarle Lord Ganesh temple (Kadyavarcha Ganpati) on high mountain in dence forest of Bakul trees. Harney Murud &ndash; Famous birthplace of Bharat Ratna, Maharshi Dr.Dhondo Keshav Karve was one of the pioneers of promoting women&rsquo;s education and the right for widows to remarry in India. Karde Backwater &ndash; Eyecatching sunset beyond description can be watched, while boating. Stay at Dapoli Karde (BLD)</p>\r\n'),
(38, 12, 'Day 2 ', '<p>Dapoli - Ganpatipule</p>\r\n\r\n<p>Chandikadevi &ndash; A popular temple situated in a cave- a holy place of Pandav Era. Vyadeshwar is Shivpanchayatan. Dashbhuja Ganesh at Hedvi built during the time of Peshwas. Ganpatipule &ndash; Jagrut Ganesh Temple at the side of a scenic beach. Stay at Ganpatipule. (BLD)</p>\r\n'),
(39, 12, 'Day 3', '<p>Ganpatipule - Pawas - Mumbai</p>\r\n\r\n<p>Pawas &ndash; Samadhi of Swami Swarupanand built by his devotees at Pawas. Dervan &ndash; A piece of art, built by Walawalkar showing incidents of Shivaji &amp; Peshweshahi. Night arrival at Mumbai . (BL)</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(40, 13, 'Day 1', '<p><strong>Mumbai - Diveaagar - Shreewardhan</strong></p>\r\n\r\n<p>Morning depature from Mumbai. Diveaagar : Unique Golden idol of Ganpati known as Ganesh of Diveaagar. Shreewardhan, &ndash; A place with inborn beauty known for its temple. Harihareshwar famous as Dakshin Kashi. Stay at Shreewardhan. (<strong><font color=\"red\">BLD</font></strong>)</p>\r\n'),
(41, 13, 'Day 2 ', '<p><strong>Raigad Fort - Mumbai</strong></p>\r\n\r\n<p>Raigad Fort : The Gibraltar of the East Rairi hill near Mahad &ndash; selected as the preferable capital by shahaji Bhosale father of Shivaji Maharaj and also used for the Samadhi of Shivaji Maharaj. Night arrival at Dadar. <strong>(BL)</strong></p>\r\n'),
(42, 14, 'Day 1', '<p><strong>Mumbai - Diveaagar - Shreewardhan</strong></p>\r\n\r\n<p>Morning Dept. from Mumbai. Diveaagar &ndash; Golden Ganpati Known as Ganesh of Diveaagar. Shreewardhan &ndash; Somjai Devi Mandir , Balaji Peshwa Smarak, Shreewardhan Scenic Beach. ( Water sports at own Cost) <strong>( BLD)</strong></p>\r\n'),
(43, 14, 'Day 2 ', '<p><strong>shreewardhan - Dapoli - Karde Beach</strong></p>\r\n\r\n<p>A place with Inborn beauty Known as Harihareshwar famous as Dakshin Kashi. Anjarle Lord Ganesh Temple (Kadyavarcha Ganesh) on high Mountain in dense forest of Bakul Trees. Harney-Murud famous birth place of Bharat Ratna Maharshi Dr. Dhondo Keshav Karve was one of the pioneers of promoting Women&rsquo;s education and the right for widows to remarry in India. Stay at Dapoli &ndash; Beautiful Karde Beach. <strong>(BLD)</strong></p>\r\n'),
(44, 14, 'Day 3', '<p><strong>Dapoli - Guhagar - Ganpatipule</strong></p>\r\n\r\n<p>Dapoli &ndash; Chandika Devi &ndash; A Popular Temple Situated in a cave &ndash; a Holy place of&nbsp; Pandav Era. Guhagar &ndash; Ancient Shiva Temple of Vyadeshwar is Shiv Panchaytan. Hedavi Dushbhuj Ganesh built during the times of Peshwas. Stay at Ganpatipule .<strong> (BLD)</strong></p>\r\n'),
(45, 14, 'Day 4', '<p><strong>Ganpatipule - Mumbai</strong></p>\r\n\r\n<p>Ganpatipule &ndash; Jagrut Ganesh Temple at the Side of a Scenic beach. Prachin Kokan &ndash; The Museum elucidates the social ,economic Cultural, religious background of Kokan. Malgund &ndash; Kavi keshav Soot Smarak . Evening arrival at Mumbai. <strong>(BL)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(46, 15, 'Day 1', '<p><strong>Mumbai - Sawantwadi</strong></p>\r\n\r\n<p>Night departure from Mumbai</p>\r\n'),
(47, 15, 'Day 2 ', '<p><strong>Sawantwadi - Amboli - Sawantwadi</strong></p>\r\n\r\n<p>Visit to Hill Station of Kokan Region. Amboli with scenic beauty &amp; greenary. Source of Hiranyakeshi river Kawlesaad Point which show the entire range of Sahyadri. Waterfall of Nagartaas. Sawantwadi Market of Wooden Colourful articles. Stay at Sawantwadi. <strong>(BLD)</strong></p>\r\n'),
(48, 15, 'Day 3', '<p><strong>Sawantwadi - Tarkarli - Malvan</strong></p>\r\n\r\n<p>Sindhudurg Fort built amidst the sea by Shivaji Maharaj, Tarkarli Backwater &ndash; the most inviting sea beach of Kokan. Going around Kokani mewa at Malvan Bazar (Cashewnut, Kokam, Khadkhade Ladu, Khaje). (Snorkeling &amp; Scuba diving: swimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air.Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jetskiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package.) Stay at Malvan / Tarkarli. <strong>(BLD)</strong></p>\r\n'),
(49, 15, 'Day 4', '<p><strong>Malvan - Kunkeshwar - Ganpatipule - Mumbai</strong></p>\r\n\r\n<p>Kunkeshwar &ndash; Jagrut Shiva temple built by an Arab with inviting sea beach at the side of it. Ganpatipule &ndash; Jagrut Ganesh Temple at the side of a scenic beach. Departure for Mumbai. <strong>(BLD)</strong></p>\r\n'),
(50, 15, 'Day 5', '<p><strong>Mumbai Arrival</strong></p>\r\n\r\n<p>Reaching Mumbai early morning.</p>\r\n'),
(51, 16, 'Day 1', '<p><strong>Mumbai - Dapoli&nbsp;</strong></p>\r\n\r\n<p>Morning Dept. from Mumbai. Dapoli Beach Tour &ndash; Karde &ndash; Beach Relaxation. (Enjoy Water Sports at Own Cost) Stay at Dapoli Karde. <strong>(BLD)</strong></p>\r\n'),
(52, 16, 'Day 2 ', '<p><strong>Dapoli - Ganpatipule</strong></p>\r\n\r\n<p>Dapoli Chandikadevi &ndash; A popular temple situated in a cave- a holy place of Pandav Era. Guhagar Long Sandy beach backed with Coconut, Mango &amp; Betel. Ganpatipule &ndash; Jagrut Ganesh Temple at the side of a scenic Dapoli beach. Stay at Ganpatipule. <strong>(BLD)</strong></p>\r\n'),
(53, 16, 'Day 3', '<p><strong>Ganpatipule - Kunkeshwar - Tarkarli</strong></p>\r\n\r\n<p>Deogad &ndash; Vijay Durga Fort Constructed by Raja Bhoj of Shilahar Dynasty in 1205 A.D. It has spread over 17 Acres of land. Gave the responsiblity of protecting this fort to brave Kanoji Angre. This fort was never conquered by anyone after that so it was known as &lsquo;Rock of Zilbratar&rsquo;. Kunkeshwar &ndash; Jagrut Shiva temple built by an Arab with inviting sea beach at the side of Mandir. Evening at Tarkarli Beach Stay at Malvan / Tarkarli. <strong>(BLD)</strong></p>\r\n'),
(54, 16, 'Day 4', '<p><strong>Tarkarli Local Sightseeing - Sawantwadi</strong></p>\r\n\r\n<p>Sindhudurga Fort built amidst the sea by Shivaji Maharaj. Going around Kokani mewa at Malvan bazar ( Cashewnut, Kokam, Khadekade Ladu).Tarkarli Backwater &ndash; the most inviting sea beach of Kokan. (Snorkeling &amp; Scuba diving: swimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air. Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jetskiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package.) Tourist have to choose between Sindhudurga Fort OR Scuba Diving at Malvan Stay at Sawantwadi <strong>(BLD)</strong></p>\r\n'),
(55, 16, 'Day 5', '<p><strong>Sawantwadi - Amboli</strong></p>\r\n\r\n<p>Sawantwadi Market of wooden colorful articles. Amboli Hiranyakeshi Mandir, Kawlesaad , Amboli Waterfall. Stay at Sawantwadi. <strong>(BLD)</strong></p>\r\n'),
(56, 16, 'Day 6', '<p><strong>Gaganbawada - Kolhapur - Mumbai</strong></p>\r\n\r\n<p>Gaganbawada Western Ghats or Sahyadris.( Gagangiri Maharaj ) Kolhapur : Mata Mahalaxmi of Kolhapur. Departure for Mumbai. <strong>(BLD)</strong></p>\r\n'),
(57, 16, 'Day 7', '<p><strong>Mumbai Arrival</strong></p>\r\n\r\n<p>Early Morning arrival at Mumbai.</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(58, 17, 'Day 1', '<p><strong>Mumbai - Wardha by Train</strong></p>\r\n\r\n<p>Afternoon train from CSTM to Wardha by by Sewagram Train at 2:55 pm.</p>\r\n'),
(59, 17, 'Day 2 ', '<p><strong>Sewagram - Anandvan</strong></p>\r\n\r\n<p>Get fresh at Sewagram Ashram &ndash; Mahatma Gandhi, Pawanar Ashram &ndash; Acharya Vinoba Bhave , Proceed to Anandvan. Stay at Anandvan. <strong>(BLD)</strong></p>\r\n'),
(60, 17, 'Day 3', '<p><strong>Anandvan Hemalkasa</strong></p>\r\n\r\n<p>Visit Anandvan Prakalp, Proceed to Hemalkasa. Stay at Hemalkasa. <strong>(BLD)</strong></p>\r\n'),
(61, 17, 'Day 4', '<p><strong>Hemalkasa - Somnath</strong></p>\r\n\r\n<p>Visit Hemalkasa Prakalp, Proceed to Somnath . Stay at Somnath. <strong>( BLD)</strong></p>\r\n'),
(62, 17, 'Day 5', '<p><strong>Somnath - Nagpur</strong></p>\r\n\r\n<p>Visit Somnath Prakalp, Proceed to Tadoba Tour, Tadoba Safari,Proceed to Nagpur. Stay at Nagpur. <strong>( BLD)</strong></p>\r\n'),
(63, 17, 'Day 6', '<p><strong>Nagpur Local Sightseeing</strong></p>\r\n\r\n<p>Tekadi Ganesh, Diksha Bhoomi, Ramtek, RSS Mukhyalaya. Night train from Nagpur to Mumbai. ( Nagpur &ndash; Mumbai Duranto Train ( 02190) at 8:40 pm) <strong>(BLD)</strong></p>\r\n'),
(64, 17, 'Day 7', '<p><strong>Mumbai Arrival</strong></p>\r\n\r\n<p>Arrival at Mumbai CSTM by 8:00 am.</p>\r\n'),
(65, 18, 'Day 1', '<p><strong>Port Blair Air port</strong></p>\r\n\r\n<p>Arrival at Port Blair Airport Visit chanttam Saw Mill, anthropologic Museum, Carbyn&rsquo;s Cove Beach &ndash; One of the most picturesque , coconut palms fringed Beach, Cellular Jail. Evening Light &amp; sound show . Stay at Port Blair. <strong>(D)</strong></p>\r\n'),
(66, 18, 'Day 2 ', '<p><strong>Port Blair &ndash; Havelock</strong></p>\r\n\r\n<p>Get ready for depart to Havelock by Private Cruise &ldquo;Green Ocean&rdquo;. Radhanagar Beach ( Worlds one of the beautiful beach.) Stay at Havelock <strong>(BD)</strong></p>\r\n'),
(67, 18, 'Day 3', '<p><strong>Havelock Local Sightseeing.</strong></p>\r\n\r\n<p>Elephant Beach in a Speed Boat (45 Min).Elephant Beach is one of best coral reefs in the World. Stay at Havelock. <strong>(BD)</strong></p>\r\n'),
(68, 18, 'Day 4', '<p><strong>Havelock - Port Blair</strong></p>\r\n\r\n<p>Check out hotel &amp; return journey to Port Blair by Mackruzz . Evening free for Shopping. Stay at Port Blair. <strong>(BD)</strong></p>\r\n'),
(69, 18, 'Day 5', '<p><strong>Port Blair - Ross Island</strong></p>\r\n\r\n<p>Proceed to Ross Island &ndash; the erstwhile capital of Port Blair. Evening Chidya Tapu for Scenic Sunset. Stay at Port Blair. <strong>(BD)</strong></p>\r\n'),
(70, 18, 'Day 6', '<p><strong>Port Blair drop .</strong></p>\r\n\r\n<p>Depart for Mumbai . <strong>(B)</strong></p>\r\n'),
(71, 19, 'Day 1', '<p><strong>Delhi - Nainital</strong></p>\r\n\r\n<p>Pick up from Delhi railway Station at 09:00 am and drive to Nainital . On arrival check into Hotel. Free time for leisure. Evening visit Naini Lake &amp; free time for shopping at Mall road. Dinner &amp; stay at Nainital. <strong>( D)</strong></p>\r\n'),
(72, 19, 'Day 2 ', '<p><strong>Nainital Local Sightseeing</strong></p>\r\n\r\n<p>After breakfast visit Bhimtal , Sattal, Nakuchyataal and Naina Devi by local transport in evening. Dinner &amp; Stay at Nainital. <strong>(BD)</strong></p>\r\n'),
(73, 19, 'Day 3', '<p><strong>Nainital&nbsp; -&nbsp; Corbett Park via Ranikhet Sightseeing.&nbsp;</strong></p>\r\n\r\n<p>After breakfast check out from hotel then drive to Kausani. On The Way Ranikhet Sight Seeing Corbett National Park,A promising land for the world species at Ramnagar in Nainital district in uttarakhand. The Corbett national park is the most dwindling part of nature residing at the himalaya foot hill &amp; Shivalik ranges and is&nbsp;being called as the perfect tigers land. On arrival at Corbett transfer to hotel,check in to hotel.Rest of the day free at leisure . Dinner &amp; stay at at Corbett Hotel. <strong>( BD)</strong></p>\r\n'),
(74, 19, 'Day 4', '<p><strong>Corbett - Mussorie</strong></p>\r\n\r\n<p>After breakfast check out from hotel then drive to Mussoorie. Mussoorie is a wonderful hill station in Uttaranchal. It is situated at the foothills of the Himalayas and is known as the Queen of the Hills. Mussoorie derives its name from the plants of Mussoorie or shrubmansoor which are available in large quantities in this region. The lush green hills, the varied flora and fauna and the majestic view of the Shivalik ranges and the Doon Valley attracts hundreds of tourists both domestic and international to Mussoorie each year. Mussoorie is famous not only for its scenic beauty but it has also developed into an important center of education and business. . Arrive at Mussoorie transfer to hotel check in to hotel and rest of the day is at leisure. overnight stay at hotel at Mussoorie. <strong>( BD)</strong></p>\r\n'),
(75, 19, 'Day 5', '<p><strong>Mussorie Local Sightseeing</strong></p>\r\n\r\n<p>After breakfast, visit to Kempty fall,, municipal garden,Gun hill, Company Garden, Mall road etc . Lal Tibba -This is regarded as the highest point in Mussoorie situated in area called &ldquo;Landour&rdquo;. Which is know to be the oldest inhabited place of Mussoorie Gun Hill &ndash; Gun hiil is the second highest point in Mussoorie.it is also known as picnic spot for the locals.From this points,Mussoorie appears to be changing colors in every minute.It looks amazing from here. Municipal Garden This is also known as Botanical Gardens of Mussoorie were established by geologist Dr. H.Fackner in the last century.. Kempty Fall &ndash; Kempty fall is just 12 kms down from Mussoorie on Mussoorie &ndash; Dehradun midway ,the beautifull falls were declared as a tourist destination by John Mekinan after after 1835.The name Kempty is derived from &lsquo;Camp &ndash; tea&rsquo;, as the Britishers would organise their tea parties here. Past Kempty Fall, 12 &ndash; km downhill. Later back to hotel,free for leisure. Dinner &amp; stay at Mussoorie. <strong>(BD)</strong> <strong>(Mussoorie Mall Road Sight Seeing not include) (Gun hill Trolley Cost Not include &amp; Lal Tibba Union Car Cost Not include)</strong></p>\r\n'),
(76, 19, 'Day 6', '<p><strong>Mussorie - Haridwar</strong></p>\r\n\r\n<p>After breakfast check out from hotel, then drive to Haridwar . Haridwar &ndash; Meaning &lsquo;Gateway to God&rsquo; is one of the seven holiest places of the Hindus, located on the banks of River Ganges. It is the place where river Ganga descends to the plains. . Haridwar is also one of the four places where drops of Amrit or nectar fell from the pitcher which was being carried by Garuda, the heavenly bird and the spot is known as Brahma Kund or Har-ki-Pauri . Enroute visit Rishikesh &ndash; was named after the God Hrishikesh whose appearance is an answer to the lord penances by Rabhiya Rishi. Ganga River, covering Lakshman Jhula ,Gita Bhavan ,&nbsp;Neelkanth Mahadev temple. Arrive Haridwar transfer to hotel, check in to hotel. Later witness Aarti of the Holy River Ganges.Dinner &amp; stay at in Haridwar. <strong>( BD)</strong></p>\r\n'),
(77, 19, 'Day 7', '<p><strong>Haridwar - New Delhi</strong></p>\r\n\r\n<p>After breakfast check out at 08:00 am from Hotel and proceed towards New Delhi Railway station for Home town Journey. <strong>(B)</strong></p>\r\n'),
(78, 20, 'Day 1', '<p><strong>Cochin - Munnar</strong></p>\r\n\r\n<p>Munnar Arrival at Ernakulam Proceed towards Munnar. Enroute visit Cheeyapara waterfalls, Valara Waterfalls. Overnight stay at Munnar. <strong>(D)</strong></p>\r\n'),
(79, 20, 'Day 2 ', '<p><strong>Munnar Local Sightseeing&nbsp;</strong></p>\r\n\r\n<p>Visit Echo point , Mattupetty Lake &amp; Dam, Munnar Elephant ride (at own cost) pothamedu view point , Hydel Park, Kathakali Dance Show ( at Own cost) &amp; Marketing. Overnight stay at Munnar. <strong>(BD)</strong></p>\r\n'),
(80, 20, 'Day 3', '<p><strong>Munnar - Thekkady</strong></p>\r\n\r\n<p>On arrival at Thekkady check in at Hotel. Visit Spice Garden , Boating at periyar lake at own cost. Overnight stay at Thekkady. <strong>(BD)</strong></p>\r\n'),
(81, 20, 'Day 4', '<p><strong>Thekkady - Kanyakumari</strong></p>\r\n\r\n<p>Proceed to Kanyakumari Enroute visit Suchindram Mandir. Stay at Kanyakumari. <strong>(BD)</strong></p>\r\n'),
(82, 20, 'Day 5', '<p><strong>Kanyakumari - Trivendrum</strong></p>\r\n\r\n<p>Visit Swami Vivekanand Memorial , Kanyakumari Mandir Evening visit Kovalam Beach . Stay at Trivendrum. <strong>(BD)</strong></p>\r\n'),
(83, 20, 'Day 6', '<p><strong>Trivendrum - Alleppey</strong></p>\r\n\r\n<p>Visit Padmanabh Mandir , Alleppey back water Boating ( at own cost ). Stay at Alleppey. <strong>(BD)</strong></p>\r\n'),
(84, 20, 'Day 7 ', '<p><strong>Alleppey - Cochin</strong></p>\r\n\r\n<p>Alleppey &ndash; Cochin : Visit Jewish Synagogue,Dutch Palace,St. Francis Church, Santacruz Basilica, Fort Kochi, Chinese Fishing nets . Overnight stay at Kochi. <strong>(BD)</strong></p>\r\n'),
(85, 20, 'Day 8 ', '<p><strong>Cochin - Mumbai</strong></p>\r\n\r\n<p>Drop at Cochin Railway Station / Airport.&nbsp;Depart for Mumbai by Flight / Train . Tour Concludes with Sweet Memories. <strong>(B)</strong></p>\r\n'),
(86, 21, 'Day 1', '<p>Srinagar Airport - Pahelgam ( Sight seeing by Union Vechile)</p>\r\n\r\n<p>Arrival at Srinagar Airport. Transfer towards Pahelgam. Enroute Visit Avantipora ruins, Saffron Fields, Aru Valley. Dinner &amp; Stay at Pahelgam.&nbsp;( D)</p>\r\n'),
(87, 21, 'Day 2 ', '<p>Pahelgam Local Sightseeing By Horse / Union Vechile</p>\r\n\r\n<p>After breakfast visit Betab Valley, Sheshnag Lake, Chandanwari Bridge , Baisaran Picturesque Valley where most of bollywood Movies are Shoot Photoshoot in Kashmiri Out fit at Baisaran Valley. Kashmir Valley . Enjoy Local Kashmiri Drink &ldquo;Khawha&rdquo; Evening Visit Cricket Bat Factory &amp; free for Shopping . Dinner &amp; Stay at Pahelgam.&nbsp;( BD)</p>\r\n'),
(88, 21, 'Day 3', '<p>Pahelgam - Srinagar&nbsp;</p>\r\n\r\n<p>After breakfast Proceed towards Srinagar. On arrival Check in at Hotel . Visit Srinagar Local Sightseeing Covering Mughal gardens &ndash; ChesmaShahi (Mughal Spring), Nishat (The Garden of Bliss), Shalimar (The Abode of Love). Dinner &amp; Stay at Srinagar Hotel .&nbsp;( BD)</p>\r\n'),
(89, 21, 'Day 4', '<p>Srinagar - Gulmarg - Srinagar</p>\r\n\r\n<p>After breakfast, Proceed to Gulmarg. In Gulmarg and take a ride in the world&rsquo;s highest cable car &ldquo;Gondola&rdquo; or enjoy your day by playing golf in the world&rsquo;s highest golf course. ( Gondola &amp; Pony ride &ndash; Not Included ) Visit Tangmarg , Khalinmarg . Enjoy Snow board Activities at Gulmarg ( Extra Cost ). Return back to Srinagar. Dinner &amp; Stay at Srinagar Hotel.&nbsp;( BD)</p>\r\n'),
(90, 21, 'Day 5', '<p>Srinagar - Sonmarg - Srinagar</p>\r\n\r\n<p>After breakfast, transfer to Sonmarg for a daytrip. Enroute see Hazratbal Shrine, Gagangir Tourist Village. The drive from Srinagar to Sonmarg is very beautiful as you will pass through some towns and villages, at many places you can enjoy the view of paddy fields with rivers flowing on one side. In Sonmarg you can visit Thajwas Glacier which is around 4 Kms from Sonmarg. The name Sonmarg is derived from two Kashmiri words &ldquo;Son&rdquo; &amp; &ldquo;Marg&rdquo; which mean &ldquo;Gold&rdquo; &amp; &ldquo;Meadow&rdquo;, when put together it means &ldquo;Meadow of Gold&rdquo;. Return to Srinagar in the evening after enjoying your day. Overnight stay at Srinagar Hotel.&nbsp;( BD)</p>\r\n'),
(92, 21, 'Day 6', '<p>Srinagar Hotel - Srinagar House Boat Stay.</p>\r\n\r\n<p>After breakfast we experience a stay at the floating boats, famously known as Kashmiri Houseboats which are designed with the local interiors. Enjoy Shikhara ride in Dal Lake . Overnight Stay at Srinagar House Boat&nbsp;( BD)</p>\r\n'),
(93, 21, 'Day 7', '<p>Srinagar Airport</p>\r\n\r\n<p>After breakfast check out from House boat. Now its time to Say Good Bye to our Travel companion. Get in Touch with Phone calls, Emails, What sup Groups , Instagram will meet again on another Memorable Tours. Now its time Drop at Srinagar Airport for Home Town Journey.&nbsp;( B)</p>\r\n'),
(94, 22, 'Day 1', '<p>Amritsar Railway / Airport Arrival&nbsp;.</p>\r\n\r\n<p>Arrive at Amritsar Railway Station / Airport. On arrival proceed towards Amritsar. Check in at Hotel at Amritsar. Visit Durga Mandir Temple, Jalianwala Baug. Dinner &amp; Stay at Amritsar Hotel. ( BD)</p>\r\n'),
(95, 23, 'Day 1', '<p><em>Mumbai - Sawantwadi</em></p>\r\n\r\n<p>Night departure from Mumbai.</p>\r\n'),
(96, 23, 'Day 2', '<p><em>Sawantwadi - Vengurla - Sawantwadi</em></p>\r\n\r\n<p>Vengurla : Reaches Reddi Ganesh, well known for swayambhu Ganpati .Followed by auspicious darshan of Vetoba at Aarvali. Relaxation at Sagareshwar beach. Delicious Bhandari Sea Food.Stay at Sawantwadi. (BLD)</p>\r\n'),
(97, 23, 'Day 3', '<p><em>Sawantwadi - Malvan - Sawantwadi</em></p>\r\n\r\n<p>Sindhudurg Fort built amidst the sea by Shivaji Maharaj, Backwater of Tarkarli &ndash; themost inviting sea beach of Kokan. Going around Kokani mewa at Malvan Bazar (Cashewnut, Kokam, Khadkhade Ladu, Khaje). (Snorkeling &amp; Scuba diving: swimming underwater with special breathing equipment. Parasailing: pulled behind a motorboat while wearing a parachute so that you sail through the air. Watersports &ndash; Speed boat, Scooter Boat, Kayaking, Jetskiing, Bumper ride, Banana ride &ndash; Sport Activities cost not included in this package.) Stay at Sawantwadi . (BLD)</p>\r\n'),
(98, 22, 'Day 2 ', '<p>Amritsar Local Sightseeing</p>\r\n\r\n<p>After breakfast visit Golden Temple , Market for Shopping. Afternoon proceed towards Indo &ndash; Pak Wagha Aatari Border to see the Ceremony. Enjoy the sentimental Ceremony of Flag Down at Wagha &ndash; Aatari Border. Dinner &amp; stay at Amritsar. (BD)</p>\r\n'),
(99, 23, 'Day 4', '<p><em>Sawantwadi - Amboli - Sawantwadi</em></p>\r\n\r\n<p>Visit to Hill Station of Kokan Region. Amboli with scenic beauty &amp; greenary. Sourceof Hiranyakeshi river. Kawlesaad Point which show the entire range of Sahyadri. Waterfall of Nagartaas. Sawantwadi Market of Wooden Colourful articles. Stay at Sawantwadi. (BLD)</p>\r\n'),
(100, 23, 'Day 5', '<p><em>Sawantwadi - Goa</em></p>\r\n\r\n<p>South Goa : Dona Paula beach &ndash; Small palm fringed beach that offers water skiing &amp; watersports. Miramar Beach Popular meeting place. Old Goa Church, Shree Mangeshi Temple &ndash; a famous temple of Lord Shiva, located near the village of Priol. Shree Shantadurga Temple &ndash; the the largest &amp; most popular temple of Goa, dedicated to Shantadurga Manifictation of Parvati or Durga. Stay at Goa. (BLD)</p>\r\n'),
(101, 23, 'Day 6', '<p><em>Goa - Mumbai</em></p>\r\n\r\n<p>North Goa : Visits Vegator beach, Anjuna beach, which is Famous for its flea marketon Wednesday afternoon for &ldquo;Hippies&rdquo; Moves on toAquada Fort, a token of portuguese culture with a four storied light house in the middle of the fort. Then&nbsp;moves on to Calungute Beac, known as the &ldquo;Queen of Goan Beaches. Return travel to Mumbai. (BLD)</p>\r\n'),
(102, 23, 'Day 7', '<p><em>Mumbai arrival .</em></p>\r\n\r\n<p>Reaching Mumbai early morning.</p>\r\n'),
(103, 22, 'Day 3', '<p>Amritsar - Dalhouise</p>\r\n\r\n<p>After breakfast proceed towards Dalhouise. On arrival check in at Hotel for Fresh up . After noon Visit St. Francis Church , St. John&rsquo;s Church , Thandi Sadak, Subhash Chowk, Gandhi Chowk . Visit Market for Shopping. Dinner &amp; Stay at Dalhouise Hotel. (BD)</p>\r\n'),
(104, 22, 'Day 4', '<p>Dalhouise Local Sightseeing</p>\r\n\r\n<p>After breakfast visit Khajjiar Garden (Mini Switzerland) of India. Chamba is a small but yet attractive tourist destination in Himachal Pradesh. Chamba is at an altitude of 6,500 ft. above sea level. Confronting the backdrop of dense Pines, deodars and lush green meadow, can enjoy Trekking, Horse Riding, Paragliding. Dinner &amp; Stay at Dalhouise Hotel. (BD)</p>\r\n'),
(105, 22, 'Day 5', '<p>Dalhouise - Dharamshala</p>\r\n\r\n<p>After breakfast proceed towards Dharamshala. On arrival at Dharamshala Visit Tibetan Monk residence of Dalai Lama. Dhauladhar Ranges, Dharamsala Stadium, Tibetan Monestary, Market. War Memorial, Dal Lake, Bhagsu waterfall, Bahgsunag Temple. Dinner &amp; Stay at Dharamshala Hotel. (BD)</p>\r\n'),
(106, 22, 'Day 6', '<p>Dharamshala - Manali Local Sightseeing</p>\r\n\r\n<p>After breakfast proceed towards Manali. On arrival at Manali check in at Hotel. After fresh up visit Hadima Temple, Naggar Art Gallery, Manu Temple, Van Vihar, Club House, Manali Mall Road . Dinner &amp; Stay at Manali Hotel . (BD)</p>\r\n'),
(107, 22, 'Day 7', '<p>Manali Snow Point Excursion - Manali</p>\r\n\r\n<p>Visit Snow Point / Rohtang Valley . Enjoy the fun in ice. Visit Solang Valley where you can do adventure sports like ( Hot Balloon, Flying Fox, Rope Climbing etc ) at own cost. Evening stroll on Manali Mall road for Shopping . Dinner &amp; stay at Manali Hotel. (BD)</p>\r\n'),
(108, 22, 'Day 8', '<p>Manali - Chandigarh</p>\r\n\r\n<p>After breakfast Proceed towards Chandigarh. Enjoy boating at Sukhana Lake ( at Own Cost) , Rock Garden . Dinner &amp; stay at Chandigarh Hotel. (BD)</p>\r\n'),
(109, 22, 'Day 9 ', '<p>Chandigarh - Delhi Drop</p>\r\n\r\n<p>After breakfast visit Rose Garden and transfer towards Delhi Railway Station / Airport for Home town Journey. (B)</p>\r\n'),
(110, 25, 'Day 1', '<p>Mumbai - Mahad - Pali - Ranjangaon - Pune.</p>\r\n\r\n<p>Mahad (Varad Vinayak), Pali (Ballaleshwar), Ranjangaon (Mahaganapati), Pune halt. ( BLD)</p>\r\n'),
(111, 25, 'Day 2', '<p>Theur - Siddhtek - Morgaon - Jejuri - Pune.</p>\r\n\r\n<p>Theur (Chintamani), Siddhtek (Siddhivinayak), Morgaon (Mayureshwar), Jejuri (Khandoba), Balaji Temple (Narayanpur), Pune halt. (BLD)</p>\r\n'),
(112, 25, 'Day 3', '<p>Ozar&nbsp;- Lenyadri - Mumbai</p>\r\n\r\n<p>Ozar (Vighnahar), Lenyadrri (Girijatmaj), Return travel to Mumbai. ( BL)</p>\r\n'),
(113, 26, 'Day 1', '<p>Mumbai - Malvan By Bus&nbsp;.</p>\r\n\r\n<p>Late Night Departure from Mumbai by 2&times;2 Luxury Bus.</p>\r\n'),
(114, 26, 'Day 2', '<p>Malvan Local Sightseeing&nbsp;.</p>\r\n\r\n<p>Visit Suvarna Ganesh Temple, Chivla Beach, Rock Garden, Malvan Marketing, Sindhudurga Fort. . Overnight stay at Hotel. ( LD)</p>\r\n'),
(115, 26, 'Day 3', '<p>Tarkarli / Deobaug Local Sightseeing&nbsp;.</p>\r\n\r\n<p>Visit Sangam Point, Tsunami Island, ( Tarkarli Backwater, Water sports at Own cost eg Scuba, Snorkelling, Bumper Ride, Banana Ride, Jet Sking , ParaSailing etc) Over night Stay at Hotel. ( BLD)</p>\r\n'),
(116, 26, 'Day 4', '<p>Deobaug - Malvan - Mumbai</p>\r\n\r\n<p>Morning Visit Deobaug Beach. Evening by 4 Pm departure for Malvan to board into bus for Mumbai. (BL)</p>\r\n'),
(117, 26, 'Day 5', '<p>Mumbai Arrival</p>\r\n\r\n<p>Early Morning arrival at Mumbai.</p>\r\n'),
(118, 27, 'Day 1', '<p>Mumbai - Ekta Nagar by Train.</p>\r\n\r\n<p>Night Dept. From Dadar at 11:50 pm, Borivali at 12:06 pm by Dadar &ndash; Ekta Nagar Express. Dadar &ndash; EKNR SF Express ( KDCY &ndash; 12927)</p>\r\n'),
(119, 27, 'Day 2', '<p>Ekta Nagar</p>\r\n\r\n<p>Morning arrival at Ekta Nagar. After breakfast Check in at Tent City. Lunch at Tent City. Visit Sardar Sarovar Dam, Valley of Flowers, Statue of Unity viewing Gallery, Laser Show ,Glow Garden .Overnight stay at Tent. ( BLD)</p>\r\n'),
(120, 27, 'Day 3', '<p>Ekta Nagar</p>\r\n\r\n<p>After breakfast relaxation visit Jungle safari after lunch Arogya Van, Cactus Garden, Butterfly Garden ,Overnight Stay at Tent. (BLD)</p>\r\n'),
(121, 27, 'Day 4', '<p>Drop Ekta Railway Station .</p>\r\n\r\n<p>After breakfast Check out from Tent City. After lunch Visit Swami Narayan Mandir and drop at Ekta Nagar Railway Station.<br />\r\n( B)</p>\r\n'),
(122, 28, 'Day 1', '<p><em>Morning arrival at Mahabaleshwar .</em></p>\r\n\r\n<p><em>Pratapgad fort</em></p>\r\n\r\n<p><em>Check in at Hotel at 10 am . Proceed for Sightseeing &ndash; Pratapgad fort &ndash; Bhavani Devi Temple , Afzal Khan Tomb . Overnight Stay at Hotel (LD)</em></p>\r\n'),
(123, 28, 'Day 2', '<p>Mahabaleshwar &amp; Panchgani</p>\r\n\r\n<p>After Breakfast proceed for sightseeing Mahabaleshwar &amp; Panchagini combine tour 4-hour : Old Mahabaleshwar, Panchaganga Mandir, lord shiva temple ,castle Point, Needle Hole Point, Strawberry Garden, Mala&rsquo;sJam Factory, Parsi Point .Return to Hotel for lunch rest of the day free. (BLD)</p>\r\n'),
(124, 28, 'Day 3', '<p>Mahabaleshwar - Mumbai</p>\r\n\r\n<p>Morning check Out from hotel &amp; Report to Bust stand at 9.00AM (B)</p>\r\n'),
(125, 29, 'Day 1', '<p>Goa Arrival</p>\r\n\r\n<p>Arrival at Goa. On an arrival transfer to Hotel and free time for leisure. Dinner and stay at Hotel.&nbsp;( D)</p>\r\n'),
(126, 29, 'Day 2', '<p>South Goa Sightseeing</p>\r\n\r\n<p>After breakfast proceed towards South Goa visit Mangeshi Temple , Shantadurga Temple, Old Goa Church, Donapaula beach . Evening followed by Mandovi boat cruise. Dinner &amp; stay at Goa.&nbsp;( BD)</p>\r\n'),
(127, 29, 'Day 3', '<p>North Goa Sightseeing</p>\r\n\r\n<p>After breakfast proceed towards North Goa. Visit Calangute Beach. Calangute Beach is a Queen of Beaches in north Goa, Fort Aquada, Baga Beach, Candolim Beach. Evening shopping at Panjim Market. Dinner &amp; Stay at Goa .&nbsp;(BD)</p>\r\n'),
(128, 29, 'Day 4', '<p>Thivim Railway Station Drop</p>\r\n\r\n<p>Morning drop at Thivim Railway Station. (B)</p>\r\n'),
(129, 30, 'Day 1', '<p>Mumbai Departure by Train.</p>\r\n\r\n<p>Dept. From Mumbai by Devgiri Exp. At 21:00 PM</p>\r\n'),
(130, 30, 'Day 2', '<p>Aurangabad Local Sightseeing</p>\r\n\r\n<p>Arrival at Aurangabad Railway Station in the Morning.Visit Daulatabad Fort, Ellora caves, Bibi ka Makbara. Stay at Aurangabad. (LD)</p>\r\n'),
(131, 30, 'Day 3', '<p>Aurangabad &ndash; Ajanta Caves &ndash; Aurangabad</p>\r\n\r\n<p>Visit India&rsquo;s most Historical monument Ajanta Caves. Stay at&nbsp;Aurangabad. (BLD)</p>\r\n'),
(132, 30, 'Day 4', '<p>Aurangabad &ndash; Mumbai</p>\r\n\r\n<p>Visit&nbsp;Panchakki, Grishneshwar Jyotirling Darshan . Return onward journey by Nandigram Exp at 21:30 Pm (BL)</p>\r\n'),
(133, 30, 'Day 5', '<p>Mumbai Arrival .</p>\r\n\r\n<p>Early Morning 6 AM arrival at Mumbai</p>\r\n'),
(134, 31, 'Day 1', '<p>Mumbai - Alibaug</p>\r\n\r\n<p>Morning Dept 6:30 am from Mumbai. ( Kanhoji Angre Samadhi Optional ) Nagaon Beach ( Water Sport by Own) , Datta Mandir Varahanda Marge. Stay at Alibaug . ( BLD)</p>\r\n'),
(135, 31, 'Day 2', '<p>Alibaug Local Sightseeing</p>\r\n\r\n<p>Murud Janjira Fort ( Fort by Own ) , Kashid Beach , Birla Mandir ( Salav ) Stay at Alibaug . (BLD)</p>\r\n'),
(136, 31, 'Day 3', '<p>Alibaug - Mumbai</p>\r\n\r\n<p>Morning Visit Kihim Beach . After Lunch departure for Mumbai. ( BL)</p>\r\n'),
(137, 32, 'Day 1', '<p>Mumbai - Kathmandu</p>\r\n\r\n<p>Arrival at Tribhuvan International Airport Kathmandu. On arrival meet &amp; greet and proceed to respective Hotel. Before check in you will be briefed about your Tour Programme, rest of the time free for personal Activity. Dinner &amp; Stay at Kathmandu Hotel. ( D)</p>\r\n'),
(138, 32, 'Day 2 ', '<p>Kathmandu - Chitwan National Park</p>\r\n\r\n<p>After breakfast proceed towards Chitwan. Check in at Hotel / Resort. After lunch have a brief note about Chitwan Jungle Activities. Evening enjoy Nepali Cultural Programme present by Local Nepalis. Dinner &amp; Stay at Chitwan Hotel. ( BLD)</p>\r\n'),
(140, 32, 'Day 3', '<p>Chitwan National Park &amp; Local Sight Seeing - Chitwan</p>\r\n\r\n<p>After breakfast Proceed for Day Adventure tour of Chitwan along with the Chitwan Jeep Safari along with Canoe ride. Dinner &amp; Overnight Stay at Chitwan. ( BLD)</p>\r\n'),
(141, 32, 'Day 4', '<p>Chitwan - Pokhara</p>\r\n\r\n<p>After breakfast proceed towards Pokhara. Enroute visit Manokamana Temple. Evening check in at Pokhara Hotel. Dinner &amp; Stay at Pokhara Hotel. ( BLD)</p>\r\n'),
(142, 32, 'Day 5', '<p>Local Sightseeing + Pokhara City Tour</p>\r\n\r\n<p>Early Morning around 5:00 am proceed to Sarangkot ( 25 Min Drive) from where you can enjoy the Sunrise then return to Hotel. After breakfast proceed for full day City Tour of Pokhara which cover Davis Fall, Gupteshwar Mahadev , Fewa Lake,Talbarahi, Bindabasini Temple, International Mountain Museum . Dinner &amp; Stay at Pokhara Hotel . ( BLD)</p>\r\n'),
(143, 32, 'Day 6', '<p>Pokhara - Kathmandu</p>\r\n\r\n<p>After breakfast proceed towards Kathmandu by Flight. Visit Pashupatinath , Guheshwari ( Shakti Peeth) Jalnarayan Mandir, Swayambhu Temple. Dinner &amp; Stay at Kathmandu . ( BLD)</p>\r\n'),
(144, 32, 'Day 7', '<p>Kathmandu - Mumbai</p>\r\n\r\n<p>After breakfast check out from Hotel. Free for Shopping. After lunch drop at Kathmandu Airport for Home Town Journey. ( BL)</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tour_photos`
--

CREATE TABLE `tour_photos` (
  `photos_id` int(11) NOT NULL,
  `filename` varchar(2000) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tour_photos`
--

INSERT INTO `tour_photos` (`photos_id`, `filename`, `tour_id`, `photo_name`) VALUES
(1, 'assets/upload/tour_photos/kokan1.jpg', 1, 'kokan photo1'),
(2, 'assets/upload/tour_photos/kokan2.jpg', 1, 'kokan photo2'),
(3, 'assets/upload/tour_photos/kokan3.jpg', 1, 'kokan photo3'),
(4, 'assets/upload/tour_photos/sindhu.jpg', 2, 'Photo1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `about` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `mobile`, `email`, `password`, `about`, `image`) VALUES
(5, 'Ram1', '8899775566', 'ram@gmail.com', '123', '1234', ''),
(6, 'Ram', '8899775566', 'ram@gmail.com', '112', '1234', ''),
(11, 'ganesh patil', '9988776655', 'ganesh@gmail.com', '123', 'abcd', ''),
(12, 'chirayu menkudale', '4325345', 'nikhil1@gmail.com', '', 'asdsad', '4d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer_booking`
--
ALTER TABLE `customer_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `customized_packages`
--
ALTER TABLE `customized_packages`
  ADD PRIMARY KEY (`customized_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `group_fixed_packages`
--
ALTER TABLE `group_fixed_packages`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `tour_category`
--
ALTER TABLE `tour_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tour_dates`
--
ALTER TABLE `tour_dates`
  ADD PRIMARY KEY (`date_id`);

--
-- Indexes for table `tour_itinerary`
--
ALTER TABLE `tour_itinerary`
  ADD PRIMARY KEY (`iti_id`);

--
-- Indexes for table `tour_photos`
--
ALTER TABLE `tour_photos`
  ADD PRIMARY KEY (`photos_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_booking`
--
ALTER TABLE `customer_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customized_packages`
--
ALTER TABLE `customized_packages`
  MODIFY `customized_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `group_fixed_packages`
--
ALTER TABLE `group_fixed_packages`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tour_category`
--
ALTER TABLE `tour_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tour_dates`
--
ALTER TABLE `tour_dates`
  MODIFY `date_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tour_itinerary`
--
ALTER TABLE `tour_itinerary`
  MODIFY `iti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `tour_photos`
--
ALTER TABLE `tour_photos`
  MODIFY `photos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
