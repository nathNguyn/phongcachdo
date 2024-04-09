-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 09:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(13, 'Chuột', 'chuot', 1, 0, '0', '2023-12-16 12:14:23', '1', '2023-12-16 12:14:23', '1', 1, 1),
(14, 'Bàn Phím', 'ban-phim', 1, 0, '1', '2023-12-16 12:14:38', '1', '2023-12-16 12:14:38', '1', 1, 1),
(15, 'Tai Nghe', 'tai-nghe', 1, 0, '2', '2023-12-16 12:14:52', '1', '2023-12-16 12:14:52', '1', 1, 1),
(16, 'Lót Chuột', 'lot-chuot', 1, 0, '1', '2023-12-16 12:15:25', '1', '2023-12-16 12:15:25', '1', 1, 1),
(17, 'Linh Kiện PC', 'linh-kien-pc', 1, 0, '0', '2023-12-16 12:16:01', '1', '2023-12-16 12:16:01', '1', 1, 1),
(19, 'Tay Cầm', 'tay-cam', 1, 0, '3', '2023-12-16 12:17:41', '1', '2023-12-16 12:17:41', '1', 1, 1),
(20, 'Ghế Công Thái Học', 'ghe-cong-thai-hoc', 1, 0, '4', '2023-12-16 12:18:12', '1', '2023-12-16 12:18:12', '1', 1, 1),
(21, 'Razer', 'razer', 2, 13, '0', '2023-12-16 12:19:24', '1', '2023-12-16 12:19:24', '1', 1, 1),
(22, 'Lamzu', 'lamzu', 2, 13, '1', '2023-12-16 13:28:05', '75', '2023-12-16 13:28:05', '75', 1, 1),
(23, 'Pulsar', 'pulsar', 2, 16, '0', '2023-12-17 14:52:55', '75', '2023-12-17 14:52:55', '75', 1, 1),
(24, 'Fnatic Pad', 'fnatic-pad', 2, 16, '1', '2023-12-17 15:20:33', '75', '2023-12-27 14:49:09', '75', 1, 1),
(25, 'DrunkDeer', 'drunkdeer', 2, 14, '0', '2023-12-27 12:06:07', '75', '2023-12-27 12:06:07', '75', 1, 1),
(26, 'Fnatic Keyboard', 'fnatic-keyboard', 2, 14, '0', '2023-12-27 14:49:29', '75', '2023-12-27 14:49:29', '75', 1, 1),
(27, 'Fnatic Headphone', 'fnatic-headphone', 2, 15, '0', '2023-12-27 14:52:59', '75', '2023-12-27 14:52:59', '75', 1, 1),
(28, 'DualSense', 'dualsense', 2, 19, '0', '2023-12-27 15:12:32', '75', '2023-12-27 15:12:32', '75', 1, 1),
(29, 'Herman Miller', 'herman-miller', 2, 20, '0', '2023-12-27 15:20:29', '75', '2023-12-27 15:20:29', '75', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'yuhgamesing102@gmail.com', 'xeyxculwykgzftnd', 'yuhgamesing102@gmail.com', '30000', 'Web site bán hàng Đềmố', 'Gửi từ mail của hệ thống');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(13, 'hehe', '0987654321', 'lamduchuy57@gmail.com', 'tesst', '2023/12/3', 1, 1, 'Tester1'),
(14, 'ROG TOP 1', '0987654321', 'nguyenhuuminhluan@gmail.com', 'rog mãi đỉnh', '2023/12/28', 1, 1, 'ROG SRTIX SCAR');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Ghế công thái học là gì? Có nên dùng ghế công thái học không?', 'ghe-cong-thai-hoc-la-gi-co-nen-dung-ghe-cong-thai-hoc-khong', '', '<p>Việc ngồi tr&ecirc;n ghế trong thời gian d&agrave;i đ&atilde; trở th&agrave;nh th&oacute;i quen của nhiều người v&igrave; l&yacute; do c&ocirc;ng việc, học tập v&agrave; giải tr&iacute;. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng biết c&aacute;ch ngồi ra sao để tr&aacute;nh sai tư thế, g&acirc;y hại cho cột sống, dẫn đến mệt mỏi ở lưng, vai, cổ. Ch&iacute;nh từ nhu cầu n&agrave;y m&agrave; ghế c&ocirc;ng th&aacute;i học ra đời. Vậy ghế c&ocirc;ng th&aacute;i học l&agrave; g&igrave;? N&oacute; c&oacute; t&aacute;c dụng g&igrave; v&agrave; c&oacute; n&ecirc;n sử dụng hay kh&ocirc;ng? Ch&uacute;ng ta h&atilde;y c&ugrave;ng t&igrave;m hiểu ngay b&acirc;y giờ!</p>\r\n\r\n<h2><strong>Ghế c&ocirc;ng th&aacute;i học l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học (ghế Ergonomic) c&ograve;n được gọi l&agrave; ghế địa l&yacute; học hoặc ghế th&aacute;i học, l&agrave; một loại ghế thiết kế để cung cấp sự thoải m&aacute;i v&agrave; hỗ trợ tối ưu cho người sử dụng trong qu&aacute; tr&igrave;nh l&agrave;m việc hoặc học tập. Loại ghế n&agrave;y được thiết kế dựa tr&ecirc;n c&aacute;c nguy&ecirc;n tắc của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%B4ng_th%C3%A1i_h%E1%BB%8Dc\" target=\"_blank\">c&ocirc;ng th&aacute;i học</a>&nbsp;(ergonomics), một lĩnh vực nghi&ecirc;n cứu về việc tối ưu h&oacute;a m&ocirc;i trường l&agrave;m việc để giảm thiểu căng thẳng v&agrave; tối ưu h&oacute;a hiệu suất l&agrave;m việc của người sử dụng.</p>\r\n\r\n<p><img alt=\"Ghế công thái học là gì?\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_6_1024x1024.png?v=1700189667\" /></p>\r\n\r\n<p>Mục ti&ecirc;u của ghế c&ocirc;ng th&aacute;i học l&agrave; đảm bảo rằng người sử dụng c&oacute; thể ngồi trong tư thế tự nhi&ecirc;n, thoải m&aacute;i v&agrave; duy tr&igrave; sự hỗ trợ cho cơ bắp, xương, v&agrave; cột sống. Ghế c&ocirc;ng th&aacute;i học thường c&oacute; c&aacute;c t&iacute;nh năng như điều chỉnh độ cao, g&oacute;c nghi&ecirc;ng, đệm lưng v&agrave; đệm ngồi mềm mại để cung cấp sự hỗ trợ cho cơ thể. Điều n&agrave;y gi&uacute;p người sử dụng ngồi thoải m&aacute;i trong thời gian d&agrave;i m&agrave; kh&ocirc;ng gặp c&aacute;c vấn đề về sức khỏe li&ecirc;n quan đến tư thế kh&ocirc;ng tốt, như đau lưng, căng cơ cổ, hoặc đau vai.</p>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học thường được sử dụng trong c&aacute;c m&ocirc;i trường l&agrave;m việc v&agrave; học tập, nơi người d&ugrave;ng cần ngồi trong thời gian d&agrave;i để ho&agrave;n th&agrave;nh c&ocirc;ng việc hoặc nhiệm vụ học tập.</p>\r\n\r\n<h2><strong>Ghế c&ocirc;ng th&aacute;i học c&oacute; những lợi &iacute;ch g&igrave;?</strong></h2>\r\n\r\n<h3><em>Hỗ trợ tư thế l&agrave;m việc</em></h3>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học được thiết kế để cung cấp sự hỗ trợ tốt cho cơ thể người sử dụng. Điều n&agrave;y gi&uacute;p ngồi trong tư thế tự nhi&ecirc;n v&agrave; thoải m&aacute;i hơn, giảm nguy cơ sai tư thế v&agrave; đau lưng, vai, cổ.</p>\r\n\r\n<h3><em>Mang lại sự thoải m&aacute;i</em></h3>\r\n\r\n<p>Ghế n&agrave;y c&oacute; đệm ngồi v&agrave; đệm lưng mềm mại, gi&uacute;p giảm &aacute;p lực l&ecirc;n cơ bắp v&agrave; xương, tạo sự thoải m&aacute;i khi ngồi trong thời gian d&agrave;i.</p>\r\n\r\n<h3><em>Khả năng điều chỉnh đa dạng</em></h3>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học thường c&oacute; nhiều t&iacute;nh năng điều chỉnh như độ cao, g&oacute;c nghi&ecirc;ng, độ cao của đệm lưng, v&agrave; tay ghế. Điều n&agrave;y cho ph&eacute;p người sử dụng t&ugrave;y chỉnh ghế để ph&ugrave; hợp với tư thế v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n của họ.</p>\r\n\r\n<h3><em>Tốt cho cột sống</em></h3>\r\n\r\n<p>Ghế n&agrave;y thiết kế để hỗ trợ cột sống, gi&uacute;p giảm căng thẳng v&agrave; nguy cơ bị tổn thương cột sống.</p>\r\n\r\n<p><img alt=\"Ghế công thái học có những lợi ích gì?\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_8_1024x1024.png?v=1700189710\" /></p>\r\n\r\n<h3><em>Tăng hiệu suất l&agrave;m việc</em></h3>\r\n\r\n<p>Khi ngồi trong một tư thế thoải m&aacute;i v&agrave; hỗ trợ, người sử dụng c&oacute; thể tập trung v&agrave;o c&ocirc;ng việc m&agrave; họ đang thực hiện, gi&uacute;p tăng hiệu suất l&agrave;m việc.</p>\r\n\r\n<h3><em>Giảm mỏi cơ bắp</em></h3>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học gi&uacute;p giảm căng thẳng cơ bắp v&agrave; tr&aacute;nh t&igrave;nh trạng mệt mỏi do tư thế kh&ocirc;ng tốt.</p>\r\n\r\n<h3><em>Tạo sự linh hoạt</em></h3>\r\n\r\n<p>Ghế n&agrave;y gi&uacute;p người sử dụng c&oacute; thể dễ d&agrave;ng thay đổi tư thế v&agrave; vị tr&iacute; ngồi m&agrave; kh&ocirc;ng gặp kh&oacute; khăn.</p>\r\n\r\n<p><img alt=\"Ghế công thái học có những lợi ích gì?\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_3_1024x1024.png?v=1700189738\" /></p>\r\n\r\n<h3><em>Gi&uacute;p thoải m&aacute;i trong thời gian d&agrave;i</em></h3>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học l&agrave;m cho việc ngồi l&agrave;m việc hoặc học tập trong thời gian d&agrave;i trở n&ecirc;n dễ d&agrave;ng v&agrave; thoải m&aacute;i hơn.</p>\r\n\r\n<h2><strong>Những nhược điểm của ghế c&ocirc;ng th&aacute;i học</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Gi&aacute; th&agrave;nh cao:</strong>Ghế c&ocirc;ng th&aacute;i học thường c&oacute; gi&aacute; cả cao hơn so với c&aacute;c loại ghế văn ph&ograve;ng th&ocirc;ng thường.</li>\r\n	<li><strong>Cần thời gian để l&agrave;m quen:</strong>Người sử dụng lần đầu c&oacute; thể cần thời gian để th&iacute;ch nghi với tư thế v&agrave; cấu tr&uacute;c của ghế c&ocirc;ng th&aacute;i học</li>\r\n	<li><strong>K&iacute;ch thước lớn</strong>: Một số mẫu ghế c&ocirc;ng th&aacute;i học c&oacute; k&iacute;ch thước lớn hơn, điều n&agrave;y c&oacute; thể g&acirc;y kh&oacute; khăn trong việc di chuyển hoặc sắp xếp chỗ ngồi, đặc biệt trong kh&ocirc;ng gian l&agrave;m việc hẹp.</li>\r\n	<li><strong>Kh&oacute; sửa chữa:</strong>Ghế c&ocirc;ng th&aacute;i học thường được thiết kế với nhiều t&iacute;nh năng phức tạp, điều n&agrave;y c&oacute; thể l&agrave;m cho việc sửa chữa hoặc bảo tr&igrave; trở n&ecirc;n kh&oacute; khăn v&agrave; đắt đỏ hơn.</li>\r\n</ul>\r\n\r\n<h2><strong>Những lưu &yacute; g&igrave; khi mua ghế c&ocirc;ng th&aacute;i học</strong></h2>\r\n\r\n<p>Khi bạn định mua ghế c&ocirc;ng th&aacute;i học, h&atilde;y xem x&eacute;t c&aacute;c yếu tố sau đ&acirc;y để đảm bảo bạn chọn được chiếc ghế ph&ugrave; hợp với nhu cầu v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n của m&igrave;nh:</p>\r\n\r\n<h3><em>Khả năng điều chỉnh của ghế</em></h3>\r\n\r\n<p>Đảm bảo ghế c&oacute; c&aacute;c t&iacute;nh năng điều chỉnh đa dạng như độ cao, g&oacute;c nghi&ecirc;ng của đệm ngồi v&agrave; đệm lưng, độ cao của tay ghế. Chức năng n&agrave;y cho ph&eacute;p bạn t&ugrave;y chỉnh ghế để ph&ugrave; hợp với tư thế l&agrave;m việc.</p>\r\n\r\n<h3><em>Đệm v&agrave; vật liệu</em></h3>\r\n\r\n<p>Chọn ghế c&oacute; đệm ngồi v&agrave; đệm lưng mềm mại v&agrave; thoải m&aacute;i. H&atilde;y xem x&eacute;t vật liệu của đệm, v&iacute; dụ như da, vải, lưới, để đảm bảo n&oacute; ph&ugrave; hợp với sở th&iacute;ch c&aacute; nh&acirc;n v&agrave; m&ocirc;i trường l&agrave;m việc của bạn.</p>\r\n\r\n<h3><em>K&iacute;ch thước ghế v&agrave; kh&ocirc;ng gian cho ph&eacute;p</em></h3>\r\n\r\n<p>Đảm bảo ghế ph&ugrave; hợp với kh&ocirc;ng gian l&agrave;m việc của bạn v&agrave; c&oacute; k&iacute;ch thước ph&ugrave; hợp với người sử dụng. Bạn cần xem x&eacute;t chiều cao, chiều rộng v&agrave; độ s&acirc;u của ghế để lựa chọn.</p>\r\n\r\n<h3><em>Kiểm tra kỹ thuật</em></h3>\r\n\r\n<p>Trước khi mua ghế, bạn h&atilde;y kiểm tra c&aacute;c th&agrave;nh phần kỹ thuật như b&aacute;nh xe, cơ cấu điều chỉnh v&agrave; c&aacute;c bộ phận kh&aacute;c để đảm bảo ch&uacute;ng hoạt động một c&aacute;ch ổn định v&agrave; dễ d&agrave;ng sử dụng.</p>\r\n\r\n<h3><em>Gi&aacute; cả</em></h3>\r\n\r\n<p>Xem x&eacute;t c&aacute;c sản phẩm ghế c&ocirc;ng th&aacute;i học để chọn mua trong phạm vi gi&aacute; cả bạn c&oacute; thể chấp nhận. Ghế c&ocirc;ng th&aacute;i học thường c&oacute; mức gi&aacute; cao hơn so với ghế th&ocirc;ng thường, nhưng rất đ&aacute;ng đầu tư nếu bạn l&agrave; người ngồi l&agrave;m việc trong thời gian d&agrave;i.</p>\r\n\r\n<h3><em>Kiểm tra thương hiệu v&agrave; đ&aacute;nh gi&aacute;</em></h3>\r\n\r\n<p>T&igrave;m hiểu về thương hiệu ghế v&agrave; đọc đ&aacute;nh gi&aacute; từ người d&ugrave;ng kh&aacute;c để hiểu về chất lượng v&agrave; hiệu suất của sản phẩm.</p>\r\n\r\n<h3><em>Kiểm tra ch&iacute;nh s&aacute;ch bảo h&agrave;nh v&agrave; hỗ trợ kỹ thuật</em></h3>\r\n\r\n<p>Đảm bảo ghế đi k&egrave;m với ch&iacute;nh s&aacute;ch bảo h&agrave;nh tốt v&agrave; hỗ trợ kỹ thuật khi cần thiết, để bạn c&oacute; thể giữ cho ghế hoạt động ổn định v&agrave; bền bỉ l&acirc;u d&agrave;i.</p>\r\n\r\n<h2><strong>Một số sản phẩm ghế c&ocirc;ng th&aacute;i học nổi bật</strong></h2>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/products/ghe-cong-thai-hoc-herman-miller-aeron-xam-carbon\"><strong>Ghế c&ocirc;ng th&aacute;i học Herman Miller Aeron - X&aacute;m Carbon - H&agrave;ng x&aacute;ch tay</strong></a></p>\r\n\r\n<p><img alt=\"sản phẩm ghế công thái học nổi bật\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_4_480x480.png?v=1700189792\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/products/ghe-cong-thai-hoc-herman-miller-aeron-den-graphite\"><strong>Ghế c&ocirc;ng th&aacute;i học Herman Miller Aeron - Đen Graphite - H&agrave;ng x&aacute;ch tay</strong></a></p>\r\n\r\n<p><img alt=\"Ghế công thái học Herman Miller Aeron - Đen Graphite\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_7_480x480.png?v=1700189852\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/products/ghe-cong-thai-hoc-gtchair-i-see-hang-chinh-hang\"><strong>Ghế c&ocirc;ng th&aacute;i học GTChair I-see X - H&agrave;ng ch&iacute;nh h&atilde;ng</strong></a></p>\r\n\r\n<p><img alt=\"Ghế công thái học GTChair I-see X\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_9_480x480.png?v=1700189891\" /></p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/products/ghe-cong-thai-hoc-herman-miller-aeron-den-onyx-hang-xach-tay\"><strong>Ghế c&ocirc;ng th&aacute;i học Herman Miller Aeron - Đen Onyx - H&agrave;ng x&aacute;ch tay</strong></a></p>\r\n\r\n<p><img alt=\"Ghế công thái học Herman Miller Aeron - Đen Onyx\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_2_480x480.png?v=1700189948\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/products/ghe-cong-thai-hoc-gtchair-i-see-m-hang-chinh-hang\"><strong>Ghế c&ocirc;ng th&aacute;i học GTChair I-see M - H&agrave;ng ch&iacute;nh h&atilde;ng</strong></a></p>\r\n\r\n<p><img alt=\"Ghế công thái học GTChair I-see M\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/ghe-cong-thai-hoc-la-gi_5_480x480.png?v=1700189976\" /></p>\r\n\r\n<p><strong>&gt;&gt;&nbsp;</strong><a href=\"https://www.phongcachxanh.vn/collections/ghe-cong-thai-hoc\"><strong>Xem tất cả c&aacute;c sản phẩm ghế c&ocirc;ng th&aacute;i học chất lượng, uy t&iacute;n, gi&aacute; tốt đang c&oacute; tr&ecirc;n Phong C&aacute;ch Xanh</strong></a></p>\r\n\r\n<h2><strong>Những c&acirc;u hỏi thường gặp về ghế c&ocirc;ng th&aacute;i học</strong></h2>\r\n\r\n<p><em>Ghế c&ocirc;ng th&aacute;i học c&oacute; ưu điểm g&igrave; so với ghế th&ocirc;ng thường?</em></p>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học cung cấp sự hỗ trợ cho cột sống v&agrave; cơ bắp, gi&uacute;p giảm căng thẳng v&agrave; đau lưng, vai, cổ. N&oacute; cho ph&eacute;p người sử dụng ngồi trong tư thế tự nhi&ecirc;n v&agrave; thoải m&aacute;i hơn trong thời gian d&agrave;i, tối ưu h&oacute;a hiệu suất l&agrave;m việc.</p>\r\n\r\n<p><em>Ghế c&ocirc;ng th&aacute;i học ph&ugrave; hợp với ai?</em></p>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học ph&ugrave; hợp với mọi người, đặc biệt l&agrave; những người phải ngồi l&agrave;m việc hoặc học tập trong thời gian d&agrave;i. N&oacute; đặc biệt hữu &iacute;ch cho những người c&oacute; vấn đề về sức khỏe li&ecirc;n quan đến cột sống hoặc căng thẳng cơ bắp.</p>\r\n\r\n<p><em>L&agrave;m thế n&agrave;o để chọn một chiếc ghế c&ocirc;ng th&aacute;i học ph&ugrave; hợp?</em></p>\r\n\r\n<p>Để chọn ghế c&ocirc;ng th&aacute;i học ph&ugrave; hợp với bạn, h&atilde;y xem x&eacute;t t&iacute;nh năng điều chỉnh, đệm v&agrave; vật liệu, k&iacute;ch thước, gi&aacute; cả, thương hiệu, v&agrave; c&aacute;c ch&iacute;nh s&aacute;ch bảo h&agrave;nh v&agrave; hỗ trợ kỹ thuật.</p>\r\n\r\n<p><em>Khi mua ghế c&ocirc;ng th&aacute;i học cần xem x&eacute;t c&aacute;c t&iacute;nh năng n&agrave;o?</em></p>\r\n\r\n<p>C&aacute;c t&iacute;nh năng quan trọng bao gồm t&iacute;nh năng điều chỉnh, đệm v&agrave; vật liệu, hỗ trợ cột sống, k&iacute;ch thước, kiểm tra kỹ thuật, v&agrave; thương hiệu.</p>\r\n\r\n<p><em>Ghế c&ocirc;ng th&aacute;i học c&oacute; phải l&agrave; lựa chọn tốt cho việc l&agrave;m việc từ xa?</em></p>\r\n\r\n<p>C&oacute;, ghế c&ocirc;ng th&aacute;i học thường l&agrave; lựa chọn tốt cho việc l&agrave;m việc từ xa, v&igrave; n&oacute; gi&uacute;p tối ưu h&oacute;a tư thế l&agrave;m việc v&agrave; giảm căng thẳng trong thời gian d&agrave;i.</p>\r\n\r\n<p><em>C&oacute; n&ecirc;n đầu tư một chiếc ghế c&ocirc;ng th&aacute;i học kh&ocirc;ng?</em></p>\r\n\r\n<p>C&oacute;, ghế c&ocirc;ng th&aacute;i học c&oacute; thể đ&aacute;ng đầu tư v&igrave; n&oacute; gi&uacute;p duy tr&igrave; sức khỏe v&agrave; tăng hiệu suất l&agrave;m việc trong thời gian d&agrave;i.</p>\r\n\r\n<p><em>Sử dụng ghế c&ocirc;ng th&aacute;i học c&oacute; phức tạp kh&ocirc;ng?</em></p>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học thường dễ sử dụng v&agrave; c&oacute; hướng dẫn đi k&egrave;m để người sử dụng c&oacute; thể t&ugrave;y chỉnh v&agrave; sử dụng ch&uacute;ng một c&aacute;ch hiệu quả.</p>\r\n\r\n<p><em>L&agrave;m thế n&agrave;o để điều chỉnh ghế c&ocirc;ng th&aacute;i học cho ph&ugrave; hợp?</em></p>\r\n\r\n<p>Hướng dẫn của sản phẩm thường cung cấp hướng dẫn về c&aacute;ch điều chỉnh ghế để ph&ugrave; hợp với tư thế của bạn. Điều chỉnh độ cao, g&oacute;c nghi&ecirc;ng v&agrave; đệm lưng l&agrave; những điều quan trọng.</p>\r\n\r\n<p><em>Ghế c&ocirc;ng th&aacute;i học c&oacute; bảo h&agrave;nh kh&ocirc;ng? Thời gian bảo h&agrave;nh l&agrave; bao l&acirc;u?</em></p>\r\n\r\n<p>Đa số ghế c&ocirc;ng th&aacute;i học c&oacute; ch&iacute;nh s&aacute;ch bảo h&agrave;nh. Thời gian bảo h&agrave;nh c&oacute; thể thay đổi t&ugrave;y theo sản phẩm v&agrave; nh&agrave; sản xuất, nhưng thường từ 1 đến 5 năm.</p>\r\n\r\n<p><em>Bảo dưỡng ghế c&ocirc;ng th&aacute;i học như thế n&agrave;o?</em></p>\r\n\r\n<p>Bảo dưỡng ghế c&ocirc;ng th&aacute;i học thường bao gồm việc l&agrave;m sạch v&agrave; bảo quản đ&uacute;ng c&aacute;ch. H&atilde;y kiểm tra hướng dẫn của sản phẩm để biết th&ecirc;m chi tiết.</p>\r\n\r\n<p><em>C&oacute; c&aacute;ch n&agrave;o để thử nghiệm ghế c&ocirc;ng th&aacute;i học trước khi mua?</em></p>\r\n\r\n<p>Một số cửa h&agrave;ng hoặc nh&agrave; sản xuất c&oacute; thể cho thử nghiệm ghế trước khi mua. Điều n&agrave;y gi&uacute;p bạn xem x&eacute;t cảm gi&aacute;c v&agrave; t&ugrave;y chỉnh ghế trước khi quyết định mua.</p>\r\n\r\n<p><em>Sử dụng ghế c&ocirc;ng th&aacute;i học như thế n&agrave;o để giảm căng thẳng v&agrave; đau lưng?</em></p>\r\n\r\n<p>Để sử dụng ghế c&ocirc;ng th&aacute;i học hiệu quả, h&atilde;y đảm bảo bạn đ&atilde; t&ugrave;y chỉnh ghế để ph&ugrave; hợp với tư thế của bạn v&agrave; thay đổi tư thế thường xuy&ecirc;n.</p>\r\n\r\n<h2><strong>Lời kết</strong></h2>\r\n\r\n<p>Ghế c&ocirc;ng th&aacute;i học c&oacute; khả năng cung cấp sự thoải m&aacute;i v&agrave; hỗ trợ tốt cho người sử dụng trong qu&aacute; tr&igrave;nh l&agrave;m việc hoặc học tập trong thời gian d&agrave;i. Tuy nhi&ecirc;n, bạn cần xem x&eacute;t kỹ lưỡng trước khi mua ghế c&ocirc;ng th&aacute;i học để đảm bảo chọn được mẫu ghế ph&ugrave; hợp với nhu cầu v&agrave; ng&acirc;n s&aacute;ch. Hi vọng b&agrave;i viết n&agrave;y hữu &iacute;ch đối với bạn, nếu c&oacute; nhu cầu tư vấn th&ecirc;m về ghế c&ocirc;ng th&aacute;i học, h&atilde;y để lại b&igrave;nh luận để ch&uacute;ng t&ocirc;i li&ecirc;n hệ lại sớm nhất nh&eacute;.</p>\r\n', 'ghe-cong-thai-hoc-banner.jpg', '2023-11-30 23:18:02', '1', '2023-12-28 13:39:40', '75', 1, 1),
(6, 'Asus aura sync là gì? Hướng dẫn cài đặt Asus aura sync', 'asus-aura-sync-la-gi-huong-dan-cai-dat-asus-aura-sync', '', '<h1>Asus aura sync l&agrave; g&igrave;? Hướng dẫn c&agrave;i đặt Asus aura sync</h1>\r\n\r\n<p><img alt=\"Asus aura sync là gì? Hướng dẫn cài đặt Asus aura sync\" src=\"https://www.phongcachxanh.vn/cdn/shop/articles/Asus-aura-sync-banner.jpg?v=1700357007&amp;width=1500\" style=\"height:1001px; width:1500px\" /></p>\r\n\r\n<p>Nếu đang sử dụng c&aacute;c sản phẩm của Asus như laptop, m&agrave;n h&igrave;nh, m&aacute;y t&iacute;nh&hellip; th&igrave; c&oacute; lẽ bạn đ&atilde; biết đến phần mềm Aura Sync. Nhưng bạn c&oacute; thực sự hiểu về phần mềm đặc biệt n&agrave;y? Asus Aura Sync l&agrave; g&igrave; v&agrave; n&oacute; c&oacute; những t&iacute;nh năng g&igrave;? Ch&uacute;ng ta sẽ kh&aacute;m ph&aacute; Asus Aura Sync v&agrave; hướng dẫn c&aacute;ch c&agrave;i đặt phần mềm n&agrave;y trong b&agrave;i viết sau đ&acirc;y.</p>\r\n\r\n<h2><strong>Asus Aura Sync l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>ASUS Aura Sync l&agrave; một ứng dụng phần mềm được ph&aacute;t triển bởi&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Asus\" target=\"_blank\">ASUS</a>, một trong những nh&agrave; sản xuất h&agrave;ng đầu trong lĩnh vực m&aacute;y t&iacute;nh v&agrave; linh kiện m&aacute;y t&iacute;nh. Ứng dụng n&agrave;y được thiết kế để quản l&yacute; v&agrave; đồng bộ h&oacute;a c&aacute;c hiệu ứng đ&egrave;n LED RGB tr&ecirc;n c&aacute;c linh kiện v&agrave; thiết bị m&aacute;y t&iacute;nh của ASUS, như&nbsp;<a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/mainboard-la-gi\" target=\"_blank\">bo mạch chủ</a>,&nbsp;<a href=\"https://www.phongcachxanh.vn/collections/card-man-hinh\" target=\"_blank\">card đồ họa</a>,&nbsp;<a href=\"https://www.phongcachxanh.vn/collections/ban-phim-co\" target=\"_blank\">b&agrave;n ph&iacute;m</a>,&nbsp;<a href=\"https://www.phongcachxanh.vn/collections/chuot\" target=\"_blank\">chuột</a>, v&agrave; linh kiện kh&aacute;c.</p>\r\n\r\n<p><img alt=\"Asus Aura Sync là gì\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/Asus-aura-sync-banner_1024x1024.jpg?v=1700356758\" /></p>\r\n\r\n<p>ASUS Aura Sync cho ph&eacute;p người d&ugrave;ng t&ugrave;y chỉnh v&agrave; đồng bộ h&oacute;a hiệu ứng &aacute;nh s&aacute;ng LED tr&ecirc;n c&aacute;c sản phẩm ASUS c&oacute; hỗ trợ RGB. Người d&ugrave;ng c&oacute; thể chọn từ một loạt c&aacute;c m&agrave;u sắc, chế độ nhấp nh&aacute;y, v&agrave; t&ugrave;y chỉnh hiệu ứng &aacute;nh s&aacute;ng theo sở th&iacute;ch c&aacute; nh&acirc;n. Điều n&agrave;y gi&uacute;p tạo ra một m&aacute;y t&iacute;nh c&aacute; nh&acirc;n hoặc một g&oacute;c giải tr&iacute; số với &aacute;nh s&aacute;ng LED đẹp mắt.</p>\r\n\r\n<p>ASUS Aura Sync thường hoạt động tr&ecirc;n c&aacute;c sản phẩm của ASUS c&oacute; hỗ trợ c&ocirc;ng nghệ đ&egrave;n LED RGB ASUS Aura. Tuy nhi&ecirc;n, n&oacute; cũng c&oacute; thể tương th&iacute;ch với một số sản phẩm từ c&aacute;c nh&agrave; sản xuất kh&aacute;c th&ocirc;ng qua giao thức hở mở như RGB Fusion của Gigabyte hoặc Mystic Light của MSI.</p>\r\n\r\n<h2><strong>Những t&iacute;nh năng nổi bật của Asus Aura Sync</strong></h2>\r\n\r\n<p>Phần mềm Asus Aura Sync c&oacute; nhiều t&iacute;nh năng nổi bật li&ecirc;n quan đến điều khiển v&agrave; đồng bộ h&oacute;a hiệu ứng &aacute;nh s&aacute;ng LED RGB tr&ecirc;n c&aacute;c sản phẩm Asus v&agrave; một số sản phẩm kh&aacute;c c&oacute; hỗ trợ. Dưới đ&acirc;y l&agrave; một số t&iacute;nh năng ch&iacute;nh của Asus Aura Sync:</p>\r\n\r\n<ul>\r\n	<li><strong>Đa dạng m&agrave;u sắc:</strong>Bạn c&oacute; thể chọn từ h&agrave;ng trăm m&agrave;u sắc kh&aacute;c nhau để tạo ra m&agrave;u &aacute;nh s&aacute;ng LED theo sở th&iacute;ch c&aacute; nh&acirc;n.</li>\r\n	<li><strong>Chế độ &aacute;nh s&aacute;ng:</strong>Aura Sync cung cấp nhiều chế độ &aacute;nh s&aacute;ng kh&aacute;c nhau, bao gồm chế độ tĩnh, nhấp nh&aacute;y, dịch chuyển, v&agrave; thậm ch&iacute; c&oacute; thể đặt m&agrave;u sắc thay đổi theo nhạc.</li>\r\n	<li><strong>Đồng bộ h&oacute;a:</strong>Một trong những t&iacute;nh năng quan trọng của Aura Sync l&agrave; khả năng đồng bộ h&oacute;a &aacute;nh s&aacute;ng LED tr&ecirc;n nhiều linh kiện v&agrave; thiết bị, gi&uacute;p tạo ra một hệ thống m&aacute;y t&iacute;nh hoặc g&oacute;c giải tr&iacute; số với hiệu ứng &aacute;nh s&aacute;ng thống nhất.</li>\r\n	<li><strong>T&ugrave;y chỉnh:</strong>Bạn c&oacute; thể t&ugrave;y chỉnh c&aacute;c hiệu ứng &aacute;nh s&aacute;ng, tốc độ chuyển đổi, độ s&aacute;ng, v&agrave; thời gian chậm đ&egrave;n tắt.</li>\r\n	<li><strong>Hỗ trợ nhiều thiết bị:</strong>Aura Sync kh&ocirc;ng chỉ hỗ trợ c&aacute;c bo mạch chủ Asus m&agrave; c&ograve;n hỗ trợ nhiều sản phẩm Asus kh&aacute;c như card đồ họa, b&agrave;n ph&iacute;m, chuột, tai nghe, v&agrave; nhiều linh kiện kh&aacute;c.</li>\r\n	<li><strong>Hội tụ c&aacute;c sản phẩm Asus:</strong>Nếu bạn sử dụng nhiều sản phẩm Asus trong hệ thống của m&igrave;nh, Aura Sync gi&uacute;p kết nối v&agrave; điều khiển tất cả ch&uacute;ng dễ d&agrave;ng để tạo ra một trải nghiệm thị gi&aacute;c th&uacute; vị.</li>\r\n</ul>\r\n\r\n<h2><strong>C&aacute;ch c&agrave;i đặt v&agrave; sử dụng Asus Aura Sync</strong></h2>\r\n\r\n<p><em>C&aacute;c bước c&agrave;i đặt</em></p>\r\n\r\n<ul>\r\n	<li>Bước 1: Tải phần mềm&nbsp;<a href=\"https://www.asus.com/campaign/aura/us/download.html\">TẠI Đ&Acirc;Y</a>.</li>\r\n	<li>Bước 2: Mở file phần mềm vừa tải về v&agrave; c&agrave;i đặt như b&igrave;nh thường.</li>\r\n	<li>Bước 3: Mở phần mềm l&ecirc;n.</li>\r\n</ul>\r\n\r\n<p><em>Hướng dẫn sử dụng</em></p>\r\n\r\n<p>Truy cập v&agrave;o Amoury Crate, chọn phần mềm điều khiển Aura Sync, ở mục Sync Devices, chọn c&aacute;c thiết bị bạn muốn đồng bộ đ&egrave;n.</p>\r\n\r\n<p><img alt=\"Cách cài đặt và sử dụng Asus Aura Sync 1\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/Asus_aura_sync_1_1024x1024.png?v=1700356705\" /></p>\r\n\r\n<p>Tiếp theo, bấm v&agrave;o Aura Effects rồi chọn hiệu ứng đ&egrave;n, sau đ&oacute; chỉnh hiệu ứng m&agrave;u sắc ở phần Background, Effect, chỉnh tốc độ nhấp nh&aacute;y ở phần Speed.</p>\r\n\r\n<p><img alt=\"Cách cài đặt và sử dụng Asus Aura Sync\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/Asus_aura_sync_2_1024x1024.png?v=1700356736\" /></p>\r\n\r\n<h2><strong>Aura Sync c&oacute; thể được sử dụng với c&aacute;c thiết bị RGB kh&ocirc;ng phải của ASUS kh&ocirc;ng?</strong></h2>\r\n\r\n<p>Ban đầu, phần mềm Asus Aura Sync được thiết kế để hoạt động với c&aacute;c sản phẩm của Asus v&agrave; kh&ocirc;ng c&oacute; t&iacute;ch hợp sẵn t&iacute;nh năng hỗ trợ c&aacute;c thiết bị RGB kh&ocirc;ng phải của Asus. Tuy nhi&ecirc;n, ASUS đ&atilde; bắt đầu hỗ trợ một số sản phẩm của c&aacute;c nh&agrave; sản xuất kh&aacute;c th&ocirc;ng qua giao thức hở mở như Aura SDK v&agrave; Aura Sync-compatible hardware. Điều n&agrave;y cho ph&eacute;p người d&ugrave;ng sử dụng Aura Sync để đồng bộ h&oacute;a &aacute;nh s&aacute;ng LED tr&ecirc;n c&aacute;c thiết bị RGB của nhiều nh&agrave; sản xuất kh&aacute;c.</p>\r\n\r\n<p>Nếu bạn muốn sử dụng Aura Sync với c&aacute;c thiết bị RGB kh&ocirc;ng phải của Asus, bạn cần kiểm tra xem những thiết bị n&agrave;y c&oacute; hỗ trợ giao thức Aura Sync v&agrave; c&oacute; thể tương th&iacute;ch với phần mềm n&agrave;y hay kh&ocirc;ng. Điều n&agrave;y c&oacute; thể t&ugrave;y thuộc v&agrave;o từng sản phẩm cụ thể v&agrave; nhu cầu của nh&agrave; sản xuất trong việc hỗ trợ t&iacute;ch hợp với c&aacute;c giải ph&aacute;p kh&aacute;c.</p>\r\n\r\n<p>Ngo&agrave;i ra, cần lưu &yacute; rằng t&iacute;nh năng hỗ trợ c&aacute;c thiết bị RGB kh&ocirc;ng phải của Asus c&oacute; thể thay đổi theo thời gian v&agrave; phi&ecirc;n bản phần mềm Aura Sync, v&igrave; vậy h&atilde;y kiểm tra t&agrave;i liệu hướng dẫn v&agrave; th&ocirc;ng tin cập nhật tr&ecirc;n trang web của Asus để biết th&ocirc;ng tin cụ thể về t&iacute;ch hợp sản phẩm của bạn.</p>\r\n\r\n<p>T</p>\r\n', 'Asus-aura-sync-banner.jpg', '2023-11-30 23:18:02', '1', '2023-12-28 13:58:57', '75', 1, 1),
(7, 'Ray Tracing là gì? Tìm hiểu công nghệ đồ họa đột phá', 'ray-tracing-la-gi-tim-hieu-cong-nghe-do-hoa-dot-pha', '', '<p>Ray tracing kh&ocirc;ng chỉ l&agrave; một phương ph&aacute;p tạo ra h&igrave;nh ảnh số đẹp mắt, m&agrave; c&ograve;n l&agrave; một c&ocirc;ng nghệ đang th&uacute;c đẩy giới hạn về chất lượng h&igrave;nh ảnh trong ng&agrave;nh c&ocirc;ng nghiệp giải tr&iacute; v&agrave; thiết kế. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ kh&aacute;m ph&aacute; chi tiết về Ray Tracing, c&aacute;ch n&oacute; hoạt động, v&agrave; tại sao n&oacute; đ&atilde; trở th&agrave;nh một yếu tố quan trọng trong việc tạo ra thế giới ảo ch&acirc;n thực.</p>\r\n\r\n<h2><strong>Ray Tracing l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p><a href=\"https://vi.wikipedia.org/wiki/D%C3%B2_tia_(%C4%91%E1%BB%93_h%E1%BB%8Da)\" target=\"_blank\">Ray tracing</a>&nbsp;l&agrave; một phương ph&aacute;p trong đồ họa m&aacute;y t&iacute;nh v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BB%93_h%E1%BB%8Da_3D\" target=\"_blank\">đồ họa 3D</a>&nbsp;được sử dụng để tạo ra h&igrave;nh ảnh số chất lượng cao. Phương ph&aacute;p n&agrave;y đặc biệt phổ biến trong việc tạo ra h&igrave;nh ảnh số động, phim hoạt h&igrave;nh, v&agrave; trong c&aacute;c ứng dụng y&ecirc;u cầu chất lượng h&igrave;nh ảnh cao như trong tr&ograve; chơi video, thiết kế sản phẩm, v&agrave; nhiều lĩnh vực kh&aacute;c.</p>\r\n\r\n<p>Ray tracing hoạt động bằng c&aacute;ch m&ocirc; phỏng c&aacute;ch &aacute;nh s&aacute;ng tương t&aacute;c với c&aacute;c vật thể trong m&ocirc;i trường 3D. N&oacute; tạo ra h&igrave;nh ảnh bằng c&aacute;ch theo d&otilde;i c&aacute;c tia s&aacute;ng từ nguồn s&aacute;ng khi ch&uacute;ng gặp phải c&aacute;c vật thể trong kh&ocirc;ng gian 3D. Mỗi tia s&aacute;ng được theo d&otilde;i khi n&oacute; bắt đầu từ mắt người nh&igrave;n (hoặc m&aacute;y ảnh) v&agrave; sau đ&oacute; tiếp x&uacute;c với bề mặt c&aacute;c vật thể, phản xạ, gửi tia phản xạ đến mắt người nh&igrave;n. Qu&aacute; tr&igrave;nh n&agrave;y tạo ra c&aacute;c h&igrave;nh ảnh ch&acirc;n thực với hiệu ứng &aacute;nh s&aacute;ng, b&oacute;ng đổ, phản xạ, lấp đầy m&agrave;u sắc v&agrave; c&aacute;c hiệu ứng quang học kh&aacute;c giống với thế giới thực.</p>\r\n\r\n<p>Ray tracing cung cấp chất lượng h&igrave;nh ảnh cao, nhưng đ&ograve;i hỏi nhiều t&iacute;nh to&aacute;n, v&igrave; mỗi tia s&aacute;ng cần phải được theo d&otilde;i v&agrave; t&iacute;nh to&aacute;n kỹ lưỡng. Một số c&ocirc;ng cụ v&agrave; c&ocirc;ng nghệ đồ họa m&aacute;y t&iacute;nh nổi tiếng sử dụng ray tracing bao gồm NVIDIA&#39;s RTX, c&ocirc;ng nghệ ray tracing trong c&aacute;c dự &aacute;n phần mềm như Blender hoặc phần cứng như card đồ họa NVIDIA RTX. Ray tracing đang ph&aacute;t triển v&agrave; ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến trong việc tạo ra h&igrave;nh ảnh số đẹp v&agrave; ch&acirc;n thực.</p>\r\n\r\n<p><img alt=\"Ray Tracing là gì?\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/raytracking_3_1024x1024.png?v=1697683135\" /></p>\r\n\r\n<h2><strong>Ray Tracing hoạt động như thế n&agrave;o?</strong></h2>\r\n\r\n<p>Như đ&atilde; n&oacute;i ở tr&ecirc;n, Ray tracing hoạt động bằng c&aacute;ch m&ocirc; phỏng c&aacute;ch &aacute;nh s&aacute;ng tương t&aacute;c với c&aacute;c vật thể trong m&ocirc;i trường 3D. Qu&aacute; tr&igrave;nh n&agrave;y bao gồm c&aacute;c bước cơ bản sau:</p>\r\n\r\n<ul>\r\n	<li><strong>Ph&aacute;t ra tia s&aacute;ng (ray):</strong>&nbsp;Qu&aacute; tr&igrave;nh bắt đầu bằng việc ph&aacute;t ra c&aacute;c tia s&aacute;ng từ mắt người nh&igrave;n hoặc m&aacute;y ảnh th&ocirc;ng qua một điểm tiếp x&uacute;c với mắt người nh&igrave;n gọi l&agrave; &quot;điểm ch&ugrave;m tia&quot; (viewpoint) hoặc &quot;mắt của m&aacute;y ảnh.&quot;</li>\r\n	<li><strong>Giao điểm với vật thể:</strong>&nbsp;Mỗi tia s&aacute;ng được theo d&otilde;i khi n&oacute; bắt đầu từ điểm ch&ugrave;m tia v&agrave; tiếp x&uacute;c với c&aacute;c vật thể trong kh&ocirc;ng gian 3D. Khi tia s&aacute;ng gặp vật thể, qu&aacute; tr&igrave;nh n&agrave;y ghi lại th&ocirc;ng tin về tia s&aacute;ng giao điểm với vật thể, như vị tr&iacute;, hướng v&agrave; khoảng c&aacute;ch giao điểm.</li>\r\n	<li><strong>Phản xạ, gửi tia phản xạ:</strong>&nbsp;Sau khi tia s&aacute;ng giao điểm với bề mặt vật thể, n&oacute; c&oacute; thể phản xạ, gửi ra một tia s&aacute;ng phản xạ. Qu&aacute; tr&igrave;nh phản xạ c&oacute; thể theo quy tắc phản xạ ho&agrave;n hảo (perfect reflection), như khi &aacute;nh s&aacute;ng phản xạ từ một bề mặt phẳng, hoặc theo quy tắc phản xạ mờ (soft reflection), như khi &aacute;nh s&aacute;ng được phản xạ từ bề mặt kh&ocirc;ng phẳng như vật thể c&oacute; bề mặt mờ.</li>\r\n	<li><strong>Lan truyền trong m&ocirc;i trường:</strong>&nbsp;T&ugrave;y thuộc v&agrave;o đặc điểm của vật thể v&agrave; m&ocirc;i trường, tia s&aacute;ng c&oacute; thể đi qua một vật thể (như &aacute;nh s&aacute;ng đi qua nước) hoặc bị hấp thụ bởi n&oacute;. Qu&aacute; tr&igrave;nh n&agrave;y cũng ghi lại th&ocirc;ng tin về việc tia s&aacute;ng đi qua vật thể hoặc bị hấp thụ.</li>\r\n	<li><strong>Thu gom th&ocirc;ng tin từ nguồn s&aacute;ng:</strong>&nbsp;Khi tia s&aacute;ng được ph&aacute;t ra v&agrave; tiếp x&uacute;c với c&aacute;c vật thể, n&oacute; c&oacute; thể thu gom th&ocirc;ng tin về m&ocirc;i trường xung quanh, bao gồm m&agrave;u sắc, &aacute;nh s&aacute;ng m&ocirc;i trường, v&agrave; c&aacute;c hiệu ứng quang học kh&aacute;c.</li>\r\n	<li><strong>Tạo h&igrave;nh ảnh:</strong>&nbsp;Tất cả c&aacute;c th&ocirc;ng tin từ c&aacute;c tia s&aacute;ng được kết hợp để tạo ra một h&igrave;nh ảnh số cuối c&ugrave;ng. Qu&aacute; tr&igrave;nh n&agrave;y li&ecirc;n quan đến việc t&iacute;nh to&aacute;n c&aacute;c m&agrave;u sắc, &aacute;nh s&aacute;ng, b&oacute;ng đổ, phản xạ, v&agrave; c&aacute;c hiệu ứng kh&aacute;c để tạo ra h&igrave;nh ảnh ch&acirc;n thực.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Ray Tracing hoạt động như thế nào?\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/raytracking_1_1024x1024.png?v=1697683196\" /></p>\r\n\r\n<p>Ray tracing cung cấp chất lượng h&igrave;nh ảnh cao v&agrave; ch&iacute;nh x&aacute;c, bởi v&igrave; n&oacute; m&ocirc; phỏng c&aacute;ch &aacute;nh s&aacute;ng hoạt động trong thế giới thực. Tuy nhi&ecirc;n, qu&aacute; tr&igrave;nh n&agrave;y đ&ograve;i hỏi rất nhiều t&iacute;nh to&aacute;n, thời gian v&agrave; t&agrave;i nguy&ecirc;n. Tuy nhi&ecirc;n, với sự ph&aacute;t triển của c&ocirc;ng nghệ v&agrave; phần cứng, ray tracing đang trở n&ecirc;n ng&agrave;y c&agrave;ng hiệu quả v&agrave; phổ biến trong ng&agrave;nh c&ocirc;ng nghiệp đồ họa m&aacute;y t&iacute;nh v&agrave; giải tr&iacute;.</p>\r\n\r\n<h2><strong>Những ưu điểm nổi bật của Ray Tracing</strong></h2>\r\n\r\n<p>Ray tracing mang lại nhiều lợi &iacute;ch quan trọng trong lĩnh vực đồ họa m&aacute;y t&iacute;nh v&agrave; giải tr&iacute;, bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Chất lượng h&igrave;nh ảnh cao: Ray tracing tạo ra h&igrave;nh ảnh số với chất lượng cao, t&aacute;i tạo một c&aacute;ch ch&acirc;n thực &aacute;nh s&aacute;ng, b&oacute;ng đổ, phản xạ, lấp đầy m&agrave;u sắc v&agrave; c&aacute;c hiệu ứng quang học kh&aacute;c giống với thế giới thực.</li>\r\n	<li>Hiệu ứng &aacute;nh s&aacute;ng tự nhi&ecirc;n: Ray tracing cho ph&eacute;p m&ocirc; phỏng những hiệu ứng &aacute;nh s&aacute;ng tự nhi&ecirc;n như &aacute;nh s&aacute;ng mặt trời, b&oacute;ng đổ mềm, &aacute;nh s&aacute;ng trong gương, v&agrave; phản xạ m&ocirc;i trường xung quanh.</li>\r\n	<li>Th&uacute;c đẩy s&aacute;ng tạo nghệ thuật: Ray tracing gi&uacute;p c&aacute;c nghệ sĩ v&agrave; nh&agrave; thiết kế s&aacute;ng tạo c&oacute; khả năng tạo ra c&aacute;c t&aacute;c phẩm độc đ&aacute;o v&agrave; đẹp mắt hơn. N&oacute; mở ra cơ hội cho việc thử nghiệm với &aacute;nh s&aacute;ng, m&agrave;u sắc v&agrave; hiệu ứng, l&agrave;m cho c&ocirc;ng việc nghệ thuật trở n&ecirc;n phong ph&uacute; v&agrave; đa dạng hơn.</li>\r\n	<li>Cải thiện thực tế trong tr&ograve; chơi video: Ray tracing đang trở th&agrave;nh một yếu tố quan trọng trong tr&ograve; chơi video, l&agrave;m cho c&aacute;c thế giới ảo trở n&ecirc;n thật sự hấp dẫn v&agrave; ch&acirc;n thực. N&oacute; cung cấp hiệu ứng b&oacute;ng đổ, phản xạ v&agrave; chi tiết h&igrave;nh ảnh đ&aacute;ng kinh ngạc, l&agrave;m tăng trải nghiệm tr&ograve; chơi.</li>\r\n	<li>Ứng dụng trong thiết kế v&agrave; kiến tr&uacute;c: Ray tracing c&oacute; sử dụng rộng r&atilde;i trong lĩnh vực thiết kế sản phẩm v&agrave; kiến tr&uacute;c để m&ocirc; phỏng v&agrave; thử nghiệm c&aacute;c thiết kế trước khi ch&uacute;ng được x&acirc;y dựng thực tế.</li>\r\n	<li>H&igrave;nh ảnh đa dạng v&agrave; t&ugrave;y chỉnh: Ray tracing cho ph&eacute;p tạo ra c&aacute;c hiệu ứng h&igrave;nh ảnh đa dạng v&agrave; t&ugrave;y chỉnh, từ h&igrave;nh ảnh khoa học đến h&igrave;nh ảnh thần thoại hoặc phong cảnh huyền b&iacute;. Lợi &iacute;ch n&agrave;y mở ra kh&ocirc;ng gian s&aacute;ng tạo rộng lớn cho nghệ thuật v&agrave; thiết kế.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Những ưu điểm nổi bật của Ray Tracing\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/raytracking_2_1024x1024.png?v=1697683228\" /></p>\r\n\r\n<h2><strong>Những card đồ họa n&agrave;o hỗ trợ Ray Tracing</strong></h2>\r\n\r\n<p>Nhiều&nbsp;<strong><a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/vga-la-gi\" target=\"_blank\">card đồ họa</a></strong>&nbsp;tr&ecirc;n thị trường hiện nay đ&atilde; hỗ trợ ray tracing th&ocirc;ng qua c&aacute;c c&ocirc;ng nghệ đặc biệt l&agrave; h&atilde;ng&nbsp;<a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/nvidia-la-gi\" target=\"_blank\">NVIDIA</a>&nbsp;RTX (Real-Time Ray Tracing) v&agrave; AMD Radeon RDNA 2. Dưới đ&acirc;y l&agrave; một số v&iacute; dụ về card đồ họa m&agrave; bạn c&oacute; thể t&igrave;m hiểu v&agrave; mua để c&oacute; trải nghiệm ray tracing:</p>\r\n\r\n<ul>\r\n	<li>NVIDIA GeForce RTX Series: C&aacute;c card đồ họa GeForce RTX của NVIDIA l&agrave; một trong những lựa chọn h&agrave;ng đầu cho ray tracing. Ch&uacute;ng bao gồm c&aacute;c mẫu như RTX 3090, RTX 3080, RTX 3070, v&agrave; c&aacute;c phi&ecirc;n bản kh&aacute;c. C&aacute;c card n&agrave;y được thiết kế đặc biệt để hỗ trợ ray tracing v&agrave; c&oacute; hiệu năng tốt.</li>\r\n	<li>AMD Radeon RX 6000 Series: AMD đ&atilde; ra mắt d&ograve;ng card đồ họa Radeon RX 6000 Series, bao gồm c&aacute;c model như RX 6900 XT, RX 6800 XT v&agrave; RX 6800, với khả năng hỗ trợ ray tracing. C&aacute;c card đồ họa n&agrave;y sử dụng kiến tr&uacute;c RDNA 2 v&agrave; cung cấp hiệu năng tốt cho ray tracing.</li>\r\n	<li>NVIDIA GeForce GTX 16 Series: Một số card đồ họa thuộc d&ograve;ng GTX 16 Series của NVIDIA như GTX 1660 Ti v&agrave; GTX 1660 cũng c&oacute; khả năng ray tracing, tuy nhi&ecirc;n, hiệu năng của ch&uacute;ng c&oacute; thể kh&ocirc;ng cao bằng d&ograve;ng RTX.</li>\r\n	<li>Console Gaming: Cả PlayStation 5 v&agrave; Xbox Series X cũng hỗ trợ ray tracing. Điều n&agrave;y c&oacute; nghĩa l&agrave; một số tr&ograve; chơi tr&ecirc;n c&aacute;c hệ m&aacute;y chơi game n&agrave;y cũng c&oacute; thể sử dụng ray tracing để tạo ra h&igrave;nh ảnh đẹp v&agrave; ch&acirc;n thực hơn.</li>\r\n</ul>\r\n\r\n<p>Khi bạn c&acirc;n nhắc mua một card đồ họa hỗ trợ ray tracing, h&atilde;y xem x&eacute;t nhu cầu sử dụng của bạn, ng&acirc;n s&aacute;ch v&agrave; c&aacute;c t&iacute;nh năng kh&aacute;c m&agrave; card đồ họa c&oacute; thể cung cấp, bao gồm hiệu năng tổng thể, bộ nhớ v&agrave; t&iacute;nh năng đặc biệt kh&aacute;c. Bạn c&oacute; thể tham khảo c&aacute;c d&ograve;ng Card đồ họa tốt nhất hiện c&oacute; tr&ecirc;n Phong C&aacute;ch Xanh&nbsp;<a href=\"https://www.phongcachxanh.vn/collections/card-man-hinh\"><strong>TẠI Đ&Acirc;Y</strong></a>.</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin tổng quan v&agrave; chi tiết về Ray Tracing - một tiến bộ quan trọng trong lĩnh vực đồ họa game, nhằm n&acirc;ng cao trải nghiệm cho cộng đồng game thủ. Nếu c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o cần được giải đ&aacute;p, vui l&ograve;ng để lại b&igrave;nh luận để được ch&uacute;ng t&ocirc;i giải đ&aacute;p nh&eacute;.</p>\r\n', 'raytracking-banner.jpg', '2023-12-28 13:41:03', '75', '2023-12-28 13:41:03', '75', 1, 1),
(8, 'Phong Cách Đỏ đạt được thỏa thuận phân phối độc quyền Fnatic tại Việt Nam', 'phong-cach-do-dat-duoc-thoa-thuan-phan-phoi-doc-quyen-fnatic-tai-viet-nam', '', '<h1>C&aacute;c sản phẩm của Fnatic</h1>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/fnatic-gear_2_1024x1024.jpg?v=1696410803\" /></p>\r\n\r\n<p>L&agrave; thương hiệu ch&uacute; trọng đến esport v&agrave; hiệu năng cao, dải sản phẩm của Fnatic đ&aacute;p đứng đầy đủ những thứ phải c&oacute; của một game thủ như chuột, b&agrave;n ph&iacute;m, tai nghe v&agrave; l&oacute;t chuột với c&aacute;c sản phẩm thuộc ph&acirc;n kh&uacute;c cao cấp nổi bật như sau.</p>\r\n\r\n<h2>Chuột Fnatic X Lamzu Thorn Special Edition</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/fnatic-gear_3_1024x1024.jpg?v=1696410860\" /></p>\r\n\r\n<p>Kết hợp c&ugrave;ng Lamzu - một trong những h&atilde;ng thiết kế v&agrave; sản xuất chuột xuất sắc nhất năm 2022-2023, thiết kế được chắp b&uacute;t bởi Fnatic v&agrave; Lamzu được tin tưởng sử dụng bởi những vận động vi&ecirc;n esport của Fnatic, điển h&igrave;nh l&agrave; nh&agrave; v&ocirc; địch 3 lần c&aacute;c giải Valorant đ&atilde; kh&ocirc;ng thể chờ đến l&uacute;c chuột ch&iacute;nh thức được ra mắt m&agrave; sử dụng ngay để đoạt những chức v&ocirc; địch danh gi&aacute; nhất nh&igrave; tựa game Valorant.</p>\r\n\r\n<p>Phần cứng l&agrave; điểm nhấn kh&ocirc;ng thể thiếu khi nhắc đến&nbsp;<a href=\"https://www.phongcachxanh.vn/products/chuot-khong-day-sieu-nhe-fnatic-gear-x-lamzu-thorn\" target=\"_blank\">Fnatic X Lamzu Thorn</a>&nbsp;với những điểm sau:</p>\r\n\r\n<ul>\r\n	<li>Tần số b&aacute;o c&aacute;o t&iacute;n hiệu 4000Hz: gấp 4 lần 1000Hz ti&ecirc;u chuẩn.</li>\r\n	<li>Switch quang học: loại bỏ hiện tượng double click tr&ecirc;n switch cơ truyền thống.</li>\r\n	<li>Cảm biến quang học Pixart PAW 3395 mới nhất: tối đa 26000 DPI.</li>\r\n	<li>Trọng lượng si&ecirc;u nhẹ 52 gram, th&acirc;n chuột kh&ocirc;ng lỗ.</li>\r\n	<li>Thời lượng pin tối đa l&ecirc;n đến 80 giờ.</li>\r\n</ul>\r\n\r\n<h2>B&agrave;n ph&iacute;m cơ low profile Fnatic Streak65 LP</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/fnatic-gear_5_1024x1024.jpg?v=1696410879\" /></p>\r\n\r\n<p>Được sử dụng v&agrave; tối ưu bởi c&aacute;c game thủ chuy&ecirc;n nghiệp tại Fnatic,&nbsp;<a href=\"https://www.phongcachxanh.vn/products/ban-phim-co-low-profile-fnatic-gear-streak65-lp\" target=\"_blank\">Streak65 LP</a>&nbsp;được tối ưu cho cả c&aacute;c d&ograve;ng game MOBA truyền thống đề cao sự ch&iacute;nh x&aacute;c của đ&ocirc;i tay, độ trễ thấp v&agrave; c&aacute;c tựa game FPS đ&ograve;i hỏi sự nhấn/nhả ph&iacute;m được t&iacute;nh bằng khoảnh khắc. B&agrave;n ph&iacute;m cơ Fnatic Streak65 LP được tối ưu dựa tr&ecirc;n những kinh nghiệm thực chiến ở những giải đấu thể thao điện tử h&agrave;ng đầu khắp c&aacute;c ch&acirc;u lục bởi ch&iacute;nh những vận động vi&ecirc;n tại Fnatic với độ trễ thấp, k&iacute;ch hoạt ph&iacute;m nhanh nhưng vẫn đủ hấp dẫn để bạn sử dụng trong c&ocirc;ng việc h&agrave;ng ng&agrave;y - điều m&agrave; đa số c&aacute;c bạn game thủ vẫn l&agrave;m h&agrave;ng ngo&agrave;i b&ecirc;n cạnh thời gian chơi game giải tr&iacute;.</p>\r\n\r\n<p>Lợi thế của Fnatic Streak65 LP l&agrave; độ mỏng chỉ 20mm nhưng cực k&igrave; cứng chắc với cấu tr&uacute;c plate nh&ocirc;m chịu lực. Trọng lượng tổng thể của Fnatic Streak65 LP chỉ 420 gram gi&uacute;p bạn dễ d&agrave;ng mang b&agrave;n ph&iacute;m đi bất cứ đ&acirc;u.</p>\r\n\r\n<h2>L&oacute;t chuột Fnatic Focus 3 / Dash / Jet</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/fnatic-gear_6_1024x1024.jpg?v=1696410897\" /></p>\r\n\r\n<p>Fnatic ph&acirc;n loại c&aacute;c d&ograve;ng l&oacute;t chuột của h&atilde;ng theo đặc t&iacute;nh tốc độ, ứng với sở th&iacute;ch v&agrave; loại game m&agrave; bạn y&ecirc;u th&iacute;ch.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.phongcachxanh.vn/products/lot-chuot-fnatic-focus-3-control\" target=\"_blank\">Fnatic Focus 3</a>: loại l&oacute;t chuột control của Fnatic ph&ugrave; hợp với c&aacute;c thể loại game FPS tiết tấu chậm như Counter-Strike 2, Valorant.</li>\r\n	<li>Fnatic Dash: loại l&oacute;t chuột lai giữa speed v&agrave; control, th&iacute;ch hợp sử dụng đa mục đ&iacute;ch như c&aacute;c game FPS, MOBA,...</li>\r\n	<li><a href=\"https://www.phongcachxanh.vn/products/lot-chuot-fnatic-jet-speed\" target=\"_blank\">Fnatic Jet</a>: d&ograve;ng l&oacute;t chuột nhanh nhất của Fnatic với họa tiết holo chống nước đặc trưng. Bạn c&oacute; thể sử dụng để trang tr&iacute; hoặc di chuột với cảm gi&aacute;c nhẹ nh&agrave;ng v&agrave; nhanh nhất.</li>\r\n</ul>\r\n\r\n<h2>Bộ đ&ocirc;i tai nghe Fnatic React v&agrave; React+</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/fnatic-gear_4_1024x1024.jpg?v=1696410915\" /></p>\r\n\r\n<p>Tai nghe của Fnatic được thiết kế với chất esport từ đầu. Kết cấu của tai nghe Fnatic&nbsp;<a href=\"https://www.phongcachxanh.vn/products/tai-nghe-fnatic-react\" target=\"_blank\">React</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.phongcachxanh.vn/products/tai-nghe-fnatic-react-7-1-virtual-surround-usb-soundcard\" target=\"_blank\">React+</a>&nbsp;với driver 53mm, thiết kế buồng &acirc;m t&aacute;ch bạch giữa bass v&agrave; mid/high gi&uacute;p bảo to&agrave;n chi tiết &acirc;m thanh. Điều n&agrave;y đặc biệt hữu dụng khi bạn chơi c&aacute;c tựa game FPS khi cần tập trung nghe tiếng ch&acirc;n, x&aacute;c định phương hướng m&agrave; kh&ocirc;ng ảnh hưởng đến chất &acirc;m, chất bass khi giải tr&iacute; hoặc chơi c&aacute;c tựa game với hiệu ứng &acirc;m thanh ấn tượng.</p>\r\n\r\n<p>Phi&ecirc;n bản Fnatic React+ được đi k&egrave;m một sound card kết nối qua cổng USB gi&uacute;p giả lập &acirc;m thanh 7.1, cho chất lượng &acirc;m thanh tốt v&agrave; sinh động hơn.</p>\r\n\r\n<h1>Giới thiệu th&ecirc;m về Fnatic</h1>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/fnatic-gear_1_1024x1024.jpg?v=1696410934\" /></p>\r\n\r\n<p>L&agrave; một trong những tổ chức esport h&agrave;ng đầu thế giới, Fnatic c&oacute; hơn 18 dẫn đầu trong ng&agrave;nh gaming v&agrave; l&agrave; một trong những tổ chức esport th&agrave;nh c&ocirc;ng nhất lịch sử. Với lịch sử tham gia nhiều bộ m&ocirc;n esport, Fnatic hiện đang l&agrave; tổ chức esport dẫn đầu với bề d&agrave;y th&agrave;nh t&iacute;ch đ&aacute;ng nể:</p>\r\n\r\n<ul>\r\n	<li><strong>Valorant:</strong>&nbsp;đội đầu ti&ecirc;n v&ocirc; địch 2 kỳ Valorant Champion Tour li&ecirc;n tiếp (năm 2023).</li>\r\n	<li><strong>Li&ecirc;n Minh Huyền Thoại:</strong>&nbsp;đội tuyển ch&acirc;u &Acirc;u duy nhất v&ocirc; địch một giải chung kết thế giới.</li>\r\n	<li><strong>Apex Legends:</strong>&nbsp;đội top 1 tại giải APAC North 2023.</li>\r\n	<li><strong>Counter-Strike: Global Offensive:</strong>&nbsp;đội đầu ti&ecirc;n v&ocirc; địch hai kỳ Major li&ecirc;n tiếp v&agrave; v&ocirc; địch nhiều Major thứ 2 trong lịch sử Counter-Strike: Global Offensive.</li>\r\n	<li><strong>FIFA:</strong>&nbsp;đội đầu ti&ecirc;n v&ocirc; địch trong lịch sử tựa game FIFA.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/collections/fnatic-gear\">Fnatic</a>&nbsp;c&oacute;&nbsp;ri&ecirc;ng&nbsp;một nh&aacute;nh&nbsp;chuy&ecirc;n về c&aacute;c sản phẩm gaming gear hiệu năng cao. Vốn l&agrave; một nh&aacute;nh ph&aacute;t triển sản phẩm d&agrave;nh cho c&aacute;c vận động vi&ecirc;n esport của tổ chức, Fnatic Gear giờ đ&acirc;y ph&aacute;t triển sản phẩm d&agrave;nh cho cả c&aacute;c vận động vi&ecirc;n Fnatic v&agrave; c&aacute;c kh&aacute;ch h&agrave;ng t&igrave;m kiếm những sản phẩm gaming gear chất lượng cao nhất, đỉnh nhất như c&aacute;c nh&agrave; v&ocirc; địch Fnatic đang sử dụng.</p>\r\n\r\n<p>Sản phẩm của Fnatic Gear lu&ocirc;n được c&aacute;c vận động vi&ecirc;n của tổ chức sử dụng tại c&aacute;c giải LAN Event lớn tr&ecirc;n khắp bộ m&ocirc;n như CS-GO, Valorant, Li&ecirc;n Minh Huyền Thoại,... tại c&aacute;c giải đấu, bạn dễ d&agrave;ng gặp những chiếc b&agrave;n ph&iacute;m cơ Fnatic hay những chiếc l&oacute;t chuột, chuột Fnatic cực kỳ ổn định v&igrave; sinh ra để chiến thắng.</p>\r\n', 'TCBC-Fnatic-x-pcx_copy.jpg', '2023-12-28 13:43:47', '75', '2023-12-28 13:43:47', '75', 1, 1);
INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(9, 'Các loại ổ cứng SSD trên thị trường hiện nay', 'cac-loai-o-cung-ssd-tren-thi-truong-hien-nay', '', '<p>Sự xuất hiện của ổ cứng SSD đ&atilde; mang lại nhiều ưu điểm hơn về độ bền, tốc độ v&agrave; k&iacute;ch thước so với c&aacute;c&nbsp;<strong><a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/o-cung-hdd-la-gi\" target=\"_blank\">ổ cứng HDD</a></strong>&nbsp;trước đ&acirc;y. So với c&aacute;c phi&ecirc;n bản ban đầu, ổ cứng SSD hiện nay c&oacute; sẵn trong nhiều biến thể kh&aacute;c nhau về loại v&agrave; dung lượng. Vậy tại thời điểm hiện tại, c&oacute; những loại ổ cứng SSD n&agrave;o tr&ecirc;n thị trường hiện nay. C&ugrave;ng Phong C&aacute;ch Xanh t&igrave;m hiểu ngay sau đ&acirc;y.</p>\r\n\r\n<h2><strong>C&aacute;c loại SSD tr&ecirc;n thị trường hiện nay</strong></h2>\r\n\r\n<h3><strong><em>SSD 1.8 inch micro SATA</em></strong></h3>\r\n\r\n<p>L&agrave; loại ổ cứng SSD k&iacute;ch thước 1.8 inch sử dụng chuẩn giao tiếp Micro SATA v&agrave; c&oacute; h&igrave;nh d&aacute;ng chỉ lớn hơn một ch&uacute;t so với thanh RAM, đ&acirc;y l&agrave; loại ổ SSD c&oacute; k&iacute;ch thước nhỏ hơn đ&aacute;ng kể so với c&aacute;c ổ SSD 2.5 inch truyền thống v&agrave; thường được sử dụng trong c&aacute;c laptop mỏng nhẹ.</p>\r\n\r\n<h3><strong><em>SSD M.2 PCIe</em></strong></h3>\r\n\r\n<p>Ổ cứng SSD M.2 PCIe sử dụng chuẩn giao tiếp PCI Express với tốc độ đọc v&agrave; ghi dữ liệu l&ecirc;n đến 32 Gb/s (tương đương 4 GB/s), đ&acirc;y l&agrave; tốc độ cao hơn rất nhiều so với SSD M2 SATA c&oacute; chỉ 550 MB/s. Điểm tương đồng duy nhất giữa SSD M.2 PCIe v&agrave; SSD M2 SATA l&agrave; khe cắm M2, v&igrave; vậy, SSD M.2 PCIe cũng c&oacute; ba chuẩn k&iacute;ch thước l&agrave; 2242, 2260 v&agrave; 2280.</p>\r\n\r\n<p>Bề rộng vẫn duy tr&igrave; l&agrave; 22 mm, tuy nhi&ecirc;n, chiều d&agrave;i c&oacute; thể thay đổi, lần lượt l&agrave; 42mm, 60mm v&agrave; 80mm. K&iacute;ch thước phổ biến nhất của ổ cứng SSD M.2 PCIe l&agrave; rộng 22 mm v&agrave; d&agrave;i 80 mm, trong khi c&aacute;c loại kh&aacute;c th&igrave; &iacute;t phổ biến hơn v&agrave; c&oacute; sản xuất hạn chế.</p>\r\n\r\n<p><img alt=\"Các loại SSD trên thị trường hiện nay\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-loai-o-cung-ssd_2_600x600.png?v=1696300581\" /></p>\r\n\r\n<h3><strong><em>SSD M.2 SATA</em></strong></h3>\r\n\r\n<p>Ổ cứng SSD M.2 SATA sử dụng chuẩn giao tiếp dữ liệu SATA III, giới hạn tốc độ đọc v&agrave; ghi dữ liệu ở mức 6Gbps, tương đương 550MB/s. Tuy nhi&ecirc;n, SSD M.2 SATA III c&oacute; k&iacute;ch thước nhỏ gọn hơn so với SSD 2.5 inch SATA III, với h&igrave;nh d&aacute;ng tương tự một thanh RAM m&aacute;y t&iacute;nh, ph&ugrave; hợp cho c&aacute;c d&ograve;ng m&aacute;y t&iacute;nh nhỏ gọn v&agrave; nhẹ.</p>\r\n\r\n<p>SSD M.2 SATA kh&ocirc;ng chỉ c&oacute; một chuẩn duy nhất m&agrave; c&ograve;n c&oacute; ba chuẩn kh&aacute;c nhau, bao gồm 2242, 2260 v&agrave; 2280. Chiều rộng vẫn duy tr&igrave; l&agrave; 22mm, tuy nhi&ecirc;n chiều d&agrave;i thay đổi theo c&aacute;c chuẩn lần lượt l&agrave; 42mm, 60mm v&agrave; 80mm.</p>\r\n\r\n<p>Trong số c&aacute;c loại n&agrave;y, chuẩn ổ cứng M.2 SATA 2280 l&agrave; loại phổ biến nhất tr&ecirc;n thị trường, trong khi c&aacute;c loại kh&aacute;c thường kh&oacute; kiếm v&agrave; c&oacute; gi&aacute; cao hơn đ&aacute;ng kể.</p>\r\n\r\n<p>Hiện nay, tr&ecirc;n thị trường c&oacute; sẵn nhiều loại ổ cứng SSD M.2 SATA NAND kh&aacute;c nhau, đ&acirc;y l&agrave; những ổ cứng M.2 SATA m&agrave; sử dụng bộ nhớ flash NAND để cung cấp khả năng lưu trữ lớn hơn v&agrave; tốc độ nhanh hơn. C&aacute;c loại bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Bộ nhớ flash đơn cấp (SLC): Lưu trữ 1 bit dữ liệu tr&ecirc;n mỗi cell, đạt tốc độ nhanh v&agrave; độ bền cao, nhưng c&oacute; hạn chế về dung lượng lưu trữ.</li>\r\n	<li>Bộ nhớ flash đa lớp (MLC): Lưu trữ 2 bit dữ liệu tr&ecirc;n mỗi cell, cung cấp dung lượng lưu trữ cao hơn, nhưng tốc độ chậm hơn so với SLC v&agrave; gi&aacute; th&agrave;nh thấp hơn. Một số ổ cứng MLC sử dụng bộ nhớ đệm để cải thiện tốc độ.</li>\r\n	<li>Bộ nhớ flash ba cấp (TLC): Lưu trữ 3 bit dữ liệu tr&ecirc;n mỗi cell, cung cấp dung lượng lưu trữ lớn hơn MLC với gi&aacute; phải chăng. Mặc d&ugrave; tốc độ kh&ocirc;ng bằng MLC, nhưng c&oacute; ổ cứng TLC sử dụng c&ocirc;ng nghệ lưu trữ đệm để cải thiện hiệu suất.</li>\r\n	<li>Bộ nhớ flash bốn lớp (QLC): Tăng mật độ lưu trữ v&agrave; gi&aacute; th&agrave;nh rẻ hơn, nhưng độ bền kh&ocirc;ng cao. Ph&ugrave; hợp cho c&aacute;c m&aacute;y t&iacute;nh gi&aacute; rẻ.</li>\r\n</ul>\r\n\r\n<p><strong><em>Xem th&ecirc;m &gt;&gt;&nbsp;<a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/toc-do-doc-ghi-ssd\" target=\"_blank\">Tốc độ đọc ghi SSD l&agrave; g&igrave;? C&oacute; quan trọng kh&ocirc;ng?</a></em></strong></p>\r\n\r\n<h3><strong><em>SSD 3.5 inch SATA</em></strong></h3>\r\n\r\n<p>Ổ cứng SSD 3.5 inch SATA thường được sử dụng trong m&aacute;y t&iacute;nh để b&agrave;n. Tuy nhi&ecirc;n, hiện nay, loại ổ cứng n&agrave;y trở n&ecirc;n hiếm hoi v&agrave; đang dần bị thay thế bởi ổ cứng SSD 2.5 inch.</p>\r\n\r\n<h3><strong><em>SSD 2.5 inch SATA III</em></strong></h3>\r\n\r\n<p>Ổ cứng SSD 2.5 inch SATA III l&agrave; một lựa chọn phổ biến hiện nay, với tốc độ đọc/ghi dữ liệu giới hạn ở mức 6Gbps, tương đương 550MB/s. Với ưu điểm về gi&aacute; cả hợp l&yacute;, n&oacute; đang được lắp đặt tr&ecirc;n hầu hết c&aacute;c d&ograve;ng laptop th&ocirc;ng thường. Hơn nữa, một số h&atilde;ng sản xuất đ&atilde; ra mắt phi&ecirc;n bản SSD 2.5 inch SATA III NAND, sử dụng c&ocirc;ng nghệ lưu trữ chip nhớ mới, từ đ&oacute; gia tăng tuổi thọ của ổ cứng so với c&aacute;c phi&ecirc;n bản SSD 2.5 inch SATA III truyền thống, tuy nhi&ecirc;n, phi&ecirc;n bản n&agrave;y thường c&oacute; gi&aacute; cao hơn.</p>\r\n\r\n<p><img alt=\"Các loại SSD trên thị trường hiện nay\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-loai-o-cung-ssd_3_600x600.png?v=1696300653\" /></p>\r\n\r\n<h3><strong><em>SSD mSATA</em></strong></h3>\r\n\r\n<p>SSD mSATA l&agrave; một phi&ecirc;n bản thu nhỏ của ổ cứng SSD 2.5 inch SATA. Về h&igrave;nh d&aacute;ng, SSD mSATA thường c&oacute; k&iacute;ch thước tương tự với một card Wi-Fi trong laptop, thường l&agrave; 50x30mm.</p>\r\n\r\n<p>Thỉnh thoảng, bạn c&oacute; thể bắt gặp một số phi&ecirc;n bản mSATA half size c&oacute; k&iacute;ch thước nhỏ hơn, khoảng 25x30mm, tuy nhi&ecirc;n, c&aacute;c sản phẩm n&agrave;y hiện rất hiếm v&agrave; kh&oacute; t&igrave;m tr&ecirc;n thị trường. Về tốc độ, SSD mSATA thường đạt tốc độ đọc/ghi dữ liệu khoảng 550MB/s, tương tự như chuẩn SSD 2.5 inch SATA v&agrave; SSD M.2 SATA, m&agrave; ch&uacute;ng ta sẽ t&igrave;m hiểu ngay sau đ&acirc;y.</p>\r\n\r\n<h2><strong>Mẹo nhận biết c&aacute;c loại ổ cứng SSD</strong></h2>\r\n\r\n<h3><strong><em>Ổ cứng SSD chuẩn M2</em></strong></h3>\r\n\r\n<p>L&agrave; một thế hệ ổ cứng mới, ổ cứng n&agrave;y c&oacute; h&igrave;nh d&aacute;ng tương tự thanh RAM m&aacute;y t&iacute;nh v&agrave; hiện c&oacute; hai loại ch&iacute;nh: M2 SATA v&agrave; M2 NVMe (PCIe):</p>\r\n\r\n<p>SSD M2 SATA: Ổ cứng n&agrave;y c&oacute; hai r&atilde;nh ở hai b&ecirc;n ch&acirc;n cắm, k&iacute;ch thước phổ biến l&agrave; 22x42 v&agrave; 22x80 mm, v&agrave; tốc độ đọc/ghi dữ liệu thường đạt khoảng 550 Mbps/550 Mbps (bị giới hạn bởi băng th&ocirc;ng).</p>\r\n\r\n<p>M2 NVMe: Ổ cứng n&agrave;y c&oacute; một r&atilde;nh ở b&ecirc;n phải ch&acirc;n cắm, k&iacute;ch thước phổ biến l&agrave; 22x80 mm, v&agrave; tốc độ đọc/ghi dữ liệu thường đạt khoảng 3.5 Gbps/2.5 Gbps.</p>\r\n\r\n<h3><strong><em>Ổ cứng SSD mSATA</em></strong></h3>\r\n\r\n<p>Loại&nbsp;<strong><a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/o-cung-may-tinh\" target=\"_blank\">ổ cứng</a></strong>&nbsp;n&agrave;y c&oacute; h&igrave;nh d&aacute;ng tương tự như card Wi-Fi tr&ecirc;n laptop, l&agrave; phi&ecirc;n bản thu nhỏ của ổ cứng SSD truyền thống. Tốc độ đọc/ghi tối đa l&agrave; 550 MB/500 MB. Khe cắm n&agrave;y thường xuất hiện tr&ecirc;n một số d&ograve;ng laptop v&agrave; mainboard như B75, cũng như tr&ecirc;n Surface Pro 2, 3 v&agrave; nhiều thiết bị kh&aacute;c.</p>\r\n\r\n<h3><strong><em>Ổ cứng SSD chuẩn Micro SATA</em></strong></h3>\r\n\r\n<p>Loại ổ SSD n&agrave;y kh&aacute; hiếm tr&ecirc;n thị trường v&agrave; thường được gọi l&agrave; uSATA, đ&ocirc;i khi dễ bị nhầm lẫn với mSATA. K&iacute;ch thước của ổ thường l&agrave; 1.8 inch v&agrave; được sản xuất bởi c&aacute;c h&atilde;ng như Samsung, Intel,... Cấu tr&uacute;c của n&oacute; bao gồm 2 khối ch&acirc;n cắm 7 pin cho dữ liệu v&agrave; 9 pin (7+2) cho nguồn.</p>\r\n\r\n<p><strong><em>Xem th&ecirc;m &gt;&gt;&nbsp;<a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/so-sanh-ssd-hdd\" target=\"_blank\">So s&aacute;nh ổ cứng SSD v&agrave; HDD - N&ecirc;n d&ugrave;ng loại n&agrave;o?</a></em></strong></p>\r\n\r\n<h2><strong>Cần lưu &yacute; g&igrave; khi chọn mua ổ cứng SSD?</strong></h2>\r\n\r\n<p><strong><em>Dung lượng</em></strong></p>\r\n\r\n<p>Đối với những m&aacute;y t&iacute;nh chỉ hỗ trợ lắp đặt một ổ cứng duy nhất, vấn đề n&agrave;y trở n&ecirc;n rất quan trọng, bởi v&igrave; việc lựa chọn sai c&oacute; thể g&acirc;y kh&oacute; khăn cho bạn. Hiện nay, tr&ecirc;n thị trường, c&oacute; sẵn c&aacute;c ổ cứng SSD với c&aacute;c dung lượng phổ biến như 128 GB, 256 GB, 512 GB v&agrave; 1 TB.</p>\r\n\r\n<p><strong><em>Thương hiệu</em></strong></p>\r\n\r\n<p>Bạn c&oacute; thể xem x&eacute;t một số h&atilde;ng sản xuất ổ cứng SSD m&agrave; mọi người thường biết đến, như Intel, Samsung, Sandisk, Kingston,... Tuy nhi&ecirc;n, nếu c&oacute; ch&iacute;nh s&aacute;ch bảo h&agrave;nh tốt v&agrave; gi&aacute; cả hấp dẫn hơn, bạn cũng c&oacute; thể lựa chọn một h&atilde;ng SSD mới để thử nghiệm.</p>\r\n\r\n<p><img alt=\"Cần lưu ý gì khi chọn mua ổ cứng SSD?\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-loai-o-cung-ssd_1_600x600.png?v=1696300695\" /></p>\r\n\r\n<p><strong><em>Chuẩn kết nối với thiết bị</em></strong></p>\r\n\r\n<p>Điều n&agrave;y thường g&acirc;y hiểu lầm phổ biến nhất đối với những người muốn n&acirc;ng cấp ổ cứng SSD. Nếu m&aacute;y t&iacute;nh của bạn chỉ hỗ trợ kết nối chuẩn 2.5 inch, bạn kh&ocirc;ng thể sử dụng được ổ cứng SSD chuẩn M.2.</p>\r\n\r\n<p><strong><em>Độ bền v&agrave; tốc độ</em></strong></p>\r\n\r\n<p>C&oacute; rất nhiều loại ổ cứng SSD c&oacute; sự biến động về gi&aacute; v&agrave; tốc độ, v&igrave; vậy, trước khi mua, bạn cần xem x&eacute;t kỹ c&aacute;c th&ocirc;ng số của từng loại để hiểu r&otilde; hơn v&agrave; tr&aacute;nh những sai lầm kh&ocirc;ng cần thiết.</p>\r\n\r\n<p><strong><em>Gi&aacute; th&agrave;nh</em></strong></p>\r\n\r\n<p>Ng&agrave;y nay, tr&ecirc;n thị trường c&oacute; nhiều ổ cứng SSD c&oacute; sẵn với mức gi&aacute; đa dạng, v&agrave; sự lựa chọn của bạn phụ thuộc v&agrave;o t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh c&aacute; nh&acirc;n.</p>\r\n', 'cac-loai-o-cung-ssd-bn.jpg', '2023-12-28 13:44:57', '75', '2023-12-28 13:44:57', '75', 1, 1),
(10, 'TOP 6 thương hiệu chuột máy tính nổi tiếng nhất hiện nay', 'top-6-thuong-hieu-chuot-may-tinh-noi-tieng-nhat-hien-nay', '', '<h2>Chuột m&aacute;y t&iacute;nh LAMZU</h2>\r\n\r\n<p>Lamzu l&agrave; một thương hiệu gaming gear cao cấp được th&agrave;nh lập v&agrave;o năm 2022. Với cam kết mang đến trải nghiệm chơi game tuyệt vời nhất cho người d&ugrave;ng, Lamzu đ&atilde; tạo ra tiếng vang lớn trong cộng đồng game thủ FPS với sản phẩm đầu ti&ecirc;n l&agrave; chuột Atlantis.&nbsp;</p>\r\n\r\n<p>Sản phẩm của Lamzu được ho&agrave;n thiện một c&aacute;ch tỉ mỉ đến từng chi tiết, từ trải nghiệm unbox đến c&aacute;c linh kiện b&ecirc;n trong, để đảm bảo sự thoải m&aacute;i v&agrave; độ ổn định cao khi sử dụng. Với việc tạo ra những sản phẩm chất lượng v&agrave; đ&aacute;p ứng nhu cầu của người d&ugrave;ng, Lamzu đang trở th&agrave;nh một thương hiệu đ&aacute;ng tin cậy trong lĩnh vực gaming gear.</p>\r\n\r\n<p><img alt=\"Chuột máy tính LAMZU\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-hang-chuot-may-tinh_6_600x600.png?v=1695001659\" /></p>\r\n\r\n<p>LAMZU Atlantis l&agrave; d&ograve;ng chuột chơi game FPS tuyệt vời. N&oacute; c&oacute; trọng lượng nhẹ đ&aacute;ng kể với h&igrave;nh dạng đối xứng thoải m&aacute;i, ph&ugrave; hợp với hầu hết c&aacute;c k&iacute;ch cỡ b&agrave;n tay. Ngo&agrave;i ra với độ trễ nhấp chuột rất thấp v&agrave; hiệu suất cảm biến ch&iacute;nh x&aacute;c v&agrave; nhất qu&aacute;n, chuột Lamzu Atlantis mang lại trải nghiệm trong tr&ograve; chơi linh hoạt v&agrave; nhạy b&eacute;n.</p>\r\n\r\n<p>Nh&igrave;n chung, chất lượng chuột của h&agrave;ng Lamzu rất tốt v&agrave; c&oacute; ch&acirc;n chuột nổi bật, lướt rất &ecirc;m tr&ecirc;n b&agrave;n di chuột v&agrave; b&agrave;n l&agrave;m việc. Mặc d&ugrave; c&oacute; một ch&uacute;t rung lắc khi nhấp chuột tr&aacute;i v&agrave; phải cũng như một số tiếng k&ecirc;u c&oacute;t k&eacute;t ở th&acirc;n m&aacute;y nhưng b&ugrave; lại, chất lượng của chuột được thiết kế rất tốt v&agrave; những vấn đề nhỏ n&agrave;y kh&ocirc;ng ảnh hưởng đến hiệu suất trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/collections/chuot?filter.p.vendor=Lamzu\"><strong>Tham khảo ngay c&aacute;c sản phẩm chuột BenQ Zowie nổi bật đang b&aacute;n chạy nhất tr&ecirc;n Phong C&aacute;ch Xanh</strong></a></p>\r\n\r\n<h2>Chuột m&aacute;y t&iacute;nh Logitech</h2>\r\n\r\n<p>Thương hiệu Logitech, thường được gọi tắt l&agrave; Logi, ra đời tại Thụy Sĩ v&agrave;o năm 1981. Đ&acirc;y l&agrave; một trong những c&ocirc;ng ty h&agrave;ng đầu chuy&ecirc;n sản xuất c&aacute;c sản phẩm phụ kiện m&aacute;y t&iacute;nh như chuột m&aacute;y t&iacute;nh, loa vi t&iacute;nh, loa Bluetooth, tai nghe, v&agrave; nhiều sản phẩm kh&aacute;c.</p>\r\n\r\n<p><img alt=\"Chuột máy tính Logitech\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-hang-chuot-may-tinh_1_600x600.png?v=1695001694\" /></p>\r\n\r\n<p>Logitech sản xuất đa dạng c&aacute;c mẫu chuột với nhiều sản phẩm kh&aacute;c nhau. Hơn nữa, d&ograve;ng sản phẩm chuột của Logitech c&ograve;n t&iacute;ch hợp nhiều c&ocirc;ng nghệ ti&ecirc;n tiến, mang lại nhiều lợi &iacute;ch v&agrave; sự tiện dụng cho người d&ugrave;ng, c&oacute; thể kể đến như:</p>\r\n\r\n<ul>\r\n	<li>Khi bạn c&agrave;i đặt ứng dụng Logitech Options, chuột cho ph&eacute;p bạn trao đổi dữ liệu giữa ba m&aacute;y t&iacute;nh hoặc laptop th&ocirc;ng qua t&iacute;nh năng Logitech Flow.</li>\r\n	<li>C&ocirc;ng nghệ Unifying cho ph&eacute;p kết nối kh&ocirc;ng d&acirc;y th&ocirc;ng qua một đầu thu USB gắn v&agrave;o m&aacute;y t&iacute;nh, từ đ&oacute; gi&uacute;p ngăn ngừa việc mất m&aacute;t hoặc thất lạc của đầu thu USB Receiver v&agrave; cũng gi&uacute;p tiết kiệm c&aacute;c khe cắm tr&ecirc;n m&aacute;y t&iacute;nh.</li>\r\n	<li>Với thiết kế c&ocirc;ng th&aacute;i học độc đ&aacute;o, chiếc chuột mang lại cảm gi&aacute;c thoải m&aacute;i khi cầm trong tay.</li>\r\n	<li>Logitech thiết kế t&iacute;nh năng giảm độ ồn đến 90% cho b&aacute;nh xe cuộn tr&ecirc;n d&ograve;ng chuột Silent, mang lại sự &ecirc;m &aacute;i v&agrave; thuận tiện, gi&uacute;p người d&ugrave;ng tập trung v&agrave;o c&ocirc;ng việc sử dụng m&agrave; kh&ocirc;ng bị l&agrave;m phiền.</li>\r\n	<li>Nhờ v&agrave;o c&ocirc;ng nghệ Darkfield Laser Tracking, chuột c&oacute; khả năng hoạt động hiệu quả tr&ecirc;n nhiều bề mặt kh&aacute;c nhau, cho ph&eacute;p bạn sử dụng chuột ở bất kỳ nơi n&agrave;o, thậm ch&iacute; tr&ecirc;n bề mặt k&iacute;nh.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/collections/chuot?filter.p.vendor=Logitech\"><strong>Tham khảo ngay c&aacute;c sản phẩm chuột Logitech nổi bật đang b&aacute;n chạy nhất tr&ecirc;n Phong C&aacute;ch Xanh</strong></a></p>\r\n\r\n<h2>Chuột m&aacute;y t&iacute;nh Glorious</h2>\r\n\r\n<p>Hiện nay c&oacute; kh&ocirc;ng &iacute;t c&aacute;c thương hiệu chuột m&aacute;y t&iacute;nh với sự đa dạng về gi&aacute; cả v&agrave; chất lượng. Nếu bạn đang quan t&acirc;m đến những thương hiệu nổi tiếng v&agrave; cao cấp th&igrave; Glorious ch&iacute;nh l&agrave; một trong những c&aacute;i t&ecirc;n đang nhận được sự y&ecirc;u mến từ người d&ugrave;ng với nhiều l&yacute; do kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"Chuột máy tính Glorious\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-hang-chuot-may-tinh_5_600x600.png?v=1695001718\" /></p>\r\n\r\n<ul>\r\n	<li>Phương ch&acirc;m v&agrave; phong c&aacute;ch chung của c&aacute;c sản phẩm chuột m&aacute;y t&iacute;nh của Glorious l&agrave; &quot;si&ecirc;u nhẹ một c&aacute;ch th&ocirc;ng minh&quot;.&nbsp;</li>\r\n	<li>Chuột Glorious c&oacute; khả năng t&ugrave;y biến v&agrave; c&aacute; nh&acirc;n h&oacute;a một c&aacute;ch cao cấp. Sử dụng chuột Glorious c&ugrave;ng với c&aacute;c loại feet chuột v&agrave; lớp l&oacute;t chuột kh&aacute;c nhau sẽ mang lại hiệu suất v&agrave; trải nghiệm sử dụng chuột đa dạng.</li>\r\n	<li>Ngo&agrave;i chuột m&aacute;y t&iacute;nh th&igrave; Glorious cũng cung cấp một loạt phụ kiện v&agrave; linh kiện đa dạng như feet chuột, lớp l&oacute;t chuột, miếng d&aacute;n mặt tr&ecirc;n chuột, v&agrave; mouse bungee. Nhằm mục đ&iacute;ch cung cấp khả năng t&ugrave;y chỉnh to&agrave;n diện v&agrave; hầu như đầy đủ nhất cho chuột Glorious so với c&aacute;c sản phẩm chuột kh&aacute;c tr&ecirc;n thị trường.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/collections/chuot?filter.p.vendor=Glorious\"><strong>Tham khảo ngay c&aacute;c sản phẩm chuột Glorious nổi bật đang b&aacute;n chạy nhất tr&ecirc;n Phong C&aacute;ch Xanh</strong></a></p>\r\n\r\n<h2>Chuột m&aacute;y t&iacute;nh Razer</h2>\r\n\r\n<p>Razer, một thương hiệu nổi tiếng trong việc sản xuất c&aacute;c sản phẩm d&agrave;nh ri&ecirc;ng cho game thủ, được biết đến với những đ&aacute;nh cao về chất lượng chuột m&aacute;y t&iacute;nh. Đối với những người y&ecirc;u th&iacute;ch game, sử dụng chuột Razer thường l&agrave; sự lựa chọn h&agrave;ng đầu. Đặc biệt, gi&aacute; cả của chuột Razer kh&ocirc;ng qu&aacute; cao, l&agrave;m cho ch&uacute;ng ph&ugrave; hợp với nhiều người. Nếu bạn l&agrave; một người đam m&ecirc; game, th&igrave; đ&acirc;y chắc chắn l&agrave; một lựa chọn hấp dẫn d&agrave;nh cho bạn.</p>\r\n\r\n<p><img alt=\"Chuột máy tính Razer\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-hang-chuot-may-tinh_4_600x600.png?v=1695001744\" /></p>\r\n\r\n<ul>\r\n	<li>Với độ ph&acirc;n giải l&ecirc;n đến 20.000 DPI, chuột Razer mang lại khả năng điều hướng ch&iacute;nh x&aacute;c v&agrave; nhạy b&eacute;n hơn. Sự kết hợp với mắt đọc cảm biến Razer 5G cũng l&agrave;m cho trải nghiệm sử dụng trở n&ecirc;n mượt m&agrave; hơn.</li>\r\n	<li>Chuột cũng đi k&egrave;m với phần mềm Razer Synapse 3 để gi&uacute;p bạn thiết lập v&agrave; t&ugrave;y chỉnh c&aacute;c n&uacute;t chức năng của chuột một c&aacute;ch thuận tiện.</li>\r\n	<li>Với thiết kế c&ocirc;ng th&aacute;i học, chuột của h&atilde;ng Razer c&oacute; tay cầm chắc chắn v&agrave; vừa vặn, gi&uacute;p thực hiện c&aacute;c thao t&aacute;c dễ d&agrave;ng.</li>\r\n	<li>Khả năng linh hoạt trong việc kết nối, c&oacute; thể sử dụng cả Bluetooth v&agrave; kết nối kh&ocirc;ng d&acirc;y Hyperspeed 2.4GHz để giảm độ trễ xuống mức cực thấp.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/collections/chuot?filter.p.vendor=Razer\"><strong>Tham khảo ngay c&aacute;c sản phẩm chuột Razer nổi bật đang b&aacute;n chạy nhất tr&ecirc;n Phong C&aacute;ch Xanh</strong></a></p>\r\n\r\n<h2>Chuột m&aacute;y t&iacute;nh Finalmouse</h2>\r\n\r\n<p>FinalMouse l&agrave; nh&agrave; sản xuất chuột chơi game tr&ecirc;n PC của Mỹ. H&atilde;ng n&agrave;y được biết đến với số lượng chuột ph&aacute;t h&agrave;nh rất hạn chế v&agrave; tập trung v&agrave;o những con chuột cực kỳ nhẹ. Đ&acirc;y l&agrave; một trong những thương hiệu đầu ti&ecirc;n đưa xu hướng chuột nhẹ v&agrave;o thị trường phổ th&ocirc;ng.</p>\r\n\r\n<p><img alt=\"Chuột máy tính Finalmouse\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-hang-chuot-may-tinh_3_600x600.png?v=1695001807\" /></p>\r\n\r\n<p>eSport đang tr&ecirc;n đ&agrave; ph&aacute;t triển mạnh mẽ v&agrave; Finalmouse l&agrave; một trong những thương hiệu đặc biệt tập trung v&agrave;o những g&igrave; tốt nhất cho c&aacute;c game thủ. Mặc d&ugrave; chuột của Finalmouse được thiết kế để sử dụng bởi c&aacute;c chuy&ecirc;n gia, nhưng lại v&ocirc; c&ugrave;ng dễ d&agrave;ng để những game thủ &ldquo;b&igrave;nh thường&rdquo; c&oacute; thể khai th&aacute;c tất cả lợi &iacute;ch m&agrave; sản phẩm mang lại.</p>\r\n\r\n<p>Nh&igrave;n chung, mọi người đều muốn c&oacute; một con chuột chơi game nhẹ với độ ch&iacute;nh x&aacute;c v&agrave; chất lượng cao v&agrave; họ sẽ xem x&eacute;t Finalmouse như một t&ecirc;n tuổi h&agrave;ng đầu trong ng&agrave;nh. Sản phẩm chuột chơi game được đ&aacute;nh gi&aacute; s&aacute;ng tạo nhất của họ l&agrave; Ultralight Pro, nhẹ đến mức mang lại trải nghiệm chơi game ho&agrave;n to&agrave;n kh&aacute;c biệt.</p>\r\n\r\n<p><a href=\"https://www.phongcachxanh.vn/collections/finalmouse\"><strong>Tham khảo ngay c&aacute;c sản phẩm chuột Finalmouse nổi bật đang b&aacute;n chạy nhất tr&ecirc;n Phong C&aacute;ch Xanh</strong></a></p>\r\n\r\n<h2>Chuột m&aacute;y t&iacute;nh BenQ Zowie</h2>\r\n\r\n<p>BenQ l&agrave; một c&ocirc;ng ty đa quốc gia của Đ&agrave;i Loan chuy&ecirc;n kinh doanh c&aacute;c sản phẩm c&ocirc;ng nghệ, đồ điện tử ti&ecirc;u d&ugrave;ng, m&aacute;y t&iacute;nh v&agrave; c&aacute;c thiết bị truyền th&ocirc;ng. Thương hiệu phụ Zowie của BenQ thường xuy&ecirc;n hiện diện trong l&agrave;ng gaming, v&igrave; vậy c&aacute;c sản phẩm của họ lu&ocirc;n đứng đầu về c&aacute;c tiện &iacute;ch phục vụ để chơi game.</p>\r\n\r\n<p>BenQ được đ&aacute;nh gi&aacute; l&agrave; một thương hiệu tuyệt vời nếu bạn mua một sản phẩm tập trung v&agrave;o c&aacute;c trải nghiệm chơi game hoặc giải tr&iacute;. L&agrave; một thương hiệu kỳ cựu trong thị trường m&aacute;y t&iacute;nh v&agrave; phụ kiện, đội ngũ ph&aacute;t triển của BenQ rất th&ocirc;ng thạo những g&igrave; những người đam m&ecirc; game muốn v&agrave; cần.</p>\r\n\r\n<p><img alt=\"Chuột máy tính BenQ Zowie\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/cac-hang-chuot-may-tinh_2_600x600.png?v=1695001592\" /></p>\r\n\r\n<p>C&aacute;c sản phẩm chuột m&aacute;y t&iacute;nh của BenQ Zowie lu&ocirc;n nằm trong một trong c&aacute;c loại chuột chơi game tốt v&agrave; c&oacute; trọng lượng nhẹ. Mặt lưng cao v&agrave; thiết kế hơi cong n&ecirc;n tạo cảm gi&aacute;c thoải m&aacute;i cho người thuận tay phải, đặc biệt nếu sử dụng kiểu cầm bằng l&ograve;ng b&agrave;n tay hoặc kiểu vuốt. Độ trễ nhấp chuột thấp v&agrave; mang lại cảm gi&aacute;c phản hồi nhanh khi chơi game, đồng thời phạm vi CPI rộng, mặc d&ugrave; CPI tối đa của n&oacute; kh&ocirc;ng cao như một số chuột chơi game kh&aacute;c.</p>\r\n\r\n<p>Nhược điểm của một số d&ograve;ng chuột BenQ l&agrave; kh&ocirc;ng c&oacute; phần mềm đi k&egrave;m n&ecirc;n bạn kh&ocirc;ng thể t&ugrave;y chỉnh bất kỳ c&agrave;i đặt cảm biến n&agrave;o hoặc lập tr&igrave;nh lại c&aacute;c n&uacute;t. Ngo&agrave;i ra, d&ograve;ng sản phẩm n&agrave;y cũng kh&ocirc;ng c&oacute; v&ugrave;ng chiếu s&aacute;ng RGB.</p>\r\n', 'cac-hang-chuot-may-tinh-banner-1.jpg', '2023-12-28 13:46:17', '75', '2023-12-28 13:46:17', '75', 1, 1),
(11, 'Hướng dẫn kiểm tra chuột Lamzu của bạn có hỗ trợ 4000Hz polling rate trước khi mua receiver 4000Hz', 'huong-dan-kiem-tra-chuot-lamzu-cua-ban-co-ho-tro-4000hz-polling-rate-truoc-khi-mua-receiver-4000hz', '', '<p>Với ngoại h&igrave;nh kh&ocirc;ng đổi nhưng n&acirc;ng cấp mạnh mẽ b&ecirc;n trong, chuột Lamzu Atlantis OG V2/Mini Pro 4K hỗ trợ kết nối wireless 4000Hz polling rate t&acirc;n tiến nhất hiện tại. Tuy nhi&ecirc;n v&igrave; kh&ocirc;ng c&oacute; thay đổi về mặt ngoại h&igrave;nh khiến bạn gặp kh&oacute; khăn để nhận diện xem chuột Lamzu của bạn c&oacute; hỗ trợ 4000Hz kh&ocirc;ng để mua receiver v&agrave; trải nghiệm polling rate cao. Qua b&agrave;i viết b&agrave;i, Phong C&aacute;ch Đỏ&nbsp;sẽ hướng dẫn bạn c&aacute;ch đơn giản nhất để kiểm tra nh&eacute;.</p>\r\n\r\n<h3>Bước 1: tải v&agrave; c&agrave;i đặt phần mềm Lamzu cho chuột Atlantis 4K<br />\r\n<img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/phan_mem_ban_pro_600x600.jpg?v=1692096347\" /></h3>\r\n\r\n<p>Download phần mềm tương ứng như h&igrave;nh qua&nbsp;<a href=\"https://lamzu.com/pages/download\">link n&agrave;y</a>.</p>\r\n\r\n<h3>Bước 2: cắm c&aacute;p USB v&agrave;o chuột của bạn</h3>\r\n\r\n<p>Nếu chuột Lamzu Atlantis OG V2/Mini của bạn hiển thị tr&ecirc;n phần mềm v&agrave; c&oacute; thể điều chỉnh c&aacute;c th&ocirc;ng số, chuột của bạn c&oacute; hỗ trợ c&ocirc;ng nghệ kết nối 4000Hz polling rate.</p>\r\n\r\n<p>Nếu chuột của bạn kh&ocirc;ng hiển thị v&agrave; kh&ocirc;ng thể điều chỉnh thiết lập tr&ecirc;n phần mềm của bản Pro, chuột Lamzu của bạn l&agrave; phi&ecirc;n bản kh&ocirc;ng hỗ trợ kết nối 4000Hz polling rate v&agrave; chỉ hỗ trợ c&aacute;c phần mềm cũ như h&igrave;nh dưới.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0636/9044/0949/files/phan_mem_ban_thuong_600x600.jpg?v=1692097055\" /></p>\r\n\r\n<p>Hi vọng với hướng dẫn nho nhỏ ở tr&ecirc;n, bạn c&oacute; thể dễ d&agrave;ng x&aacute;c định xem chuột Lamzu Atlantis của bạn c&oacute; hỗ trợ kết nối 4000Hz để mua v&agrave; trải nghiệm&nbsp;<a href=\"https://www.phongcachxanh.vn/products/receiver-4khz-cho-chuot-lamzu-atlantis-chi-ho-tro-dong-tuong-thich-4khz\">receiver 4000Hz</a>&nbsp;nha. Với phi&ecirc;n bản Lamzu Atlantis OG V2 v&agrave; Mini Pro 4K m&agrave;u đen, trong hộp đ&atilde; c&oacute; sẵn receiver 4000Hz m&agrave; kh&ocirc;ng cần mua th&ecirc;m.</p>\r\n\r\n<p>Mẹo n&agrave;y cực kỳ hữu dụng nếu bạn kh&ocirc;ng c&oacute; hộp sản phẩm hoặc kh&ocirc;ng tiện check lại hộp sản phẩm của bạn trước khi quyết định&nbsp;<a href=\"https://www.phongcachxanh.vn/products/receiver-4khz-cho-chuot-lamzu-atlantis-chi-ho-tro-dong-tuong-thich-4khz\">mua receiver 4000Hz cho chuột Lamzu</a>&nbsp;nha.</p>\r\n', '2023-07-16_11-40-02_mp4_snapshot.jpg', '2023-12-28 13:50:09', '75', '2023-12-28 13:50:09', '75', 1, 1),
(12, 'Hướng dẫn vệ sinh lót chuột', 'huong-dan-ve-sinh-lot-chuot', '', '<p><a href=\"https://www.phongcachxanh.vn/collections/lot-chuot\" target=\"_blank\">L&oacute;t chuột</a>&nbsp;sau một thời gian sử dụng sẽ t&iacute;ch c&aacute;c bụi bẩn như da tay, dầu tay, mồ h&ocirc;i tay hay c&aacute;c bụi bẩn từ m&ocirc;i trường l&agrave;m ảnh hưởng đến trải nghiệm di chuột của bạn. Ngo&agrave;i ra, c&aacute;c vết bẩn tồn đọng lại l&acirc;u sẽ ảnh hưởng đến chất lượng mặt vải của l&oacute;t chuột khiến ch&uacute;ng kh&oacute; c&oacute; thể phục hồi lại cảm gi&aacute;c như ban đầu.</p>\r\n\r\n<p>Tuy nhi&ecirc;n bạn kh&ocirc;ng cần lo lắng, đ&acirc;y l&agrave; hướng dẫn vệ sinh l&oacute;t chuột gi&uacute;p bạn giữ l&oacute;t chuột của m&igrave;nh sử dụng l&acirc;u nhất c&oacute; thể, cũng như đảm bảo trải nghiệm tốt nhất c&oacute; thể.</p>\r\n\r\n<h2>Một số lưu &yacute;</h2>\r\n\r\n<ul>\r\n	<li>Bạn n&ecirc;n vệ sinh l&oacute;t chuột khoảng 3 th&aacute;ng - 6 th&aacute;ng một lần với l&oacute;t chuột vải.</li>\r\n	<li>Bạn n&ecirc;n vệ sinh định kỳ với l&oacute;t chuột k&iacute;nh cường lực:\r\n	<ul>\r\n		<li>Phủi bụi trước khi sử dụng.</li>\r\n		<li>Lau sạch bằng khăn mỗi tuần để loại bỏ mồ h&ocirc;i tay, dầu tay v&agrave; da tay.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Kh&ocirc;ng sử dụng chất tẩy rửa mạnh v&agrave; b&agrave;n chải th&ocirc;, r&aacute;p.</li>\r\n	<li>Kh&ocirc;ng phơi l&oacute;t chuột dưới &aacute;nh nắng trực tiếp hoặc nơi k&iacute;n gi&oacute;.</li>\r\n</ul>\r\n\r\n<h2>Hướng dẫn vệ sinh l&oacute;t chuột mềm dạng vải</h2>\r\n\r\n<h4>Chuẩn bị:</h4>\r\n\r\n<ul>\r\n	<li>X&agrave; ph&ograve;ng pha lo&atilde;ng với nước. N&ecirc;n sử dụng loại kh&ocirc;ng c&oacute; chất tẩy rửa. C&oacute; thể sử dụng x&agrave; ph&ograve;ng rửa tay hoặc nước rửa ch&eacute;n.</li>\r\n	<li>Mặt phẳng để trải l&oacute;t chuột.</li>\r\n	<li>Nơi tho&aacute;ng gi&oacute; kh&ocirc;ng c&oacute; &aacute;nh nắng chiếu trực tiếp để phơi l&oacute;t chuột.</li>\r\n</ul>\r\n\r\n<h4>Thực hiện:</h4>\r\n\r\n<ul>\r\n	<li>L&agrave;m ướt l&oacute;t chuột bằng x&agrave; ph&ograve;ng pha lo&atilde;ng với nước.</li>\r\n	<li>Nhẹ nh&agrave;ng d&ugrave;ng tay vuốt nhẹ, từ từ khắp mặt l&oacute;t chuột để loại bỏ dần mồ h&ocirc;i tay v&agrave; da tay, bụi bẩn.</li>\r\n	<li>Xả nước v&agrave;i lần nhằm loại bỏ x&agrave; ph&ograve;ng c&ograve;n s&oacute;t lại tr&ecirc;n l&oacute;t chuột cũng như c&aacute;c chất bẩn.</li>\r\n	<li>Phơi kh&ocirc; l&oacute;t chuột ở nơi tho&aacute;ng gi&oacute;, tr&aacute;nh &aacute;nh nắng trực tiếp. Đảm bảo th&ocirc;ng tho&aacute;ng gi&oacute; cho cả mặt v&agrave; đế của l&oacute;t chuột.</li>\r\n</ul>\r\n\r\n<h2>Hướng dẫn vệ sinh l&oacute;t chuột cứng k&iacute;nh cường lực</h2>\r\n\r\n<h4>Chuẩn bị:</h4>\r\n\r\n<ul>\r\n	<li>Khăn kh&ocirc;</li>\r\n	<li>Khăn ướt</li>\r\n	<li>Chổi phủi bụi</li>\r\n</ul>\r\n\r\n<h4>Thực hiện:</h4>\r\n\r\n<ul>\r\n	<li>D&ugrave;ng chổi phủi sạch bụi tr&ecirc;n l&oacute;t chuột trước khi bắt đầu lau.</li>\r\n	<li>Sử dụng khăn ướt lau to&agrave;n bộ bề mặt l&oacute;t chuột theo một chiều cố định (tr&aacute;i sang phải, tr&ecirc;n xuống dưới).</li>\r\n	<li>Sử dụng khăn kh&ocirc; lau lại to&agrave;n bộ nhằm loại bỏ nước v&agrave; c&aacute;c chất bẩn c&ograve;n s&oacute;t lại. Lau theo một chiều cố đinh&nbsp;(tr&aacute;i sang phải, tr&ecirc;n xuống dưới).</li>\r\n</ul>\r\n', 'HD_ve_sinh_lot_chuot.jpg', '2023-12-28 13:52:15', '75', '2023-12-28 13:52:15', '75', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(75, 'Tester1', 'tester1', 'e10adc3949ba59abbe56e057f20f883e', '', '0987654321', 'lamduchuy57@gmail.com', '2023-12-03 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2024-11-01', 500000, 'Giam 100000', '2023-11-01', 1, 1, 1),
(4, 'MAHETHAN', 150000, 68, 23, '2023-11-01', 500000, 'giảm 300k', '2023-11-01', 1, 1, 1),
(13, 'PCDDPC', 150000, 200, 2, '2024-11-01', 100000, 'Giảm 150k', '2023-11-01', 1, 1, 1),
(27, 'KHONGDONG', 99999999, 99, 0, '2024-12-27', 0, 'Thí', '2023-12-27', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(82, 'tUlNi7hf', 75, '2023-12-16 13:50:23', 'Tester1', '0987654321', 5680000, 30000, 150000, 79, 765, 'Chu Văn An', 1, 2),
(83, 'gnarHEF2', 75, '2023-12-17 15:40:57', 'Tester1', '0987654321', 672000, 30000, 150000, 92, 925, 'HCM', 1, 2),
(84, 'W0eolZ2K', 75, '2023-12-27 15:26:12', 'Tester1', '0987654321', 54521000, 30000, 0, 27, 264, 'dsdsd', 1, 2),
(85, '04GPgFZK', 75, '2023-12-28 13:23:52', 'Tester1', '0987654321', 2530000, 30000, 0, 92, 925, 'hcm', 1, 0),
(86, 'hfXDPn2y', 75, '2023-12-28 18:15:05', 'Tester1', '0987654321', 930000, 30000, 0, 79, 765, 'HCM', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(109, 82, 35, 2, 2900000, 1, 1),
(110, 83, 48, 1, 792000, 1, 1),
(111, 84, 54, 1, 1000, 1, 1),
(112, 84, 58, 1, 54490000, 1, 1),
(113, 85, 44, 1, 2500000, 1, 1),
(114, 86, 47, 1, 880000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Digiworld', 'DIGIWORLD', 'dienthoai,laptop', '2023-11-01 23:29:15', 4, '2023-11-01 23:29:15', 4, 1, 1),
(2, 'FPT SHOP', 'FPTPRODUCER', ' dienthoai, maytinhbang,laptop,phukien', '2023-11-01 23:29:15', 1, '2023-11-01 23:29:15', 1, 1, 1),
(3, 'CÔNG TY THẾ GIỚI DI ĐỘNG', 'TGDDCODE', 'dienthoai,laptop', '2023-11-01 23:29:15', 4, '2023-11-01 23:29:15', 1, 1, 1),
(5, 'Khách Hàng', 'KHACHHANG', 'khachhang, muaban, traodoi', '2023-11-01 23:29:15', 74, '2023-11-01 23:29:15', 74, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `idcustomer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `idcustomer`) VALUES
(35, 21, 'Chuột không dây Razer Viper V2 Pro Wireless', 'chuot-khong-day-razer-viper-v2-pro-wireless', 'rv2p1.jpg', 'rvv2p22.jpg#rv2pp22.jpg#chu-t-khong-day-razer-viper-v2-p.jpg#rv2pro.jpg', 'RAZER VIPER V2 PRO - FOR THE PRO\r\nĐược nâng cấp nhằm bắt kịp những thay đổi từ chiến trường esport khốc liệt, Razer Viper V2 Pro giờ nhẹ hơn 20% và được trang bị nhiều cải tiến về hiệu năng sử dụng. Với chuột gaming siêu nhẹ mới nhát từ Razer, không gì cảm trở bạn đến với chiến thắng.', '<h2>RAZER FOCUS PRO 30K OPTICAL SENSOR</h2>\r\n\r\n<h3>Asymmetric Cut-off</h3>\r\n\r\n<p>Điều chỉnh tự do điểm dừng track v&agrave; điểm track trở lại của cảm biến l&ecirc;n đến 26 nấc ho&agrave;n to&agrave;n độc lập.</p>\r\n\r\n<h3>Smart Tracking</h3>\r\n\r\n<p>Ổn định v&agrave; đồng bộ điểm dừng track của cảm biến tr&ecirc;n nhiều bề mặt l&oacute;t chuột kh&aacute;c nhau cải thiện sự kiểm so&aacute;t v&agrave; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<h3>Motion Sync</h3>\r\n\r\n<p>Đồng bộ t&iacute;n hiệu của chuột với m&aacute;y t&iacute;nh của bạn để track theo chuyển động của bạn ch&iacute;nh x&aacute;c nhất.</p>\r\n\r\n<h3>Di chuột tr&ecirc;n mặt k&iacute;nh</h3>\r\n\r\n<p>Độ d&agrave;y tối thiểu 4mm.</p>\r\n\r\n<h2>&nbsp;<strong>Th&ocirc;ng số kỹ thuật</strong></h2>\r\n\r\n<ul>\r\n	<li>Kiểu chuột: Đối xứng thuận tay phải (Right-handed Symmetrical)</li>\r\n	<li>Kết nối:&nbsp;\r\n	<ul>\r\n		<li>Razer&trade; HyperSpeed Wireless</li>\r\n		<li>Wired &ndash; Speedflex Cable</li>\r\n	</ul>\r\n	</li>\r\n	<li>Thời lượng pin:\r\n	<ul>\r\n		<li>L&ecirc;n đến 80 giờ (di chuyển li&ecirc;n tục tại 1000Hz)</li>\r\n		<li>L&ecirc;n đến 24h (sử dụng HyperPolling Wireless Dongle, di chuyển li&ecirc;n tục tại 4000Hz)</li>\r\n	</ul>\r\n	</li>\r\n	<li>LED RGB: kh&ocirc;ng</li>\r\n	<li>Cảm biến:&nbsp;Focus Pro 30K Optical Sensor</li>\r\n	<li>Độ nhạy tối đa (DPI): 30000</li>\r\n	<li>Tốc độ tối đa (IPS): 750</li>\r\n	<li>Gia tốc tối đa (G): 70</li>\r\n	<li>N&uacute;t nhấn c&oacute; thể lập tr&igrave;nh: 5</li>\r\n	<li>Loại switch: Optical Mouse Switch Gen-3</li>\r\n	<li>Độ bền switch: 90 triệu lần nhấn</li>\r\n	<li>Profile bộ nhớ on-board: 1</li>\r\n	<li>Feet chuột: 100% PTFE</li>\r\n	<li>C&aacute;p: Razer&trade; Speedflex Cable USB Type-C</li>\r\n	<li>K&iacute;ch thước:\r\n	<ul>\r\n		<li>D&agrave;i:&nbsp;126.5 mm</li>\r\n		<li>Rộng:&nbsp;66.2 mm</li>\r\n		<li>Cao: 37.8 mm</li>\r\n	</ul>\r\n	</li>\r\n	<li>Trọng lượng:\r\n	<ul>\r\n		<li>Đen: 58g</li>\r\n		<li>Trắng: 59g</li>\r\n	</ul>\r\n	</li>\r\n	<li>Tương th&iacute;ch dock sạc: kh&ocirc;ng</li>\r\n</ul>\r\n\r\n<h2>Trong hộp c&oacute; g&igrave;:</h2>\r\n\r\n<ul>\r\n	<li>Razer Viper V2 Pro</li>\r\n	<li>Wireless USB dongle + USB dongle adapter</li>\r\n	<li>Type-A to Type-C Speedflex cable</li>\r\n	<li>Razer Mouse Grip Tape</li>\r\n	<li>Important Product Information Guide</li>\r\n</ul>\r\n', 1, 88, 2, 3, 3000000, 2900000, '2023-12-16 12:32:44', '75', '2023-12-16 12:32:44', '75', 1, 1, NULL),
(39, 21, 'Chuột không dây Razer DeathAdder V3 Pro Wireless - Faker Edition', 'chuot-khong-day-razer-deathadder-v3-pro-wireless-faker-edition', 'Rzfaker.png', 'chu-t-khong-day-razer-deathadder2.jpg#fakerbg.jpg#fakerhand.jpg#fakerbox.jpg', 'Phiên bản giới hạn hợp tác cùng chủ tịch LEE \"FAKER\" SANG-HYEOK', '<p>&nbsp;<strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n\r\n<ul>\r\n	<li>Kiểu chuột: c&ocirc;ng th&aacute;i học</li>\r\n	<li>Trọng lượng:&nbsp;63g</li>\r\n	<li>Kết nối: Wireless + C&aacute;p rời</li>\r\n	<li>Mắt cảm biến:&nbsp;Focus Pro 30000DPI - 750IPS</li>\r\n	<li>Switch ch&iacute;nh:&nbsp;Razer Optical Gen 3</li>\r\n	<li>C&ocirc;ng nghệ Razer Hyperspeed Wireless 1000Hz - Tương th&iacute;ch Razer HyperPolling Wireless dongle 4000Hz.</li>\r\n</ul>\r\n', 1, 4, 0, 7, 3790000, 3500000, '2023-12-16 13:08:51', '75', '2023-12-16 13:24:58', '75', 1, 1, NULL),
(40, 21, 'Chuột không dây Razer Viper V3 Hyperspeed', 'chuot-khong-day-razer-viper-v3-hyperspeed', 'razer-viper-v3-h.jpg', 'rv3h.jpg#rv3h2.jpg#rv3h3.jpg#rv3h4.jpg#rv3h5.jpg#rv3h6.jpg', 'FOR THE PRO\r\nDáng chuột được truyền cảm hứng từ esport với sự cải tiến vượt bậc - Razer Viper V3 HyperSpeed. Kết hợp những công nghệ tốt nhất và tối ưu cho kiểu cầm chuột claw hoặc fingertip, thay đổi meta với kết nối không dây, trong lượng nhẹ cho những trận game đỉnh cao nhất.', '<h4>Th&ocirc;ng số kỹ thuật:</h4>\r\n\r\n<ul>\r\n	<li>Form: đối xứng thuận tay phải.</li>\r\n	<li>Kết nối:&nbsp;Razer&trade; HyperSpeed Wireless</li>\r\n	<li>Thời lượng pin: L&ecirc;n đến 280 giờ tại 1000Hz với pin AA đi k&egrave;m.</li>\r\n	<li>Cảm biến:&nbsp;Focus Pro 30K Optical Sensor 30000DPI, 750IPSS, 70G</li>\r\n	<li>Switch chuột:&nbsp;Mechanical Mouse Switches Gen-2 (60M)</li>\r\n	<li>Feet chuột: 100% PTFE.</li>\r\n	<li>C&aacute;p: kh&ocirc;ng</li>\r\n	<li>K&iacute;ch thước: 127.1 x 63.9 x 39.9mm</li>\r\n	<li>Trọng lượng: 82 gram (k&egrave;m pin), 59 gram (chưa c&oacute; pin)</li>\r\n</ul>\r\n', 1, 2, 0, 0, 1650000, 1650000, '2023-12-16 13:24:44', '75', '2023-12-16 13:24:44', '75', 1, 1, NULL),
(41, 22, 'Chuột không dây siêu nhẹ Lamzu Maya - Hỗ trợ 4KHz', 'chuot-khong-day-sieu-nhe-lamzu-maya-ho-tro-4khz', 'maya.jpg', 'maya2.jpg#maya3.jpg#maya4.jpg#maya5.jpg', 'Hỗ trợ kết nối Wireless 4KHz. Chip MCU Nordic.\r\nMaya thiết kế lưng gồ giữa, khác với Atlantis lưng gồ lùi sâu.\r\nTrọng lượng siêu nhẹ chỉ 45 gram.\r\nLamzu Maya đi kèm receiver 1000Hz. Để sử dụng tối đa 4000Hz Polling Rate, bạn cần mua receiver Lamzu 4KHz (bán rời).\r\n\r\nLamzu là một công ty được thành lập từ những người đam mê các thiết bị ngoại vi máy tính, game thủ FPS, designer, kỹ sư kết cấu và quản lý chuỗi cung ứng với nhiều năm kinh nghiệm trong ngành công nghiệp gaming.\r\n\r\nDesign by Lamzu.', '<p>Chuột kh&ocirc;ng d&acirc;y si&ecirc;u nhẹ Lamzu Maya - Hỗ trợ 4KHz</p>\r\n\r\n<p>L&agrave; một t&acirc;n binh trong l&agrave;ng chuột chơi game FPS nhưng Lamzu chứng tỏ m&igrave;nh kh&ocirc;ng phải tay mơ khi rất nhiều reviewer tr&ecirc;n thế giới đ&aacute;nh gi&aacute; chuột Lamzu l&agrave; một trong những thương hiệu mới nổi bật v&agrave; đ&aacute;ng để thử nhất trong những năm gần đ&acirc;y.</p>\r\n\r\n<ul>\r\n	<li>Thiết kế đối xứng lưng gồ giữa h&ocirc;ng rộng.</li>\r\n	<li>Trọng lượng si&ecirc;u nhẹ 45gram.</li>\r\n	<li>Tối ưu d&aacute;ng cầm Claw Grip, Fingertip, game FPS.</li>\r\n	<li>Cảm biến PixArt PAW3395 mới nhất - 26K DPI, 650 IPS.</li>\r\n	<li><strong>&quot;Trải nghiệm unbox độc nhất&quot;</strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/20231018-Maya-_1024__08.jpg?v=1699952821&amp;width=800\" style=\"height:1066px; width:800px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/20231018-Maya-_1024__04.jpg?v=1699952889&amp;width=800\" style=\"height:1067px; width:800px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/20231018-Maya-_1024__05.jpg?v=1699952960&amp;width=800\" style=\"height:1067px; width:800px\" /></strong></p>\r\n', 1, 5, 0, 4, 2500000, 2400000, '2023-12-16 13:40:43', '75', '2023-12-16 13:45:29', '75', 1, 1, NULL),
(44, 22, 'Chuột không dây siêu nhẹ Lamzu Thorn - Hỗ trợ 4KHz', 'chuot-khong-day-sieu-nhe-lamzu-thorn-ho-tro-4khz', 'thorn1.jpg', 'thorn2.jpg#thorn3.jpg#thorn4.jpg#thorn5.jpg', 'Hỗ trợ kết nối Wireless 4KHz. Chip MCU Nordic.\r\nThiết kế công thái học lưng lùi cao hoàn toàn mới.\r\nTrọng lượng siêu nhẹ chỉ 52 gram.\r\nLamzu Thorn đi kèm receiver 1000Hz. Để sử dụng tối đa 4000Hz Polling Rate, bạn cần mua receiver Lamzu 4KHz (bán rời).\r\nLamzu là một công ty được thành lập từ những người đam mê các thiết bị ngoại vi máy tính, game thủ FPS, designer, kỹ sư kết cấu và quản lý chuỗi cung ứng với nhiều năm kinh nghiệm trong ngành công nghiệp gaming.', '<h2>Lamzu Thorn - Chuột gaming kh&ocirc;ng d&acirc;y c&ocirc;ng th&aacute;i học mới nhất từ Lamzu</h2>\r\n\r\n<p>L&agrave; một t&acirc;n binh trong l&agrave;ng chuột chơi game FPS nhưng Lamzu chứng tỏ m&igrave;nh kh&ocirc;ng phải tay mơ khi rất nhiều reviewer tr&ecirc;n thế giới đ&aacute;nh gi&aacute; đ&acirc;y l&agrave; một trong những thương hiệu mới nổi bật v&agrave; đ&aacute;ng để thử nhất trong những năm gần đ&acirc;y.</p>\r\n\r\n<ul>\r\n	<li>Thiết kế c&ocirc;ng th&aacute;i học lưng cao l&ugrave;i s&acirc;u.</li>\r\n	<li>Trọng lượng si&ecirc;u nhẹ 52gram.</li>\r\n	<li>Tối ưu d&aacute;ng cầm Claw Grip, Palm Grip, game FPS.</li>\r\n	<li>Cảm biến PixArt PAW3395 mới nhất - 26K DPI, 650 IPS.</li>\r\n	<li><strong>&quot;Trải nghiệm unbox độc nhất&quot;<span style=\"color:#3498db\">&nbsp;</span><a href=\"https://youtu.be/SUNw3b6ae3o\"><span style=\"color:#e74c3c\">Video Unbox</span></a></strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Thorn-_-_-_800px__05.jpg?v=1691912851&amp;width=800\" style=\"height:1067px; width:800px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Thorn-_-_-_800px__04.jpg?v=1691912896&amp;width=800\" style=\"height:1067px; width:800px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Thorn-_-_-_800px__08.jpg?v=1691912907&amp;width=800\" style=\"height:1066px; width:800px\" /></strong></p>\r\n', 2, 10, 0, 0, 2500000, 2500000, '2023-12-17 14:38:11', '75', '2023-12-17 14:44:15', '75', 1, 1, NULL),
(45, 22, 'Receiver 4KHz cho chuột Lamzu 4K - Chỉ hỗ trợ dòng tương thích 4KHz', 'receiver-4khz-cho-chuot-lamzu-4k-chi-ho-tro-dong-tuong-thich-4khz', 'receiver-4khz-cho-chu-t-lamzu-4k.jpg', 'receiver-4khz-cho-chu-t-lamzu-at (1).jpg#receiver-4khz-cho-chu-t-lamzu-at.jpg#receiver-4khz-cho-chu-t-lamzu-at (2).jpg#receiver-4khz-cho-chu-t-lamzu-4k (1).jpg', 'Dongle nâng cấp giúp tốc độ truyền tín hiệu giữa chuột nhanh hơn gấp 4 lần - 4000Hz so với đầu thu tiêu chuẩn 1000Hz.', '<p><strong><a href=\"https://www.phongcachxanh.vn/blogs/tin-tuc/huong-dan-ket-noi-dongle-4k-cho-chuot-lamzu-atlantis-pro-4k\"><span style=\"color:#e74c3c\">Hướng dẫn kết nối Dongle 4K</span></a></strong></p>\r\n\r\n<p><strong>Lưu &yacute;:&nbsp;</strong>chỉ tương&nbsp;th&iacute;ch với</p>\r\n\r\n<ul>\r\n	<li>Chuột Lamzu Atlantis OG V2 Pro - Hỗ trợ 4KHz</li>\r\n	<li>Chuột Lamzu Atlantis&nbsp;Mini Pro - Hỗ trợ 4KHz</li>\r\n	<li>Chuột Lamzu Thorn - Hỗ trợ 4KHz</li>\r\n	<li>Chuột Lamzu Maya - Hỗ trợ 4KHz</li>\r\n</ul>\r\n', 3, 6, 0, 0, 370000, 370000, '2023-12-17 14:49:04', '75', '2023-12-17 14:51:00', '75', 1, 1, NULL),
(46, 23, 'Lót chuột kính cường lực Pulsar Superglide', 'lot-chuot-kinh-cuong-luc-pulsar-superglide', 'lot-chu-t-kinh-c-ng-l-c-pulsar-s (1).jpg', 'lot-chu-t-kinh-c-ng-l-c-pulsar-s (1).jpg#lot-chu-t-kinh-c-ng-l-c-pulsar-s.jpg#lot-chu-t-kinh-c-ng-l-c-pulsar-s (2).jpg', 'Chất liệu: thủy tinh cường lực Aluminosilicate.\r\nĐế: silicon đúc mật độ cao.\r\nViền: bo cong.\r\n\r\nDesigned in Korea', '<h2>L&oacute;t chuột k&iacute;nh cường lực cao cấp</h2>\r\n\r\n<p>L&agrave; sự h&ograve;a hợp giữa hiệu năng sử dụng đỉnh cao c&ugrave;ng độ bền vượt trội. L&oacute;t chuột k&iacute;nh cường lực Pulsar Superglide sử dụng mặt k&iacute;nh cường lực aluminosiliate c&ugrave;ng v&acirc;n bề mặt đặc biệt gi&uacute;p di chuột nhẹ v&agrave; dừng dễ d&agrave;ng. Phần đ&aacute;y được l&agrave;m từ silicone đ&uacute;c mật độ cao đảm bảo độ b&aacute;m tối đa.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Pulsar_Superglide_Glass_Mousepad_Red_L_010.jpg?v=1678092397&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>Thủy tinh Aluminosilicate hay c&ograve;n được biết đến l&agrave;&nbsp;<strong>k&iacute;nh Gorilla Glass</strong>&nbsp;l&agrave; một dạng k&iacute;nh cường lực được tăng độ cứng, được ứng dụng trong nhiều vật dụng, kể cả m&agrave;n h&igrave;nh điện thoại, m&aacute;y t&iacute;nh bảng v&agrave; m&agrave;n h&igrave;nh laptop.</p>\r\n\r\n<p>Thủy tinh Aluminosilicate cũng được biết đến với độ bền, chống xước v&agrave; nứt vượt trội so với k&iacute;nh thủy tinh th&ocirc;ng thường. Loại k&iacute;nh n&agrave;y được tạo n&ecirc;n bằng qu&aacute; tr&igrave;nh trao đổi ion với bề mặt bị bắn ph&aacute; bởi ion bằng một nguy&ecirc;n tố nhất định như potassium gi&uacute;p bề mặt k&iacute;nh trở n&ecirc;n cứng hơn v&agrave; chống chịu hư hại tốt hơn.</p>\r\n\r\n<p><strong>T&oacute;m lại, đ&acirc;y l&agrave; loại k&iacute;nh cực bền.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Pulsar_Superglide_Glass_Mousepad.jpg?v=1678092409&amp;width=800\" style=\"height:1067px; width:800px\" /></strong></p>\r\n\r\n<p>Cấu tr&uacute;c đa lớp</p>\r\n\r\n<p>L&oacute;t chuột thủy tinh Pulsar Superglide được cấu th&agrave;nh từ nhiều lớp vật liệu nhằm tăng cường cả độ bền, tốc độ lướt cũng như khả năng dừng chuột dễ d&agrave;ng</p>\r\n\r\n<ul>\r\n	<li>Lớp bề mặt được xử l&yacute; v&acirc;n đặc biệt: vừa nhanh, vừa c&oacute; stopping power.</li>\r\n	<li>K&iacute;nh cường lực Aluminosilicate: si&ecirc;u bền.</li>\r\n	<li>Lớp in: chống xước 1.</li>\r\n	<li>Lớp chống xước: chống xước 2.</li>\r\n	<li>Đế cao su Silicone đ&uacute;c mật độ cao: b&aacute;m b&agrave;n v&agrave; kh&ocirc;ng cong ở giữa.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Pulsar_Superglide_Glass_Mousepad_-_1.jpg?v=1678092601&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>Chống trượt v&agrave; ổn định theo c&aacute;ch tốt nhất</p>\r\n\r\n<p>Phần đ&aacute;y ho&agrave;n to&agrave;n được đ&uacute;c với silicone nhằm tăng cường tối đa kết d&iacute;nh l&ecirc;n mặt b&agrave;n, đảm bảo độ ổn định v&agrave; giảm rủi ro l&oacute;t chuột bị trượt. Th&ecirc;m v&agrave;o đ&oacute;, việc phần đ&aacute;y được bao phủ ho&agrave;n to&agrave;n gi&uacute;p tăng sự hỗ trợ v&agrave; giảm độ biến dạng ở khu vực trung t&acirc;m của l&oacute;t chuột.</p>\r\n', 3, 5, 0, 5, 2340000, 2200000, '2023-12-17 14:57:17', '75', '2023-12-17 14:59:18', '75', 1, 1, NULL),
(47, 23, 'Lót chuột Pulsar eS1 Hybrid - Bruce Lee Edition', 'lot-chuot-pulsar-es1-hybrid-bruce-lee-edition', 'lot-chu-t-pulsar-es1-hybrid-bruc.jpg', 'lot-chu-t-pulsar-es1-hybrid-bruc (1).jpg#lot-chu-t-pulsar-es1-hybrid-bruc (2).jpg#lot-chu-t-pulsar-es1-hybrid-bruc (3).jpg#lot-chu-t-pulsar-es1-hybrid-bruc (4).jpg', 'Bề mặt vải Hybrid hoàn toàn mới.\r\nTốc độ trung bình, thiên về sự kiểm soát chính xác.\r\nĐế vật liệu Alpha Cell siêu bám bàn.\r\nChủ đề Lý Tiểu Long.\r\nBo viền 360 độ.\r\nTối ưu cho chơi game FPS.', '<h2>Được thiết kế cho competitive eSports - eS (eSports) series Mousepad.</h2>\r\n\r\n<p>Được thiết kế cho thể thao điện tử. Bề mặt vải hybrid dệt si&ecirc;u mịn cung cấp cả độ lướt v&agrave; độ ma s&aacute;t. Vật liệu đế mới alpha cell gi&uacute;p tăng stopping power v&agrave; &ecirc;m &aacute;i cho c&aacute;nh tay. Bo viền được l&agrave;m nhỏ nhất c&oacute; thể nhưng cực kỳ bền tăng độ thoải m&aacute;i cho c&aacute;nh tay.</p>\r\n\r\n<p>L&oacute;t chuột eS-1 giảm ma s&aacute;t tối thiểu, tốc độ glide trung b&igrave;nh trong khi vẫn c&oacute; đủ stopping power cho những c&uacute; flick si&ecirc;u tốc. Độ d&agrave;y 3mm cung cấp độ mềm từ soft đến medium vừa đủ để bạn l&agrave;m quen khi vừa chuyển qua c&aacute;c d&ograve;ng l&oacute;t chuột đế cao su hoặc cứng hơn.</p>\r\n\r\n<p><strong><a href=\"https://youtu.be/uaLPIpJndUE\"><span style=\"color:#e74c3c\">Mở Hộp Pad</span></a></strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Pulsar_ES1-bruce-lee.jpg?v=1678096715&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>Phi&ecirc;n bản hợp t&aacute;c giữa Pulsar v&agrave; L&yacute; Tiểu Long - Bruce Lee</p>\r\n\r\n<p>Được lấy cảm hứng từ m&agrave;u v&agrave;ng đen đặc trưng từ huyền thoại v&otilde; thuật L&yacute; Tiểu Long, Pulsar eS-1 Bruce Lee Edition l&agrave; phi&ecirc;n bản debut cho d&ograve;ng l&oacute;t chuột mới toanh của Pulsar với chất lượng ho&agrave;n thiện v&agrave; cảm gi&aacute;c kh&ocirc;ng thể xem thường. H&atilde;y d&ugrave;ng thử v&agrave; cảm nhận!</p>\r\n\r\n<p><em>BRUCE LEE v&agrave; chữ k&yacute; Bruce Lee l&agrave; thương hiệu được đăng k&yacute; bởi Bruce Lee Enterprises, LLC ở nhiều nước. T&ecirc;n, h&igrave;nh ảnh, h&igrave;nh d&aacute;ng v&agrave; c&aacute;c dấu hiệu li&ecirc;n quan thuộc sở hữu tr&iacute; tuệ của Bruce Lee Enterprises, LLC. Đ&atilde; đăng k&yacute; bản quyền. www.brucelee.com.</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Pulsar_ES1-bruce-lee_2.jpg?v=1678096401&amp;width=800\" style=\"height:1067px; width:800px\" /></em></p>\r\n\r\n<p>Alpha Cell - Vật liệu si&ecirc;u chống trượt mới toanh</p>\r\n\r\n<p><strong>ĐẾ SI&Ecirc;U CẤP CHỐNG TRƯỢT</strong>&nbsp;Alpha-cell l&agrave; một sự c&aacute;ch mạng, vật liệu đế polyurethane memory-cell với mật độ si&ecirc;u cao. Đặc t&iacute;nh đặc biệt của memory cell v&agrave; họa tiết si&ecirc;u nhỏ ở đ&aacute;y l&agrave;m tăng độ b&aacute;m, đến mức kh&ocirc;ng loại l&oacute;t chuột n&agrave;o b&aacute;m b&agrave;n như Pulsar eS-1.</p>\r\n\r\n<ul>\r\n	<li>Mỏng 3mm: Độ mềm soft đến medium. C&acirc;n bằng giữa lướt v&agrave; dừng chuột.</li>\r\n	<li>Si&ecirc;u chống trượt: L&oacute;t chuột như d&iacute;nh v&agrave;o mặt b&agrave;n v&agrave; giữ nguy&ecirc;n vị tr&iacute;.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Pulsar_ES1-bruce-lee_3.jpg?v=1678096389&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>ALL NEW Hybrid &ldquo;Control&rdquo; Surface</p>\r\n\r\n<p>Bề mặt vải hybrid dệt si&ecirc;u ch&iacute;nh x&aacute;c cung cấp cả tốc độ lướt v&agrave; ma s&aacute;t.</p>\r\n\r\n<p>Kết hợp với đế alpha cell d&agrave;y 3mm, l&oacute;t chuột Pulsar eS-1 cho bạn &iacute;t ma s&aacute;t ban đầu, tốc độ lướt trung b&igrave;nh đến cao trong khi vẫn c&oacute; stopping power tốt.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 5, 1, 20, 1100000, 880000, '2023-12-17 15:03:30', '75', '2023-12-17 15:17:32', '75', 1, 1, NULL),
(48, 24, 'Lót chuột Fnatic JET (Speed)', 'lot-chuot-fnatic-jet-speed', 'lot-chu-t-fnatic-jet-speed-39345.jpg', 'lot-chu-t-fnatic-jet-speed-39345 (2).jpg#lot-chu-t-fnatic-jet-speed-39345 (1).jpg#lot-chu-t-fnatic-jet-speed-39345 (3).jpg#lot-chu-t-fnatic-jet-speed-39345 (4).jpg', 'Fnatic JET là lót chuột nhanh, ít ma sát, tối ưu hoàn toàn cho tốc độ với cảm giác di chuột ngang dọc đồng nhất. Thiết kế holographic giữ lót chuột luôn sạch nhờ vào bề mặt hoàn thiện chống nước và không tráng phủ.\r\nDesigned by Fnatic in London, UK', '<h2>Được thiết kế với Pro Player</h2>\r\n\r\n<p>Fnatic Jet được thiết kế c&ugrave;ng c&aacute;c pro player để lu&ocirc;n đi trước c&aacute;c đối thủ.</p>\r\n\r\n<p>Được thiết kế với tốc độ cao, độ ma s&aacute;t thấp v&agrave; chống nước, Fnatic Jet đảm bảo độ bền v&agrave; độ ổn định của tốc độ trong suốt thời gian d&agrave;i sử dụng.</p>\r\n\r\n<p>Fnatic Jet được đựng trong ống cuộn đạt chuẩn FSC gi&uacute;p dễ d&agrave;ng bảo vệ l&oacute;t chuột v&agrave; c&ugrave;ng bạn đi bất cứ đ&acirc;u.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-Jet.jpg?v=1693393303&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>Điểm nhấn tr&ecirc;n mọi setup</p>\r\n\r\n<p>Fnatic Jet sở hữu bền mặt holographic gradient đổi m&agrave;u t&ugrave;y theo điều kiện &aacute;nh s&aacute;ng v&agrave; g&oacute;c nh&igrave;n.</p>\r\n\r\n<p>Thiết kế đẹp mắt n&agrave;y lu&ocirc;n được giữ sạch nhờ v&agrave;o khả năng chống nước v&agrave; kh&ocirc;ng coating bề mặt. Bạn c&oacute; thể dễ d&agrave;ng lau sạch l&oacute;t chuột với khăn micro-fibre đi k&egrave;m.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-Jet-1.jpg?v=1693393361&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>Loại l&oacute;t chuột nhanh nhất của Fnatic hiện tại</p>\r\n\r\n<p>Bề mặt của Fnatic Jet mượt, nhanh v&agrave; ổn định khi di chuột, gi&uacute;p những c&uacute; vẩy t&acirc;m nhanh, phản xạ trong game dễ d&agrave;ng hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-Jet-2.jpg?v=1693393462&amp;width=800\" style=\"height:1067px; width:800px\" /></p>\r\n\r\n<p>Bo viền Micro-knit</p>\r\n\r\n<p><strong>Tốt nhất hiện tại</strong></p>\r\n\r\n<p>Phần bo viền chặt tr&ecirc;n đế cao su mật độ cao thường kh&ocirc;ng phổ biến nhưng Fnatic Jet lại c&oacute;. Viền bo mỏng hơn, c&aacute;c thớ chỉ b&oacute; chặt hơn v&agrave;o phần cao su khi so với c&aacute;c đối thủ kh&aacute;c.</p>\r\n\r\n<p><strong>Kh&ocirc;ng vướng tay</strong></p>\r\n\r\n<p>Bo viền low-profile ngăn chặn t&igrave;nh trạng vướng tay hay feet chuột khi flick nhanh v&agrave; rộng đến viền l&oacute;t chuột.</p>\r\n\r\n<p><strong>Tối đa độ bền</strong></p>\r\n\r\n<p>Bo viền chống sờn l&agrave; một trong những loại bo viền bề nhất tr&ecirc;n l&oacute;t chuột, đảm bảo m&eacute;p l&oacute;t chuột kh&ocirc;ng bị bong tr&oacute;c v&agrave; bền hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 2, 1, 1, 0, 792000, 792000, '2023-12-17 15:25:17', '75', '2023-12-17 15:25:17', '75', 1, 1, NULL),
(49, 25, 'Bàn phím từ HE DrunkDeer G65 | Magnetic Switch - Rapid Trigger ', 'ban-phim-tu-he-drunkdeer-g65-magnetic-switch-rapid-trigger', 'ban-phim-t-he-drunkdeer-g65-magn1.jpg', 'ban-phim-t-he-drunkdeer-g65-magn_(1).jpg#ban-phim-t-he-drunkdeer-g75-magn_(1).jpg#ban-phim-t-he-drunkdeer-g75-magn1.jpg', 'Bàn phím DrunkDeer được phân phối chính hãng tại Việt Nam bởi Phong Cách Xanh.\r\nUltra Response Speed: switch từ Hall Effect tốc độ phản hồi nhanh hơn 10 lần so với bàn phím cơ thông thường\r\nAdjustable Actuation Distance: điều chỉnh điểm nhận phím từ 0.2mm đến 3.8mm, có thể điều chỉnh từng step 0.1mm\r\nRapid Trigger: phạm vi độ nhạy Rapid Trigger từ 0.1-3.6mm, có thể điều chỉnh từng step 0.1mm\r\nSwitch từ HE được pre-lube\r\nThiết kế chân hấp thụ shock đã đăng ký bản quyền\r\nBảo hành: 12 tháng đổi mới', '<h2><strong>DrunkDeer G65 - Thiết kế gi&uacute;p bạn chơi game tốt hơn</strong></h2>\r\n\r\n<p>Được tạo n&ecirc;n gi&uacute;p c&aacute;c game thủ bức ph&aacute; khỏi giới hạn của b&agrave;n ph&iacute;m cơ truyền thống!</p>\r\n\r\n<p>B&agrave;n ph&iacute;m từ Hall Effect DrunkDeer G65 ứng dụng&nbsp;<strong>c&ocirc;ng nghệ switch nam ch&acirc;m</strong>&nbsp;ho&agrave;n to&agrave;n mới gi&uacute;p khai ph&aacute; mọi giới hạn của game thủ. Cộng th&ecirc;m c&ocirc;ng nghệ Rapid Trigger, giờ đ&acirc;y DrunkDeer G65 phản hồi nhanh v&agrave; ch&iacute;nh x&aacute;c hơn mỗi khi bạn nhấn ph&iacute;m v&agrave; thả tay, đảm bảo mọi chuyển động của nh&acirc;n vật được thực hiện cực kỳ ho&agrave;n hảo.</p>\r\n\r\n<p><strong>Điều chỉnh điểu nhận ph&iacute;m t&ugrave;y th&iacute;ch - Adjustable Actuation Distance</strong></p>\r\n\r\n<p>Với điểm nhận ph&iacute;m c&oacute; thể điều chỉnh trong khoảnh từ 0.2 đến 3.6mm, switch nam ch&acirc;m c&oacute; thể điều chỉnh thoải m&aacute;i đ&aacute;p ứng sở th&iacute;ch của bạn.</p>\r\n\r\n<p>Điều n&agrave;y gi&uacute;p bạn c&oacute; thể c&aacute; nh&acirc;n h&oacute;a ho&agrave;n to&agrave;n cảm gi&aacute;c g&otilde; ph&iacute;m khi chơi game v&agrave; l&agrave;m việc h&agrave;ng ng&agrave;y. V&iacute; dụ chơi game bạn cần độ nhạy cực cao, c&ograve;n khi l&agrave;m việc bạn để mức trung b&igrave;nh gi&uacute;p trải nghiệm g&otilde; ph&iacute;m thoải m&aacute;i nhất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/DrunkDeer-Switches_2.gif?v=1700194654&amp;width=400\" style=\"height:526px; width:400px\" /></p>\r\n\r\n<p><strong>Rapid Trigger - T&iacute;nh năng thay đổi ho&agrave;n to&agrave;n bộ mặt b&agrave;n ph&iacute;m gaming hiện nay</strong></p>\r\n\r\n<p><strong>K&iacute;ch hoạt</strong>&nbsp;ph&iacute;m khi được nhấn ph&iacute;m.</p>\r\n\r\n<p><strong>Trả ph&iacute;m</strong>&nbsp;ngay khi rời tay khỏi ph&iacute;m.</p>\r\n\r\n<p>T&iacute;nh năng Rapid Trigger hoạt động li&ecirc;n tục gi&uacute;p nhận v&agrave; thả ph&iacute;m lập tức theo h&agrave;nh độ của ng&oacute;n tay, truyền tải ch&iacute;nh x&aacute;c h&agrave;nh động của bạn v&agrave;o game với độ trễ thấp nhất.</p>\r\n\r\n<h4><strong>C&ocirc;ng nghệ switch từ t&iacute;nh ho&agrave;n to&agrave;n mới - Magnetic Switch</strong></h4>\r\n\r\n<p>Switch từ kh&aacute;c với switch cơ học: kh&ocirc;ng cần tiếp điểm cơ học để ghi nhận nhấn ph&iacute;m.</p>\r\n\r\n<p><strong>Bền hơn</strong></p>\r\n\r\n<p>Switch nam ch&acirc;m cung cấp độ bền 100 triệu lần nhấn - Bền hơn 2 lần so với switch cơ học truyền thống.</p>\r\n\r\n<p><strong>Nhấn mượt hơn</strong></p>\r\n\r\n<p>Loại bỏ nhiều bộ phận tạo &acirc;m thanh v&agrave; ma s&aacute;t, chỉ thanh trục linear chuyển động l&ecirc;n xuống gi&uacute;p ph&iacute;m nhấn mượt hơn rất nhiều.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/DrunkDeer-Switches_1_2dc237c3-b9a8-44b3-8754-76ea639d1b56.gif?v=1700195822&amp;width=600\" /></p>\r\n\r\n<p><strong>Cấu tạo b&agrave;n ph&iacute;m từ DrunkDeer G65</strong></p>\r\n\r\n<p>Ngo&agrave;i thiết kế c&aacute;c bộ phận đạt chuẩn b&agrave;n ph&iacute;m cơ hiện đại, DrunkDeer G65 c&ograve;n c&oacute; ch&acirc;n giảm chấn &quot;Shock-absorbing&quot; đ&atilde; được đăng k&yacute; bản quyền gi&uacute;p trải nghiệm g&otilde; ph&iacute;m tray-mount &ecirc;m tay hơn, &acirc;m thanh dễ chịu hơn.</p>\r\n\r\n<ol>\r\n	<li>Keycap</li>\r\n	<li>Switch nam ch&acirc;m</li>\r\n	<li>Plate</li>\r\n	<li>Đệm ti&ecirc;u &acirc;m silicon</li>\r\n	<li>PCB t&iacute;ch hợp cảm biến Hall</li>\r\n	<li>Case foam</li>\r\n	<li>Case nhựa ABS</li>\r\n	<li>Ch&acirc;n đế hấp thụ rung động</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/DrunkDeer-G65-Breakdown.jpg?v=1700207200&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n', 5, 5, 0, 4, 3650000, 3500000, '2023-12-27 12:20:39', 'HDL', '2023-12-27 12:20:39', '75', 1, 1, 75),
(54, 21, 'Test 1000VND', 'test-1000vnd', 'chad.jpg', 'razerlord.png', 'Bay mất 1k đừng hỏi tại sao', '<p>dsadsa</p>\r\n', 5, 99, 1, 0, 1000, 1000, '2023-12-27 13:09:33', 'HDL', '2023-12-27 13:09:33', '75', 1, 1, 75),
(55, 26, 'Bàn phím cơ low-profile Fnatic STREAK80 LP', 'ban-phim-co-low-profile-fnatic-streak80-lp', 'ban-phim-c-low-profile-fnatic-st.jpg', 'ban-phim-c-low-profile-fnatic-st_(1).jpg#ban-phim-c-low-profile-fnatic-st_(2).jpg#ban-phim-c-low-profile-fnatic-st_(3).jpg#ban-phim-c-low-profile-fnatic-st_(4).jpg', 'Thiết kế bởi Fnatic - từ một trong những tổ chức Esport được biết đến nhiều nhất thế giới.\r\n\r\nLayout Tenkeyless 80%\r\nThiết kế Low-Profile, trang bị núm xoay chỉnh âm lượng.\r\nLót foam Poron tiêu âm.\r\nSwitch Low-profile speed hợp tác phát triển cùng Kailh, pre-lube\r\nKeycap PBT.\r\nĐi kèm cáp xoắn bện lưới cao cấp.\r\nBảo hành: 24 tháng', '<p>B&agrave;n ph&iacute;m cơ low-profile Fnatic STREAK80 LP</p>\r\n\r\n<h2>B&agrave;n ph&iacute;m cơ gaming mỏng nhất, nhanh nhất v&agrave; đa dụng</h2>\r\n\r\n<p>Fnatic Streak80 LP l&agrave; b&agrave;n ph&iacute;m cơ gaming nhanh nhất với c&aacute;c ph&iacute;m vừa phải theo ti&ecirc;u chuẩn 80%, k&egrave;m theo n&uacute;m xoay điều chỉnh &acirc;m lượng nhanh ch&oacute;ng. Phi&ecirc;n bản LP mới nhất trang bị keycap PBT, foam ti&ecirc;u &acirc;m Poron v&agrave; c&aacute;p xoắn cao cấp trong hộp.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; b&agrave;n ph&iacute;m cơ gaming tốt nhất được tinh chỉnh cho game thủ chuy&ecirc;n nghiệp để mang đến hiệu năng chơi game tốt nhất.</p>\r\n\r\n<p><strong>Build for PRO - Cứng c&aacute;p như xe tăng</strong></p>\r\n\r\n<p><strong>Khung ch&iacute;nh l&agrave;m từ nh&ocirc;m</strong></p>\r\n\r\n<p>Chất liệu nh&ocirc;m với trọng lượng nhẹ nhưng chắc chắn giữ c&acirc;n nặng b&agrave;n ph&iacute;m Streak80 LP ở mức vừa phải. Vừa đủ nhẹ nhưng vẫn đảm bảo độ cứng c&aacute;p.</p>\r\n\r\n<p><strong>Tối ưu cho &acirc;m thanh g&otilde; ph&iacute;m</strong></p>\r\n\r\n<p>Fnatic th&ecirc;m v&agrave;o lớp foam ti&ecirc;u &acirc;m Poron cao cấp gi&uacute;p n&acirc;ng cấp tổng thể &acirc;m thanh g&otilde; ph&iacute;m.</p>\r\n\r\n<p><strong>Thanh c&acirc;n bằng ph&iacute;m d&agrave;i v&agrave; switch được b&ocirc;i trơn</strong></p>\r\n\r\n<p>C&aacute;c thanh c&acirc;n bằng được Fnatic custom ri&ecirc;ng v&agrave; lube sẵn giảm &acirc;m thanh lọc xọc v&agrave; giảm hiện tượng kh&ocirc;ng ổn định khi nhấn v&agrave;o c&aacute;c đầu xa của ph&iacute;m d&agrave;i, đồng thời gi&uacute;p &acirc;m thanh g&otilde; ph&iacute;m tốt hơn.</p>\r\n\r\n<p>Switch Fnatic Speed mới tr&ecirc;n Streak80 LP được b&ocirc;i trơn cho trải nghiệm g&otilde; ph&iacute;m mượt tay, &acirc;m thanh vừa phải tạo cảm gi&aacute;c dễ chịu trong suốt qu&aacute; tr&igrave;nh sử dụng m&aacute;y t&iacute;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-Boaster-Streak80-LP.jpg?v=1702288055&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n\r\n<p>Đ&egrave;n LED RGB si&ecirc;u s&aacute;ng</p>\r\n\r\n<p><strong>&Aacute;nh s&aacute;ng rực rỡ</strong></p>\r\n\r\n<p>Bạn c&oacute; thể chọn đến 16.8 triệu m&agrave;u. T&ugrave;y chỉnh bằng phần mềm Fnatic OP v&agrave; lưu trực tiếp c&agrave;i đặt tr&ecirc;n bộ nhớ trong b&agrave;n ph&iacute;m. Hai đ&egrave;n LED bổ sung cho space bar gi&uacute;p đ&egrave;n nền th&ecirc;m nổi bật.</p>\r\n\r\n<p><strong>&Iacute;t keycap hơn, nhiều &aacute;nh s&aacute;ng hơn</strong></p>\r\n\r\n<p>Profile keycap custom được thiết kế bởi Fnatic gi&uacute;p lan tỏa nhiều &aacute;nh s&aacute;ng hơn qua xung quanh switch, lan tỏa khắp b&agrave;n ph&iacute;m v&agrave; gi&uacute;p setup của bạn tỏa s&aacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/fnatic-streak80-lp.jpg?v=1702288441&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n\r\n<p>N&uacute;m xoay | C&aacute;p xoắn | Switch Low Profile</p>\r\n\r\n<p><strong>N&uacute;m xoay &acirc;m lượng</strong></p>\r\n\r\n<p>Được trang bị tr&ecirc;n Fnatic Streak80 LP, bạn c&oacute; thể chỉnh &acirc;m lượng hệ thống bằng thao t&aacute;c tr&ecirc;n c&aacute;c đầu ng&oacute;n tay. Cực kỳ đơn giản v&agrave; tiện lợi.</p>\r\n\r\n<p><strong>C&aacute;p xoắn sẵn trong hộp</strong></p>\r\n\r\n<p>Đi k&egrave;m c&aacute;p xoắn d&agrave;i 1.8 m&eacute;t, được bọc lưới b&ecirc;n ngo&agrave;i nằm ngay ngắn tr&ecirc;n b&agrave;n cũng như giảm rối d&acirc;y nhờ phần xoắn d&acirc;y d&agrave;i 16 cm. Kết nối USB Type-C cho b&agrave;n ph&iacute;m v&agrave; Type-A cho m&aacute;y t&iacute;nh gi&uacute;p tương th&iacute;ch ho&agrave;n to&agrave;n với c&aacute;c b&agrave;n ph&iacute;m Fnatic cũng như c&aacute;c b&agrave;n ph&iacute;m cơ sử dụng cổng kết nối tiện dụng n&agrave;y.</p>\r\n\r\n<p><strong>Switch Low-Profile cho Espo</strong>rt</p>\r\n\r\n<p>Được trang bị switch low profile Fnatic, Streak65 LP cho tốc độ phản hồi nhanh nhất với h&agrave;nh tr&igrave;nh nhận ph&iacute;m chỉ 1.0mm.</p>\r\n\r\n<p><strong>Switch tối ưu cho c&ocirc;ng th&aacute;i học</strong></p>\r\n\r\n<p>Switch Fnatic low profile mỏng hơn 35% so với switch cơ học truyền thống. Nhờ đ&oacute; độ cao của ph&iacute;m cũng được giảm xuống gi&uacute;p tư thế sử dụng b&agrave;n ph&iacute;m l&agrave;nh mạnh hơn, vị tr&iacute; cổ tay tự nhi&ecirc;n hơn kể cả khi kh&ocirc;ng sử dụng k&ecirc; tay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/fnatic-streak80-lp-1.jpg?v=1702288556&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n', 5, 5, 0, 0, 3740000, 3740000, '2023-12-27 14:47:29', 'HDL', '2023-12-28 17:53:34', '75', 1, 1, 75),
(56, 27, 'Tai nghe Fnatic REACT+ | 7.1 Virtual Surround USB soundcard', 'tai-nghe-fnatic-react-7-1-virtual-surround-usb-soundcard', 'tai-nghe-fnatic-react-7-1-virtua.jpg', 'tai-nghe-fnatic-react-7-1-virtua_(1).jpg#tai-nghe-fnatic-react-7-1-virtua_(2).jpg#tai-nghe-fnatic-react-7-1-virtua_(3).jpg', 'Thiết kế bởi Fnatic - từ một trong những tổ chức Esport được biết đến nhiều nhất thế giới. REACT+ là dòng tai nghe chính của Fnatic tập trung vào trải nghiệm gaming và thoải mái cả ngày dài.\r\n\r\nĐi kèm USB soundcard: hỗ trợ giả lập âm thanh 7.1\r\nKích thước driver 53mm.\r\nÂm thanh giả lập 7.1.\r\nKết nối: có dây, cổng 3.5mm.\r\nChất liệu đệm tai: da protein, velour.', '<h2>Thiết kế hướng đến esport</h2>\r\n\r\n<p>Tai nghe Fnatic React+ được thiết kế để mang đến lợi thế đối đa cho bạn th&ocirc;ng qua &acirc;m thanh. Ph&acirc;n biệt những &acirc;m thanh quan trọng r&otilde; r&agrave;ng với độ chi tiết cao trong khi cung cấp &acirc;m thanh tr&ograve; chuyện trong trẻo với đồng đội. Fnatic React+ được tạo n&ecirc;n bởi những vận động vi&ecirc;n esport giỏi nhất, tất cả v&igrave; hiệu năng sử dụng tốt nhất.</p>\r\n\r\n<p>Sound card giả lập &acirc;m thanh 7.1</p>\r\n\r\n<p><strong>Cắm l&agrave; chạy</strong></p>\r\n\r\n<p>Sound card custom XP USB mạnh mẽ từ Fnatic chỉ cần cắm l&agrave; chạy. Bạn kh&ocirc;ng cần tải th&ecirc;m phần mềm hoặc c&agrave;i đặt th&ecirc;m g&igrave;.</p>\r\n\r\n<p><strong>&Acirc;m thanh 7.1 được tinh chỉnh bởi Fnatic</strong></p>\r\n\r\n<p>&Acirc;m thanh v&ograve;m được tune chuẩn esport sẽ kh&ocirc;ng chỉ mở rộng trải nghiệm chơi game m&agrave; c&ograve;n thật v&agrave; gần hơn với trải nghiệm &acirc;m thanh 7.1 thật. Bằng c&aacute;ch x&acirc;y dựng tr&ecirc;n &acirc;m thanh đặc trưng của d&ograve;ng React, sound card USB giả lập 7.1 hướng đến việc giảm tối đa m&eacute;o tiếng.</p>\r\n\r\n<p><strong>Tăng cường &acirc;m thanh</strong></p>\r\n\r\n<p>Sound card USB mạnh mẽ t&iacute;ch hợp DAC với &acirc;m lượng được tăng cường. XP sound card l&agrave; giải ph&aacute;p n&acirc;ng cấp &acirc;m thanh xịn hơn so với &acirc;m thanh c&oacute; sẵn tr&ecirc;n bo mạch chủ.</p>\r\n\r\n<p><strong>Điều khiển to&agrave;n bộ</strong></p>\r\n\r\n<p>Trang bị những n&uacute;t nhấn ri&ecirc;ng biệt cho điều khiển &acirc;m lượng &acirc;m thanh v&agrave; microphone cũng như n&uacute;t tắt mic nhanh. Ngay giữa l&agrave; n&uacute;t k&iacute;ch hoạt chế độ &acirc;m thanh 7.1 chỉ bằng một n&uacute;t nhấn.</p>\r\n\r\n<p><strong>Tương th&iacute;ch rộng r&atilde;i</strong></p>\r\n\r\n<p>Để gi&uacute;p tai nghe của bạn hoạt động tốt hơn, XP sound card hoạt động với bất kỳ tai nghe n&agrave;o sử dụng jack 3.5mm combo. XP sound card chỉ ho&agrave;n to&agrave;n hỗ trợ hệ điều h&agrave;nh Windows.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-React-Plus.jpg?v=1693380525&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n\r\n<p>Chọn chất liệu đệm tai bạn th&iacute;ch v&igrave; tất cả c&oacute; sẵn trong hộp</p>\r\n\r\n<p><strong>Đệm tai Velour</strong></p>\r\n\r\n<ul>\r\n	<li>Mềm v&agrave; tăng cường tho&aacute;ng kh&iacute;, gi&uacute;p tai bạn tho&aacute;ng m&aacute;t cả ng&agrave;y d&agrave;i.</li>\r\n	<li>&Acirc;m trường mở rộng hơn v&agrave; nghe được nhiều &acirc;m thanh b&ecirc;n ngo&agrave;i hơn.</li>\r\n</ul>\r\n\r\n<p><strong>Da PU</strong></p>\r\n\r\n<ul>\r\n	<li>Loại da mềm v&agrave; &ecirc;m được chọn bởi c&aacute;c pro player Fnatic.</li>\r\n	<li>Gi&uacute;p c&aacute;ch &acirc;m thụ động c&aacute;c &acirc;m thanh b&ecirc;n ngo&agrave;i ở mức tối đa.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-React-Plus-1.jpg?v=1693380627&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n\r\n<p>Si&ecirc;u cấp thoải m&aacute;i</p>\r\n\r\n<p><strong>Đệm memory foam d&agrave;y</strong></p>\r\n\r\n<p>Được sử dụng ở hai b&ecirc;n đệm tai v&agrave; đệm đầu, đệm memory foam chất lượng cao với thiết kế thoải m&aacute;i &ocirc;m trọn tai v&agrave; đầu bạn.</p>\r\n\r\n<p><strong>Cho thời gian sử dụng l&acirc;u</strong></p>\r\n\r\n<p>Được sử dụng bởi c&aacute;c vận động vi&ecirc;n thể thao điện tử của Fnatic, c&aacute;c player của Fnatic đ&atilde; sử dụng React trong điều kiện chơi game l&acirc;u d&agrave;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Fnatic-React-Plus-2.jpg?v=1693380680&amp;width=1000\" style=\"height:1333px; width:1000px\" /></p>\r\n', 5, 10, 0, 20, 2530000, 2000000, '2023-12-27 15:01:29', 'HDL', '2023-12-27 15:01:29', '75', 1, 1, 75),
(57, 28, 'Tay cầm chơi game DualSense cho PS5 - Hàng xách tay', 'tay-cam-choi-game-dualsense-cho-ps5-hang-xach-tay', 'tay-c-m-ch-i-game-dualsense-cho.jpg', 'images.jpg#ps5-sony-svela-confezioni-dualse.jpg', 'hehe', '<p>boiz</p>\r\n', 5, 5, 0, 0, 1690000, 1690000, '2023-12-27 15:17:09', 'HDL', '2023-12-27 15:17:09', '75', 1, 1, 75),
(58, 29, 'Ghế công thái học Herman Miller X Logitech G Embody - Hàng xách tay', 'ghe-cong-thai-hoc-herman-miller-x-logitech-g-embody-hang-xach-tay', 'gh-cong-thai-h-c-herman-miller-x.jpg', 'gh-cong-thai-h-c-herman-miller-x_(1).jpg#gh-cong-thai-h-c-herman-miller-x_(2).jpg#gh-cong-thai-h-c-herman-miller-x_(3).jpg', 'HERMAN MILLER x LOGITECH G\r\n\r\nEmbody ban đầu được thiết kế với sự tham gia của hơn 30 bác sĩ và tiến sĩ về cơ sinh học, thị lực, vật lý trị liệu và công thái học. Bây giờ, Herman Miller đã nghiên cứu thêm về game thủ và cải tiến thiết kế ban đầu khi hợp tác với Logitech G tạo nên dòng ghế cao cấp Embody x Logitech G\r\n\r\nXuất xứ thương hiệu: Mỹ\r\n\r\nBảo hành: 12 năm', '<h2><strong>LOGITECH G x HERMAN MILLER</strong></h2>\r\n\r\n<p>Logitech G v&agrave; Herman Miller đ&atilde; hợp t&aacute;c với nhau để s&aacute;ng tạo lại chiếc ghế chơi game. Bằng c&aacute;ch kết hợp khoa học dẫn đầu của Herman Miller về thiết kế ghế ngồi với khoa học dẫn đầu của Logitech về gaming, Ghế Chơi game Embody (Embody Gaming Chair) được t&aacute;i thiết kế để đem đến hiệu suất mang t&iacute;nh c&aacute;ch mạng, c&ocirc;ng th&aacute;i học xuất sắc v&agrave; c&aacute;c t&iacute;nh năng m&agrave; game thủ, podcaster v&agrave; c&aacute;c chuy&ecirc;n gia thể thao điện tử xứng đ&aacute;ng c&oacute; được.</p>\r\n\r\n<p><strong>Thiết kế d&agrave;nh cho game thủ</strong></p>\r\n\r\n<p>Herman Miller v&agrave; Logitech mang đến một sự tiến bộ chưa từng c&oacute; cho lĩnh vực ghế chơi game. Được thiết kế d&agrave;nh cho c&aacute;c game thủ, Ghế chơi game Embody được chế tạo để loại bỏ sự mệt mỏi, cải thiện tư thế v&agrave; cho ph&eacute;p người chơi cũng như c&aacute;c chuy&ecirc;n gia thể thao điện tử chơi tốt hơn.</p>\r\n\r\n<ul>\r\n	<li>Ghế Logitech G Embody được cải tiến với một lớp xốp bổ sung trong ghế để hỗ trợ tư thế ngồi.</li>\r\n	<li>C&ocirc;ng nghệ bọt l&agrave;m m&aacute;t mới của ghế gi&uacute;p ngăn sự t&iacute;ch nhiệt khi ngồi.</li>\r\n	<li>Tư thế tốt nhất l&agrave; tư thế thẳng đứng &ndash; khi ngực mở ra v&agrave; xương chậu hơi nghi&ecirc;ng về ph&iacute;a sau. Thiết bị PostureFit của Embody sẽ gi&uacute;p bạn c&oacute; tư thế ngồi thẳng đứng vững chắc bằng c&aacute;ch hỗ trợ cột sống ở điểm thấp nhất, xương c&ugrave;ng, đồng thời hỗ trợ thắt lưng.</li>\r\n	<li>Khi ngồi trong thời gian d&agrave;i: cột sống của bạn sẽ bị cong, v&agrave; kh&ocirc;ng thoải m&aacute;i. Điều chỉnh BackFit gi&uacute;p bạn định h&igrave;nh lại cột sống duy tr&igrave; tư thế c&acirc;n bằng, trung t&iacute;nh.</li>\r\n	<li>Ngồi trong thời gian d&agrave;i m&aacute;u sẽ kh&oacute; lưu th&ocirc;ng v&agrave; t&iacute;ch tụ sẽ g&acirc;y ảnh hưởng đến cơ thể. Sự ph&acirc;n bổ &aacute;p suất c&oacute; tr&ecirc;n to&agrave;n bộ ghế v&agrave; lưng của Embody sẽ tự động tu&acirc;n theo c&aacute;c chuyển động vi m&ocirc; của cơ thể bạn, ph&acirc;n bổ đồng đều trọng lượng của bạn v&agrave; gi&uacute;p m&aacute;u lưu th&ocirc;ng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://www.phongcachxanh.vn/cdn/shop/files/Herman_Miller_Embody_x_Logitech_2.jpg?v=1679461927&amp;width=600\" style=\"height:800px; width:600px\" /></p>\r\n\r\n<p><strong>Thiết kế bởi hơn 30 gi&aacute;o sư cơ học sinh học, b&aacute;c sĩ,...</strong></p>\r\n\r\n<p>Ghế Herman Miller Emboby được thiết kế với sự tư vấn từ hơn 30 b&aacute;c sĩ, gi&aacute;o sư cơ học sinh học, tầm nh&igrave;n, vật l&yacute; trị liệu v&agrave; c&ocirc;ng th&aacute;i học. Với sự hợp t&aacute;c c&ugrave;ng Logitech G, Herman Miller một lần nữa t&aacute;i thiết kế mẫu ghế Emdoby danh tiếng của h&atilde;ng theo y&ecirc;u cầu của game thủ v&agrave; được c&ocirc;ng nhận bởi c&aacute;c game thủ tr&ecirc;n to&agrave;n cầu:</p>\r\n\r\n<p>Một mẫu ghế ngồi tốt cho sức khỏe, ngồi l&acirc;u d&agrave;i thoải m&aacute;i v&agrave; th&ocirc;ng tho&aacute;ng cả ng&agrave;y d&agrave;i.</p>\r\n\r\n<p><strong>Chất liệu cao cấp xứng tầm Herman Miller</strong></p>\r\n\r\n<p>Kh&ocirc;ng chỉ ch&uacute; trọng thiết kế, Herman Miller Embody x Logitech G c&ograve;n ch&uacute; trọng đến từng chất liệu nhỏ nhất nhằm mang đến mẫu ghế bền bỉ, thoải m&aacute;i v&agrave; đ&aacute;ng tin cậy trong mọi nhu cầu sử dụng - Đặc biệt l&agrave; game thủ.</p>\r\n\r\n<ul>\r\n	<li>Vải 100% sợi polyester bền, chắc, chống tia UV, chống phai m&agrave;u v&agrave; chịu nhiệt độ cao.</li>\r\n	<li>Ch&acirc;n ghế nh&ocirc;m đ&uacute;c với bề mặt powder coating.</li>\r\n	<li>Bệ t&igrave; tay l&agrave;m từ foam đ&uacute;c với sợi thủy tinh - nylon gia cường độ chắc chắn.</li>\r\n	<li>C&acirc;u tr&uacute;c 4 lớp cho đệm ngồi: 2 lớp l&ograve; xo, 1 lớp đệm, 1 lớp foam phủ tr&ecirc;n c&ugrave;ng c&ugrave;ng mặt vải Sync độc quyền Herman Miller.</li>\r\n	<li>B&aacute;nh xe 2.5&quot; đ&ocirc;i l&agrave;m từ nylon c&ugrave;ng PU mềm di chuyển &ecirc;m &aacute;i.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 5, 2, 1, 0, 54490000, 54490000, '2023-12-27 15:25:37', 'HDL', '2023-12-27 15:27:28', '75', 1, 1, 75);

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(11, 'fakerdav3pro', 'fakerdav3pro', 'faker_(Custom)1.png', '2023-12-17 15:38:34', '75', '2023-12-17 15:38:34', '75', 1, 1),
(12, 'lamzumaya', 'lamzumaya', 'lamzu-maya1.jpg', '2023-12-17 15:38:57', '75', '2023-12-17 15:38:57', '75', 1, 1),
(13, 'yukiaim', 'yukiaim', 'Yuki_aim_2800px1.jpg', '2023-12-17 15:39:15', '75', '2023-12-17 15:39:15', '75', 1, 1),
(14, 'fnaticstreak', 'fnaticstreak', 'fnatic-streak80-lp-2800px1.jpg', '2023-12-17 15:39:31', '75', '2023-12-17 15:39:31', '75', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'admin@gmail.com', 1, '0987654321', 'Hutech Q9', 'user-group.png', '2023-11-01 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '901eccfcc875d5507ec55b4461d4ca129d39240f', 1, 'quanly@gmail.com', 1, '0985657410', 'Gò vấp', 'bc0d4c186522764fc9457b7bacb635e4.png', '2023-11-01 09:16:16', 1, 1),
(3, 'Nhân viên', 'nhanvien', '901eccfcc875d5507ec55b4461d4ca129d39240f', 2, 'nv@gmail.com', 1, '09990990', 'Gò vấp', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2023-11-01 09:16:16', 1, 1),
(11, 'Test NV', 'testnv', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'testnv@gmail.com', 1, '0589562655', 'HCM', 'default.png', '2023-03-01 19:52:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2023-11-01 23:29:15', 1, '2023-11-01 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2023-11-01 23:29:15', 1, '2023-11-01 23:29:15', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
