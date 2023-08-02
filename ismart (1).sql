-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 13, 2023 lúc 03:26 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ismart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_number` varchar(255) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `payment_status` enum('0','1','2','') DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `product_buy` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill`
--

INSERT INTO `tbl_bill` (`id`, `code`, `customer_name`, `customer_email`, `customer_number`, `address`, `total_amount`, `payment_status`, `payment_method`, `product_buy`, `note`, `create_at`) VALUES
(16, '#HD-2', 'Phạm Thanh Hùng', 'hung@gmail.com', '0939164234', '25 Lê đại hành', 9990000, '1', 'direct-payment', '{\"5\":{\"product_id\":\"5\",\"code_product\":\"#PRODUCT_5\",\"product_name\":\"Iphone 11 256GB-White\",\"product_img\":\"public/uploads/product/iphone 11 256 GB white.jpg\",\"product_price\":\"9990000\",\"qty\":1,\"total\":9990000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=5\"}}', 'Không', '2023-07-10 13:29:14'),
(17, '#HD-3', 'Kiều Minh Ngọc', 'minhngoc@gmail.com', '0932139543', '244 Minh khai', 9990000, '1', 'payment-home', '{\"5\":{\"product_id\":\"5\",\"code_product\":\"#PRODUCT_5\",\"product_name\":\"Iphone 11 256GB-White\",\"product_img\":\"public/uploads/product/iphone 11 256 GB white.jpg\",\"product_price\":\"9990000\",\"qty\":1,\"total\":9990000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=5\"}}', '', '2023-07-10 13:34:32'),
(19, '#HD-5', 'Phạm Văn Chiến', 'chienoi@gmail.com', '0939657777', '23 Xã Đàn - Đống Đa - Hà Nội', 53870000, '1', 'direct-payment', '{\"12\":{\"product_id\":\"12\",\"code_product\":\"#PRODUCT_11\",\"product_name\":\"PC GVN MINION i1650\",\"product_img\":\"public/uploads/product/PC GVN MINION i1650.jpg\",\"product_price\":\"9990000\",\"qty\":1,\"total\":9990000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=12\"},\"2\":{\"product_id\":\"2\",\"code_product\":\"#PRODUCT_2\",\"product_name\":\"Iphone X 64GB -Gold\",\"product_img\":\"public/uploads/product/iphone X 64 GB Gold.jpg\",\"product_price\":\"28890000\",\"qty\":1,\"total\":28890000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=2\"},\"7\":{\"product_id\":\"7\",\"code_product\":\"#PRODUCT_7\",\"product_name\":\"Laptop Gaming Acer Aspire 7 A715 42G R05G\",\"product_img\":\"public/uploads/product/laptop gaming Acer Aspire 7 A715 42G R05G.jpg\",\"product_price\":\"14990000\",\"qty\":1,\"total\":14990000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=7\"}}', 'Ship tôi nhanh nhất có thể', '2023-07-10 03:48:25'),
(21, '#HD-5', 'Huy Thành Phạm', 'huypham3062k3@gmail.com', '0838129818', 'Phòng 25- K5 bách Khoa Hai bà trưng Hà Nội', 235800000, '1', 'payment-home', '{\"13\":{\"product_id\":\"13\",\"code_product\":\"#PRODUCT_12\",\"product_name\":\"PC GVN VIPER i1660S\",\"product_img\":\"public/uploads/product/PC GVN VIPER i1660S.jpg\",\"product_price\":\"13590000\",\"qty\":\"10\",\"total\":135900000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=13\"},\"5\":{\"product_id\":\"5\",\"code_product\":\"#PRODUCT_5\",\"product_name\":\"Iphone 11 256GB-White\",\"product_img\":\"public/uploads/product/iphone 11 256 GB white.jpg\",\"product_price\":\"9990000\",\"qty\":\"10\",\"total\":99900000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=5\"}}', '', '2023-07-10 02:52:10'),
(27, '#HD-6', 'Đinh Thị Kiều Duyên', 'kieuduyen@gmail.com', '0833876688', '25 Lê đại hành', 13590000, '0', 'payment-home', '{\"13\":{\"product_id\":\"13\",\"code_product\":\"#PRODUCT_12\",\"product_name\":\"PC GVN VIPER i1660S\",\"product_img\":\"public/uploads/product/PC GVN VIPER i1660S.jpg\",\"product_price\":\"13590000\",\"qty\":1,\"total\":13590000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=13\"}}', 'Liên hệ với tôi, Tôi muốn giao hàng sớm ', '2023-07-10 13:05:53'),
(28, '#HD-6', 'Huy Thành Phạm', 'huypham3062k3@gmail.com', '0838129818', 'Phòng 25- K5 bách Khoa Hai bà trưng Hà Nội', 24000000, '2', 'direct-payment', '{\"1\":{\"product_id\":\"1\",\"code_product\":\"#PRODUCT_1\",\"product_name\":\"Iphone X 64GB - Black\",\"product_img\":\"public/uploads/product/iphone X 64 GB black.png\",\"product_price\":\"24000000\",\"qty\":1,\"total\":24000000,\"cart_delete\":\"?mod=shoppingcart&controllers=index&action=delete_cart&id=1\"}}', '', '2023-07-10 13:36:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `employee_id` int(11) NOT NULL,
  `employee_login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_employee`
--

INSERT INTO `tbl_employee` (`employee_id`, `employee_login`, `password`) VALUES
(1, 'employee_admin', '75b82c0c9eb6c6c1beb454d04117e55f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_list_post`
--

CREATE TABLE `tbl_list_post` (
  `id` int(11) NOT NULL,
  `list_post_name` varchar(32) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_list_post`
--

INSERT INTO `tbl_list_post` (`id`, `list_post_name`, `parent_id`) VALUES
(1, 'Thể Thao', 0),
(2, 'Bóng đá', 1),
(3, 'Khám phá thế giới', 0),
(8, 'Công nghệ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_list_product`
--

CREATE TABLE `tbl_list_product` (
  `id` int(11) NOT NULL,
  `list_product_name` varchar(32) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_list_product`
--

INSERT INTO `tbl_list_product` (`id`, `list_product_name`, `parent_id`) VALUES
(6, 'Điện Thoại', 0),
(7, 'LapTop', 0),
(8, 'Pc', 0),
(12, 'Iphone', 6),
(13, 'Iphone X ', 12),
(14, 'Iphone X 64 GB', 13),
(15, 'Iphone X 32 GB', 13),
(17, 'ASUS', 7),
(18, 'Iphone 11 ', 12),
(19, 'lenovo', 7),
(20, 'GIGABYTE', 7),
(21, 'MSI', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `list_post_id` int(11) NOT NULL,
  `post_name` varchar(100) NOT NULL,
  `post_img` blob NOT NULL,
  `post_content` longtext NOT NULL,
  `create_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `list_post_id`, `post_name`, `post_img`, `post_content`, `create_at`) VALUES
(3, 3, 'Taliban ra lệnh đóng cửa các thẩm mỹ viện ở Afghanistan', 0x7075626c69632f75706c6f6164732f706f73742f74616c6962616e2d3837352e6a7067, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#404040\">Ch&iacute;nh quyền Taliban tại Afghanistan đ&atilde; ra lệnh đ&oacute;ng cửa c&aacute;c thẩm mỹ viện ở nước n&agrave;y trong v&ograve;ng một th&aacute;ng. Đ&acirc;y l&agrave; động th&aacute;i mới nhất nhằm hạn chế phụ nữ tới c&aacute;c địa điểm c&ocirc;ng cộng</span></span></span></strong></span></span></span></p>\n\n<p style=\"text-align:justify\"><img alt=\"\" src=\"admin/public/uploads/files/taliban-875.jpg\" style=\"height:399px; width:600px\" /></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">H&atilde;ng tin Reuters dẫn lời ph&aacute;t ng&ocirc;n vi&ecirc;n của Bộ Tuy&ecirc;n truyền đạo đức v&agrave; Ph&ograve;ng chống đồi bại Afghanistan Mohammad Sadiq Akif h&ocirc;m nay (4/7) n&oacute;i: &quot;Hạn ch&oacute;t đ&oacute;ng cửa c&aacute;c cửa h&agrave;ng l&agrave;m đẹp cho phụ nữ l&agrave; một th&aacute;ng&quot;.&nbsp;</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Năm ngo&aacute;i, ch&iacute;nh quyền taliban&nbsp;đ&atilde; đ&oacute;ng cửa hầu hết c&aacute;c trường trung học d&agrave;nh cho nữ sinh, cấm phụ nữ học đại học v&agrave; kh&ocirc;ng cho ph&eacute;p nhiều nữ nh&acirc;n vi&ecirc;n cứu trợ đi l&agrave;m. Nhiều địa điểm c&ocirc;ng cộng như nh&agrave; tắm, ph&ograve;ng tập thể dục, c&ocirc;ng vi&ecirc;n cũng bị cấm tiếp đ&oacute;n phụ nữ.&nbsp;</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">C&aacute;c thẩm mỹ viện đ&atilde; được mở ở Kabul v&agrave; nhiều th&agrave;nh phố kh&aacute;c của Afghanistan v&agrave;i th&aacute;ng sau khi Taliban bị lật đổ v&agrave;o cuối năm 2001. Nhiều nơi vẫn mở cửa sau khi lực lượng Hồi gi&aacute;o quay lại nắm quyền c&aacute;ch đ&acirc;y 2 năm, song biển hiệu v&agrave; cửa sổ bị che. Những thẩm mỹ viện n&agrave;y tiếp tục cung cấp việc l&agrave;m cho một số phụ nữ cũng như dịch vụ cho kh&aacute;ch h&agrave;ng.</span></span></span></span></p>\n\n<p style=\"text-align:start\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Nhiều ch&iacute;nh phủ phương T&acirc;y v&agrave; c&aacute;c tổ chức nước ngo&agrave;i cho rằng việc &aacute;p dụng c&aacute;c hạn chế mới với phụ nữ sẽ ảnh hưởng tới sự c&ocirc;ng nhận của quốc tế với ch&iacute;nh quyền Taliban. Tuy nhi&ecirc;n, ch&iacute;nh quyền Taliban n&oacute;i rằng họ t&ocirc;n trọng quyền của phụ nữ theo c&aacute;ch giải th&iacute;ch của họ về luật Hồi gi&aacute;o v&agrave; phong tục Afghanistan.</span></span></span></span></p>\n\n<p>&nbsp;</p>\n', '2023-07-04'),
(4, 2, 'HLV Mai Đức Chung dự đoán cái tên bất ngờ ghi bàn ở World Cup', 0x7075626c69632f75706c6f6164732f706f73742f6269746368746875792e6a7067, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">HLV Mai Đức Chung cho rằng Nguyễn Thị B&iacute;ch Th&ugrave;y sẽ l&agrave; cầu thủ đầu ti&ecirc;n ghi b&agrave;n cho đội tuyển nữ Việt Nam tại World Cup.</span></span></span></span></strong></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">S&aacute;ng 4/7, Li&ecirc;n đo&agrave;n b&oacute;ng đ&aacute; Việt Nam (VFF) đ&atilde; tổ chức buổi lễ xuất qu&acirc;n cho đội tuyển nữ Việt Nam tham dự World Cup 2023.</span></span></span></span></span></span></p>\n\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\"><img alt=\"\" src=\"admin/public/uploads/files/bitchthuy.jpg\" style=\"height:481px; width:680px\" /></span></span></span></span></strong></span></span></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Trong phần giao lưu, HLV Mai Đức Chung c&ugrave;ng c&aacute;c học tr&ograve; đ&atilde; đưa ra những dự đo&aacute;n về cầu thủ sẽ ghi b&agrave;n thắng đầu ti&ecirc;n cho tuyển nữ Việt Nam ở World Cup 2023.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">&ldquo;T&ocirc;i nghĩ ai ghi b&agrave;n cũng được, chỉ cần đội tuyển nữ Việt Nam c&oacute; b&agrave;n thắng l&agrave; dấu mốc lịch sử của ch&uacute;ng ta rồi. T&ocirc;i dự đo&aacute;n l&agrave; Nguyễn Thị B&iacute;ch Th&ugrave;y sẽ lập c&ocirc;ng ở World Cup&rdquo;, HLV Mai Đức Chung cho biết.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Trong khi đ&oacute;, tiền vệ Ng&acirc;n Thị Vạn Sự lại kh&aacute;t khao được kiến tạo cho đồng đội ghi b&agrave;n tại s&acirc;n chơi đẳng cấp thế giới.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">&ldquo;T&ocirc;i muốn kiến tạo cho cả đội tuyển nữ Việt Nam ghi b&agrave;n. T&ocirc;i nghĩ Huỳnh Như, Tuyết Dung hoặc Hải Yến sẽ ghi được b&agrave;n thắng&rdquo;, Vạn Sự n&oacute;i.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Về phần m&igrave;nh, Huỳnh Như cho biết, nếu ghi được b&agrave;n thắng, c&ocirc; sẽ ăn mừng theo phong c&aacute;ch Việt Nam.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Trong lễ xuất qu&acirc;n, c&aacute;c c&ocirc; g&aacute;i &aacute;o đỏ đ&atilde; được nh&agrave; t&agrave;i trợ Acecook Việt Nam thưởng 1 tỷ đồng.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Ng&agrave;y 5/7, đội tuyển nữ Việt Nam sẽ l&ecirc;n đường sang New Zealand để dự World Cup 2023.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Tại giải đấu lần n&agrave;y, Huỳnh Như c&ugrave;ng đồng đội nằm ở bảng E với Mỹ, H&agrave; Lan v&agrave; Bồ Đ&agrave;o Nha.</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Ở trận ra qu&acirc;n, thầy tr&ograve; HLV Mai Đức Chung sẽ chạm tr&aacute;n nh&agrave; v&ocirc; địch thế giới, đội tuyển nữ Mỹ (22/7).</span></span></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Trước thời điểm bước v&agrave;o giai đoạn v&ograve;ng bảng World Cup 2023, đội tuyển nữ Việt Nam sẽ c&oacute; hai trận giao hữu với New Zealand (10/7) v&agrave; T&acirc;y Ban Nha (15/7).</span></span></span></span></p>\n\n<p>&nbsp;</p>\n', '2023-07-04'),
(5, 3, 'Một địa danh ở Phú Yên tựa ‘Việt Nam thu nhỏ’ khi nhìn từ trên cao', 0x7075626c69632f75706c6f6164732f706f73742f7068752d79656e2d3131322d332e6a7067, '<h5 style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Calibri Light&quot;,sans-serif\"><span style=\"color:#2f5496\"><em><strong><span style=\"font-size:12.0pt\"><span style=\"color:#111111\">(SGTT) &ndash; Với g&oacute;c chụp từ tr&ecirc;n cao, Mũi Điện hay c&ograve;n gọi l&agrave; Mũi Đại L&atilde;nh thuộc th&ocirc;n Phước T&acirc;n, x&atilde; Ho&agrave; T&acirc;m, huyện Đ&ocirc;ng Ho&agrave;, tỉnh Ph&uacute; Y&ecirc;n g&acirc;y bất ngờ v&igrave; nh&igrave;n giống bản đồ Việt Nam.</span></span></strong></em></span></span></span></span></h5>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\">Mũi Điện nằm c&aacute;ch th&agrave;nh phố Tuy Ho&agrave;, tỉnh Ph&uacute; Y&ecirc;n khoảng 35km về hướng Đ&ocirc;ng Nam. Đ&acirc;y l&agrave; một trong những điểm thu h&uacute;t kh&aacute;ch du lịch ở Việt Nam, được Bộ Văn ho&aacute; &ndash; Thể thao v&agrave; Du lịch c&ocirc;ng nhận l&agrave; Di t&iacute;ch danh thắng cấp quốc gia năm 2008.</span></span></span></span></span></span></p>\r\n\r\n<p><img alt=\"\" src=\"admin/public/uploads/files/phu-yen-112-4.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\">L&agrave; điểm đến quen thuộc của nhiều du kh&aacute;ch khi đến Ph&uacute; Y&ecirc;n, tuy nhi&ecirc;n với g&oacute;c nh&igrave;n từ tr&ecirc;n cao, Mũi Điện mang đến sự bất ngờ cho người xem bởi h&igrave;nh ảnh &ldquo;Việt Nam thu nhỏ&rdquo;.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\">Khi đến đ&acirc;y, du kh&aacute;ch c&oacute; thể đi bộ để kh&aacute;m ph&aacute; hải đăng Mũi Điện. Bắt đầu từ Quốc lộ 29, du kh&aacute;ch rẽ v&agrave;o gửi xe tại qu&aacute;n ăn Ch&uacute; Mười v&agrave; bắt đầu h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute;.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\">Đi dọc theo đường l&ecirc;n hải đăng một đoạn, B&atilde;i M&ocirc;n r&igrave; r&agrave;o sẽ hiện ra với m&agrave;u nước xanh biếc v&agrave; những con s&oacute;ng trắng vỗ v&agrave;o bờ c&aacute;t.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\"><img alt=\"\" src=\"admin/public/uploads/files/phu-yen-112-3.jpg\" style=\"height:600px; width:800px\" /></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\">Hải đăng Mũi Điện mang phong c&aacute;ch ch&acirc;u &Acirc;u do người Ph&aacute;p x&acirc;y dựng năm 1890. Leo qua hết những bậc thang, du kh&aacute;ch sẽ đến điểm cao nhất của hải đăng v&agrave; thu v&agrave;o tầm mắt to&agrave;n bộ phong cảnh ở đ&acirc;y.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#222222\"><img alt=\"\" src=\"admin/public/uploads/files/phu-yen-112-2.jpg\" style=\"height:600px; width:800px\" /></span></span></span></span></span></span></p>\r\n', '2023-07-04'),
(6, 8, 'Cận cảnh mẫu ô tô bay đầu tiên được cấp chứng nhận tại Mỹ', 0x7075626c69632f75706c6f6164732f706f73742f696d672d6267742d323032312d6f2d746f2d6261792d313638383131383431392e6a7067, '<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"background-color:white\"><span style=\"color:#505050\">Mỹ vừa c&oacute; một mẫu phương tiện 4 b&aacute;nh đầu ti&ecirc;n được cấp chứng nhận đủ điều kiện bay, k&eacute;o tương lai của &ocirc; t&ocirc; bay đến gần hơn.</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Cuối th&aacute;ng 6 vừa qua, Cục&nbsp;<a href=\"https://www.baogiaothong.vn/hang-khong/\" style=\"box-sizing:border-box; color:blue; text-decoration:underline\" title=\"hàng không\"><span style=\"color:#cc0300\">H&agrave;ng kh&ocirc;ng</span></a>&nbsp;Li&ecirc;n bang Mỹ (FAA) đ&atilde; cấp chứng nhận đủ điều kiện bay đặc biệt cho d&ograve;ng xe Model A của c&ocirc;ng ty Alef Aeronautics, đ&aacute;nh dấu mẫu &ocirc; t&ocirc; bay đầu ti&ecirc;n được cấp loại chứng nhận n&agrave;y trong lịch sử Mỹ.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">C&ocirc;ng ty Alef Aeronautics được th&agrave;nh lập v&agrave;o năm 2015, bắt đầu thử nghiệm một mẫu &ocirc; t&ocirc; với k&iacute;ch cỡ th&ocirc;ng thường từ năm 2019.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Nhờ nguồn t&agrave;i trợ từ &ocirc;ng Tim Draper - nh&agrave; đầu tư của nhiều doanh nghiệp như Tesla, Google v&agrave; Draper Associates, c&ocirc;ng ty Alef Aeronautics đ&atilde; tiến h&agrave;nh thử nghiệm v&agrave; sản xuất th&agrave;nh c&ocirc;ng mẫu &ocirc; t&ocirc; bay với sức chứa 2 người.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\"><img alt=\"\" src=\"http://localhost:3000/admin/public/uploads/files/img-bgt-2021-o-to-bay-1688118419.jpg\" style=\"height:393px; width:700px\" /></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Nhờ nguồn t&agrave;i trợ từ &ocirc;ng Tim Draper - nh&agrave; đầu tư của nhiều doanh nghiệp như Tesla, Google v&agrave; Draper Associates, c&ocirc;ng ty Alef Aeronautics đ&atilde; tiến h&agrave;nh thử nghiệm v&agrave; sản xuất th&agrave;nh c&ocirc;ng mẫu &ocirc; t&ocirc; bay với sức chứa 2 người.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">Với khả năng cất/hạ c&aacute;nh kh&ocirc;ng cần đường băng, người d&ugrave;ng Model A c&oacute; khả năng chuyển từ chế độ đi tr&ecirc;n đường sang chế độ bay một c&aacute;ch linh hoạt. Phạm vi di chuyển trung b&igrave;nh của d&ograve;ng xe n&agrave;y l&agrave; 321 km tr&ecirc;n&nbsp;<a href=\"https://www.baogiaothong.vn/duong-bo/\" style=\"box-sizing:border-box; color:blue; text-decoration:underline\" title=\"đường bộ\"><span style=\"color:#cc0300\">đường bộ</span></a>&nbsp;v&agrave; 177 km tr&ecirc;n kh&ocirc;ng.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">&Ocirc;ng Jim Dukhovny, Gi&aacute;m đốc điều h&agrave;nh c&ocirc;ng ty Alef Aeronautics, b&agrave;y tỏ vui mừng khi mẫu xe của doanh nghiệp n&agrave;y đạt được chứng nhận của FAA. Theo &ocirc;ng, bước tiến n&agrave;y sẽ đưa con người tiến gần tới viễn cảnh đi lại nhanh hơn, th&acirc;n thiện m&ocirc;i trường, tiết kiệm nhiều giờ đi lại cho cả c&aacute; nh&acirc;n v&agrave; doanh nghiệp.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">C&ocirc;ng ty Alef đặt mục ti&ecirc;u sẽ sản xuất d&ograve;ng xe Model A v&agrave;o cuối năm 2025. Ngay sau khi c&ocirc;ng ty cho ph&eacute;p đặt trước, đ&atilde; c&oacute; rất nhiều người xếp h&agrave;ng, đặt mua chiếc xe với gi&aacute; $300.000 USD.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:#505050\">B&ecirc;n cạnh Model A, Alef Aeronautics đang ho&agrave;n thiện một mẫu xe kh&aacute;c l&agrave; Model Z, dự kiến &quot;tr&igrave;nh l&agrave;ng&quot; v&agrave;o năm 2035. Model Z l&agrave; phi&ecirc;n bản lớn hơn của Model A, c&oacute; sức chứa 4 người, phạm vi bay 321 km v&agrave; phạm vi di chuyển tr&ecirc;n đường bộ l&agrave; 643 km.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-07-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `list_product_id` int(11) NOT NULL,
  `code_product` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_img` blob NOT NULL,
  `detail_product` text NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `outstanding` enum('0','1') NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `list_product_id`, `code_product`, `product_name`, `product_price`, `product_img`, `detail_product`, `product_description`, `outstanding`, `create_at`) VALUES
(1, 14, '#PRODUCT_1', 'Iphone X 64GB - Black', 24000000, 0x7075626c69632f75706c6f6164732f70726f647563742f6970686f6e65205820363420474220626c61636b2e706e67, 'Màn hình: 5.8 inch, OLED Super Retina\r\n\r\nCPU: Appe A11 Bionic 6 Nhân.\r\n\r\nHệ điều hành: IOS 15.\r\n\r\nRam: 3 GB\r\n\r\nRom: 64GB ; 256GB\r\n\r\nCamera: trước 7 Mp / sau 12 Mp x 12 Mp\r\n\r\nPin: 2716 mAh có sạc nhanh.\r\n\r\nTrọng lượng: 174 g', '<p><u>1. V</u><u>ề thiết kế, m&agrave;n h&igrave;nh tai thỏ độc đ&aacute;o tr&ecirc;n&nbsp;iPhone X.</u></p>\r\n\r\n<p>iPhone X&nbsp;đ&aacute;nh dấu bước chuyển mới về thiết kế của&nbsp;Apple&nbsp;cả về chất liệu lẫn phong c&aacute;ch. M&aacute;y sử dụng gốm sứ Zirconia si&ecirc;u bền nhưng kh&ocirc;ng l&agrave;m tăng qu&aacute; nhiều về trọng lượng. Khung th&eacute;p kh&ocirc;ng gỉ cứng c&aacute;p bo cong ở 4 g&oacute;c kh&ocirc;ng chỉ ho&agrave;n thiện vẻ ngo&agrave;i của chi&ecirc;́c iPhone này&nbsp;m&agrave; c&ograve;n bảo vệ m&aacute;y khỏi va đập đ&aacute;ng tiếc.</p>\r\n\r\n<p><img alt=\"iPhone X 64GB Quốc Tế (Like New)\" src=\"https://didongviet.vn/pub/media/wysiwyg/iphone-x-man-hinh-780x520-didongviet.jpg\" title=\"screen-iphone-x-didongviet\" /></p>\r\n\r\n<p>iPhone X Quốc Tế cho khả năng hi&ecirc;̉n thị rõ nét</p>\r\n\r\n<p>Tr&ecirc;n&nbsp;iPhone X Quốc Tế&nbsp;hai mặt trước sau đều l&agrave; k&iacute;nh cường lực, c&oacute; khả năng chống xước tốt. M&aacute;y cũng l&agrave; thiết bị đầu ti&', '1', '2023-07-10 16:31:25'),
(2, 14, '#PRODUCT_2', 'Iphone X 64GB -Gold', 28890000, 0x7075626c69632f75706c6f6164732f70726f647563742f6970686f6e65205820363420474220476f6c642e6a7067, 'Màn hình: 5.8 inch, OLED Super Retina\n\nKích thước: 143.6 x 70.9 x 7.7mm\n\nCPU: Appe A12 Bionic 6 Nhân.\n\nHệ điều hành: IOS 15.\n\nRam: 4 GB\n\nRom: 64GB ; 256GB\n\nCamera: trước 7 Mp / sau 12 Mp x 12 Mp\n\nPin: 2658 mAh có sạc nhanh.\n\nTrọng lượng: 177 g\nSố Sim : 2 Sim (1 Nano sim + 1 eSim)', '<h3>Thiết kế kh&aacute;c biệt v&agrave; độc đ&aacute;o</h3>\r\n\r\n<p><a href=\"https://www.phucanh.vn/apple-iphone-xs-max-64gb-gold---6.5inch-64gb-1-sim-chinh-hang.html\">i<u>Phone XS Max 64GB</u></a>&nbsp;sở hữu thiết kế sang trọng, thời thượng, viền m&agrave;n h&igrave;nh si&ecirc;u mỏng, đưa nội dung tr&agrave;n ra s&aacute;t c&aacute;c m&eacute;p cạnh, kết hợp c&ugrave;ng mặt k&iacute;nh cường lực b&oacute;ng bẩy ph&iacute;a sau tạo n&ecirc;n một vẻ đẹp đầy quyến rũ.</p>\r\n\r\n<h3><br />\r\nM&agrave;n h&igrave;nh Hiển thị si&ecirc;u sắc n&eacute;t v&agrave; trung thực với t&iacute;nh năng mới</h3>\r\n\r\n<p><strong><a href=\"https://www.phucanh.vn/dien-thoai-thong-minh.html\">Điện thoại</a>&nbsp;iPhone XS Max 64GB</strong>&nbsp;được trang bị m&agrave;n h&igrave;nh 6.5 inch, độ ph&acirc;n giải 1242x2688 pixels v&agrave; sử dụng tấm nền AMOLED mới thay v&igrave; IPS tr&ecirc;n những model cũ. Đồng thời, với c&ocirc;ng nghệ hiển thị HDR10, Dolby Vision tần số qu&eacute;t được tăng l&ecirc;n 120 Hz ng', '0', '2023-06-29 04:04:10'),
(5, 18, '#PRODUCT_5', 'Iphone 11 256GB-White', 9990000, 0x7075626c69632f75706c6f6164732f70726f647563742f6970686f6e65203131203235362047422077686974652e6a7067, 'Hệ điều hành:	iOS 13\nMàn hình:	LCD, Retina HD lỏng, IPS\nMàn hình rộng:	6.1 inch\nĐộ phân giải:	1792 x 828\nRam:	4 GB\nBộ nhớ trong:	256 GB\nCPU:	Chip A13 Bionic\nCamera Sau:	2 camera (góc rộng 12MP + góc siêu rộng 12 MP)\nCamera trước:	12 MP\nThẻ sim:	SIM kép\nThẻ nhớ ngoài:	Không hỗ trợ\nDung lượng pin:	3110 mAh, hơn 1 giờ so với XR, sạc không dây, sạc nhanh 18W\nMàu sắc:	Đen, Xanh, Vàng, Tím, Đỏ, Trắng', '<h2><strong>Ưu điểm nổi trội của iPhone 11 so với smartphone kh&aacute;c</strong></h2>\r\n\r\n<p>Thời gian gần đ&acirc;y, thị trường smartphone đang c&oacute; những bước chuyển m&igrave;nh mạnh mẽ với sự ra đời của h&agrave;ng loạt những sản phẩm với c&aacute;c c&ocirc;ng nghệ hiện đại bậc nhất như: bộ vi xử l&yacute; Snapdragon 8 Gen 2, tấm nền m&agrave;n h&igrave;nh QLED&hellip; Đ&oacute; c&oacute; thể l&agrave; những bước tiến lớn nhưng n&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; dấu chấm hết cho những thiết bị đ&atilde; được ra mắt trước đ&oacute; như iPhone 11.</p>\r\n\r\n<p><img alt=\"Một số ưu điểm nổi trội của iPhone 11\" src=\"https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/Phone/Apple/iPhone-11/iphone-11-3_1.jpg\" /></p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng c&ograve;n giữ được sức n&oacute;ng v&agrave; độ hot như những ng&agrave;y đầu mới được ra mắt nhưng ở thời điểm hiện tại, bạn kh&oacute; c&oacute; thể t&igrave;m được một sản phẩm n&agrave;o sở hữu hiệu năng ổn định với mức g', '1', '2023-06-30 03:22:36'),
(7, 17, '#PRODUCT_7', 'Laptop Gaming Acer Aspire 7 A715 42G R05G', 14990000, 0x7075626c69632f75706c6f6164732f70726f647563742f6c6170746f702067616d696e67204163657220417370697265203720413731352034324720523035472e6a7067, 'CPU	AMD Ryzen 5 – 5500U (6 nhân 12 luồng)\r\nRAM	8GB DDR4 (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng	512GB PCIe® NVMe™ M.2 SSD\r\nCard đồ họa	NVIDIA GeForce GTX 1650 4GB GDDR6\r\n', '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Acer Aspire 7 A715 42G R05G</strong></h2>\r\n\r\n<h3><strong>Laptop gaming tốt nhất ph&acirc;n kh&uacute;c</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/laptop-acer-aspire-7\">Acer Aspire 7</a>&nbsp;2020 A715 42G&nbsp;t&iacute;ch hợp card đồ họa NVIDIA GTX1650 4GB GDDR6, l&agrave; laptop chơi game tốt nhất ph&acirc;n kh&uacute;c. Kh&ocirc;ng chỉ vậy, phi&ecirc;n bản n&agrave;y c&ograve;n mang thiết kế mới gọn g&agrave;ng v&agrave; sexy hơn.</p>\r\n\r\n<p><img alt=\"GEARVN - Laptop Gaming Acer Aspire 7 A715 42G R05G\" src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-acer-aspire-7-a715-42g-r05g-__1__73e5646bd6844f1ca95559726af411d0_1024x1024.jpg\" /></p>\r\n\r\n<p>Aspire 7 2020&nbsp;được trang bị hệ thống tản nhiệt mạnh mẽ bậc nhất trong ph&acirc;n kh&uacute;c, thừa hưởng c&ocirc;ng nghệ từ c&aacute;c d&ograve;ng m&aacute;y cao cấp hơn của Acer, c&ugrave;ng cấu h&igrave;nh đỉnh cao, gi&uacute;p cho người d&ugrave;n', '1', '2023-07-10 16:35:39'),
(9, 20, '#PRODUCT_8', 'Laptop gaming Gigabyte G5 MF E2VN333SH', 23290000, 0x7075626c69632f75706c6f6164732f70726f647563742f4c6170746f702067616d696e67204769676162797465204735204d46204532564e33333353482e6a7067, 'CPU	Intel® Core™ i5-12500H (2.5GHz~4.5GHz), 12 Cores, 16 Threads (4P + 8E), 18 MB Intel® Smart Cache \nRAM	8GB (1x8GB) DDR4-3200Mhz (2 khe ram, nâng cấp tối đa 64GB RAM)\nỔ cứng	512GB SSD M.2 PCIE G4X4 (2 khe M.2, Còn trống 1 khe SSD M.2 PCIE G3x4)\nCard đồ họa	NVidia Geforce RTX 4050 4GB GDDR6 + Intel Iris Xe Graphics \nMàn hình	15.6 inch FHD (1920x1080), 144Hz, IPS-level, Thin Bezel, 45% NTSC\nCổng giao tiếp	\n1x USB 2.0 (Type-A)\n1x USB3.2 Gen1 (Type-A)\n2x USB3.2 Gen2 (Type-C)\n1x Mini DisplayPort 1.4\n1x HDMI I™ Output port (with HDCP)\n1 x 2-in-1 Audio ', '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop gaming Gigabyte G5 MF E2VN333SH</strong></h2>\n\n<p><a href=\"https://gearvn.com/collections/laptop-gaming-gigabyte\" target=\"_blank\">GIGABYTE</a>, thương hiệu đi l&ecirc;n với những sản phẩm&nbsp;', '0', '2023-06-29 04:04:10'),
(10, 21, '#PRODUCT_9', 'Laptop Gaming MSI Katana GF66 11UE 836VN', 25490000, 0x7075626c69632f75706c6f6164732f70726f647563742f4c6170746f702047616d696e67204d5349204b6174616e612047463636203131554520383336564e2e6a7067, 'CPU	Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB\nRam	16GB (8x2) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\nỔ cứng	512GB NVMe PCIe Gen3x4 SSD (2 slot)\nVGA	NVIDIA GeForce RTX 3060 6GB GDDR6, Up to 1485MHz Boost Clock, 85W Maximum Graphics Power.\nMàn hình	15.6 inch FHD (1920x1080), 144Hz, IPS-Level, 45% NTSC, 65% sRGB\n\nCổng giao tiếp	\n1x Type-C USB 3.2 Gen1\n2x Type-A USB 3.2 Gen1\n1x Type-A USB 2.0\n1x RJ45\n1x (4K @ 60Hz) HDMI\n1x Mic-in/Headphone-out Combo Jack\nBàn phím	Có phím số, hỗ trợ Single Led (Red)\nChuẩn LAN	Gigabit Ethernet\nChuẩn WIFI	Intel Wi-Fi 6 AX201(2*2 ax) \nBluetooth	v5.2\nWebcam	HD type (30fps@720p)\nHệ điều hành	Windows 11 Home\nPin	3 cell, 53.5Whr\nTrọng lượng	2.1 kg\nMàu sắc	Đen\nKích thước	359 x 259 x 24.9 mm', '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết sản phẩm laptop gaming MSI Katana GF66 11UE 836VN</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/pages/laptop-gaming\" target=\"_blank\">Laptop gaming</a>&nbsp;MSI Katana GF66 11UE 836VN đ&aacute;p ứng mọi nhu cầu chơi game của người d&ugrave;ng. Được sản xuất bởi h&atilde;ng MSI với phần chau chuốt kỹ lưỡng về thiết kế cũng như đầu tư từ những linh kiện h&agrave;ng đầu hứa hẹn một sản phẩm tuyệt vời cho c&aacute;c t&iacute;n đồ đam m&ecirc; game tham chiến c&ugrave;ng bạn b&egrave;.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN - Laptop Gaming MSI Katana GF66 11UE 836VN\" src=\"https://file.hstatic.net/1000026716/file/gearvn-laptop-gaming-msi-katana-gf66-11ue-836vn-1_e3e20eb2552f45de9d8a6cbfb1df17fa.png\" /></p>\r\n\r\n<h3><strong>Thiết kế mạnh mẽ đậm chất gaming&nbsp;</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/laptop-msi-gaming\" target=\"_blank\">Laptop MSI</a>&nbsp;Katana GF66 11UE 836VN sở hữu từng đường n&eacute;t vu&ocirc;ng vắn mạnh mẽ được b', '1', '2023-06-30 03:22:36'),
(11, 8, '#PRODUCT_10', 'PC GVN VIPER i3070Ti', 24990000, 0x7075626c69632f75706c6f6164732f70726f647563742f50432047564e20564950455220693330373054692e6a7067, 'Mainboard	GIGABYTE B560M AORUS PRO (rev. 1.0)	36 Tháng\nCPU	Intel Core i5 11400F / 12MB / 4.4GHZ / 6 nhân 12 luồng / LGA 1200	36 Tháng\nRAM	PNY XLR8 Silver 1x8GB 3600 RGB	36 Tháng\nVGA - Card đồ họa	ASUS TUF Gaming GeForce RTX 3070 Ti V2 8GB GDDR6X	36 Tháng\nHDD	Có thể tùy chọn Nâng cấp	24 Tháng\nSSD	WD Blue SN570 500G M.2 NVMe PCIe Gen3	60 Tháng\nPSU	ASUS TUF Gaming 750B 80 Plus Bronze	72 Tháng\nCase 	Cougar Archon 2 Mesh Black RGB	12 Tháng\nTản nhiệt	DEEPCOOL AG400 ARGB	12 Tháng', '<h2><u><strong>Đ&aacute;nh gi&aacute; chi tiết :</strong></u></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bo mạch chủ&nbsp;GIGABYTE B560M AORUS PRO (rev. 1.0)</strong></h3>\r\n\r\n<p>GIGABYTE B560M AORUS PRO (rev. 1.0)&nbsp;l&agrave; một trong những d&ograve;ng&nbsp;mainboard&nbsp;được&nbsp;chắt lọc c&aacute;c yếu tố thiết yếu của nền tảng Intel&nbsp;mới nhất v&agrave; kết hợp ch&uacute;ng để tạo th&agrave;nh một sản phẩm ho&agrave;n hảo trong ph&acirc;n kh&uacute;c tầm trung.&nbsp;</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000026716/product/01_29e4c47dbdd04f3591bee8c46f890a56_grande.png\" /></p>\r\n\r\n<p>Được thiết kế với c&aacute;c th&agrave;nh phần tốt nhất, chiếc bo mạch chủ cung cấp đầy đủ những kết nối cơ bản gi&uacute;p cuộc sống của bạn dễ d&agrave;ng hơn.&nbsp;Việc được bọc th&eacute;p sẽ l&agrave;m giảm thiểu hiện tượng gẫy hay vặn xoắn khe PCI-E khi bạn chọn lắp những VGA lớn. Qua đ&oacute; gi&uacute;p tăng độ bền của sản phẩm v&agrave; khả năng sang nhượng trong tương lai l&agrave;', '0', '2023-06-29 04:04:10'),
(12, 8, '#PRODUCT_11', 'PC GVN MINION i1650', 9990000, 0x7075626c69632f75706c6f6164732f70726f647563742f50432047564e204d494e494f4e2069313635302e6a7067, 'Mainboard	GIGABYTE H510M H (rev. 1.0)	36 Tháng\nCPU	Intel Core i3 10105F / 6MB / 4.4GHZ / 4 nhân 8 luồng / LGA 1200	36 Tháng\nRAM	Ram PNY XLR8 Silver 1x8GB 3200 RGB	36 Tháng\nVGA	ASUS TUF Gaming GeForce GTX 1650 4GB GDDR6	36 Tháng\nHDD	Có thể tùy chọn Nâng cấp	24 Tháng\nSSD	PNY CS900 240G 2.5\" Sata 3	36 Tháng\nPSU	Nguồn Deepcool PF450D - 80 Plus	36 Tháng\nCase 	Case Xigmatek PHANTOM 3F (3 fan RGB)	12 Tháng', '<h2><strong>Chi tiết về GVN&nbsp;Minion i1650</strong></h2>\r\n\r\n<h3><strong>Mainboard GIGABYTE H510M H (rev. 1.0)</strong></h3>\r\n\r\n<p>Mainboard&nbsp;<strong>GIGABYTE H510M H (rev. 1.0)</strong>&nbsp;sẽ l&agrave; cầu nối tất cả linh kiện trong chiếc GVN MINION i1650. L&agrave; chiếc bo mạch chủ gi&aacute; rẻ sở hữu&nbsp;<strong>socket LGA 1200</strong>&nbsp;cho khả năng tương th&iacute;ch tốt với nhiều bộ vi xử l&yacute; hiện nay như I<strong>ntel Gen 10</strong>&nbsp;v&agrave; tận dụng tối đa sức mạnh cho hiệu năng xử l&yacute; tốt nhất.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000026716/product/1000_e235bf5b12d048b9b75815a56970994a_grande.png\" /></p>\r\n\r\n<h3><strong>CPU Intel Core i3 10105F</strong></h3>\r\n\r\n<p>Đ&oacute;ng vai tr&ograve; l&agrave; bộ n&atilde;o cho GVN MINION i1650, CPU&nbsp;<strong>Intel Core i3 10105F</strong>&nbsp;l&agrave; lựa chọn xứng đ&aacute;ng nhất của&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\">PC Gaming</a>. Với mức gi&aacute; phải chăng, i3-10105F ', '0', '2023-06-29 04:04:10'),
(13, 8, '#PRODUCT_12', 'PC GVN VIPER i1660S', 13590000, 0x7075626c69632f75706c6f6164732f70726f647563742f50432047564e205649504552206931363630532e6a7067, 'Mainboard	GIGABYTE B560M AORUS PRO (rev. 1.0)	36 Tháng\nCPU	Intel Core i5 11400F / 12MB / 4.4GHZ / 6 nhân 12 luồng / LGA 1200	36 Tháng\nRAM	Ram PNY XLR8 Silver 1x8GB 3200 RGB	36 Tháng\nVGA - Card đồ họa	Gigabyte GeForce GTX 1660 SUPER OC 6GB GDDR6	36 Tháng\nHDD	Có thể tùy chọn Nâng cấp	24 Tháng\nSSD	SSD Kingston NV2 250GB M.2 PCIe NVMe Gen4	60 Tháng\nPSU	FSP HV PRO 550W - 80 Plus Bronze	36 Tháng\nCase 	Xigmatek PHANTOM 3F (3 fan RGB)	12 Tháng\n', '<h2><u><strong>Đ&aacute;nh gi&aacute; chi tiết :</strong></u></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bo mạch chủ&nbsp;GIGABYTE B560M AORUS PRO (rev. 1.0)</strong></h3>\r\n\r\n<p>GIGABYTE B560M AORUS PRO (rev. 1.0)&nbsp;l&agrave; một trong những d&ograve;ng&nbsp;mainboard&nbsp;được&nbsp;chắt lọc c&aacute;c yếu tố thiết yếu của nền tảng Intel&nbsp;mới nhất v&agrave; kết hợp ch&uacute;ng để tạo th&agrave;nh một sản phẩm ho&agrave;n hảo trong ph&acirc;n kh&uacute;c tầm trung.&nbsp;</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000026716/product/01_29e4c47dbdd04f3591bee8c46f890a56_grande.png\" /></p>\r\n\r\n<p>Được thiết kế với c&aacute;c th&agrave;nh phần tốt nhất, chiếc bo mạch chủ cung cấp đầy đủ những kết nối cơ bản gi&uacute;p cuộc sống của bạn dễ d&agrave;ng hơn.&nbsp;Việc được bọc th&eacute;p sẽ l&agrave;m giảm thiểu hiện tượng gẫy hay vặn xoắn khe PCI-E khi bạn chọn lắp những VGA lớn. Qua đ&oacute; gi&uacute;p tăng độ bền của sản phẩm v&agrave; khả năng sang nhượng trong tương lai l&agrave;', '0', '2023-06-29 04:04:10'),
(14, 8, '#PRODUCT_13', 'PC GVN VIPER i3060', 22990000, 0x7075626c69632f75706c6f6164732f70726f647563742f50432047564e2056495045522069333036302e6a7067, 'Mainboard	ASUS TUF GAMING B660M-PLUS WIFI DDR4	36 Tháng\nCPU	Intel Core i5 12400F / 2.5GHz Turbo 4.4GHz / 6 Nhân 12 Luồng / 18MB / LGA 1700	36 Tháng\nRAM	PNY XLR8 Silver 1x8GB 3600 RGB	36 Tháng\nVGA 	ASUS Dual GeForce RTX 3060 White 8G GDDR6	36 Tháng\nHDD	Có thể tùy chọn Nâng cấp	24 Tháng\nSSD	WD Blue SN570 250G M.2 NVMe PCIe Gen3	60 Tháng\nPSU	FSP Hydro K PRO 750W 80 Plus Bronze	36 Tháng\nCase	Cougar DUOFACE RGB White	12 Tháng\nTẢN NHIỆT	ARCTIC Freezer 34 eSports DUO White	72 Tháng', '<h2><strong>Chi tiết về GVN VIPER i3060</strong></h2>\r\n\r\n<h3><strong>CPU Intel Core i5-12400F</strong></h3>\r\n\r\n<p>CPU&nbsp;<strong>Intel Core i5-12400F</strong>, nh&acirc;n tố khuất đảo thị trường&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\">PC Gaming</a>&nbsp;khi sở hữu mức gi&aacute; rẻ c&ugrave;ng hiệu năng xuất sắc. Với 6 nh&acirc;n 12 luồng, xung nhịp 2.5GHz v&agrave; turbo boost l&ecirc;n 4.4 GHz, quả l&agrave; sự lựa chọn tuyệt vời từ khả năng chơi game cho tới stream game của thế hệ vi xử l&yacute; Intel Gen 12, ch&iacute;nh l&agrave; sự n&acirc;ng cấp vượt bậc so với người tiền nhiệm i5-11400F.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000026716/product/box_t4_i5f_12th_m35582_ang01_right_v01_1280x1280_0d8d3bea75e8441f855b246eba0b7b8a_grande.png\" /></p>\r\n\r\n<h3><strong>Mainboard&nbsp;ASUS TUF GAMING B660M-PLUS WIFI DDR4</strong></h3>\r\n\r\n<p><strong>ASUS TUF GAMING B660M-PLUS WIFI DDR4</strong>&nbsp;l&agrave; một trong những d&ograve;ng mainboard được chắt lọc c&aacute;c ', '0', '2023-06-29 04:04:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Chỉ mục cho bảng `tbl_list_post`
--
ALTER TABLE `tbl_list_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_list_product`
--
ALTER TABLE `tbl_list_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_list_post` (`list_post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `tbl_product` (`list_product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_list_post`
--
ALTER TABLE `tbl_list_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_list_product`
--
ALTER TABLE `tbl_list_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_list_post` FOREIGN KEY (`list_post_id`) REFERENCES `tbl_list_post` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product` FOREIGN KEY (`list_product_id`) REFERENCES `tbl_list_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
