-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 12:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_event`
--

CREATE TABLE `add_event` (
  `id` int(11) NOT NULL,
  `event` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_event`
--

INSERT INTO `add_event` (`id`, `event`) VALUES
(1, 'house warming'),
(2, 'wedding anniversary'),
(3, 'baptism'),
(4, 'marriage'),
(5, 'birthday'),
(6, 'engagement'),
(7, 'festival'),
(8, 'festival');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(4) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin500');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `email`, `password`) VALUES
(1, 'event@gmail.com', 'admin700');

-- --------------------------------------------------------

--
-- Table structure for table `bookingsite`
--

CREATE TABLE `bookingsite` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingsite`
--

INSERT INTO `bookingsite` (`id`, `name`, `contact_number`, `username`, `password`) VALUES
(1, 'Emmanuel', '987541365', 'emmanuel@gmail.com', 'emma241'),
(2, 'Johny', '874589632', 'johny@gmail.com', 'johny999'),
(3, 'Manu', '985412347', 'manu@gmail.com', 'manu500'),
(4, 'David', '856741235', 'david@gmail.com', 'david4445'),
(5, 'Rohan', '985741236', 'rohan@gmail.com', 'rohan777'),
(6, 'Hari', '8547965412', 'hari@gmail.com', 'hari400'),
(7, 'Faizal', '987456321', 'faizal@gmail.com', 'faizal20'),
(8, 'Antony', '987452145', 'antony@gmail.com', 'antony7'),
(9, 'Unni', '987456321', 'unni@gmail.com', 'unni65'),
(10, 'Dani', '98563214777', 'dani@gmail.com', 'dani566');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `vehicle`) VALUES
(1, 'cars'),
(2, 'bikes');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `pincode` varchar(500) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `address`, `city`, `state`, `pincode`, `mobile`, `email`, `password`) VALUES
(1, 'Jacob', 'Ernakulam', 'Edappaly', 'Kerala', '687561', '9874521479', 'jacob@gmail.com', 'jacob441'),
(2, 'Harry', 'Ernakulam', 'kalamassery', 'Kerala', '687874', '985632114', 'harry@gmail.com', 'harry330'),
(3, 'Yadhukrishnan', 'Ernakulam', 'Kakkanad', 'Kerala', '687852', '958246114', 'yadhu@gmail.com', 'yadhu10'),
(4, 'Sarath k', 'Ernakulam', 'Fort Kochi', 'Kerala', '685412', '9542136852', 'sarathk@gmail.com', 'sarath770'),
(5, 'Raghu', 'Ernakulam', 'Palarivatom', 'kerala', '683412', '963258741', 'raghu@gmail.com', 'raghu7889'),
(6, 'Daniel', 'Ernakulam', 'Elamakkara', 'Kerala', '685582', '989541272', 'daniel@gmail.com', 'dani899'),
(12, 'Benny', 'Ernakulam', 'North', 'Kerala', '685521', '9856321478', 'benny@gmail.com', '0'),
(13, 'Benny', 'Ernakulam', 'North', 'Kerala', '685521', '9856321478', 'benny@gmail.com', '1223'),
(14, '', '', '', '', '', '', '', ''),
(15, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `func_id` int(11) NOT NULL,
  `event` varchar(500) NOT NULL,
  `dof` date NOT NULL,
  `place` varchar(500) NOT NULL,
  `status` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`func_id`, `event`, `dof`, `place`, `status`, `user_id`) VALUES
(1, 'marriage', '2021-12-02', 'auditorium', 1, 3),
(2, 'birthday', '2022-02-12', 'hall', 1, 1),
(3, 'engagement', '2022-04-10', 'auditorium', 1, 4),
(4, 'birthday', '2022-05-05', 'open air', 1, 4),
(5, 'marriage', '2021-12-02', 'auditorium', 1, 4),
(6, 'house warming', '2022-04-26', 'hall', 1, 1),
(7, 'house warming', '2022-04-26', 'hall', 1, 3),
(8, 'marriage', '2022-07-15', 'auditorium', 0, 4),
(9, 'wedding anniversary', '2022-04-30', 'auditorium', 0, 6),
(10, 'baptism', '2022-05-12', 'auditorium', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productName` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `totalPrice` varchar(500) NOT NULL,
  `tot_amt` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productName`, `quantity`, `totalPrice`, `tot_amt`) VALUES
(1, 'bag', '2', '250', 500),
(2, 'shirt', '3', '600', 1800),
(3, 'shoes', '3', '800', 2400);

-- --------------------------------------------------------

--
-- Table structure for table `product_admin`
--

CREATE TABLE `product_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_admin`
--

INSERT INTO `product_admin` (`id`, `email`, `password`) VALUES
(1, 'productadmin@gmail.com', 'productadmin555');

-- --------------------------------------------------------

--
-- Table structure for table `product_users`
--

CREATE TABLE `product_users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `shopName` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_users`
--

INSERT INTO `product_users` (`id`, `name`, `address`, `mobile`, `email`, `password`, `shopName`) VALUES
(1, 'Benny', 'Ernakulam', '9856321478', 'benny@gmail.com', 'ssd', 'sdasd'),
(2, 'Jacob', 'Ernakulam', '9874521478', 'jacob@gmail.com', 'dsa', 'asdas'),
(3, 'Peter', 'Ernakulam', '989563214', 'peter@gmail.com', 'peter500', 'Peter textiles');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(4) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `dob` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `name`, `email`, `password`, `mobile`, `dob`) VALUES
(1, 'Arun A S', 'arun@gmail.com', 'arun123', '987456321', '2021-12-31'),
(4, 'Geo', 'geo@gmail.com', 'geo888', '958741236', '2021-12-03'),
(5, 'Vishal', 'vishnu@gmail.com', 'vishnu145', '9854712356', '2021-12-16'),
(8, 'Hari', 'hari@gmail.com', 'hari741', '98725631', '2021-02-19'),
(9, 'Titus', 'titu@gmail.com', 'titus565', '9895687412', '2021-10-26'),
(10, 'Sarath', 'sarath@gmail.com', '123', '9542136978', '2021-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `seat_type` varchar(500) NOT NULL,
  `seat_No` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `seat_type`, `seat_No`, `status`, `user_id`) VALUES
(1, 'D', 4, 1, 2),
(2, 'B', 3, 0, 1),
(3, 'F', 2, 0, 4),
(4, 'G', 3, 1, 3),
(5, 'C', 4, 0, 5),
(6, 'G', 1, 0, 6),
(7, 'B', 2, 0, 7),
(8, 'F', 3, 0, 8),
(9, 'B', 2, 0, 9),
(10, 'D', 1, 1, 2),
(11, 'B', 3, 1, 10),
(12, 'D', 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `department` varchar(100) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `address`, `gender`, `department`, `qualification`, `experience`, `email`, `password`) VALUES
(4, 'Mary', 'Paravur', 'Female', 'English', 'UG', '1yrs', 'mary@gmail.com', 'mary999'),
(5, 'Hari', 'Paravur', 'Male', 'Malayalam', 'UG', '1 yrs', 'hari@gmail.com', 'hari300'),
(6, 'Jishnu', 'Kollam', 'Male', 'Biology', 'PG', '2 yrs', 'jishnu@gmail.com', 'jishnu3214'),
(7, 'Arun', 'Trissur', 'Male', 'History', 'UG', '1 yrs', 'arun@gmail.com', 'arun777'),
(8, 'Dani', 'Ernakulam', 'Male', 'English', 'PG', '2 yrs', 'dani@gmail.com', 'dani400'),
(9, 'Ravi', 'Calicut', 'Male', 'Chemistry', 'PG', '4 yrs', 'ravi@gmail.com', 'ravi54123'),
(10, 'Gautham', 'Paravur', 'Male', 'Chemistry', 'PG', '3 yrs', 'gautham@gmail.com', 'gautham147');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `age` int(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `course` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `status` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `address`, `gender`, `age`, `image`, `course`, `email`, `password`, `status`) VALUES
(1, 'Peter', 'Trivandrum', 'Male', 18, '', 'B.sc computer science', 'jacob@gmail.com', 'jacob200', 0),
(2, 'Vinu', 'Ernakulam', 'Male', 20, '', 'Bsc. Mathematics', 'vinu@gmail.com', 'vinu999', 0),
(3, 'George', 'Angamaly', 'Male', 22, '', 'Bsc.Physics', 'george@gmail.com', 'george3', 0),
(4, 'Sarath', 'Ernakulam', 'Male', 21, '', 'BA. English', 'sarath@gmail.com', 'sarath2200', 0),
(5, 'Athira', 'Trissur', 'Female', 19, '', 'B.sc Biotechnology', 'athira@gmail.com', 'athira6523', 0),
(9, 'Akshay', 'Kollam', 'Male', 21, '', 'BCA', 'akshay@gmail.com', 'akshay5550', 0),
(11, 'hkhkh', 'Ernakulam', 'Male', 22, '', 'BCA', 'reennu@gmail.com', '123', 0),
(12, 'hkhkh', 'Ernakulam', 'Male', 22, '', 'BCA', 'reennu@gmail.com', '9876', 0),
(13, 'Arun', 'Ernakulam', 'Female', 22, 'Screenshot (7).png', 'Bsc. Mathematics', 'ssdsd@sdsdsd.s', '34344', 0),
(14, 'JIthu Mathew', 'Kottayam', 'Male', 22, 'out.png', 'Bsc. Mathematics', 'jithu@gmail.com', 'jithu123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `sub_cate` varchar(500) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `sub_cate`, `cate_id`) VALUES
(1, 'audi', 1),
(2, 'toyota', 1),
(3, 'royal enfield', 2),
(4, 'hyundai', 1),
(5, 'jawa', 2),
(6, 'ktm', 2),
(7, 'yamaha', 2),
(8, 'kia', 1),
(9, 'benz', 1),
(10, 'tvs', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_event`
--
ALTER TABLE `add_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingsite`
--
ALTER TABLE `bookingsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`func_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_admin`
--
ALTER TABLE `product_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_users`
--
ALTER TABLE `product_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_event`
--
ALTER TABLE `add_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookingsite`
--
ALTER TABLE `bookingsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `func_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_admin`
--
ALTER TABLE `product_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_users`
--
ALTER TABLE `product_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
