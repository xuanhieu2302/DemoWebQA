-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2023 lúc 12:50 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id_size` int(11) NOT NULL,
  `ten_size` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id_size`, `ten_size`, `thutu`) VALUES
(1, 'S', 1),
(2, 'L', 2),
(5, 'XL', 3),
(6, 'XXL', 4),
(7, 'OS', 5),
(12, 'XXL', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_soluong`
--

CREATE TABLE `size_soluong` (
  `id_size_soluong` int(11) NOT NULL,
  `id_sanpham` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `soluongsize` int(11) DEFAULT NULL,
  `soluongdaban` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size_soluong`
--

INSERT INTO `size_soluong` (`id_size_soluong`, `id_sanpham`, `id_size`, `soluongsize`, `soluongdaban`) VALUES
(325, 54, 1, 5, 5),
(326, 54, 2, 5, 0),
(327, 54, 5, 55, 0),
(328, 54, 6, 4, 0),
(329, 53, 7, 9, 4),
(330, 51, 1, 9, 1),
(331, 51, 2, 11, 0),
(332, 51, 5, 15, 0),
(333, 51, 6, 15, 0),
(334, 50, 1, 15, 15),
(335, 50, 2, 13, 1),
(336, 50, 5, 12, 0),
(337, 50, 6, 11, 0),
(338, 49, 7, 15, 0),
(339, 48, 7, 16, 11),
(340, 44, 5, 12, 0),
(341, 44, 6, 13, 1),
(342, 41, 7, 29, 5),
(343, 40, 1, 19, 5),
(344, 40, 2, 18, 1),
(345, 42, 1, 2, 2),
(346, 42, 2, 1, 1),
(372, 130, 1, 9, 0),
(373, 130, 2, 9, 3),
(374, 130, 5, 9, 0),
(375, 130, 6, 9, 0),
(376, 130, 12, 10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_anhtrangbia`
--

CREATE TABLE `tbl_anhtrangbia` (
  `id_anhtrangbia` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_anhtrangbia`
--

INSERT INTO `tbl_anhtrangbia` (`id_anhtrangbia`, `hinhanh`, `thutu`, `tinhtrang`) VALUES
(6, '1698685130_slideshow_3.webp', 1, 1),
(7, '1698685482_vn-11134210-7qukw-li1cosu5tchx8a.jpg', 2, 1),
(10, '1698685498_vn-11134210-7qukw-li1cosu64l1h95.jpg', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baibao`
--

CREATE TABLE `tbl_baibao` (
  `id_baibao` int(11) NOT NULL,
  `tenbaibao` longtext NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `thoigian` varchar(100) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `thutu` int(11) NOT NULL,
  `tacgia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baibao`
--

INSERT INTO `tbl_baibao` (`id_baibao`, `tenbaibao`, `hinhanh`, `thoigian`, `tomtat`, `noidung`, `tinhtrang`, `thutu`, `tacgia`) VALUES
(2, 'Hades - Một Trong Những \"Phát Súng Đầu Tiên\" của Vietnamese Streetwear', '1638710492_blog2_a408af0a74e345288398890b15519188_large.jpg', 'Thứ Ba 16,03,2021', '<p>Ra đời từ những năm cuối thế kỷ 20, streetwear l&agrave; phong c&aacute;ch thời trang phổ biến của cộng đồng đam m&ecirc; bộ m&ocirc;n skateboard.D&ugrave; mới &ldquo;b&eacute;n duy&ecirc;n&rdquo; với giới...</p>\r\n', '<h2>Ra đời từ những năm cuối thế kỷ 20, streetwear l&agrave; phong c&aacute;ch thời trang phổ biến của cộng đồng đam m&ecirc; bộ m&ocirc;n skateboard.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; D&ugrave; mới &ldquo;b&eacute;n duy&ecirc;n&rdquo; với giới trẻ Việt 5 năm trở lại đ&acirc;y nhưng h&agrave;ng loạt thương hiệu thời trang nội địa đi theo phong c&aacute;ch n&agrave;y đ&atilde; xuất hiện. Trong số đ&oacute; phải kể đến Hades - c&aacute;i t&ecirc;n được nhắc &ldquo;li&ecirc;n tục&rdquo; bởi người chơi hệ Streetwear từ Bắc v&agrave;o Nam.</p>\r\n\r\n<p><strong>HADES g&oacute;p phần thay đổi phong c&aacute;ch ăn mặc giới trẻ bằng xu thế thời trang mới.</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Thế hệ trẻ hiện nay được coi l&agrave; &ldquo;thế hệ kh&ocirc;ng bi&ecirc;n giới&rdquo; với sự tự tin ngập tr&agrave;n, năng lượng sống t&iacute;ch cực c&ugrave;ng khả năng s&aacute;ng tạo v&ocirc; bờ bến. Sự ph&aacute;t triển của c&ocirc;ng nghệ, của mạng x&atilde; hội gi&uacute;p họ c&oacute; nhiều &ldquo;đất&rdquo; hơn để thể hiện c&aacute; t&iacute;nh v&agrave; c&aacute;i t&ocirc;i ri&ecirc;ng của bản th&acirc;n. Một trong những c&aacute;ch thể hiện bản th&acirc;n đơn giản nhất ch&iacute;nh l&agrave; sử dụng ng&ocirc;n ngữ thời trang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://file.hstatic.net/1000306633/file/f2719383-2f05-4a6c-8ce3-ed9bc366045a_cd8a490f9da6444db3aed1f40facab89_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; L&agrave; một trong những &ldquo;ph&aacute;t s&uacute;ng&rdquo; đầu ti&ecirc;n khơi m&agrave;o tr&agrave;o lưu thời trang streetwear tại Việt Nam, Hades ch&iacute;nh thức mở cửa v&agrave;o năm 2016. Trải qua gần nửa thập kỷ hoạt động, thương hiệu n&agrave;y đ&atilde; trở th&agrave;nh c&aacute;i t&ecirc;n &ldquo;sừng sỏ&rdquo; tr&ecirc;n bản đồ thời trang đường phố tại Việt Nam với hệ thống gồm 1 Flagship Store tại trung t&acirc;m S&agrave;i G&ograve;n c&ugrave;ng 7 chi nh&aacute;nh tại c&aacute;c th&agrave;nh phố lớn: Cần Thơ, Đồng Nai, H&agrave; Nội.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Mang tinh thần tự do, thoải m&aacute;i của thế hệ trẻ hiện đại, hầu hết c&aacute;c sản phẩm của Hades đều hướng tới kiểu d&aacute;ng rộng r&atilde;i, thiết kế đơn giản kh&ocirc;ng k&eacute;n người mặc. B&eacute;o hay gầy, cao hay thấp, 3 v&ograve;ng c&oacute; như 1 hay kh&ocirc;ng giờ đ&acirc;y cũng chẳng quan trọng. Bởi, đ&atilde; đến với Hades, chắc chắn bạn chẳng thể ra &ldquo;v&aacute;c người kh&ocirc;ng&rdquo; ra về.&nbsp;</p>\r\n\r\n<p><strong>S&aacute;ng tạo kh&ocirc;ng ngừng nghỉ l&agrave; c&aacute;ch HADES &ldquo;m&ecirc; hoặc&rdquo; giới trẻ.</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Mặc d&ugrave; đ&atilde; đồng h&agrave;nh c&ugrave;ng giới trẻ Việt được 6 năm nhưng chưa bao giờ Hades đ&aacute;nh mất đi độ hot của m&igrave;nh. Ch&igrave;a kho&aacute; gi&uacute;p Hades len lỏi v&agrave;o mọi ng&oacute;c ng&aacute;ch của ng&agrave;nh thời trang streetwear ch&iacute;nh l&agrave; &ldquo;sự s&aacute;ng tạo&rdquo; li&ecirc;n tục trong mẫu m&atilde; sản phẩm.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Kh&ocirc;ng qu&aacute; khi n&oacute;i rằng đội ngũ thiết kế của Hades l&agrave; những con người c&oacute; khả năng &ldquo;đẻ kh&ocirc;ng biết mệt&rdquo; khi li&ecirc;n tục cho ra mắt h&agrave;ng loạt những bộ sưu tập chất lượng với nhiều concept kh&aacute;c nhau. Điểm chung của tất cả c&aacute;c bộ sưu tập ch&iacute;nh l&agrave; sự thoải m&aacute;i, t&iacute;nh ứng dụng cao v&agrave; sự nổi bật trong c&aacute;ch kết hợp m&agrave;u sắc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://file.hstatic.net/1000306633/file/ea734997-19b2-4275-83a3-a886c7422a5a_d72085f5188d4dfc9f07526ccc48b222_grande.png\" style=\"height:600px; width:481px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Kh&ocirc;ng chỉ giới hạn ở những gam m&agrave;u đen trắng cơ bản, Hades khẳng định n&eacute;t độc lạ của m&igrave;nh bằng việc sử dụng c&aacute;c hiệu ứng m&agrave;u ấn tượng: phản quang, galaxy, tie-dye,... Mỗi hoạ tiết được đưa v&agrave;o sản phẩm đều được l&ecirc;n &yacute; tưởng kỹ lưỡng sao cho mới mẻ, hợp mốt nhưng kh&ocirc;ng được mất đi &ldquo;bản sắc&rdquo; đặc trưng của thương hiệu: mạnh mẽ, c&aacute; t&iacute;nh v&agrave; ch&uacute;t g&igrave; đ&oacute; bụi bặm.&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&ldquo;Kh&ocirc;ng chỉ l&agrave; một thương hiệu thời trang hiện đại d&agrave;nh cho giới trẻ, Hades c&ograve;n đại diện cho một xu hướng thẩm mỹ cũng như một lối sống ri&ecirc;ng. Th&ocirc;ng qua việc ho&agrave;n thiện vẻ bề ngo&agrave;i, ch&uacute;ng t&ocirc;i muốn c&aacute;c bạn trẻ cảm thấy y&ecirc;u bản th&acirc;n hơn, tự tin hơn, thoả sức s&aacute;ng tạo trong thế giới ri&ecirc;ng của m&igrave;nh.&rdquo;</p>\r\n\r\n<p>Với c&aacute;c sản phẩm c&oacute; thiết kế độc đ&aacute;o, chất lượng cao c&ugrave;ng gi&aacute; th&agrave;nh hợp l&yacute;, chắc chắn c&aacute;i t&ecirc;n Hades sẽ c&ograve;n lớn mạnh hơn, khẳng định được chỗ đứng của m&igrave;nh trong l&ograve;ng giới trẻ đam m&ecirc; Streetwear tại Việt Nam cũng như c&aacute;c quốc gia trong khu vực.</p>\r\n\r\n<p><strong>HADES STUDIO</strong></p>\r\n\r\n<ul>\r\n	<li>Website: https://hades.vn</li>\r\n	<li>Facebook: https://www.facebook.com/HADES-1489313121348883&nbsp;</li>\r\n	<li>Instagram: https://www.instagram.com/hades.studio/&nbsp;</li>\r\n	<li>Số điện thoại: 0903945112</li>\r\n	<li>Email: contact@hades.vn</li>\r\n	<li>Hades Flagship Store: 121 Nguyễn Tr&atilde;i Q.1, TP HCM</li>\r\n</ul>\r\n\r\n<p><em>Tags:&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/hades\">Hades</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/streetwear\">Streetwear</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/thoi-trang\">Thoi Trang</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/thoi-trang-duong-pho\">Thoi Trang Duong Pho</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/gioi-tre\">Gioi Tre</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/skateboard\">Skateboard</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/phong-cach\">phong cach</a></em></p>\r\n', 1, 1, ''),
(6, 'Hades Streetwear Đồng Hành Cùng \"Highshool Best Dance Crew\"', '1638711641_blog1_34f17ec315f84ac5986dd663c509666a_large.jpg', 'Thứ Ba 16,03,2021', '<p>Tiếp tục thực hiện sứ mệnh &quot;lan toả phong c&aacute;ch sống t&iacute;ch cực tới thế hệ trẻ&quot;, Hades ch&iacute;nh thức nhận lời mời đồng h&agrave;nh c&ugrave;ng High School Best Dance...</p>\r\n', '<h2>Tiếp tục thực hiện sứ mệnh &quot;lan toả phong c&aacute;ch sống t&iacute;ch cực tới thế hệ trẻ&quot;, Hades ch&iacute;nh thức nhận lời mời đồng h&agrave;nh c&ugrave;ng High School Best Dance Crew 2021 với vai tr&ograve; nh&agrave; t&agrave;i trợ Bạc.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"https://file.hstatic.net/1000306633/file/c3bed801-68df-4176-93fd-2c1f078787b2_ece0b8cdd0e444b89ed2bc8408b63725_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;High School Best Dance Crew (HBDC) l&agrave; giải đấu nhảy đối kh&aacute;ng Battle Team thường ni&ecirc;n d&agrave;nh ri&ecirc;ng cho c&aacute;c bạn học sinh THPT khu vực ph&iacute;a Bắc. Khai mạc lần đầu ti&ecirc;n c&aacute;ch đ&acirc;y 3 năm, HBDC đ&atilde; đem tới cho c&aacute;c bạn trẻ đam m&ecirc; bộ m&ocirc;n nghệ thuật đường phố một s&acirc;n chơi mới đầy mới mẻ sự s&aacute;ng tạo. Trải qua 2 năm, nhiều giải đấu lớn nhỏ của HBDC được tổ chức đ&atilde; tạo n&ecirc;n sức lan tỏa mạnh mẽ trong cộng đồng với những th&ocirc;ng điệp x&atilde; hội &yacute; nghĩa, nh&acirc;n văn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://file.hstatic.net/1000306633/file/3314af7e-b74f-40f8-a93a-db003578fe24_86f6b790253543049d1f12cdf8d95cb4_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Chủ đề được Ban tổ chức HBDC năm nay lựa chọn ch&iacute;nh l&agrave; IKONIC với hai ti&ecirc;u ch&iacute; h&agrave;ng đầu l&agrave; c&aacute; t&iacute;nh v&agrave; kh&aacute;c biệt. HBDC 2021 đem tới c&aacute;c bạn trẻ những g&oacute;c nh&igrave;n đa chiều về văn h&oacute;a hiphop ở c&aacute;c trường THPT. Th&ocirc;ng qua c&aacute;ch chọn nhạc, c&aacute;ch phối trang phục v&agrave; lối kể chuyện, mỗi trường sẽ khẳng định được chất ri&ecirc;ng của m&igrave;nh.</p>\r\n\r\n<p>Link chương tr&igrave;nh: https://www.facebook.com/HighschoolBestDanceCrew.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;G&oacute;p phần v&agrave;o sự th&agrave;nh c&ocirc;ng của mỗi m&ugrave;a giải HBDC chắc chắn kh&ocirc;ng thể kh&ocirc;ng kể đến sự g&oacute;p mặt của c&aacute;c đơn vị đồng h&agrave;nh. Ban tổ chức cho biết, nh&agrave; t&agrave;i trợ Bạc cho HBDC 2021 ch&iacute;nh l&agrave; Hades - Một c&aacute;i t&ecirc;n &quot;nổi như cồn&quot; trong l&agrave;ng streetwear Việt.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://file.hstatic.net/1000306633/file/f52bb064-9c67-4b75-b5b1-fd534c67f924_982c389b1c044e0480082da2895408b8_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Hades l&agrave; một trong những thương hiệu thời trang streetwear local brand đầu ti&ecirc;n tại Việt Nam. Ra mắt v&agrave;o năm 2016, thương hiệu n&agrave;y đ&atilde; trở th&agrave;nh c&aacute;i t&ecirc;n được c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch thời trang đường phố li&ecirc;n tục &quot;xu&yacute;t xoa&quot; bởi những thiết kế kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được. Đến với Hades, bạn c&oacute; thể dễ d&agrave;ng lựa chọn c&aacute;c m&oacute;n đồ từ &aacute;o thun, &aacute;o hoodie, mũ, ba l&ocirc;, quần shorts... để tạo n&ecirc;n một outfit cực hợp mốt cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://file.hstatic.net/1000306633/file/9cccd70a-b188-4a73-a7b9-163a34b3d8d9_034ba16a31494e489a60138678f04c92_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; Điểm chung của tất cả c&aacute;c bộ sưu tập tại Hades ch&iacute;nh l&agrave; sự thoải m&aacute;i, t&iacute;nh ứng dụng cao v&agrave; sự nổi bật trong thiết kế v&agrave; phối hợp m&agrave;u sắc. L&agrave;m sao để bắt kịp xu hướng thời trang thế giới, l&agrave;m sao để chiều theo &yacute; muốn của kh&aacute;ch h&agrave;ng m&agrave; vẫn kh&ocirc;ng đ&aacute;nh mất đi c&aacute;i bản sắc ri&ecirc;ng của thương hiệu thực sự l&agrave; một &quot;ca kh&oacute;&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://file.hstatic.net/1000306633/file/1baabb2a-695e-4054-9acd-407d0a43bce0_912d4eb861d14e8e8673e04354c35fd9_grande.jpeg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hơn cả một thương hiệu thời trang, Hades lu&ocirc;n t&iacute;ch cực đồng h&agrave;nh c&ugrave;ng giới trẻ Việt trong c&aacute;c hoạt động cộng đồng, gi&uacute;p truyền tải lối sống t&iacute;ch cực, tự tin, thỏa sức s&aacute;ng tạo tới thế hệ trẻ. Với vai tr&ograve; l&agrave; Nh&agrave; t&agrave;i trợ Bạc năm nay tại HBDC 2021, Hades hứa hẹn sẽ đem lại cho c&aacute;c đội thi những bộ outfit &quot;đỉnh của đỉnh&quot; c&ugrave;ng những giải thưởng v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n\r\n<p><strong>Hades Studio</strong></p>\r\n\r\n<ul>\r\n	<li>Website:&nbsp;<a href=\"https://hades.vn/\" target=\"_blank\">https://hades.vn</a>.</li>\r\n	<li>Facebook:&nbsp;<a href=\"https://www.facebook.com/hadesvietnam\" target=\"_blank\">https://www.facebook.com/hadesvietnam</a>.</li>\r\n	<li>Instagram: Hades.studio.</li>\r\n	<li>Số điện thoại:&nbsp;<a href=\"tel:0903945112\">0903945112</a>.</li>\r\n	<li>Email: contact@hades.vn.</li>\r\n	<li>Hades Flagship Store: 121 Nguyễn Tr&atilde;i Q.1, TP.HCM.</li>\r\n</ul>\r\n\r\n<p><em>Tags:&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/hades\">Hades</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/streetwear\">Streetwear</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/high-shool-best-dance-crew\">High Shool Best Dance Crew</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/thoi-trang-duong-pho\">Thoi Trang Duong Pho</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/thoi-trang\">Thoi Trang</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/gioi-tre\">Gioi Tre</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/dance-contest\">Dance Contest</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/vi-cong-dong\">Vi Cong Dong</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/tai-tro\">Tai Tro</a>&nbsp;<a href=\"https://hades.vn/blogs/all/tagged/battle-dance\">Battle Dance</a></em></p>\r\n', 1, 2, ''),
(10, 'Gợi ý phối đồ thời trang công sở mùa thu hot nhất 2023', '1698691780_vn-11134210-7qukw-li1cosu5tchx8a.jpg', '01/11/2023', '<h2>Tiếp tục thực hiện sứ mệnh &quot;lan toả phong c&aacute;ch sống t&iacute;ch cực tới thế hệ trẻ&quot;</h2>\r\n', '<p>&nbsp;Hades l&agrave; một trong những thương hiệu thời trang streetwear local brand đầu ti&ecirc;n tại Việt Nam. Ra mắt v&agrave;o năm 2016, thương hiệu n&agrave;y đ&atilde; trở th&agrave;nh c&aacute;i t&ecirc;n được c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch thời trang đường phố li&ecirc;n tục &quot;xu&yacute;t xoa&quot; bởi những thiết kế kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được. Đến với Hades, bạn c&oacute; thể dễ d&agrave;ng lựa chọn c&aacute;c m&oacute;n đồ từ &aacute;o thun, &aacute;o hoodie, mũ, ba l&ocirc;, quần shorts... để tạo n&ecirc;n một outfit cực hợp mốt cho ri&ecirc;ng m&igrave;nh.</p>\r\n', 1, 3, 'hades');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `ngaymua` datetime DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`, `ngaymua`, `size`) VALUES
(102, '7645', 51, 1, '2023-10-31 10:25:38', '1'),
(103, '3811', 41, 2, '2023-10-31 11:13:35', '7'),
(104, '3098', 41, 1, '2023-10-31 11:16:12', '7'),
(105, '3364', 53, 1, '2023-10-31 12:23:33', '7'),
(106, '3974', 40, 1, '2023-10-31 12:34:54', '1'),
(107, '3974', 130, 3, '2023-10-31 12:34:54', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chinhanh`
--

CREATE TABLE `tbl_chinhanh` (
  `id_chinhanh` int(11) NOT NULL,
  `chinhanh` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_chinhanh`
--

INSERT INTO `tbl_chinhanh` (`id_chinhanh`, `chinhanh`, `thutu`) VALUES
(2, 'Hades FLAGSHIP STORE: 69 QUANG TRUNG, GÒ VẤP', 1),
(3, 'Store 2: 26 LÝ TỰ TRỌNG Q.1 ( THE NEW PLAYROUND)', 2),
(4, 'Store 3: 350 ĐIỆN BIÊN PHỦ F17 Q. BÌNH THẠNH (G-TOWN)', 3),
(5, 'Store 4: 4 PHẠM NGŨ LÃO, Q.1', 4),
(6, 'Store 5: 136 NGUYỄN HỒNG ĐÀO, Q.TÂN BÌNH', 5),
(7, 'Store 6: 235 PHAN TRUNG, TP.BIÊN HÒA', 6),
(8, 'Store 7: 15 NGUYỄN VIỆT HỒNG, Q.NINH KIỀU, TP. CẦN THƠ', 7),
(9, 'Store 8: Tầng 7 - tòa B2 - VINCOM BÀ TRIỆU, HÀ NỘI', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chinhsach`
--

CREATE TABLE `tbl_chinhsach` (
  `id_chinhsach` int(11) NOT NULL,
  `tenchinhsach` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_tenchinhsach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_chinhsach`
--

INSERT INTO `tbl_chinhsach` (`id_chinhsach`, `tenchinhsach`, `noidung`, `tinhtrang`, `id_tenchinhsach`) VALUES
(5, 'Chính sách sử dụng website', '<p>Với mong muốn ng&agrave;y c&agrave;ng ho&agrave;n thiện tổ chức bộ m&aacute;y chuy&ecirc;n nghiệp đểphục vụ kh&aacute;ch h&agrave;ng ng&agrave;y một tốt hơn ch&uacute;ng t&ocirc;i đưa ra những ch&iacute;nh s&aacute;ch điều khoản nhất định tại HADES nhằm đảm bảo lợi &iacute;ch v&agrave; quyền lợi của kh&aacute;ch h&agrave;ng khi tham gia website của ch&uacute;ng t&ocirc;i<br />\r\nĐiều khoản sử dụng:</p>\r\n\r\n<p><strong>GIỚI THIỆU</strong><br />\r\nCh&agrave;o mừng qu&yacute; kh&aacute;ch đến với HADES.<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; C&Ocirc;NG TY TNHH HADES &ndash; hades.vn<br />\r\n<em>Địa chỉ: 45 Phan Chu Trinh, Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh, Việt Nam<br />\r\nĐiện thoại: 0903945112<br />\r\nEmail: contact@hades.vn<br />\r\nhades.vn</em><br />\r\nKhi bạn truy cập v&agrave;o trang web của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Trang web c&oacute; quyền thay đổi, chỉnh sửa, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Quy định v&agrave; Điều kiện sử dụng, v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n trang web m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng trang web, sau khi c&aacute;c thay đổi về Quy định v&agrave; Điều kiện được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute;.<br />\r\nQu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra thường xuy&ecirc;n để cập nhật những thay đổi của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng web</strong><br />\r\nKhi v&agrave;o web của ch&uacute;ng t&ocirc;i, người d&ugrave;ng tối thiểu phải 18 tuổi hoặc truy cập dưới sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p.<br />\r\nCh&uacute;ng t&ocirc;i cấp quyền sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n web trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của trang web n&agrave;y với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được ch&uacute;ng t&ocirc;i cho ph&eacute;p bằng văn bản. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy quyền của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.</p>\r\n\r\n<ul>\r\n	<li>Trang web n&agrave;y chỉ d&ugrave;ng để cung cấp th&ocirc;ng tin h&agrave;ng ho&aacute;, sản phẩm chứ ch&uacute;ng t&ocirc;i kh&ocirc;ng phải nh&agrave; sản xuất n&ecirc;n những nhận x&eacute;t hiển thị tr&ecirc;n web l&agrave; &yacute; kiến c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng, kh&ocirc;ng phải của ch&uacute;ng t&ocirc;i.</li>\r\n	<li>Qu&yacute; kh&aacute;ch phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin x&aacute;c thực về bản th&acirc;n v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o. Mỗi người truy cập phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. Hơn nữa, bạn phải th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp, đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định</li>\r\n</ul>\r\n\r\n<p>Trong suốt qu&aacute; tr&igrave;nh đăng k&yacute;, bạn đồng &yacute; nhận email quảng c&aacute;o từ website. Sau đ&oacute;, nếu kh&ocirc;ng muốn tiếp tục nhận mail, bạn c&oacute; thể từ chối bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&Yacute; kiến kh&aacute;ch h&agrave;ng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tất cả nội dung trang web v&agrave; &yacute; kiến ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. Nếu ch&uacute;ng t&ocirc;i ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ kh&oacute;a t&agrave;i khoản của qu&yacute; kh&aacute;ch ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của bạn v&igrave; bất kỳ l&yacute; do g&igrave; v&agrave;o bất kỳ l&uacute;c n&agrave;o. Ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ trước khi nhận đơn h&agrave;ng.<br />\r\nCh&uacute;ng t&ocirc;i cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho kh&aacute;ch h&agrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n trang web hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho bạn. Ch&uacute;ng t&ocirc;i cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; bị thanh to&aacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Thương hiệu v&agrave; bản quyền</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mọi quyền sở hữu tr&iacute; tuệ (đ&atilde; đăng k&yacute; hoặc chưa đăng k&yacute;), nội dung th&ocirc;ng tin v&agrave; tất cả c&aacute;c thiết kế, văn bản, đồ họa, phần mềm, h&igrave;nh ảnh, video, &acirc;m nhạc, &acirc;m thanh, bi&ecirc;n dịch phần mềm, m&atilde; nguồn v&agrave; phần mềm cơ bản đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. To&agrave;n bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam v&agrave; c&aacute;c c&ocirc;ng ước quốc tế. Bản quyền đ&atilde; được bảo lưu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Quyền ph&aacute;p l&iacute;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của trang web n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam v&agrave; T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Giải quyết tranh chấp</strong></p>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết theo quy định của Ph&aacute;p luật hiện h&agrave;nh của nước Cộng H&ograve;a X&atilde; Hội Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Quy định chấm dứt thỏa thuận</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong trường hợp c&oacute; bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh do việc vi phạm Quy Định sử dụng trang web, ch&uacute;ng t&ocirc;i c&oacute; quyền đ&igrave;nh chỉ hoặc kh&oacute;a t&agrave;i khoản của bạn vĩnh viễn. Nếu bạn kh&ocirc;ng h&agrave;i l&ograve;ng với trang web hoặc bất kỳ điều khoản, điều kiện, quy tắc, ch&iacute;nh s&aacute;ch, hướng dẫn, hoặc c&aacute;ch thức vận h&agrave;nh của hades.vn th&igrave; biện ph&aacute;p khắc phục duy nhất l&agrave; ngưng l&agrave;m việc với ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Luật ph&aacute;p v&agrave; thẩm quyền tại Việt Nam</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản v&agrave; Điều Kiện n&agrave;y v&agrave; Hợp Đồng (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch gửi khiếu nại l&ecirc;n T&ograve;a &aacute;n Việt Nam để giải quyết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Điều h&agrave;nh</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>hades.vn được điều h&agrave;nh bởi C&Ocirc;NG TY TNHH HADES<br />\r\nĐịa chỉ: 45 Phan Chu Trinh, Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh, Việt Nam<br />\r\nĐiện thoại: 0903945112<br />\r\nEmail: contact@hades.vn<br />\r\nhades.vn</em></p>\r\n\r\n<p>C&ocirc;ng ty TNHH HADES</p>\r\n', 1, 1),
(6, 'Thông tin về phương thức thanh toán', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp;Với ti&ecirc;u ch&iacute; kh&ocirc;ng ngừng nỗ lực để trải nghiệm mua h&agrave;ng của Qu&yacute; kh&aacute;ch diễn ra thuận tiện hơn, Hades hiện hỗ trợ&nbsp;2 h&igrave;nh thức thanh to&aacute;n&nbsp;tại tất cả c&aacute;c hệ thống cửa h&agrave;ng v&agrave; website online&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a>&nbsp;sau:</p>\r\n\r\n<p>1.&nbsp;Mua trực tiếp tại cửa h&agrave;ng:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+&nbsp;Thanh to&aacute;n bằng tiền mặt</p>\r\n\r\n<p>2.&nbsp;Mua h&agrave;ng&nbsp;tr&ecirc;n mạng:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+&nbsp;Thanh to&aacute;n bằng tiền mặt qua ship COD</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Qu&yacute;&nbsp;Kh&aacute;ch h&agrave;ng vui l&ograve;ng kiểm tra h&agrave;ng h&oacute;a v&agrave; c&aacute;c thanh to&aacute;n m&agrave;&nbsp;Hades&nbsp;đ&atilde; x&aacute;c nhận tại Đơn h&agrave;ng trước khi thanh to&aacute;n.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp;Số tiền&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng phải thanh to&aacute;n cho&nbsp;Hades&nbsp;ch&iacute;nh l&agrave; Số tiền cần thanh to&aacute;n đ&atilde; trừ m&atilde; giảm gi&aacute;&nbsp;(nếu c&oacute;)&nbsp;v&agrave; cộng ph&iacute; vận chuyển&nbsp;(nếu c&oacute;), thể hiện tr&ecirc;n website ở bước &ldquo;Thanh to&aacute;n&rdquo;.</p>\r\n', 1, 4),
(7, 'Chính sách đổi trả', '<p>Nhằm gi&uacute;p qu&yacute; kh&aacute;ch&nbsp;an&nbsp;t&acirc;m chọn lựa cho m&igrave;nh một sản phẩm ưng &yacute;&nbsp;nhất&nbsp;v&agrave; phục vụ kh&aacute;ch h&agrave;ng chu đ&aacute;o,&nbsp;Hades&nbsp;th&ocirc;ng b&aacute;o chương tr&igrave;nh đổi trả cho c&aacute;c sản phẩm v&agrave; đơn h&agrave;ng như sau:</p>\r\n\r\n<p>1. Thời gian đổi trả<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;Trong v&ograve;ng 03 ng&agrave;y được t&iacute;nh kể từ ng&agrave;y mua h&agrave;ng (tại cửa h&agrave;ng) hoặc ng&agrave;y nhận h&agrave;ng (khi mua online).</p>\r\n\r\n<p>2. Điều kiện đổi trả</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Kh&aacute;ch h&agrave;ng chỉ c&oacute; thể đổi sản phẩm khi đ&aacute;p ứng đủ 03 điều kiện sau:</p>\r\n\r\n<ul>\r\n	<li>- Thời gian mua h&agrave;ng kh&ocirc;ng qu&aacute; 03 ng&agrave;y.</li>\r\n	<li>- Phải c&oacute; h&oacute;a đơn mua h&agrave;ng.</li>\r\n	<li>- Sản phẩm phải c&ograve;n nguy&ecirc;n vẹn, nguy&ecirc;n&nbsp;nh&atilde;n m&aacute;c, m&atilde;&nbsp;vạch&nbsp;, chưa qua sử dụng, giặt ủi, kh&ocirc;ng c&oacute; m&ugrave;i lạ&nbsp;v&agrave; chưa sửa chữa.</li>\r\n	<li>- Sản phẩm kh&ocirc;ng nằm trong c&aacute;c chương tr&igrave;nh ưu đ&atilde;i, giảm gi&aacute;.</li>\r\n</ul>\r\n\r\n<p>3.&nbsp;Quy tr&igrave;nh&nbsp;đổi trả</p>\r\n\r\n<p>C&ugrave;ng m&atilde; sản phẩm: Chỉ đổi size, kh&ocirc;ng đổi m&agrave;u</p>\r\n\r\n<p>(Tham khảo) [Dưới đ&acirc;y l&agrave; phần tham khảo về quy tr&igrave;nh đổi trả:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; + Đổi tại cửa h&agrave;ng:</p>\r\n\r\n<p>Bước 1: Gửi mail về địa chỉ&nbsp;<a href=\"mailto:support@hades.vn\">support@hades.vn</a>&nbsp;để được hỗ trợ</p>\r\n\r\n<p>Bước 2: Đ&oacute;ng g&oacute;i sản phẩm cẩn thận c&oacute; k&egrave;m h&oacute;a đơn mua h&agrave;ng, m&atilde; vận chuyển (nếu mua online)</p>\r\n\r\n<p>Bước 3: Đến trực tiếp cửa h&agrave;ng Hades để nh&acirc;n vi&ecirc;n hỗ trợ đổi sản phẩm.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; + Đổi h&agrave;ng qua chuyển ph&aacute;t nhanh:</p>\r\n\r\n<p>Bước 1: Gửi mail về địa chỉ&nbsp;<a href=\"mailto:support@hades.vn\">support@hades.vn</a>&nbsp;để được hỗ trợ</p>\r\n\r\n<p>Bước 2: Đ&oacute;ng g&oacute;i sản phẩm cẩn thận c&oacute; k&egrave;m h&oacute;a đơn mua h&agrave;ng, m&atilde; vận đơn (nếu mua Online)</p>\r\n\r\n<p>Bước 3: Gửi h&agrave;ng về địa chỉ:&nbsp;45 Phan Chu Trinh, Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; chờ bộ phận CSKH x&aacute;c nhận khi nhận h&agrave;ng.</p>\r\n\r\n<p>Bước 4: Nhận lại sản phẩm đổi h&agrave;ng&nbsp;theo&nbsp;đường chuyển ph&aacute;t nhanh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lưu &yacute;:</p>\r\n\r\n<ul>\r\n	<li>- Hades chỉ hỗ trợ tối đa một sản phẩm được đổi một lần, kh&ocirc;ng hỗ trợ đổi h&agrave;ng đối với sản phẩm đ&atilde; đổi một lần trước đ&oacute;</li>\r\n	<li>-&nbsp;Hades chỉ hỗ trợ đổi&nbsp;Sản phẩm&nbsp;trong&nbsp;c&ugrave;ng&nbsp;một m&atilde;&nbsp;sản phẩm,</li>\r\n</ul>\r\n\r\n<p>Trường hợp tr&ecirc;n Hades&nbsp;chỉ đổi size, kh&ocirc;ng đổi m&agrave;u:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong trường hợp c&oacute; bất cứ thắc mắc hoặc khiếu nại g&igrave;, vui l&ograve;ng gửi mail về địa chỉ&nbsp;<a href=\"mailto:support@hades.vn\">support@hades.vn</a>&nbsp;để được hỗ trợ kịp thời.</p>\r\n', 1, 5),
(8, 'CHÍNH SÁCH GIAO NHẬN – VẬN CHUYỂN', '<p>Hades.vn thực hiện giao h&agrave;ng tới tất cả c&aacute;c tỉnh th&agrave;nh tr&ecirc;n to&agrave;n quốc cho kh&aacute;ch h&agrave;ng đ&atilde; đặt h&agrave;ng online tại&nbsp;Hades.vn.<br />\r\n&nbsp;</p>\r\n\r\n<p>1. Thời gian vận chuyển</p>\r\n\r\n<p>Đơn h&agrave;ng của qu&yacute; kh&aacute;ch sẽ được Hades chuẩn bị v&agrave; giao h&agrave;ng trong v&ograve;ng từ 2 - 5 ng&agrave;y l&agrave;m việc, t&ugrave;y thuộc v&agrave;o khoảng c&aacute;ch địa l&yacute; hoặc y&ecirc;u cầu của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; - Đơn h&agrave;ng c&oacute; thể được gửi tới địa chỉ do qu&yacute; kh&aacute;ch chọn (nh&agrave; ri&ecirc;ng, cơ quan).<br />\r\n&nbsp;</p>\r\n\r\n<p>2.&nbsp;Ph&iacute; vận chuyển:</p>\r\n\r\n<p>Ph&iacute; vận chuyển của đơn h&agrave;ng được t&iacute;nh&nbsp;theo&nbsp;địa điểm nhận h&agrave;ng của qu&yacute; kh&aacute;ch&nbsp;h&agrave;ng, thường dao động trong khoảng 30.000 - 40.000&nbsp;đồng&nbsp;t&ugrave;y&nbsp;theo&nbsp;khu vực.&nbsp;</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n mọi chi ph&iacute; li&ecirc;n quan tới tiền vận chuyển&nbsp;theo&nbsp;c&aacute;ch thức sau:</p>\r\n\r\n<ul>\r\n	<li>+ Thanh to&aacute;n trực ti&ecirc;p ph&iacute; vận chuyển cho nh&acirc;n vi&ecirc;n vận chuyển h&agrave;ng h&oacute;a.</li>\r\n	<li>+ Thanh to&aacute;n chuyển khoản/ thanh to&aacute;n trực tuyến cho Hades bao gồm tiền h&agrave;ng v&agrave; tiền vận chuyển.</li>\r\n</ul>\r\n\r\n<p>Qu&yacute; kh&aacute;ch&nbsp;h&agrave;ng&nbsp;c&oacute; thể kiểm tra trực tiếp ph&iacute; vận chuyển khi tiến h&agrave;nh đặt h&agrave;ng tại Hades.vn<br />\r\n&nbsp;</p>\r\n\r\n<p>3. Tra cứu th&ocirc;ng tin &amp; Li&ecirc;n hệ</p>\r\n\r\n<p>Để kiểm tra th&ocirc;ng tin, trạng th&aacute;i đơn h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng gửi mail tới địa chỉ&nbsp;<a href=\"mailto:support@hades.vn\">support@hades.vn</a>&nbsp;hoặc nhắn tin với bộ phận hỗ trợ của Hades tr&ecirc;n Facebook &amp; Instagram.</p>\r\n', 1, 6),
(9, 'ĐIỀU KHOẢN DỊCH VỤ', '<p><strong>C&Ocirc;NG TY TNHH&nbsp;HADES</strong></p>\r\n\r\n<p><em>MST: 0316393653</em></p>\r\n\r\n<p><em>Địa chỉ trụ sở: 45 Phan Chu Trinh, Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh</em></p>\r\n\r\n<p><em>K&iacute;nh ch&agrave;o Qu&yacute; kh&aacute;ch h&agrave;ng,</em></p>\r\n\r\n<p>Website&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a>&nbsp;v&agrave; thương hiệu Hades thuộc quyền sở hữu v&agrave; quản l&yacute; của C&ocirc;ng ty TNHH HADES. Khi Qu&yacute; kh&aacute;ch h&agrave;ng truy cập v&agrave;o website&nbsp;www.hades.com&nbsp;tức l&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đồng &yacute; với c&aacute;c điều khoản được n&ecirc;u b&ecirc;n dưới. Ch&uacute;ng t&ocirc;i c&oacute; quyền thay đổi, chỉnh sửa, th&ecirc;m bớt bất kỳ nội dung n&agrave;o trong Điều khoản dịch vụ n&agrave;y, v&agrave;o bất cứ thời điểm n&agrave;o m&agrave; kh&ocirc;ng cần c&oacute; th&ocirc;ng b&aacute;o trước; v&agrave; c&aacute;c thay đổi n&agrave;y c&oacute; hiệu lực ngay khi được đăng l&ecirc;n trang web. Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng đọc Điều khoản dịch vụ trước khi mua h&agrave;ng.</p>\r\n\r\n<p><strong>HƯỚNG DẪN SỬ DỤNG WEBSITE</strong></p>\r\n\r\n<p>Khi v&agrave;o website của ch&uacute;ng t&ocirc;i, Qu&yacute; kh&aacute;ch h&agrave;ng phải đảm bảo đủ 18 tuổi, hoặc truy cập dưới sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Qu&yacute; kh&aacute;ch đảm bảo c&oacute; đầy đủ h&agrave;nh&nbsp;vi&nbsp;d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<p>T&agrave;i khoản (Account) Qu&yacute; kh&aacute;ch h&agrave;ng đăng k&yacute; để thực hiện c&aacute;c giao dịch mua b&aacute;n tr&ecirc;n website&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a>&nbsp;được nằm&nbsp;trong khu&ocirc;n khổ Điều khoản dịch vụ n&agrave;y.</p>\r\n\r\n<p>Khi đăng k&yacute; t&agrave;i khoản, Qu&yacute; kh&aacute;ch h&agrave;ng phải cung cấp th&ocirc;ng tin ch&iacute;nh x&aacute;c về bản th&acirc;n v&agrave; phải cập nhật nếu c&oacute; thay đổi. Mỗi người truy cập phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp, đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do Qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng tu&acirc;n thủ quy định.</p>\r\n\r\n<p>Nghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của trang web n&agrave;y với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ b&ecirc;n thứ ba n&agrave;o nếu kh&ocirc;ng được sự đồng &yacute; bằng văn bản từ ch&uacute;ng t&ocirc;i. Nếu&nbsp;vi&nbsp;phạm bất cứ điều n&agrave;o n&ecirc;u tr&ecirc;n đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.</p>\r\n\r\n<p>Trong suốt qu&aacute; tr&igrave;nh đăng k&yacute;, Qu&yacute; kh&aacute;ch h&agrave;ng đồng &yacute; nhận email quảng c&aacute;o từ website. Nếu kh&ocirc;ng muốn tiếp tục nhận mail, Qu&yacute; kh&aacute;ch c&oacute; thể từ chối bằng c&aacute;ch thực hiện&nbsp;theohướng dẫn của ch&uacute;ng t&ocirc;i trong mỗi email.</p>\r\n\r\n<p><strong>X&Aacute;C NHẬN V&Agrave; TỪ CHỐI ĐƠN H&Agrave;NG</strong></p>\r\n\r\n<p>Khi Qu&yacute; kh&aacute;ch h&agrave;ng đặt h&agrave;ng tr&ecirc;n website, ch&uacute;ng t&ocirc;i sẽ nhận được y&ecirc;u cầu đặt h&agrave;ng v&agrave; li&ecirc;n hệ lại để x&aacute;c nhận đơn h&agrave;ng. Để y&ecirc;u cầu đặt h&agrave;ng được x&aacute;c nhận nhanh ch&oacute;ng, Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng cung cấp đ&uacute;ng v&agrave; đầy đủ c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến việc giao nhận, hoặc c&aacute;c điều khoản v&agrave; điều kiện của chương tr&igrave;nh khuyến m&atilde;i (nếu c&oacute;) m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng tham gia.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối nhận hoặc hủy đơn đặt h&agrave;ng của Qu&yacute; kh&aacute;ch h&agrave;ng v&igrave; bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, lỗi hệ thống, sự cung cấp sai th&ocirc;ng tin, kh&ocirc;ng li&ecirc;n hệ được người nhận hoặc những nguy&ecirc;n nh&acirc;n kh&aacute;ch quan v&agrave; bất khả kh&aacute;ng như thi&ecirc;n tai, dịch bệnh v.v.</p>\r\n\r\n<p><strong>HỦY ĐƠN H&Agrave;NG</strong></p>\r\n\r\n<p>Trường hợp Qu&yacute; kh&aacute;ch muốn hủy bỏ đơn h&agrave;ng đ&atilde; thực hiện tr&ecirc;n website&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a>&nbsp;, qua trang Facebook, Instagram của ch&uacute;ng t&ocirc;i để y&ecirc;u cầu hủy đơn h&agrave;ng.&nbsp;</p>\r\n\r\n<p><strong>THANH TO&Aacute;N ĐƠN H&Agrave;NG</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n đ&atilde; được n&ecirc;u trong Th&ocirc;ng b&aacute;o phương thức thanh to&aacute;n:</p>\r\n\r\n<p>Thanh to&aacute;n khi nhận h&agrave;ng (COD &ndash; giao h&agrave;ng v&agrave;&nbsp;thu&nbsp;tiền tận nơi). Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra điều kiện để thanh to&aacute;n COD trong Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng.</p>\r\n\r\n<p><strong>GIẢI QUYẾT LỖI NHẬP SAI TH&Ocirc;NG TIN</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a>.&nbsp;Trong trường hợp Qu&yacute; kh&aacute;ch nhập sai th&ocirc;ng tin, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch.</p>\r\n\r\n<p><strong>GIẢI QUYẾT TRANH CHẤP</strong></p>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết&nbsp;theo&nbsp;quy định của Ph&aacute;p luật hiện h&agrave;nh của nước Cộng H&ograve;a X&atilde; Hội Việt Nam.</p>\r\n\r\n<p><strong>QUY ĐỊNH CHẤM DỨT THỎA THUẬN</strong></p>\r\n\r\n<p>Trong trường hợp c&oacute; bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh do việc&nbsp;vi&nbsp;phạm Quy Định sử dụng trang web, ch&uacute;ng t&ocirc;i c&oacute; quyền đ&igrave;nh chỉ hoặc kh&oacute;a t&agrave;i khoản của bạn vĩnh viễn. Nếu bạn kh&ocirc;ng h&agrave;i l&ograve;ng với trang web hoặc bất kỳ điều khoản, điều kiện, quy tắc, ch&iacute;nh s&aacute;ch, hướng dẫn, hoặc c&aacute;ch thức vận h&agrave;nh của hades.vn &nbsp;th&igrave; biện ph&aacute;p khắc phục duy nhất l&agrave; ngưng l&agrave;m việc với ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><strong>QUYỀN SỞ HỮU TR&Iacute; TUỆ V&Agrave; NỘI DUNG&nbsp;</strong></p>\r\n\r\n<p>Mọi quyền sở hữu tr&iacute; tuệ (đ&atilde; đăng k&yacute; hoặc chưa đăng k&yacute;), tất cả nội dung th&ocirc;ng tin v&agrave; tất cả c&aacute;c thiết kế, văn bản, đồ họa, phần mềm, h&igrave;nh ảnh, video, &acirc;m nhạc, &acirc;m thanh, bi&ecirc;n dịch phần mềm, m&atilde; nguồn v&agrave; phần mềm cơ bản đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. To&agrave;n bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam v&agrave; c&aacute;c c&ocirc;ng ước quốc tế. Bản quyền đ&atilde; được bảo lưu.</p>\r\n\r\n<p><strong>QUYỀN PH&Aacute;P L&Yacute;</strong></p>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của trang web n&agrave;y được tu&acirc;n&nbsp;theo&nbsp;luật ph&aacute;p Việt Nam v&agrave; T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<p><strong>QUY ĐỊNH BẢO MẬT</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i coi trọng việc bảo mật th&ocirc;ng tin v&agrave; sử dụng c&aacute;c biện ph&aacute;p tốt nhất bảo vệ th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của Qu&yacute; kh&aacute;ch. Mọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trường hợp được cơ quan ph&aacute;p luật y&ecirc;u cầu cung cấp th&ocirc;ng tin.</p>\r\n\r\n<p><strong>ĐIỀU H&Agrave;NH:</strong></p>\r\n\r\n<p>hades.vn&nbsp;được điều h&agrave;nh bởi C&Ocirc;NG TY TNHH HADES</p>\r\n\r\n<p>Địa chỉ: 45 Phan Chu Trinh, Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh, Việt Nam</p>\r\n\r\n<p>Điện thoại: 0903945112</p>\r\n\r\n<p>Email: contact@hades.vn</p>\r\n\r\n<p>hades.vn</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&ocirc;ng ty TNHH HADES</strong></p>\r\n', 1, 7),
(10, 'HƯỚNG DẪN MUA HÀNG', '<p>HADES&nbsp;nhận giao h&agrave;ng&nbsp;h&agrave;ng to&agrave;n quốc.&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;c&oacute; thể mua h&agrave;ng trực tiếp tại shop hoặc đặt h&agrave;ng tr&ecirc;n Website ch&iacute;nh thức&nbsp;<a href=\"http://www.hades.vn/\">www.hades.vn</a>&nbsp;theo&nbsp;c&aacute;c bước sau:</p>\r\n\r\n<p><strong>BƯỚC 1:&nbsp;T&Igrave;M SẢN PHẨM MONG MUỐN</strong></p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;c&oacute; thể t&igrave;m kiếm bằng 2 h&igrave;nh thức sau:</p>\r\n\r\n<ul>\r\n	<li>-&nbsp;T&igrave;m kiếm&nbsp;theo&nbsp;t&ecirc;n/ m&atilde; sản phẩm: nhấp v&agrave;o biểu tượng k&iacute;nh l&uacute;p ở g&oacute;c phải, nhập từ kho&aacute; t&igrave;m kiếm v&agrave;o &ocirc; t&igrave;m kiếm v&agrave; g&otilde; ENTER hoặc&nbsp;Nhấp v&agrave;o&nbsp;v&agrave;o biểu tượng k&iacute;nh l&uacute;p.</li>\r\n	<li>-&nbsp;T&igrave;m kiếm&nbsp;theo&nbsp;nh&oacute;m sản phẩm: R&ecirc; chuột v&agrave;o c&aacute;c mục sản phẩm tr&ecirc;n menu ch&iacute;nh, c&aacute;c mục sản phẩm bao gồm:&nbsp;Tops,&nbsp;Bottoms,&nbsp;Outerwear,&nbsp;Hat,&nbsp;Bags&nbsp;xuất hiện.&nbsp;Nhấp v&agrave;o&nbsp;v&agrave;o từng mục sẽ hiện ra chi tiết nh&oacute;m sản phẩm&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;muốn t&igrave;m.</li>\r\n</ul>\r\n\r\n<p><strong>BƯỚC 2:&nbsp;TH&Ecirc;M SẢN PHẨM CẦN MUA V&Agrave;O GIỎ H&Agrave;NG</strong></p>\r\n\r\n<ul>\r\n	<li>-&nbsp;Sau khi đ&atilde; t&igrave;m được sản phẩm&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;mong muốn v&agrave; tham khảo đầy đủ h&igrave;nh ảnh, m&ocirc; tả k&egrave;m&nbsp;theo, h&atilde;y thực hiện thao t&aacute;c chọn size, số lượng cần mua rồi&nbsp;Nhấp v&agrave;o&nbsp;TH&Ecirc;M V&Agrave;O GIỎ để th&ecirc;m sản phầm v&agrave;o giỏ h&agrave;ng hoặc&nbsp;MUA NGAY.</li>\r\n	<li>-&nbsp;G&oacute;c&nbsp;phải&nbsp;m&agrave;n h&igrave;nh sẽ hiện danh s&aacute;ch sản phẩm đang c&oacute; trong giỏ h&agrave;ng v&agrave; tổng số tiền tạm t&iacute;nh.&nbsp;Nhấp v&agrave;o&nbsp;XEM GIỎ H&Agrave;NG nếu muốn kiểm tra đầy đủ giỏ h&agrave;ng,&nbsp;Nhấp v&agrave;oTHANH TO&Aacute;N nếu đ&atilde; chọn đủ m&oacute;n h&agrave;ng mong muốn hoặc&nbsp;nhấp&nbsp;&ldquo;Tiếp tục mua h&agrave;ng&rdquo; ở g&oacute;c phải m&agrave;n h&igrave;nh&nbsp;để tiếp tục mua h&agrave;ng.</li>\r\n	<li>-&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng c&oacute; thể nhấn v&agrave;o biểu tượng th&ugrave;ng r&aacute;c ở b&ecirc;n dưới &ldquo;Th&agrave;nh tiền&rdquo; để loại bỏ sản phẩm m&igrave;nh kh&ocirc;ng muốn mua ra khỏi giỏ h&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><strong>BƯỚC 3:&nbsp;KIỂM TRA GIỎ H&Agrave;NG V&Agrave; TIẾN H&Agrave;NH ĐẶT H&Agrave;NG</strong></p>\r\n\r\n<ul>\r\n	<li>-&nbsp;Kiểm tra lại th&ocirc;ng tin đầy đủ về sản phẩm muốn đặt mua.</li>\r\n	<li>-&nbsp;Điền m&atilde; giảm gi&aacute; (nếu c&oacute;) của Qu&yacute; Kh&aacute;ch h&agrave;ng v&agrave;o khung M&Atilde; GIẢM GI&Aacute; v&agrave; nhấp v&agrave;o SỬ DỤNG.</li>\r\n	<li>-&nbsp;Điền đầy đủ th&ocirc;ng tin giao h&agrave;ng của&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;bao gồm Họ v&agrave; t&ecirc;n, Email, Số điện thoại, Địa chỉ. Nếu đ&atilde; c&oacute; đăng k&yacute; t&agrave;i khoản từ trước h&atilde;y&nbsp;nhấp&nbsp;v&agrave;o ĐĂNG NHẬP.</li>\r\n	<li>-&nbsp;Kiểm tra lại tất cả th&ocirc;ng tin đ&atilde; nhập, sau khi đ&atilde; chắc chắn th&igrave;&nbsp;Nhấp v&agrave;o&nbsp;TIẾP TỤC ĐẾN PHƯƠNG THỨC THANH TO&Aacute;N để chuyển sang bước tiếp theo.</li>\r\n</ul>\r\n\r\n<p><strong>BƯỚC 4:&nbsp;CHỌN PHƯƠNG THỨC VẬN CHUYỂN</strong></p>\r\n\r\n<p>Sau khi&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;nhập đầy đủ th&ocirc;ng tin trong phần th&ocirc;ng tin giao h&agrave;ng, căn cứ v&agrave;o địa chỉ nhận h&agrave;ng v&agrave; tổng gi&aacute; trị đơn h&agrave;ng, Website sẽ&nbsp;tự động&nbsp;đưa ra c&aacute;c&nbsp;ph&iacute;&nbsp;vận chuyển&nbsp;cho&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Mức ph&iacute; vận chuyển&nbsp;t&ugrave;y&nbsp;theo&nbsp;từng khu vực&nbsp;giao động từ 30.000 (VNĐ) đến 40.000 (VNĐ)</p>\r\n\r\n<p><strong>BƯỚC 5:&nbsp;CHỌN PHƯƠNG THỨC THANH TO&Aacute;N</strong></p>\r\n\r\n<p>Sau khi&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;nhập đầy đủ th&ocirc;ng tin trong phần th&ocirc;ng tin giao h&agrave;ng, căn cứ v&agrave;o địa chỉ nhận h&agrave;ng v&agrave; tổng gi&aacute; trị đơn h&agrave;ng, Website sẽ&nbsp;tự động&nbsp;đưa ra&nbsp;phương thức thanh to&aacute;n&nbsp;cho&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Cụ thể l&agrave; thanh to&aacute;n khi nhận h&agrave;ng (COD):&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng tại thời điểm nhận h&agrave;ng.</p>\r\n\r\n<p><strong>BƯỚC 6:&nbsp;HO&Agrave;N TẤT ĐƠN H&Agrave;NG</strong></p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;nhấn&nbsp;v&agrave;o n&uacute;t HO&Agrave;N TẤT ĐƠN H&Agrave;NG sau khi đ&atilde; ho&agrave;n th&agrave;nh c&aacute;c bước tr&ecirc;n v&agrave; kiểm tra thật kỹ tất cả c&aacute;c th&ocirc;ng tin đơn h&agrave;ng, phương thức vận chuyển, phương thức thanh to&aacute;n.</p>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;c&oacute; thể theo d&otilde;i trạng th&aacute;i đơn h&agrave;ng của&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;tại mục KIỂM TRA ĐƠN H&Agrave;NG ở g&oacute;c dưới m&agrave;n h&igrave;nh Website hoặc&nbsp;Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng gửi mail tới địa chỉ&nbsp;<a href=\"mailto:support@hades.vn\">support@hades.vn</a>&nbsp;hoặc nhắn tin với bộ phận hỗ trợ của Hades tr&ecirc;n Facebook &amp; Instagram.</p>\r\n', 1, 8),
(11, 'CHÍNH SÁCH BẢO MẬT', '<p>(Xem chi tiết tại điều 68 đến Điều 73 Nghị Định 52/2013/NĐ-CP)</p>\r\n\r\n<p>HADES lu&ocirc;n t&ocirc;n trọng sự ri&ecirc;ng tư, muốn bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; th&ocirc;ng&nbsp;tin thanh to&aacute;n của kh&aacute;ch h&agrave;ng. &ldquo;Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin&rdquo; dưới đ&acirc;y như một lời tuy&ecirc;n bố về cam kết m&agrave; ch&uacute;ng t&ocirc;i thực hiện, nhằm t&ocirc;n trọng v&agrave; bảo vệ quyền lợi của người sử dụng</p>\r\n\r\n<p><strong>1. MỤC Đ&Iacute;CH V&Agrave; PHẠM VI THU THẬP TH&Ocirc;NG TIN</strong></p>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n&nbsp;thu&nbsp;thập được sẽ chỉ được sử dụng trong nội bộ c&ocirc;ng ty. Khi qu&yacute; kh&aacute;ch h&agrave;ng đăng k&yacute; đặt h&agrave;ng tại&nbsp;<a href=\"http://www.hades.vn/\">www.hades.vn</a>&nbsp;&nbsp;</p>\r\n\r\n<p>- Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i&nbsp;thu&nbsp;thập bao gồm:</p>\r\n\r\n<ul>\r\n	<li>&nbsp;* T&ecirc;n người li&ecirc;n hệ c&aacute; nh&acirc;n hoặc c&ocirc;ng ty:</li>\r\n	<li>&nbsp;* Số điện thoại:</li>\r\n	<li>&nbsp;* Email:&nbsp;</li>\r\n	<li>&nbsp;* Địa chỉ giao h&agrave;ng:</li>\r\n	<li>&nbsp;* Th&ocirc;ng tin c&ocirc;ng ty bao gồm t&ecirc;n giao dịch đầy đủ, địa chỉ:</li>\r\n	<li>&nbsp;* Địa chỉ giao dịch:</li>\r\n</ul>\r\n\r\n<p>- Những th&ocirc;ng tin tr&ecirc;n sẽ được sử dụng cho một hoặc tất cả c&aacute;c mục đ&iacute;ch sau:</p>\r\n\r\n<ul>\r\n	<li>+&nbsp;Giao h&agrave;ng qu&yacute; kh&aacute;ch đ&atilde; mua sản phẩm tại&nbsp;<a href=\"http://www.hades.vn/\">www.hades.vn</a>;&nbsp;</li>\r\n	<li>+&nbsp;Th&ocirc;ng b&aacute;o về việc giao h&agrave;ng v&agrave; hỗ trợ kh&aacute;ch h&agrave;ng;</li>\r\n	<li>+&nbsp;Cung cấp th&ocirc;ng tin li&ecirc;n quan đến sản phẩm;</li>\r\n	<li>+&nbsp;Xử l&yacute; đơn đặt h&agrave;ng v&agrave; cung cấp dịch vụ v&agrave; th&ocirc;ng tin qua trang web của ch&uacute;ng t&ocirc;i&nbsp;theoy&ecirc;u cầu của qu&yacute; kh&aacute;ch;</li>\r\n	<li>+&nbsp;Đổi trả h&agrave;ng h&oacute;a nếu ph&aacute;t hiện lỗi do nh&agrave; sản xuất g&acirc;y ra;</li>\r\n	<li>+&nbsp;Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i sẽ sử dụng th&ocirc;ng tin qu&yacute; kh&aacute;ch cung cấp để hỗ trợ quản l&yacute; t&agrave;i khoản kh&aacute;ch h&agrave;ng; x&aacute;c nhận v&agrave; thực hiện c&aacute;c giao dịch t&agrave;i ch&iacute;nh li&ecirc;n quan đến c&aacute;c khoản thanh to&aacute;n trực tuyến của kh&aacute;ch h&agrave;ng.</li>\r\n	<li>+&nbsp;Chi tiết đơn h&agrave;ng của qu&yacute; kh&aacute;ch sẽ được ch&uacute;ng t&ocirc;i lưu trữ nhưng v&igrave; l&yacute; do bảo mật, qu&yacute; kh&aacute;ch kh&ocirc;ng thể y&ecirc;u cầu th&ocirc;ng tin đ&oacute; từ ch&uacute;ng t&ocirc;i. Tuy nhi&ecirc;n, qu&yacute; kh&aacute;ch c&oacute; thể kiểm tra th&ocirc;ng tin đ&oacute; bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản ri&ecirc;ng của m&igrave;nh tr&ecirc;n trang web. Tại đ&oacute;, qu&yacute; kh&aacute;ch c&oacute; thể theo d&otilde;i đầy đủ chi tiết của c&aacute;c đơn h&agrave;ng đ&atilde; ho&agrave;n tất, những đơn h&agrave;ng mở v&agrave; những đơn h&agrave;ng sắp được giao cũng như quản l&yacute; th&ocirc;ng tin về địa chỉ.</li>\r\n</ul>\r\n\r\n<p><br />\r\n&nbsp;<strong>2. PHẠM VI SỬ DỤNG TH&Ocirc;NG TIN</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể chia sẻ t&ecirc;n, số điện thoại v&agrave; địa chỉ của qu&yacute; kh&aacute;ch cho dịch vụ chuyển ph&aacute;t nhanh để c&oacute; thể giao h&agrave;ng cho qu&yacute; kh&aacute;ch. Khi qu&yacute; kh&aacute;ch đăng k&yacute; l&agrave;m th&agrave;nh vi&ecirc;n tr&ecirc;n trang web&nbsp;<a href=\"http://www.hades.vn/\">www.hades.vn</a>&nbsp; ch&uacute;ng t&ocirc;i cũng sẽ sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch h&agrave;ng để gửi c&aacute;c&nbsp;th&ocirc;ng tin khuyến m&atilde;i/tiếp thị. Qu&yacute; kh&aacute;ch c&oacute; thể hủy nhận c&aacute;c th&ocirc;ng tin đ&oacute; bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch sử dụng chức năng hủy đăng k&yacute; trong c&aacute;c th&ocirc;ng b&aacute;o quảng c&aacute;o.</p>\r\n\r\n<p>Ngo&agrave;i việc xử l&yacute;, hỗ trợ việc mua h&agrave;ng của qu&yacute; kh&aacute;ch tại website&nbsp;<a href=\"http://www.hades.vn/\">www.hades.vn</a>, ch&uacute;ng t&ocirc;i sẽ sử dụng th&ocirc;ng tin qu&yacute; kh&aacute;ch cung cấp để hỗ trợ quản l&yacute; t&agrave;i khoản kh&aacute;ch h&agrave;ng; x&aacute;c nhận v&agrave; thực hiện c&aacute;c giao dịch t&agrave;i ch&iacute;nh li&ecirc;n quan đến c&aacute;c khoản thanh to&aacute;n trực tuyến của qu&yacute; kh&aacute;ch</p>\r\n\r\n<p><strong>&nbsp;3. THỜI GIAN LƯU TRỮ TH&Ocirc;NG TIN</strong></p>\r\n\r\n<p>HADES&nbsp;sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp v&agrave; c&aacute;c cuộc trao đổi giữa kh&aacute;ch h&agrave;ng v&agrave; Hades tr&ecirc;n c&aacute;c hệ thống nội bộ của ch&uacute;ng t&ocirc;i trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng hoặc cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch&nbsp;thu&nbsp;nhập. Trong trường hợp khi kh&aacute;ch h&agrave;ng muốn ngừng lưu trữ c&oacute; thể li&ecirc;n hệ với c&ocirc;ng ty để thực hiện ngừng lưu trữ. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. CHIA SẺ TH&Ocirc;NG TIN KH&Aacute;CH H&Agrave;NG:</strong></p>\r\n\r\n<p>HADES&nbsp;kh&ocirc;ng b&aacute;n, chia sẻ hay trao đổi th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng&nbsp;thu&nbsp;thập tr&ecirc;n trang web cho một b&ecirc;n thứ ba n&agrave;o kh&aacute;c c&oacute; li&ecirc;n quan trực tiếp đến việc giao h&agrave;ng. Ch&uacute;ng t&ocirc;i c&oacute; thể tiết lộ hoặc cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch h&agrave;ng trong c&aacute;c trường hợp thật sự cần thiết như sau:</p>\r\n\r\n<ul>\r\n	<li>- Khi c&oacute; y&ecirc;u cầu của cơ quan ph&aacute;p luật.</li>\r\n	<li>- Chia sẻ th&ocirc;ng tin với đối t&aacute;c của b&ecirc;n giao h&agrave;ng v&iacute; dụ: giao h&agrave;ng tiết kiệm,&hellip;</li>\r\n	<li>- Chia sẻ th&ocirc;ng tin với đối t&aacute;c chạy quảng c&aacute;o.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. LI&Ecirc;N KẾT VỚI WEBSITE KH&Aacute;C:</strong></p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm bảo vệ th&ocirc;ng tin t&agrave;i khoản của m&igrave;nh v&agrave; kh&ocirc;ng cung cấp bất kỳ th&ocirc;ng tin n&agrave;o li&ecirc;n quan đến t&agrave;i khoản v&agrave; mật khảu truy cập tr&ecirc;n Hades.com tr&ecirc;n c&aacute;c website kh&aacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP V&Agrave; QUẢN L&Iacute; TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N:</strong></p>\r\n\r\n<ul>\r\n	<li><em>T&ecirc;n đơn vị: C&Ocirc;NG TY TNHH HADES</em></li>\r\n	<li><em>M&atilde; số thuế: 0316393653</em></li>\r\n	<li><em>Địa chỉ trụ sở ch&iacute;nh: 45 Phan Chu Trinh, Phường Bến Th&agrave;nh, Quận 1, Th&agrave;nh phố Hồ Ch&iacute; Minh</em></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. PHƯƠNG TIỆN V&Agrave; C&Ocirc;NG CỤ ĐỂ NGƯỜI D&Ugrave;NG TIẾP CẬN V&Agrave; CHỈNH SỬA DỮ LIỆU C&Aacute; NH&Acirc;N CỦA M&Igrave;NH:</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể cập nhật th&ocirc;ng tin bất cứ l&uacute;c n&agrave;o bằng c&aacute;ch truy cập v&agrave;o t&agrave;i khoản c&aacute; nh&acirc;n tr&ecirc;n website&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a>&nbsp;hoặc li&ecirc;n hệ với ch&uacute;ng t&ocirc;i&nbsp;theo&nbsp;email:&nbsp;<a href=\"mailto:contact@hades.vn\">contact@hades.vn</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;8. CAM KẾT BẢO MẬT TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N KH&Aacute;CH H&Agrave;NG</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất quan t&acirc;m đến quyền ri&ecirc;ng tư của qu&yacute; kh&aacute;ch h&agrave;ng khi qu&yacute; kh&aacute;ch sử dụng những dịch vụ của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i cũng hiểu rằng qu&yacute; kh&aacute;ch sẽ rất quan t&acirc;m đến việc những th&ocirc;ng tin m&agrave; qu&yacute; kh&aacute;ch cung cấp cho ch&uacute;ng t&ocirc;i c&oacute; được bảo mật&nbsp;an&nbsp;to&agrave;n hay kh&ocirc;ng. V&agrave; ch&uacute;ng t&ocirc;i lu&ocirc;n muốn qu&yacute; kh&aacute;ch sẽ thật y&ecirc;n t&acirc;m v&agrave; tin tưởng khi tham gia c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i. V&igrave; vậy ch&uacute;ng t&ocirc;i cam kết sẽ khiến qu&yacute; kh&aacute;ch c&oacute; những trải nghiệm tuyệt vời nhất khi mua sắm h&agrave;ng của ch&uacute;ng t&ocirc;i với sự tin tưởng ho&agrave;n to&agrave;n.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch bằng c&aacute;ch:</p>\r\n\r\n<ul>\r\n	<li>+ Giới hạn truy cập th&ocirc;ng tin c&aacute; nh&acirc;n (Chỉ khi đăng nhập qu&yacute; kh&aacute;ch mới thấy được th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh).</li>\r\n	<li>+ X&oacute;a th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch khi n&oacute; kh&ocirc;ng c&ograve;n cần thiết cho mục đ&iacute;ch lưu trữ hồ sơ của ch&uacute;ng t&ocirc;i.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>9.&nbsp;CƠ CHẾ TIẾP NHẬN V&Agrave; GIẢI QUYẾT KHIẾU NẠI LI&Ecirc;N QUAN ĐẾN VIỆC TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N KH&Aacute;CH H&Agrave;NG</strong></p>\r\n\r\n<ul>\r\n	<li>+&nbsp;Khi ph&aacute;t hiện th&ocirc;ng c&aacute; nh&acirc;n của m&igrave;nh bị sử dụng sai mục đ&iacute;ch hoặc phạm&nbsp;vi, th&agrave;nh vi&ecirc;n c&oacute; thể cung cấp c&aacute;c th&ocirc;ng tin, chứng cứ li&ecirc;n quan đến việc n&agrave;y theo&nbsp;li&ecirc;n hệ Chăm S&oacute;c Kh&aacute;ch H&agrave;ng:&nbsp;support@hades.vn</li>\r\n	<li>+&nbsp;T&ugrave;y theo&nbsp;mức độ, t&iacute;nh chất của việc khiếu nại m&agrave; Bộ phận/ đơn vị chủ tr&igrave; giải quyết khiếu nại c&oacute; biện ph&aacute;p giải quyết cụ thể.</li>\r\n	<li>+&nbsp;Nếu th&ocirc;ng qua h&igrave;nh thức thỏa thuận m&agrave; vẫn kh&ocirc;ng thể giải quyểt được khiếu nại của th&agrave;nh vi&ecirc;n th&igrave; một trong hai b&ecirc;n sẽ c&oacute; quyền nhờ đến cơ quan ph&aacute;p luật c&oacute; thẩm quyền can thiệp nhằm đảm bảo lợi &iacute;ch hợp ph&aacute;p của c&aacute;c b&ecirc;n.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>10. MỌI THẮC MẮC VUI L&Ograve;NG LI&Ecirc;N HỆ:</strong></p>\r\n\r\n<p><em>Li&ecirc;n hệ Chăm S&oacute;c Kh&aacute;ch H&agrave;ng:&nbsp;support@hades.vn</em></p>\r\n\r\n<p><em>Website:&nbsp;<a href=\"http://www.hades.com/\">www.hades.com</a></em></p>\r\n\r\n<p><em>Email:&nbsp;contact@hades.vn</em></p>\r\n', 1, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(15, 'Quần', 3),
(18, 'Áo', 2),
(27, 'Phụ kiện', 3),
(31, 'Hàng Cho free', 1),
(32, 'Tên', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `stime` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khachhang`, `code_cart`, `cart_status`, `stime`, `payment_method`) VALUES
(107, 86, '7645', 1, '2023-10-31 10:25:38', 'Tiền mặt'),
(108, 10, '3811', 1, '2023-10-31 11:13:35', 'momo'),
(109, 10, '3098', 1, '2023-10-31 11:16:12', 'Tiền mặt'),
(110, 22, '3364', 2, '2023-10-31 12:23:33', 'Tiền mặt'),
(111, 20, '3974', 1, '2023-10-31 12:34:54', 'momo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoanhang`
--

CREATE TABLE `tbl_hoanhang` (
  `id` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_gui` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_lh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoanhang`
--

INSERT INTO `tbl_hoanhang` (`id`, `id_khachhang`, `code_cart`, `noidung`, `ngay_gui`, `status_lh`) VALUES
(25, 90, '3152', 'gsgdsg', '2023-10-02 06:50:37', 1),
(26, 86, '2966', 'sdfdsfds', '2023-10-02 06:51:22', 1),
(27, 86, '5638', 'ao loi sze', '2023-10-02 07:04:58', 0),
(28, 86, '5638', 'sai mẫu', '2023-10-02 07:17:15', 0),
(29, 86, '4524', 'cádzcadc', '2023-10-02 12:23:06', 0),
(30, 89, '6075', 'lỗi', '2023-10-02 12:24:44', 2),
(31, 86, '5015', 'camera bị lỗi', '2023-10-02 12:30:11', 2),
(32, 86, '9525', 'lỗi cam', '2023-10-04 03:57:22', 2),
(33, 86, '3402', 'trả hàng', '2023-10-04 04:07:11', 2),
(34, 86, '3402', 'trả hàng', '2023-10-04 04:08:43', 2),
(35, 86, '3402', 'trả hàng', '2023-10-04 04:10:16', 2),
(36, 86, '3402', 'trả hàng', '2023-10-04 04:12:12', 2),
(37, 89, '935', 'muoos doi sp khac', '2023-10-05 15:14:38', 2),
(38, 86, '584', 'lỗi hàng cần đổi trả', '2023-10-05 16:10:45', 2),
(39, 86, '8498', 'cần trả hàng', '2023-10-08 06:58:21', 2),
(40, 86, '3985', '', '2023-10-08 17:16:23', 0),
(49, 10, '1871', 'đổi lại size áo', '2023-10-30 12:01:21', 1),
(50, 22, '3364', 'đổi mũ vì bị hỏng', '2023-10-31 11:31:14', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khackhang`
--

CREATE TABLE `tbl_khackhang` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_khackhang`
--

INSERT INTO `tbl_khackhang` (`id_khachhang`, `tenkhachhang`, `diachi`, `dienthoai`, `email`, `matkhau`, `role_id`) VALUES
(1, 'Hiếu Thành', 'Thành Hiếu', '0387190348', 'hieuadmin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(10, 'Hiếu Thành', 'Mỹ đình, nam từ liêm, hà nội', '0365746456', 'stackskill2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(18, 'thanhhieu', 'Hà nội', '0365746456', 'stackskill3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4),
(19, 'Hiếu Thành', 'hieuadmin', '0365746456', 'stackskill5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2),
(20, 'Hiếu Thành', 'Hà nội', '0365746456', 'stackskill9@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
(21, 'Hiếu Thành', 'hà nội', '0365746456', 'stackskill123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(22, 'hiếu', '0333333333', 'mỹ đình, nam từ liêm', 't1234@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `lienhe` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `lienhe`, `thutu`) VALUES
(1, 'CÔNG TY TNHH HADES Địa chỉ: 45 Phan Chu Trinh, P. Bến Thành, Quận 1, TP. Hồ Chí Minh', 1),
(3, 'SỐ GCNĐKDN: 0316393653', 2),
(4, 'Ngày cấp: 20/07/2020', 3),
(5, 'Tuyển dụng: hr@hades.vn', 4),
(6, 'Website: hades.vn', 5),
(7, 'Liên hệ CSKH: support@hades.vn', 6),
(8, 'For business: contact@hades.vn', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `id_role`) VALUES
(1, 'Quản Lý', 2),
(2, 'Nhân viên', 3),
(5, 'Khách hàng', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `km` int(11) NOT NULL,
  `giagockm` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `km`, `giagockm`, `soluong`, `hinhanh`, `tomtat`, `tinhtrang`, `id_danhmuc`) VALUES
(40, 'CORDUROY JACKET', '01', '680000', 0, 300000, 37, '1638443230_a1.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(41, 'HADES OVERDYED LAYERED HOODIE', '02', '640000', 0, 300000, 29, '1638443268_a2.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(42, 'ÁO LẠNH', '06', '400000', 10, 200000, 3, '1638441261_a3.jpg', '<p>Chất cốt ton</p>\r\n\r\n<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(44, 'HADES OVERDYED LAYERED', '45', '600000', 0, 400000, 25, '1638443532_a11.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(48, 'RETRO LOFI POLO', '888', '420000', 1, 100000, 16, '1638952512_sadasdasd.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(49, 'hades ORGANIC WASHED GREY BACKPACK', '3434', '250000', 7, 100000, 15, '1638953004_sdasdfsfs.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 27),
(50, 'HADES TRACK SHORTS', 'S21121SB', '380000', 10, 200000, 51, '1640419721_1512_18_1d40cf86f12e49f9b5403fa98c530b40.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 15),
(51, 'LOGO SOCKS', 'V11221W', '90000', 0, 20000, 50, '1640419811_vo_trang_cedfa98f1a784d25aa5703ea7cabffe9.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 27),
(53, ' DOCKER WASH HAT', 'DKHW', '200000', 10, 100000, 9, '1640419921_2510_35_07ec91aa7ee24c1cafc7d1f832d75b51_grande.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 27),
(54, 'LOGO CAP', 'LCB0001', '200000', 5, 100000, 69, '1640420067_2610_2_6c5ef29d04754161bcf8abec6144714d.jpg', '<p>NEEDS OF WISDOM&reg;</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n', 1, 18),
(130, 'quần bò nam', '004', '800000', 2, 500000, 46, '1698751666_Screenshot (17).png', '<p>quần chất liệu vải</p>\r\n', 1, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tenchinhsach`
--

CREATE TABLE `tbl_tenchinhsach` (
  `id_tenchinhsach` int(11) NOT NULL,
  `tenchinhsach` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_tenchinhsach`
--

INSERT INTO `tbl_tenchinhsach` (`id_tenchinhsach`, `tenchinhsach`, `thutu`) VALUES
(1, 'Chính sách sử dụng website ', 1),
(4, 'Phương thức thanh toán', 2),
(5, 'Chính sách đổi trả', 3),
(6, 'Chính sách giao nhận - vận chuyển', 4),
(7, 'Điều khoản dịch vụ', 5),
(8, 'Hướng dẫn mua hàng', 6),
(9, 'Chính sách bảo mật', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` datetime DEFAULT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` int(100) NOT NULL,
  `gianhap` int(110) NOT NULL,
  `soluongban` int(11) NOT NULL,
  `loinhuan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `gianhap`, `soluongban`, `loinhuan`) VALUES
(1, '2021-10-23 00:00:00', 50, 15500000, 0, 25, 1000000),
(2, '2021-10-22 00:00:00', 55, 25500000, 0, 25, 2000000),
(3, '2021-10-21 00:00:00', 50, 15600000, 0, 30, 2034300),
(4, '2021-10-24 00:00:00', 10, 36500000, 0, 30, 3560000),
(5, '2021-10-25 00:00:00', 2, 5600000, 0, 10, 3450000),
(6, '2021-10-26 00:00:00', 8, 6500000, 0, 9, 4000000),
(7, '2021-10-28 00:00:00', 2, 600000, 0, 10, 300000),
(8, '2021-10-29 00:00:00', 8, 500000, 0, 9, 300000),
(9, '2021-10-31 00:00:00', 8, 500000, 0, 9, 400000),
(10, '2021-10-01 00:00:00', 8, 500000, 0, 9, 200000),
(11, '2021-08-01 00:00:00', 8, 700000, 0, 9, 400000),
(12, '2021-10-03 00:00:00', 8, 700000, 0, 9, 500000),
(14, '2021-12-14 00:00:00', 3, 1500000, 30000, 1, 1000000),
(43, '2021-12-15 00:00:00', 7, 25568000, 13900000, 20, 11668000),
(44, '2021-12-13 00:00:00', 3, 1800000, 300000, 1, 1000000),
(45, '2021-12-16 00:00:00', 10, 10310000, 6000000, 12, 4310000),
(46, '2021-12-25 00:00:00', 5, 5420000, 2950000, 6, 2470000),
(47, '2021-12-26 00:00:00', 7, 12668000, 8250000, 15, 4418000),
(48, '2022-10-12 00:00:00', 2, 2720000, 1200000, 4, 1520000),
(49, '2023-10-15 00:00:00', 22, 28940000, 12800000, 43, 16140000),
(50, '2023-10-26 00:00:00', 6, 4680000, 2800000, 6, 1880000),
(51, '2023-10-28 00:00:00', 7, 3548272, 1324576, 8, 2223696),
(52, '2023-10-29 00:00:00', 2, 25945404, 19454052, 6, 6491352),
(53, '2023-10-30 00:00:00', 1, 1540000, 800000, 3, 740000),
(54, '2023-10-31 00:00:00', 1, 200000, 100000, 1, 100000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Chỉ mục cho bảng `size_soluong`
--
ALTER TABLE `size_soluong`
  ADD PRIMARY KEY (`id_size_soluong`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_size` (`id_size`);

--
-- Chỉ mục cho bảng `tbl_anhtrangbia`
--
ALTER TABLE `tbl_anhtrangbia`
  ADD PRIMARY KEY (`id_anhtrangbia`);

--
-- Chỉ mục cho bảng `tbl_baibao`
--
ALTER TABLE `tbl_baibao`
  ADD PRIMARY KEY (`id_baibao`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_chinhanh`
--
ALTER TABLE `tbl_chinhanh`
  ADD PRIMARY KEY (`id_chinhanh`);

--
-- Chỉ mục cho bảng `tbl_chinhsach`
--
ALTER TABLE `tbl_chinhsach`
  ADD PRIMARY KEY (`id_chinhsach`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `tbl_hoanhang`
--
ALTER TABLE `tbl_hoanhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_khackhang`
--
ALTER TABLE `tbl_khackhang`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_tenchinhsach`
--
ALTER TABLE `tbl_tenchinhsach`
  ADD PRIMARY KEY (`id_tenchinhsach`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `size_soluong`
--
ALTER TABLE `size_soluong`
  MODIFY `id_size_soluong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT cho bảng `tbl_anhtrangbia`
--
ALTER TABLE `tbl_anhtrangbia`
  MODIFY `id_anhtrangbia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_baibao`
--
ALTER TABLE `tbl_baibao`
  MODIFY `id_baibao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `tbl_chinhanh`
--
ALTER TABLE `tbl_chinhanh`
  MODIFY `id_chinhanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_chinhsach`
--
ALTER TABLE `tbl_chinhsach`
  MODIFY `id_chinhsach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `tbl_hoanhang`
--
ALTER TABLE `tbl_hoanhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tbl_khackhang`
--
ALTER TABLE `tbl_khackhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `tbl_tenchinhsach`
--
ALTER TABLE `tbl_tenchinhsach`
  MODIFY `id_tenchinhsach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `size_soluong`
--
ALTER TABLE `size_soluong`
  ADD CONSTRAINT `size_soluong_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_sanpham` (`id_sanpham`),
  ADD CONSTRAINT `size_soluong_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
