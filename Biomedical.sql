SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `date` text NOT NULL,
  `time` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `name`, `email`, `date`, `time`, `description`, `regtime`) VALUES
(16, 'Kshitij Kumar', 'testUser@gmail.com', '6/20/2024', '10:00pm', 'Fever', '2024-06-08 12:22:26'),
(17, 'Kshitij Kumar', 'testUser@gmail.com', '6/19/2024', '11:00pm', 'Fever', '2024-06-08 12:22:08'),
(18, 'Kshitij Kumar', 'hello@gmail.com', '6/4/2024', '12:30am', 'Cold', '2024-06-08 13:04:17'),
(19, 'Kshitij Kumar', 'abc@teamcg.com', '6/5/2024', '12:30am', 'Fever', '2024-06-14 11:40:45'),
(21, 'Kshitij Kumar', 'testUser@gmail.com', '7/3/2024', '3:30am', 'Fever', '2024-07-03 08:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(22),
(22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `lastseen` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `confirmation_token`, `username`, `enabled`, `first_name`, `gender`, `last_name`, `password`, `authority`, `lastseen`) VALUES
(1, '36983cce-975b-4a92-bf73-a4f41978e01c', 'kshitij.yoyo@gmail.com', b'1', 'kshitij', 'MALE', 'Kumar', 'kshitij', 'ROLE_ADMIN', 'Thu Aug 22 00:00:56 IST 2019'),
(2, 'ByAdmin-Panel', 'soumyadip@gmail.com', b'1', 'Soumyadip', 'Male', 'Chowdhury', 'default', 'ROLE_DOCTOR', 'Fri Jun 14 17:11:47 IST 2019'),
(4, 'ByAdmin-Panel', 'a.yoyo@gmail.com', b'1', 'yadip', 'MALE', 'Chowdh', 'default', 'ROLE_DOCTOR', 'Wed Jul 03 14:06:52 IST 2019'),
(6, 'ByAdmin-Panel', 'kshitij.yoyo@gmail.com', b'1', 'kshitij', 'MALE', 'Kumar', 'default', 'ROLE_DOCTOR', 'Wed Aug 21 23:59:07 IST 2019'),
(7, 'ByAdmin-Panel', 'soumy.cmp@gmail.com', b'1', 'Mr. Soumy', 'MALE', 'patel', 'default', 'ROLE_ADMIN', 'Sat Jun 08 18:25:03 IST 2019'),
(12, 'a6866ee4-f568-47a9-9a23-2297ec37c293', 'testUser@gmail.com', b'1', 'Akhil', 'Male', 'Chamar', 'akhil', 'ROLE_USER', 'Wed Aug 21 23:57:20 IST 2019'),
(20, 'ByAdmin-Panel', 's@teamcg.com', b'1', 'Sanket', 'Male', 'Sarkar', 'default', 'ROLE_DOCTOR', 'Fri Jun 14 17:14:51 IST 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
