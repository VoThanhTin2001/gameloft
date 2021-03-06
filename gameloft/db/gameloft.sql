-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 11:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameloft`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_acc` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_acc`, `name`, `email`, `password`, `phone`, `address`, `image`, `date_create`, `level`) VALUES
(1, 'Administator', 'admin@gameloft.com', '202cb962ac59075b964b07152d234b70', '09090909099', 'KTX P412', '1646760063.gif', '2021-09-30 08:09:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `content`, `date_create`) VALUES
(1, '390 Ho??ng V??n Th???, Ph?????ng 4, T.P H??? Ch?? Minh', '2019-07-23 11:36:34'),
(2, 'Hotline: 19008198', '2019-07-23 11:37:02'),
(5, ' Email: lttc@edu.vn', '2019-07-23 11:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `detail_invoice`
--

CREATE TABLE `detail_invoice` (
  `id_detail_invoice` int(11) NOT NULL,
  `code_invoice` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detail_invoice`
--

INSERT INTO `detail_invoice` (`id_detail_invoice`, `code_invoice`, `sku_product`, `qty`) VALUES
(3, 'INV01', 'S13', 1),
(4, 'INV01', 'S01', 2),
(5, 'INV01', 'S11', 1),
(6, 'INV01', 'S14', 1),
(14, 'INV02', 'S14', 1),
(17, 'INV03', 'S14', 3),
(18, 'INV03', 'S13', 1),
(19, 'INV04', 'S12', 1),
(20, 'INV04', 'S10', 1),
(21, 'INV05', 'S13', 1),
(22, 'INV06', 'S14', 1),
(23, 'INV07', 'S13', 1),
(27, 'INV08', 'S14', 1),
(29, 'INV09', 'S14', 1),
(30, 'INV10', 'S14', 1),
(31, 'INV11', 'S14', 2),
(34, 'INV12', 'S14', 1),
(35, 'INV12', 'S13', 2),
(36, 'INV12', 'S07', 1),
(37, 'INV13', 'S13', 1),
(38, 'INV14', 'S12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `id_acc` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `text`, `time`, `id_acc`, `flag`) VALUES
(435, ' ???? x??a lo???i s???n ph???m <b>gameGIRL</b>', '2022-03-09 00:49:33', 1, 0),
(436, ' ???? x??a lo???i s???n ph???m <b>gameBOY</b>', '2022-03-09 00:49:37', 1, 0),
(437, ' ???? x??a lo???i s???n ph???m <b>game s?? sinh</b>', '2022-03-09 00:49:39', 1, 0),
(438, ' ???? t???o lo???i s???n ph???m <b>H??nh ?????ng</b>', '2022-03-09 00:49:43', 1, 0),
(439, ' ???? t???o lo???i s???n ph???m <b>Phi??u l??u</b>', '2022-03-09 00:49:53', 1, 0),
(440, ' ???? t???o lo???i s???n ph???m <b>Nh???p vai</b>', '2022-03-09 00:49:58', 1, 0),
(441, ' ???? t???o lo???i s???n ph???m <b>M?? ph???ng</b>', '2022-03-09 00:50:03', 1, 0),
(442, ' ???? t???o lo???i s???n ph???m <b>Chi???n thu???t</b>', '2022-03-09 00:50:07', 1, 0),
(443, ' ???? t???o lo???i s???n ph???m <b>18+</b>', '2022-03-09 00:50:14', 1, 0),
(444, ' ???? ????ng s???n ph???m <b>Genshin Impact</b>', '2022-03-09 00:56:42', 1, 0),
(445, ' ???? duy???t s???n ph???m <b>Genshin Impact</b>', '2022-03-09 00:56:45', 1, 0),
(446, ' ???? x??a slider', '2022-03-09 00:58:04', 1, 0),
(447, ' ???? x??a slider', '2022-03-09 00:58:08', 1, 0),
(448, ' ???? t???o slider', '2022-03-09 00:58:16', 1, 0),
(449, ' ???? t???o slider', '2022-03-09 00:58:25', 1, 0),
(450, ' ???? t???o slider', '2022-03-09 00:58:30', 1, 0),
(451, ' ???? x??a lo???i b??i vi???t <b>Li??n h???</b>', '2022-03-09 16:29:40', 1, 0),
(452, ' ???? x??a lo???i b??i vi???t <b>Gi???i thi???u</b>', '2022-03-09 16:29:48', 1, 0),
(453, ' ???? ch???nh s???a lo???i b??i vi???t <b>Chia s??? kinh nghi???m</b> th??nh <b>Chia s??? kinh nghi???m</b>', '2022-03-09 16:30:51', 1, 0),
(454, ' ???? ch???nh s???a slider', '2022-03-09 17:14:18', 1, 0),
(455, ' ???? ch???nh s???a slider', '2022-03-09 17:14:26', 1, 0),
(456, ' ???? ch???nh s???a slider', '2022-03-09 17:14:35', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `name_image` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id_image`, `sku_product`, `name_image`) VALUES
(6, 'S09', 'm_1563443021.jpg'),
(7, 'S09', 'm_1563443028.jpg'),
(18, 'S08', 'm_1563443769.jpg'),
(19, 'S08', 'm_1563443778.jpg'),
(20, 'S07', 'm_1563443822.jpg'),
(21, 'S07', 'm_1563443838.jpg'),
(22, 'S06', 'm_1563443898.jpg'),
(23, 'S06', 'm_1563443905.jpg'),
(24, 'S03', 'm_1563443977.jpg'),
(25, 'S03', 'm_1563443985.jpg'),
(26, 'S03', 'm_1563444001.jpg'),
(27, 'S01', 'm_1563444068.jpg'),
(28, 'S01', 'm_1563444083.jpg'),
(29, 'S01', 'm_1563444096.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `code_invoice` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_customer` int(11) NOT NULL,
  `info_receive` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `info_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_lg` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_lg`, `image`, `link`, `date_upload`) VALUES
(1, '1646759550.jpg', 'trang-chu.html', '2022-03-09 00:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `sku_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_product` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date_upload` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `view` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`sku_product`, `image`, `name_product`, `slug`, `summary`, `content`, `date_upload`, `author`, `qty`, `price`, `highlight`, `view`, `id_type`, `flag`) VALUES
('S01', '1646762202.jpg', 'Genshin Impact', 'Genshin-Impact', 'Game nh???p vai th??? gi???i m???', '<p>L???c ?????a Teyvat r???ng l???n, n??i v&ocirc; s??? sinh v???t sinh s&ocirc;i v&agrave; h???i t???.<br />\r\n?????y l&agrave; th??? gi???i do b???y v??? Th???n th???ng tr???, c??ng l&agrave; n??i b???y lo???i nguy&ecirc;n t??? t??? h???i...<br />\r\n<br />\r\nD?????i b???u tr???i xa l???, c&oacute; ng?????i thi???u ni&ecirc;n v&agrave; thi???u n??? ??ang ?????ng trong gi&oacute; b???i.<br />\r\nC&aacute;c b???n ch&iacute;nh l&agrave; c???p song sinh ?????n t??? v&ugrave;ng ?????t xa l???. Ng?????i th&acirc;n c???a b???n b??? v??? Th???n l??? m???t b???t ??i, v&agrave; b???n c??ng b??? Th???n phong ???n ch&igrave;m v&agrave;o gi???c ng??? s&acirc;u...<br />\r\n?????n khi t???nh l???i, m???i th??? xung quanh ?????u ??&atilde; thay ?????i ...<br />\r\n<br />\r\nGenshin Impact l&agrave; m???t game nh???p vai phi&ecirc;u l??u th??? gi???i m??? m???i ???????c ph&aacute;t tri???n b???i miHoYo. B???n s??? kh&aacute;m ph&aacute; m???t th??? gi???i gi??? t?????ng c&oacute; t&ecirc;n l&agrave; &quot;L???c ?????a Teyvat&quot; trong tr&ograve; ch??i.<br />\r\nTrong th??? gi???i r???ng l???n n&agrave;y, b???n c&oacute; th??? du h&agrave;nh qua b???y v????ng qu???c, g???p g??? nh???ng ng?????i b???n ?????ng h&agrave;nh v???i nh???ng t&iacute;nh c&aacute;ch v&agrave; n??ng l???c ?????c ??&aacute;o kh&aacute;c nhau, c&ugrave;ng chi???n ?????u ch???ng l???i k??? th&ugrave; m???nh v&agrave; b?????c v&agrave;o con ???????ng t&igrave;m ki???m ng?????i th&acirc;n, ho???c b???n c&oacute; th??? ??i lang thang kh&ocirc;ng m???c ??&iacute;ch v&agrave; ?????m m&igrave;nh trong m???t th??? gi???i ?????y s???c s???ng. H&atilde;y ????? s??? t&ograve; m&ograve; th&uacute;c ?????y b???n th&acirc;n kh&aacute;m ph&aacute; m???i b&iacute; m???t trong th??? gi???i n&agrave;y n&agrave;o...<br />\r\nCho ?????n khi b???n ??o&agrave;n t??? v???i ng?????i th&acirc;n v&agrave; ch???ng ki???n s??? l???ng ?????ng c???a m???i th??? ??? ??i???m ?????n cu???i c&ugrave;ng.<br />\r\n<br />\r\n???Th??? gi???i m???, t??? do kh&aacute;m ph&aacute;???<br />\r\n<br />\r\nGenshin Impact l&agrave; m???t game nh???p vai phi&ecirc;u l??u th??? gi???i m???, ch??? c???n b???n s??? d???ng th??? l???c h???p l&yacute;, th&igrave; s??? c&oacute; th??? chu du ?????n m???i v&ugrave;ng n&uacute;i cao bi???n r???ng, kh&aacute;m ph&aacute; nh???ng c???nh v???t k??? b&iacute;. H&atilde;y c&ugrave;ng nhau th&aacute;m hi???m xem s??? c&oacute; nh???ng g&igrave; ??ang ?????i b???n ph&iacute;a tr?????c n&agrave;o!<br />\r\n<br />\r\n???Ph???n ???ng nguy&ecirc;n t???, chi???n ?????u chi???n l?????c???<br />\r\n<br />\r\nTh??? gi???i trong game ???????c h&igrave;nh th&agrave;nh b???i b???y lo???i nguy&ecirc;n t???: Phong, L&ocirc;i, Th???y, H???a, B??ng, Th???o, Nham. Nh&acirc;n v???t c&oacute; Vision s??? c&oacute; th??? d&ugrave;ng s???c m???nh c???a nguy&ecirc;n t??? ????? chi???n ?????u v&agrave; th&aacute;m hi???m. Th???y g???p H???a s??? b???c h??i, H???a g???p L&ocirc;i s??? qu&aacute; t???i, L&ocirc;i g???p Th???y s??? nhi???m ??i???n... ?????i m???t v???i k??? ?????ch kh&aacute;c nhau, c&oacute; th??? d&ugrave;ng k??? n??ng kh&aacute;c nhau ????? k&iacute;ch ho???t nguy&ecirc;n t??? kh???c ch??? gi&agrave;nh chi???n th???ng.<br />\r\n<br />\r\n???????? h???a v&agrave; &acirc;m nh???c ch???t l?????ng cao???<br />\r\n<br />\r\nGenshin Impact c&oacute; phong c&aacute;ch ngh??? thu???t m???i m???, chuy???n ?????ng c???a nh&acirc;n v???t ???????c th???c hi???n th&ocirc;ng qua vi???c n???m b???t c??? ?????ng v&agrave; ??i???u ch???nh chi ti???t, mang ?????n hi???u ???ng tr&igrave;nh di???n ch???t l?????ng cao. Ng&agrave;y ??&ecirc;m thay ?????i 24 gi???, th???i ti???t v&agrave; &acirc;m nh???c c??ng thay ?????i linh ho???t, d&ugrave; b???n ??? ??&acirc;u, b???n c??ng s??? lu&ocirc;n nghe th???y nh???ng m&agrave;n tr&igrave;nh di???n ?????c tr??ng c???a d&agrave;n nh???c giao h?????ng h&agrave;ng ?????u th??? gi???i nh?? London Philharmonic Orchestra v&agrave; Shanghai Symphony Orchestra.<br />\r\n<br />\r\n???T???p h???p ?????ng ?????i, c&ugrave;ng nhau th&aacute;m hi???m???<br />\r\n<br />\r\nTrong qu&aacute; tr&igrave;nh th&aacute;m hi???m, c&ograve;n c&oacute; th??? k???t giao ???????c v???i nh???ng ?????ng ?????i c&oacute; kh??? n??ng ?????c bi???t, h&atilde;y th??? k???t h???p ?????i h&igrave;nh m???nh nh???t, thu th???p nguy&ecirc;n li???u c?????ng h&oacute;a nh&acirc;n v???t ????? chinh ph???c b&iacute; c???nh n&agrave;o. R???t nhi???u ??i???u m???i m??? ??ang ch??? b???n kh&aacute;m ph&aacute;, c&ugrave;ng b???t ?????u th&ocirc;i n&agrave;o.<br />\r\n<br />\r\nSUPPORT<br />\r\nN???u g???p b???t c??? v???n ????? n&agrave;o, vui l&ograve;ng ph???n h???i th&ocirc;ng qua trung t&acirc;m CSKH trong game.<br />\r\nEmail CSKH: Genshin_cs@mihoyo.com<br />\r\nTrang ch??? ch&iacute;nh th???c: https://genshin.mihoyo.com/<br />\r\nDi???n ??&agrave;n ch&iacute;nh th???c: https://forums.mihoyo.com/genshin/<br />\r\nFacebook: https://www.facebook.com/Genshinimpact/<br />\r\nInstagram: https://www.instagram.com/genshinimpact/<br />\r\nTwitter: https://twitter.com/GenshinImpact<br />\r\nYouTube: http://www.youtube.com/c/GenshinImpact<br />\r\nDiscord: https://discord.gg/genshinimpact<br />\r\nReddit: https://www.reddit.com/r/Genshin_Impact/<br />\r\nGenshin Impact khu v???c Vi???t Nam ???????c ph&aacute;t h&agrave;nh ?????c quy???n b???i C&ocirc;ng ty c??? ph???n d???ch v??? S.PAY Vi???t Nam.</p>\r\n', '2022-03-09 00:56:42', 1, 1000, 1234000, 1, 1, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `image`, `link`, `date_create`) VALUES
(8, '1646820875.jpg', '', '2022-03-09 00:58:16'),
(9, '1646820866.jpg', '', '2022-03-09 00:58:25'),
(10, '1646820858.jpg', '', '2022-03-09 00:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `type_blog`
--

CREATE TABLE `type_blog` (
  `id_type` int(11) NOT NULL,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_blog`
--

INSERT INTO `type_blog` (`id_type`, `typename`, `slug_type`, `date_create`) VALUES
(1, 'Khuy???n m??i', 'Khuyen-mai', '2019-07-12 13:13:23'),
(2, 'Tin t???c m???i', 'Tin-tuc-moi', '2019-07-12 13:17:04'),
(8, 'Chia s??? kinh nghi???m', 'Chia-se-kinh-nghiem', '2019-07-12 20:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `id_type` int(11) NOT NULL,
  `typename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id_type`, `typename`, `slug_type`, `date_create`) VALUES
(33, 'H??nh ?????ng', 'Hanh-dong', '2022-03-09 00:49:43'),
(34, 'Phi??u l??u', 'Phieu-luu', '2022-03-09 00:49:53'),
(35, 'Nh???p vai', 'Nhap-vai', '2022-03-09 00:49:58'),
(36, 'M?? ph???ng', 'Mo-phong', '2022-03-09 00:50:03'),
(37, 'Chi???n thu???t', 'Chien-thuat', '2022-03-09 00:50:07'),
(38, '18+', '18+', '2022-03-09 00:50:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_acc`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `detail_invoice`
--
ALTER TABLE `detail_invoice`
  ADD PRIMARY KEY (`id_detail_invoice`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`code_invoice`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_lg`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sku_product`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `type_blog`
--
ALTER TABLE `type_blog`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_invoice`
--
ALTER TABLE `detail_invoice`
  MODIFY `id_detail_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_lg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `type_blog`
--
ALTER TABLE `type_blog`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
