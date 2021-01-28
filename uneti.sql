-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 27, 2021 lúc 01:43 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `uneti`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(12) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_title_show` varchar(255) DEFAULT NULL,
  `banner_intro` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_link` varchar(255) DEFAULT NULL,
  `banner_order_no` int(10) DEFAULT 1 COMMENT 'thứ tự hiển thị',
  `banner_is_target` tinyint(5) DEFAULT 0 COMMENT '0: Không mở tab mới, 1: mở tab mới',
  `banner_is_rel` tinyint(5) DEFAULT 0 COMMENT '0:nofollow, 1:follow',
  `banner_type` tinyint(5) DEFAULT 0 COMMENT '1:banner home to, 2: banner home nhỏ,3: banner trái, 4 banner phải',
  `banner_status` int(5) DEFAULT 0,
  `banner_is_run_time` tinyint(5) DEFAULT 0 COMMENT '0: không có time chay,1: có thời gian chạy quảng cáo',
  `banner_start_time` int(11) DEFAULT 0,
  `banner_end_time` int(11) DEFAULT 0,
  `banner_create_time` int(11) DEFAULT 0,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`banner_id`, `uid`, `banner_title`, `banner_title_show`, `banner_intro`, `banner_image`, `banner_link`, `banner_order_no`, `banner_is_target`, `banner_is_rel`, `banner_type`, `banner_status`, `banner_is_run_time`, `banner_start_time`, `banner_end_time`, `banner_create_time`) VALUES
(4, NULL, 'Banner Content', 'Uneti', '', '03-33-14-05-01-2021-logouneti.png', '', 1, -1, 0, 1, 1, 0, 0, 0, 1609813741);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_created` varchar(15) DEFAULT NULL,
  `branch_status` int(4) DEFAULT NULL,
  `branch_id_project` int(11) DEFAULT NULL,
  `branch_id_sv` int(11) DEFAULT NULL,
  PRIMARY KEY (`branch_id`),
  KEY `branch_id_sv` (`branch_id_sv`),
  KEY `branch_id_project` (`branch_id_project`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_created`, `branch_status`, `branch_id_project`, `branch_id_sv`) VALUES
(2, 'Công nghệ thông tin', '1610637191', 1, -1, -1),
(3, 'Tự động hóa', '1610637204', 1, -1, -1),
(4, 'Điện tử điện lạnh', '1610637249', 1, -1, -1),
(5, 'May', '1610637261', 1, -1, -1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT 1,
  `category_parent_id` int(11) DEFAULT 0,
  `category_type_id` int(10) DEFAULT 0,
  `category_type_keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_title_alias` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_intro` text COLLATE utf8_bin DEFAULT NULL,
  `category_content` longtext COLLATE utf8_bin DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_menu` tinyint(2) DEFAULT 0,
  `category_menu_footer` tinyint(2) DEFAULT NULL,
  `category_created` int(10) DEFAULT NULL,
  `category_order_no` int(10) DEFAULT NULL,
  `category_status` tinyint(2) DEFAULT NULL,
  `category_link_replace` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `category_hot` int(2) DEFAULT 0,
  `meta_title` text COLLATE utf8_bin DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_bin DEFAULT NULL,
  `meta_description` text COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=720 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `uid`, `category_parent_id`, `category_type_id`, `category_type_keyword`, `category_title`, `category_title_alias`, `category_intro`, `category_content`, `category_image`, `category_menu`, `category_menu_footer`, `category_created`, `category_order_no`, `category_status`, `category_link_replace`, `category_hot`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(719, 1, 0, 42, 'group_statics', 'Tin tức sinh viên', 'tin-tuc-sinh-vien', '', NULL, NULL, -1, -1, 1610852576, 7, 1, '', 1, '', '', ''),
(717, 1, 0, 42, 'group_statics', 'Hướng dẫn sử dụng dịch vụ trực tuyến', 'huong-dan-su-dung-dich-vu-truc-tuyen', '', NULL, NULL, 0, 0, 1609819097, 6, 1, '', 0, '', '', ''),
(715, 1, 0, 42, 'group_statics', 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', NULL, NULL, 0, -1, 1609818982, 4, 1, '', 0, '', '', ''),
(716, 1, 0, 42, 'group_statics', 'Dịch vụ cho sinh viên', 'dich-vu-cho-sinh-vien', '', NULL, NULL, 0, 0, 1609819069, 5, 1, '', 0, '', '', ''),
(714, 1, 0, -1, NULL, 'Sinh viên', 'sinh-vien', '', NULL, NULL, 1, -1, 1609810303, 3, 1, '', 1, '', '', ''),
(713, 1, 0, -1, NULL, 'Giảng Viên', 'giang-vien', '', NULL, NULL, 1, -1, 1609809987, 2, 1, '', 1, '', '', ''),
(712, 1, 0, -1, NULL, 'Trang chủ', 'trang-chu', '', NULL, NULL, 1, -1, 1609809917, 1, 1, 'http://localhost:8080/project.vn/uneti1/public/', 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `contact_content` longtext DEFAULT NULL,
  `contact_created` int(12) DEFAULT NULL,
  `contact_status` tinyint(4) DEFAULT 0 COMMENT 'Item enabled status (1 = enabled, 0 = disabled)',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Stores contact content.';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanh_nghiep`
--

DROP TABLE IF EXISTS `doanh_nghiep`;
CREATE TABLE IF NOT EXISTS `doanh_nghiep` (
  `id_dn` int(11) NOT NULL AUTO_INCREMENT,
  `ten_dn` varchar(255) DEFAULT NULL,
  `dn_status` int(4) DEFAULT NULL,
  `dn_created` varchar(15) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ten_hr` varchar(255) DEFAULT NULL,
  `email_hr` varchar(255) DEFAULT NULL,
  `phone_hr` varchar(255) DEFAULT NULL,
  `nguyen_vong` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_dn`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `doanh_nghiep`
--

INSERT INTO `doanh_nghiep` (`id_dn`, `ten_dn`, `dn_status`, `dn_created`, `website`, `ten_hr`, `email_hr`, `phone_hr`, `nguyen_vong`) VALUES
(1, 'Công ty Cổ phần Magenest Việt Nam', 1, '1611545447', 'https://magenest.com/vi/', 'Trần Thị Thanh', 'hr@magenest.com', '0901726333', '10 SV'),
(5, 'Công ty an ninh mạng Cystack', 1, '1611547277', 'https://cystack.net/vi', 'Nguyễn Thu Trang', 'hr@cystack.net', '02471099656', '0 SV'),
(4, 'công ty TNHH một thành viên nghiên cứu và phát triển công nghệ tin học Episerver', 1, '1611547209', 'https://www.episerver.com/', 'Cao Thị Thảo', 'hanoi.careers@episerver.com', '0915311986', '20 SV'),
(6, 'Công ty Cổ Phần Công Nghệ và Truyền Thông TCOM', 1, '1611547407', 'https://tcom.vn/vi/index.html', 'Nguyễn Văn Phương', 'vanphuongnguyen2105@gmail.com', '0947335338', '10 SV'),
(7, 'Công ty TNHH Tribal Media House Technology Lab', 1, '1611547514', 'http://www.tmh-techlab.vn/?lang=vn', 'Trương Thị Minh Thúy', 'thuyttm@tmh-techlab.vn', '0988379992', '10 Sv'),
(8, 'Công ty cổ phần VNEXT SOFTWARE', 1, '1611547594', 'https://vnext.vn/', 'Nguyễn Tú Anh', 'hr@vnext.vn', '0915342723', '20 SV');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `form`
--

DROP TABLE IF EXISTS `form`;
CREATE TABLE IF NOT EXISTS `form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_title` varchar(255) DEFAULT NULL,
  `form_upload` varchar(255) DEFAULT NULL,
  `form_status` int(4) DEFAULT NULL,
  `form_order_no` int(11) DEFAULT NULL,
  `form_created` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `form`
--

INSERT INTO `form` (`form_id`, `form_title`, `form_upload`, `form_status`, `form_order_no`, `form_created`) VALUES
(9, 'Đơn xin trở lại học tập', '10-36-08-16-01-2021-dontrolaihoctap.doc', 1, -1, '1610811373'),
(10, 'Đơn xin chuyển địa điểm học tập', '10-36-41-16-01-2021-donchuyenddhoctap.doc', 1, -1, '1610811406'),
(11, 'Đơn xin bảo lưu kết quả học tập', '10-37-21-16-01-2021-donxinbaoluukqhtedit.doc', 1, -1, '1610811445'),
(12, 'Xác nhận vay vốn', '10-37-55-16-01-2021-xacnhanvayvon.doc', 1, -1, '1610811479'),
(13, 'Đơn xin thôi học', '10-38-19-16-01-2021-xinthoihocedit.doc', 1, -1, '1610811503'),
(14, 'Đơn xin cấp lại thẻ bảo hiểm y tế', '10-38-42-16-01-2021-xncaplaithebhyt.doc', 1, -1, '1610811527'),
(15, 'Đơn xin đối tượng chính sách', '10-39-05-16-01-2021-xndoituongchinhsach.doc', 1, -1, '1610811548'),
(16, 'Đơn xin học tại trường', '10-39-29-16-01-2021-xnhoctaitruong.doc', 1, -1, '1610811573');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_vien`
--

DROP TABLE IF EXISTS `giao_vien`;
CREATE TABLE IF NOT EXISTS `giao_vien` (
  `gv_id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_gv` varchar(255) DEFAULT NULL,
  `gv_status` int(4) DEFAULT NULL,
  `gv_created` varchar(15) DEFAULT NULL,
  `gv_order_no` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giao_vien`
--

INSERT INTO `giao_vien` (`gv_id`, `ten_gv`, `gv_status`, `gv_created`, `gv_order_no`, `phone`, `email`) VALUES
(2, 'Mai Mạnh Trừng', 1, '1611249321', 1, '0375489464', 'mmt@gmail.com'),
(3, 'Đường Tuấn Hải', 1, '1611249330', 2, '25416454', 'dth@gmail.com'),
(4, 'Nguyễn Thu Hiền', 1, '1611456102', 2, '5661312346', 'nth@gmail.com'),
(5, 'Nguyễn Hoàng Chiến', 1, '1611456111', 4, '216544635', 'nhc@gmail.com'),
(6, 'Lương Thị Thảo Hiếu', 1, '1611456132', 5, '14504575', 'ltth@gmail.com'),
(7, 'Lê Thị Kiều Oanh', 1, '1611456162', 6, '075158441', 'ltko@gmail.com'),
(8, 'Vũ Mỹ Hạnh', 1, '1611456182', 7, '0375134824', 'vmh@gmail.com'),
(9, 'Bùi Văn Tân', 1, '1611456199', 8, '037515718', 'bvt@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `info_title` varchar(255) DEFAULT NULL,
  `info_keyword` varchar(255) DEFAULT NULL COMMENT 'keyword',
  `info_intro` longtext DEFAULT NULL,
  `info_content` longtext DEFAULT NULL,
  `info_img` varchar(255) DEFAULT NULL,
  `info_created` varchar(15) DEFAULT NULL,
  `info_order_no` int(11) DEFAULT 0,
  `info_status` tinyint(4) DEFAULT 0 COMMENT 'Item enabled status (1 = enabled, 0 = disabled)',
  `meta_title` text DEFAULT NULL COMMENT 'Meta title',
  `meta_keywords` text DEFAULT NULL COMMENT 'Meta keywords',
  `meta_description` text DEFAULT NULL COMMENT 'Meta description',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='Stores news content.';

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`info_id`, `uid`, `info_title`, `info_keyword`, `info_intro`, `info_content`, `info_img`, `info_created`, `info_order_no`, `info_status`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(190, NULL, 'Uneti', 'LOGO_UNETI', '', '<h3>Hệ Thống quản l&iacute; giảng dạy v&agrave; dịch vụ trực tuyến</h3>\r\n\r\n<h4>Trường đại học kinh tế - kỹ thuật c&ocirc;ng nghiệp</h4>', '07-57-40-05-01-2021-logo.png', '1609808193', 1, 1, '', '', ''),
(191, NULL, 'CATID: Dịch vụ cho giáo viên', 'CAT_ID_DVGV', 'Dịch vụ cho giáo viên', '<p>715</p>', NULL, '1609832313', 2, 1, '', '', ''),
(192, NULL, 'CATID: Dịch vụ cho sinh viên', 'CAT_ID_DVSV', 'Dịch vụ cho sinh viên', '<p>716</p>', NULL, '1609834759', 3, 1, '', '', ''),
(193, NULL, 'CATID: Hướng dẫn sử dụng dịch vụ trực tuyến', 'CAT_ID_3', 'Hướng dẫn sử dụng dịch vụ trực tuyến', '<p>717</p>', NULL, '1609846705', 4, 1, '', '', ''),
(194, NULL, 'Liên hệ', 'TEXT_LIEN_HE', '', '<p>Nếu bạn c&oacute; c&acirc;u hỏi/đề xuất/vấn đề g&igrave;, h&atilde;y <a href=\\\"#\\\">Gửi phản hồi</a> cho ch&uacute;ng t&ocirc;i.</p>', NULL, '1609858025', 5, 1, '', '', ''),
(195, NULL, 'FOOTER_LEFT', 'SITE_FOOTER_LEFT', '', '<p>HỆ THỐNG DO TRƯỜNG ĐẠI HỌC KINH TẾ - KỸ THUẬT C&Ocirc;NG NGHIỆP H&Agrave; NỘI THIẾT KẾ &amp; PH&Aacute;T TRIỂN.</p>\r\n\r\n<p>Để hỗ trợ vui l&ograve;ng gửi mail đến <strong>uneti.edu.vn</strong></p>\r\n\r\n<p>Hotline : 0395679007</p>', '10-03-12-05-01-2021-logo.png', '1609858963', 6, 1, '', '', ''),
(196, NULL, 'FOOTER_ADDRESS', 'SITE_FOOTER_ADDRESS', '', '<p><strong>Cơ sở Lĩnh Nam</strong>: Ng&otilde; 218 Lĩnh Nam - Ho&agrave;ng Mai - H&agrave; Nội</p>\r\n\r\n<p><strong>Cơ sở Minh Khai</strong>: Số 454 Minh Khai - Ho&agrave;ng Mai - H&agrave; Nội</p>', NULL, '1609859125', 7, 1, '', '', ''),
(197, NULL, 'TEXT: Danh sách biểu mẫu', 'TEXT_FORM', '', '<p>Danh s&aacute;ch biểu mẫu</p>', NULL, '1610850258', 8, 1, '', '', ''),
(198, NULL, 'CATID: Tin tức sinh viên', 'CAT_ID_NEWS_STUDENT', '', '<p>719</p>', NULL, '1610853539', 9, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

DROP TABLE IF EXISTS `lop`;
CREATE TABLE IF NOT EXISTS `lop` (
  `lop_id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_lop` varchar(255) DEFAULT NULL,
  `lop_status` int(4) DEFAULT NULL,
  `lop_order_no` int(11) DEFAULT NULL,
  `lop_created` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`lop_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`lop_id`, `ten_lop`, `lop_status`, `lop_order_no`, `lop_created`) VALUES
(3, 'DHTIN11A3', 1, 0, '1611249306');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

DROP TABLE IF EXISTS `mon`;
CREATE TABLE IF NOT EXISTS `mon` (
  `id_mon` int(11) NOT NULL AUTO_INCREMENT,
  `ten_mon` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `mon_created` varchar(15) DEFAULT NULL,
  `mon_status` int(4) DEFAULT NULL,
  `ma_hp` varchar(255) DEFAULT NULL,
  `gv_id` int(11) DEFAULT NULL,
  `lich_hoc` varchar(255) DEFAULT NULL,
  `gd` int(4) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  PRIMARY KEY (`id_mon`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`id_mon`, `ten_mon`, `branch_id`, `mon_created`, `mon_status`, `ma_hp`, `gv_id`, `lich_hoc`, `gd`, `start_time`, `end_time`) VALUES
(3, 'An toàn bảo mật thông tin', 2, '1611455887', 1, '118607', 2, 'Sáng T2, Tiết 5-6', 1, '2021-01-26', '2021-06-30'),
(4, 'Quản trị mạng', 2, '1611455898', 1, '118637', 6, 'Sáng T4 tiết 1 - 3', 0, '2021-01-01', '2021-06-30'),
(5, 'Mô phỏng mạng', 2, '1611455912', 1, '118608', 8, 'Sáng T3 tiết 1 - 6', 0, '2021-01-01', '2021-06-30'),
(6, 'Mạng máy tính', 2, '1611455922', 1, '699559', 6, 'Chiều T5 tiết 11 - 12', 0, '2021-01-08', '2021-06-11'),
(7, 'Kiến trúc máy tính', 2, '1611455932', 1, '699556', 6, 'Chiều T6 tiết 11 - 16', 0, '2021-01-14', '2021-04-16'),
(8, 'Lập trình di động', 2, '1611455942', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Xử lý Unity', 2, '1611455955', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ASP.net và mô hình MVC', 2, '1611455976', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Framework Unity và mô hình MVC', 2, '1611455990', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Xử lý ngôn ngữ tự nhiên', 2, '1611456007', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Phân tích thiết kế hệ thống thông tin quản lý', 2, '1611456027', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Xây dựng Website', 2, '1611456043', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'hệ thống thông tin quản lý', 2, '1611456049', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Khai phá dữ liệu', 2, '1611457266', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Phân cụm dữ liệu', 2, '1611457433', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) DEFAULT NULL,
  `project_order_no` int(11) DEFAULT NULL,
  `project_status` int(4) DEFAULT NULL,
  `project_created` varchar(15) DEFAULT NULL,
  `gv_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `id_mon` int(11) DEFAULT NULL,
  `id_gv_review_1` int(11) DEFAULT NULL,
  `id_gv_review_2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `project_id_gv` (`gv_id`),
  KEY `project_id_branch` (`branch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_order_no`, `project_status`, `project_created`, `gv_id`, `branch_id`, `id_mon`, `id_gv_review_1`, `id_gv_review_2`) VALUES
(2, 'Nghiên cứu mật mã khối hạng nhẹ, ứng dụng trong IOT', 1, 1, '1611386581', 2, 2, 3, 5, '4'),
(4, 'Nghiên cứu mật mã dòng hạng nhẹ, ứng dụng trong IOT', 2, 1, '1611456702', 2, 2, 3, 6, '5'),
(5, 'Nghiên cứu hệ thống giám sát quản trị mạng dựa trên giao thức SNMP', 3, 1, '1611456735', 3, 2, 4, 5, '4'),
(6, 'Nghiên cứu và triển khai mô hình giám sát quản trị mạng', 4, 1, '1611456766', 3, 2, 4, 6, '5'),
(7, 'Nghiên cứu mô hình di động của phương tiện và ứng dụng', 5, 1, '1611456792', 5, 2, 5, 6, '4'),
(8, 'Nghiên cứu và mô phỏng các giao thức định tuyến dữ liệu trong mạng 802.11P', 6, 1, '1611456819', 5, 2, 5, 3, '4'),
(9, 'So sánh chuẩn 802.11A và 802.11P ứng dụng trong việc đảm bảo chất lượng dịch vụ VANET', 7, 1, '1611456852', 5, 2, 6, 3, '6'),
(10, 'Nghiên cứu và mô phỏng bộ nhớ Cache', 8, 1, '1611456889', 4, 2, 7, 3, '6'),
(11, 'Nghiên cứu và mô phỏng các thuật toán lập lịch CPU', 9, 1, '1611456925', 4, 2, 7, 3, '6'),
(12, 'Xây dựng ứng dụng dự báo thời tiết trên Android', 10, 1, '1611456948', 6, 2, 8, 5, '7'),
(13, 'Xây dựng ứng dụng tìm đường đi xe buýt online trên thiết bị di động', 11, 1, '1611456977', 6, 2, 8, 5, '4'),
(14, 'Phát triển game với công cụ Engine Unity', 12, 1, '1611457011', 4, 2, 9, 7, '5'),
(15, 'Xây dựng sổ liên lạc điện tử giữa gia đình và nhà trường bằng ngôn ngữ ASP.net theo mô hình MVC', 13, 1, '1611457079', 8, 2, 10, 2, '3'),
(16, 'Phát triển game “Phi thuyền không gian” trên Unity(đi màn bắn AI)', 14, 1, '1611457113', 8, 2, 11, 6, '2'),
(17, 'Tìm hiểu xử lý ngôn ngữ tự nhiên và viết chương trình kiểm tra cấu trúc câu trong tiếng Anh', 15, 1, '1611457145', 7, 2, 12, 9, '2'),
(18, 'Nghiên cứu bài toán tách từ tiếng Việt trong xử lý ngôn ngữ tự nhiên', 16, 1, '1611457167', 7, 2, 12, 3, '2'),
(19, 'Nghiên cứu Cross-Lingual word Embedding, ứng dụng khai phá ngữ nghĩa cho cặp ngôn ngữ Anh-Việt', 17, 1, '1611457202', 9, 2, 12, 2, '8'),
(20, 'Lượng giá mức độ liên quan ngữ nghĩa giữa các concept ứng dụng trong khai phá dữ liệu text', 18, 1, '1611457305', 9, 2, 16, 7, '2'),
(21, 'Tìm hiểu và nghiên cứu quá trình tiền xử lý dữ liệu', 19, 1, '1611457338', 4, 2, 16, 8, '2'),
(22, 'Tìm hiểu và ứng dụng SQL server trong khai phá dữ liệu', 20, 1, '1611457366', 7, 2, 16, 3, '8'),
(23, 'Phân tích, thiết kế hệ thống thông tin quản lý thư viện', 21, 1, '1611457396', 7, 2, 13, 4, '6'),
(24, 'Phân cụm dữ liệu và ứng dụng', 22, 1, '1611457472', 6, 2, 17, 7, '5'),
(25, 'Xây dựng Website thương mại điện tử với Wordpress và ứng dụng cho công ty sách', 23, 1, '1611457496', 5, 2, 14, 3, '9'),
(26, 'Xây dựng Website thương mại điện tử  và ứng dụng cho công ty đồ dùng nhà', 24, 1, '1611457521', 7, 2, 3, 3, '5'),
(27, 'Xây dựng hệ thống thông tin quản lý', 25, 1, '1611457547', 6, 2, 15, 5, '6'),
(28, 'Xây dựng hệ thống thông tin quản lý', 26, 1, '1611457570', 2, 2, 15, 4, '7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

DROP TABLE IF EXISTS `sinh_vien`;
CREATE TABLE IF NOT EXISTS `sinh_vien` (
  `sinh_vien_id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_sv` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truong_hoc` int(11) DEFAULT NULL,
  `msv` varchar(255) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioi_tinh` int(4) DEFAULT NULL,
  `sv_status` int(11) DEFAULT NULL,
  `so_cmt` int(11) DEFAULT NULL,
  `sv_description` varchar(255) DEFAULT NULL,
  `noi_o` varchar(255) DEFAULT NULL,
  `email_truong` varchar(255) DEFAULT NULL,
  `email_ca_nhan` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(50) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `quoc_gia` varchar(255) DEFAULT NULL,
  `quan_huyen` varchar(255) DEFAULT NULL,
  `xa_phuong` varchar(255) DEFAULT NULL,
  `sv_focus` int(11) DEFAULT NULL,
  `sv_order_no` int(11) DEFAULT NULL,
  `sv_created` varchar(15) DEFAULT NULL,
  `sv_re_password` varchar(255) DEFAULT NULL,
  `sv_img` varchar(255) DEFAULT NULL,
  `sv_img_other` longtext DEFAULT NULL,
  `lop_id` int(11) DEFAULT NULL,
  `gv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sinh_vien_id`) USING BTREE,
  KEY `nganh_id` (`branch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sinh_vien`
--

INSERT INTO `sinh_vien` (`sinh_vien_id`, `ten_sv`, `password`, `truong_hoc`, `msv`, `ngaysinh`, `gioi_tinh`, `sv_status`, `so_cmt`, `sv_description`, `noi_o`, `email_truong`, `email_ca_nhan`, `dien_thoai`, `branch_id`, `quoc_gia`, `quan_huyen`, `xa_phuong`, `sv_focus`, `sv_order_no`, `sv_created`, `sv_re_password`, `sv_img`, `sv_img_other`, `lop_id`, `gv_id`) VALUES
(1, 'Hà Minh Nam', '14e1b600b1fd579f47433b88e8d85291', 1, '17103100205', '2020-12-16', 1, 1, 1111, '', '', '', 'haminhnam@gmail.com', '012345678', 4, '', '', '', 1, 1, NULL, '123456', '04-39-57-12-01-2021-accout.png', 'a:1:{i:0;s:30:\"04-39-57-12-01-2021-accout.png\";}', 3, 3),
(2, 'Đỗ Vũ Ngọc Huy', '74be16979710d4c4e7c6647856088456', 1, '17103100256', '2021-01-20', 1, 1, 16041999, '', 'Hà Nội', 'uneti@gmail.com', 'huydo164@gmail.com', '0375661382', 2, '', '', '', 1, 2, '1610464982', '123456', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

DROP TABLE IF EXISTS `statics`;
CREATE TABLE IF NOT EXISTS `statics` (
  `statics_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `statics_title` varchar(255) DEFAULT NULL,
  `statics_catid` int(11) DEFAULT NULL,
  `statics_cat_name` varchar(255) DEFAULT NULL,
  `statics_cat_alias` varchar(255) DEFAULT NULL,
  `statics_intro` longtext DEFAULT NULL,
  `statics_content` longtext DEFAULT NULL,
  `statics_image` varchar(255) DEFAULT NULL,
  `statics_image_other` longtext DEFAULT NULL,
  `statics_created` varchar(15) DEFAULT NULL,
  `statics_order_no` int(11) DEFAULT 0,
  `statics_focus` int(2) DEFAULT NULL,
  `statics_view_num` int(11) DEFAULT 0,
  `statics_word` text DEFAULT NULL,
  `statics_status` int(2) DEFAULT 0 COMMENT 'Item enabled status (1 = enabled, 0 = disabled)',
  `meta_title` text DEFAULT NULL COMMENT 'Meta title',
  `meta_keywords` text DEFAULT NULL COMMENT 'Meta keywords',
  `meta_description` text DEFAULT NULL COMMENT 'Meta description',
  PRIMARY KEY (`statics_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='Stores news content.';

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`statics_id`, `uid`, `statics_title`, `statics_catid`, `statics_cat_name`, `statics_cat_alias`, `statics_intro`, `statics_content`, `statics_image`, `statics_image_other`, `statics_created`, `statics_order_no`, `statics_focus`, `statics_view_num`, `statics_word`, `statics_status`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(63, NULL, 'Thời khoá biểu, phân công giảng dạy các lớp Lý thuyết, Thực hành, Thí nghiệm', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '04-39-28-12-01-2021-thoikhoabieu.png', 'a:1:{i:0;s:36:\"04-39-28-12-01-2021-thoikhoabieu.png\";}', '1609819208', 1, 1, 0, NULL, 1, '', '', ''),
(64, NULL, 'Phân công Đồ án tốt nghiệp và Đồ án môn học', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-02-08-05-01-2021-phanbodoan.png', 'a:1:{i:0;s:34:\"11-02-08-05-01-2021-phanbodoan.png\";}', '1609819333', 2, 1, 0, NULL, 1, '', '', ''),
(65, NULL, 'Tra cứu thông tin Sinh viên', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-02-32-05-01-2021-tracuusv.png', 'a:1:{i:0;s:32:\"11-02-32-05-01-2021-tracuusv.png\";}', '1609819357', 3, 1, 0, NULL, 1, '', '', ''),
(66, NULL, 'Tra cứu thông tin học phần', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-02-54-05-01-2021-tracuuhp.png', 'a:1:{i:0;s:32:\"11-02-54-05-01-2021-tracuuhp.png\";}', '1609819378', 5, 1, 0, NULL, 1, '', '', ''),
(67, NULL, 'Quản lý tài liệu, biểu mẫu', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-03-16-05-01-2021-quanlibieumau.png', 'a:1:{i:0;s:37:\"11-03-16-05-01-2021-quanlibieumau.png\";}', '1609819401', 6, 1, 0, NULL, 1, '', '', ''),
(68, NULL, 'Kê khai khối lượng giảng dạy', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-03-37-05-01-2021-kekhai.png', 'a:1:{i:0;s:30:\"11-03-37-05-01-2021-kekhai.png\";}', '1609819421', 7, 1, 0, NULL, 1, '', '', ''),
(69, NULL, 'Thống kê, tổng hợp số liệu', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-03-57-05-01-2021-thongke.png', 'a:1:{i:0;s:31:\"11-03-57-05-01-2021-thongke.png\";}', '1609819443', 8, 1, 0, NULL, 1, '', '', ''),
(70, NULL, 'Đồng bộ Thời khoá biểu với Google Calendar', 715, 'Dịch vụ cho giáo viên', 'dich-vu-cho-giao-vien', '', '', '11-04-24-05-01-2021-dongbolb.png', 'a:1:{i:0;s:32:\"11-04-24-05-01-2021-dongbolb.png\";}', '1609819472', 9, 1, 0, NULL, 1, '', '', ''),
(71, NULL, 'Tra cứu thông tin đồ án', 716, 'Dịch vụ cho sinh viên', 'dich-vu-cho-sinh-vien', 'Tra cứu thông tin phân công đồ án, tham khảo các Đồ án được nộp và lưu trữ online', '', '11-05-10-05-01-2021-tracuudoan.png', 'a:1:{i:0;s:34:\"11-05-10-05-01-2021-tracuudoan.png\";}', '1609819520', 10, 1, 0, NULL, 1, '', '', ''),
(72, NULL, 'Yêu cầu biểu mẫu online', 716, 'Dịch vụ cho sinh viên', 'dich-vu-cho-sinh-vien', 'Điền thông tin và gửi yêu cầu các loại biểu mẫu online. Viện sẽ xử lý và thông báo qua email cho Sinh viên khi hoàn thành, Sinh viên chỉ lên một lần để nhận kết quả', '', '11-05-32-05-01-2021-bieumauon.png', 'a:1:{i:0;s:33:\"11-05-32-05-01-2021-bieumauon.png\";}', '1609819547', 11, 1, 0, NULL, 1, '', '', ''),
(73, NULL, 'Đăng ký nguyện vọng Đồ án', 716, 'Dịch vụ cho sinh viên', 'dich-vu-cho-sinh-vien', 'Tham khảo các hướng đề tài của Giáo viên, đăng ký nguyện vọng là Đồ án với giáo viên và đề tài mong muốn', '', '11-06-03-05-01-2021-nguyenvongda.png', 'a:1:{i:0;s:36:\"11-06-03-05-01-2021-nguyenvongda.png\";}', '1609819577', 12, 1, 0, NULL, 1, '', '', ''),
(74, NULL, 'Nhận tài khoản', 717, 'Hướng dẫn sử dụng dịch vụ trực tuyến', 'huong-dan-su-dung-dich-vu-truc-tuyen', '01', '<p><strong><span style=\\\"color:#4B0082\\\">NHẬN T&Agrave;I KHOẢN</span></strong></p>\r\n\r\n<p>Mỗi sinh vi&ecirc;n được cấp một t&agrave;i khoản với t&agrave;i khoản v&agrave; mật khẩu mặc định l&agrave; m&atilde; số sinh vi&ecirc;n</p>', '02-15-33-05-01-2021-so1.png', '', '1609830945', 13, 1, 0, NULL, 1, '', '', ''),
(75, NULL, 'GỬI YÊU CẦU', 717, 'Hướng dẫn sử dụng dịch vụ trực tuyến', 'huong-dan-su-dung-dich-vu-truc-tuyen', '02', '<p><strong><span style=\\\"color:#00ccff\\\">GỬI Y&Ecirc;U CẦU</span></strong></p>\r\n\r\n<p>Sinh vi&ecirc;n đăng nhập, điền biểu mẫu y&ecirc;u cầu v&agrave; nộp tr&ecirc;n hệ thống Online</p>', '02-16-03-05-01-2021-so2.png', '', '1609830983', 14, 1, 0, NULL, 1, '', '', ''),
(76, NULL, 'Xử lý yêu cầu', 717, 'Hướng dẫn sử dụng dịch vụ trực tuyến', 'huong-dan-su-dung-dich-vu-truc-tuyen', '03', '<p><strong><span style=\\\"color:#00FF00\\\">XỬ L&Yacute; Y&Ecirc;U CẦU</span></strong></p>\r\n\r\n<p>Gi&aacute;o vụ Viện nhận y&ecirc;u cầu online, xử l&yacute; v&agrave; th&ocirc;ng b&aacute;o qua email khi ho&agrave;n th&agrave;nh</p>', '02-16-44-05-01-2021-so3.png', '', '1609831010', 15, 1, 0, NULL, 1, '', '', ''),
(77, NULL, 'NHẬN KẾT QUẢ', 717, 'Hướng dẫn sử dụng dịch vụ trực tuyến', 'huong-dan-su-dung-dich-vu-truc-tuyen', '04', '<p><strong><span style=\\\"color:#4B0082\\\">NHẬN KẾT QUẢ</span></strong></p>\r\n\r\n<p>Khi nhận được th&ocirc;ng b&aacute;o y&ecirc;u cầu xử l&yacute; th&agrave;nh c&ocirc;ng, Sinh vi&ecirc;n l&ecirc;n Văn ph&ograve;ng Viện để nhận kết quả.</p>', '02-17-11-05-01-2021-so4.png', '', '1609831037', 16, 1, 0, NULL, 1, '', '', ''),
(78, NULL, 'Thông báo số 885/TB-ĐHKTKTCN, ngày 30/12/2020 về kế hoạch trao đổi với sinh viên các lớp chất lượng ĐHCQ khóa 14', 719, 'Tin tức sinh viên', 'tin-tuc-sinh-vien', '', '<p><img src=\\\"http://localhost:8080/project.vn/uneti1/public/uploads/thumbs/statics/78/800x800/10-04-48-17-01-2021-tb88520201230khtraodoisvlopcl.png\\\" /></p>', '10-17-04-17-01-2021-chinh-sach-1200x750.png', 'a:2:{i:0;s:53:\"10-04-48-17-01-2021-tb88520201230khtraodoisvlopcl.png\";i:1;s:43:\"10-17-04-17-01-2021-chinh-sach-1200x750.png\";}', '1610852715', 17, 1, 0, NULL, 1, '', '', ''),
(79, NULL, 'Thông báo số 871/TB-ĐHKTKTCN, ngày 28/12/2020 về Kế hoạch nghỉ và lịch dạy bù', 719, 'Tin tức sinh viên', 'tin-tuc-sinh-vien', '', '<p><img src=\\\"http://localhost:8080/project.vn/uneti1/public/uploads/thumbs/statics/79/800x800/10-07-35-17-01-2021-tb87120201228nghitet2020.png\\\" /></p>', '10-17-23-17-01-2021-chinh-sach-1200x750.png', 'a:2:{i:0;s:48:\"10-07-35-17-01-2021-tb87120201228nghitet2020.png\";i:1;s:43:\"10-17-23-17-01-2021-chinh-sach-1200x750.png\";}', '1610852871', 18, 1, 0, NULL, 1, '', '', ''),
(81, NULL, 'Thông báo số 815a/TB-ĐHKTKTCN, ngày 03/12/2020, về tổ chức thi kết thúc học phần học kỳ I năm học 2020-2021.', 719, 'Tin tức sinh viên', 'tin-tuc-sinh-vien', '', '<p><img src=\\\"http://localhost:8080/project.vn/uneti1/public/uploads/thumbs/statics/81/800x800/10-10-54-17-01-2021-tb815a20201203thiketthuchk11.png\\\" /></p>', '10-17-38-17-01-2021-chinh-sach-1200x750.png', 'a:2:{i:0;s:52:\"10-10-54-17-01-2021-tb815a20201203thiketthuchk11.png\";i:1;s:43:\"10-17-38-17-01-2021-chinh-sach-1200x750.png\";}', '1610853068', 19, 1, 0, NULL, 1, '', '', ''),
(82, NULL, 'Thông báo số 840/TB-ĐHKTKTCN, ngày 09/12/2020 về phương án xử lý SV chưa nộp học phí kỳ 1 năm 2020-2021', 719, 'Tin tức sinh viên', 'tin-tuc-sinh-vien', '', '<p><img src=\\\"http://localhost:8080/project.vn/uneti1/public/uploads/thumbs/statics/82/800x800/10-11-46-17-01-2021-tb84020201209pachuanophpk1.png\\\" /></p>', '10-17-51-17-01-2021-chinh-sach-1200x750.png', 'a:2:{i:0;s:50:\"10-11-46-17-01-2021-tb84020201209pachuanophpk1.png\";i:1;s:43:\"10-17-51-17-01-2021-chinh-sach-1200x750.png\";}', '1610853117', 20, 1, 0, NULL, 1, '', '', ''),
(83, NULL, 'Thông báo số 809/TB_ĐHKTKTCN, ngày 02/12/2020, v/v cấp học bổng hỗ trợ học tập đối với sinh viên có hoàn cảnh khó khăn học kỳ I năm học 2020 – 2021', 719, 'Tin tức sinh viên', 'tin-tuc-sinh-vien', '', '<p><img src=\\\"http://localhost:8080/project.vn/uneti1/public/uploads/thumbs/statics/83/800x800/10-14-17-17-01-2021-tb80920201202hocbongk1.png\\\" /></p>', '10-18-04-17-01-2021-chinh-sach-1200x750.png', 'a:2:{i:0;s:46:\"10-14-17-17-01-2021-tb80920201202hocbongk1.png\";i:1;s:43:\"10-18-04-17-01-2021-chinh-sach-1200x750.png\";}', '1610853272', 21, 1, 0, NULL, 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trash`
--

DROP TABLE IF EXISTS `trash`;
CREATE TABLE IF NOT EXISTS `trash` (
  `trash_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `trash_obj_id` int(11) DEFAULT NULL,
  `trash_title` varchar(255) DEFAULT NULL,
  `trash_class` varchar(255) DEFAULT NULL,
  `trash_content` longtext DEFAULT NULL,
  `trash_image` longtext DEFAULT NULL,
  `trash_image_other` longtext DEFAULT NULL,
  `trash_folder` varchar(255) DEFAULT NULL,
  `trash_created` int(12) DEFAULT NULL,
  PRIMARY KEY (`trash_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `trash`
--

INSERT INTO `trash` (`trash_id`, `uid`, `trash_obj_id`, `trash_title`, `trash_class`, `trash_content`, `trash_image`, `trash_image_other`, `trash_folder`, `trash_created`) VALUES
(38, NULL, 10, 'fadfádf', 'Teacher', 'a:7:{s:5:\"gv_id\";i:10;s:6:\"ten_gv\";s:8:\"fadfádf\";s:9:\"gv_status\";i:1;s:11:\"gv_order_no\";i:0;s:10:\"gv_created\";s:10:\"1611546580\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";}', '', 'a:0:{}', 'teacher', 1611546586),
(39, NULL, 2, 'Công ty Cổ phần Magenest Việt Namdfấdfsd', 'DoanhNghiep', 'a:9:{s:5:\"id_dn\";i:2;s:6:\"ten_dn\";s:49:\"Công ty Cổ phần Magenest Việt Namdfấdfsd\";s:9:\"dn_status\";i:1;s:10:\"dn_created\";s:10:\"1611545508\";s:7:\"website\";s:24:\"https://magenest.com/vi/\";s:6:\"ten_hr\";s:29:\"Trần Thị Thanhadfádfádf\";s:8:\"email_hr\";s:15:\"hr@magenest.com\";s:8:\"phone_hr\";s:10:\"0901726333\";s:11:\"nguyen_vong\";s:5:\"10 SV\";}', '', 'a:0:{}', 'doanh_nghiep', 1611546835),
(40, NULL, 3, 'Công ty Cổ phần Magenest Việt Nam', 'DoanhNghiep', 'a:9:{s:5:\"id_dn\";i:3;s:6:\"ten_dn\";s:40:\"Công ty Cổ phần Magenest Việt Nam\";s:9:\"dn_status\";i:1;s:10:\"dn_created\";s:10:\"1611545534\";s:7:\"website\";s:24:\"https://magenest.com/vi/\";s:6:\"ten_hr\";s:18:\"Trần Thị Thanh\";s:8:\"email_hr\";s:15:\"hr@magenest.com\";s:8:\"phone_hr\";s:10:\"0901726333\";s:11:\"nguyen_vong\";s:5:\"10 SV\";}', '', 'a:0:{}', 'doanh_nghiep', 1611546841);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT 1,
  `type_title` varchar(255) DEFAULT NULL,
  `type_intro` text DEFAULT NULL,
  `type_keyword` varchar(255) DEFAULT NULL,
  `type_order_no` int(10) DEFAULT 0,
  `type_created` int(11) DEFAULT 0,
  `type_status` tinyint(2) DEFAULT 0,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`type_id`, `uid`, `type_title`, `type_intro`, `type_keyword`, `type_order_no`, `type_created`, `type_status`) VALUES
(42, 1, 'kiểu tin tức', '', 'group_statics', 1, 1609818589, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_full_name` varchar(255) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_mail` varchar(254) DEFAULT '',
  `user_last_login` int(12) DEFAULT NULL,
  `user_last_ip` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_created` int(11) DEFAULT 0,
  `user_status` int(2) DEFAULT 0,
  `user_rid` int(5) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`user_name`) USING BTREE,
  KEY `created` (`user_created`) USING BTREE,
  KEY `mail` (`user_mail`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores user data.';

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`, `user_full_name`, `user_phone`, `user_mail`, `user_last_login`, `user_last_ip`, `user_image`, `user_created`, `user_status`, `user_rid`, `session_id`) VALUES
(1, 'admin', '14e1b600b1fd579f47433b88e8d85291', 'Administrator', '0913922986', 'nguyenduypt86@gmail.com', 1611681369, '::1', NULL, 1472418159, 1, 1, 'cJEUrxLn9G3J87QHFksntnvwHpTb1lOrD2EMnb11'),
(3, 'thanhvien', 'fdd3e0f125ba482693e2c190272a4e94', 'huy', '0375661382', 'huydo164@gmail.com', NULL, NULL, NULL, 1610271479, 1, 3, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_permission`
--

DROP TABLE IF EXISTS `user_permission`;
CREATE TABLE IF NOT EXISTS `user_permission` (
  `permission_id` int(10) NOT NULL AUTO_INCREMENT,
  `permission_role_id` int(10) DEFAULT NULL,
  `permission_group_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_group_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_as` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_menu_show` int(2) DEFAULT 0,
  `permission_icon` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `permission_status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21341 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `user_permission`
--

INSERT INTO `user_permission` (`permission_id`, `permission_role_id`, `permission_group_name`, `permission_group_icon`, `permission_name`, `permission_as`, `permission_url`, `permission_menu_show`, `permission_icon`, `permission_status`) VALUES
(20563, 3, 'Nội dung', 'fa fa-desktop', 'Xóa kiểu dữ liệu', 'admin.type_delete', 'POST|admin/type/delete', 0, '', 1),
(20562, 3, 'Nội dung', 'fa fa-desktop', 'Sửa kiểu dữ liệu', 'admin.type_edit', 'POST|admin/type/edit/{id?}', 0, '', 1),
(20561, 3, 'Nội dung', 'fa fa-desktop', 'Chi tiết kiểu dữ liệu', 'admin.type_edit', 'GET|admin/type/edit/{id?}', 0, '', 1),
(20560, 3, 'Nội dung', 'fa fa-desktop', 'Danh sách kiểu dữ liệu', 'admin.type', 'GET|admin/type', 1, 'fa fa-globe', 1),
(21338, 1, 'Trang thành viên', 'fa fa-desktop', 'Đồ án', 'project', 'GET|member/indexSinhVien/project', 0, '', 1),
(21337, 1, 'Trang thành viên', 'fa fa-desktop', 'Chi tiết tin tức', 'site.pageStaticsDetail', 'GET|member/indexSinhVien/tin/{id}', 0, '', 1),
(21336, 1, 'Trang thành viên', 'fa fa-desktop', 'Biểu mẫu', 'bieu_mau', 'GET|member/indexSinhVien/bieu-mau', 0, '', 1),
(21335, 1, 'Trang thành viên', 'fa fa-desktop', 'Trang chủ', 'indexSinhVien', 'GET|member/indexSinhVien', 0, '', 1),
(21334, 1, 'Hệ thống', 'fa fa-tag', 'Khôi phục thùng rác', 'admin.trash_delete', 'POST|admin/trash/restore', 0, '', 1),
(21320, 1, 'Hệ thống', 'fa fa-tag', 'Sửa quyền', 'admin.role_permission_save', 'POST|admin/role/permission/{id?}', 0, '', 1),
(21321, 1, 'Hệ thống', 'fa fa-tag', 'Xóa quyền', 'admin.role_delete', 'POST|admin/role/delete', 0, '', 1),
(21322, 1, 'Hệ thống', 'fa fa-tag', 'Danh sách nhóm quyền', 'admin.roleGroup', 'GET|admin/roleGroup', 1, 'fa fa-group', 1),
(21323, 1, 'Hệ thống', 'fa fa-tag', 'Chi tiết nhóm quyền', 'admin.roleGroup_edit', 'GET|admin/roleGroup/edit/{id?}', 0, '', 1),
(21324, 1, 'Hệ thống', 'fa fa-tag', 'Sửa nhóm quyền', 'admin.roleGroup_edit', 'POST|admin/roleGroup/edit/{id?}', 0, '', 1),
(21325, 1, 'Hệ thống', 'fa fa-tag', 'Xóa nhóm quyền', 'admin.roleGroup_delete', 'POST|admin/roleGroup/delete', 0, '', 1),
(21326, 1, 'Hệ thống', 'fa fa-tag', 'Danh sách người dùng', 'admin.user', 'GET|admin/users', 1, 'fa fa-user', 1),
(21327, 1, 'Hệ thống', 'fa fa-tag', 'Chi tiết người dùng', 'admin.user_edit', 'GET|admin/users/edit/{id?}', 0, '', 1),
(21328, 1, 'Hệ thống', 'fa fa-tag', 'Sửa người dùng', 'admin.user_edit', 'POST|admin/users/edit/{id?}', 0, '', 1),
(21329, 1, 'Hệ thống', 'fa fa-tag', 'Xóa người dùng', 'admin.user_delete', 'POST|admin/users/delete', 0, '', 1),
(21330, 1, 'Hệ thống', 'fa fa-tag', 'Danh sách thùng rác', 'admin.trash', 'GET|admin/trash', 1, 'fa fa-trash', 1),
(21331, 1, 'Hệ thống', 'fa fa-tag', 'Chi tiết thùng rác', 'admin.trash_edit', 'GET|admin/trash/edit/{id?}', 0, '', 1),
(21332, 1, 'Hệ thống', 'fa fa-tag', 'Sửa thùng rác', 'admin.trash_edit', 'POST|admin/trash/edit/{id?}', 0, '', 1),
(21333, 1, 'Hệ thống', 'fa fa-tag', 'Xóa thùng rác', 'admin.trash_delete', 'POST|admin/trash/delete', 0, '', 1),
(21318, 1, 'Hệ thống', 'fa fa-tag', 'Sửa quyền', 'admin.role_edit', 'POST|admin/role/edit/{id?}', 0, '', 1),
(21319, 1, 'Hệ thống', 'fa fa-tag', 'Chi tiết quyền', 'admin.role_permission', 'GET|admin/role/permission/{id?}', 0, '', 1),
(21317, 1, 'Hệ thống', 'fa fa-tag', 'Chi tiết quyền', 'admin.role_edit', 'GET|admin/role/edit/{id?}', 0, '', 1),
(21316, 1, 'Hệ thống', 'fa fa-tag', 'Danh sách quyền', 'admin.role', 'GET|admin/role', 1, 'fa fa-gears', 1),
(21314, 1, 'Hệ thống', 'fa fa-tag', 'Sửa tin khác', 'admin.info_edit', 'POST|admin/info/edit/{id?}', 0, '', 1),
(21315, 1, 'Hệ thống', 'fa fa-tag', 'Xóa tin khác', 'admin.info_delete', 'POST|admin/info/delete', 0, '', 1),
(21310, 1, 'Hệ thống', 'fa fa-tag', 'Bảng điều khiển', 'admin.dashboard', 'GET|admin/dashboard', 0, '', 1),
(21311, 1, 'Hệ thống', 'fa fa-tag', 'Clear cache', 'admin.clear', 'GET|admin/clear', 1, 'fa fa-flash', 1),
(21312, 1, 'Hệ thống', 'fa fa-tag', 'Danh sách thông tin khác', 'admin.info', 'GET|admin/info', 1, 'fa fa-globe', 1),
(21313, 1, 'Hệ thống', 'fa fa-tag', 'Chi tiết tin khác', 'admin.info_edit', 'GET|admin/info/edit/{id?}', 0, '', 1),
(21308, 1, 'Nội dung', 'fa fa-desktop', 'Sửa doanh nghiệp', 'admin.doanh_nghiep_edit', 'POST|admin/doanh-nghiep/edit/{id?}', 0, '', 1),
(21309, 1, 'Nội dung', 'fa fa-desktop', 'Xóa doanh nghiệp', 'admin.doanh_nghiep_edit', 'POST|admin/doanh-nghiep/delete', 0, '', 1),
(21307, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết doanh nghiệp', 'admin.doanh_nghiep_edit', 'GET|admin/doanh-nghiep/edit/{id?}', 0, '', 1),
(21306, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách doanh nghiệp', 'admin.doanh_nghiep', 'GET|admin/doanh-nghiep', 1, 'fa fa-globe', 1),
(21305, 1, 'Nội dung', 'fa fa-desktop', 'Xóa giáo viên', 'admin.teacher_edit', 'POST|admin/teacher/delete', 0, '', 1),
(21304, 1, 'Nội dung', 'fa fa-desktop', 'Sửa giáo viên', 'admin.teacher_edit', 'POST|admin/teacher/edit/{id?}', 0, '', 1),
(21302, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách giáo viên', 'admin.teacher', 'GET|admin/teacher', 1, 'fa fa-globe', 1),
(21303, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết giáo viên', 'admin.teacher_edit', 'GET|admin/teacher/edit/{id?}', 0, '', 1),
(21301, 1, 'Nội dung', 'fa fa-desktop', 'Xóa lớp', 'admin.lop_edit', 'POST|admin/lop/delete', 0, '', 1),
(21300, 1, 'Nội dung', 'fa fa-desktop', 'Sửa lớp', 'admin.lop_edit', 'POST|admin/lop/edit/{id?}', 0, '', 1),
(21299, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết lớp', 'admin.lop_edit', 'GET|admin/lop/edit/{id?}', 0, '', 1),
(21298, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách lớp', 'admin.lop', 'GET|admin/lop', 1, 'fa fa-globe', 1),
(21297, 1, 'Nội dung', 'fa fa-desktop', 'Xóa đồ án', 'admin.project_edit', 'POST|admin/project/delete', 0, '', 1),
(21296, 1, 'Nội dung', 'fa fa-desktop', 'Sửa đồ án', 'admin.project_edit', 'POST|admin/project/edit/{id?}', 0, '', 1),
(21295, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết đồ án', 'admin.project_edit', 'GET|admin/project/edit/{id?}', 0, '', 1),
(21294, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách đồ án', 'admin.project', 'GET|admin/project', 1, 'fa fa-globe', 1),
(21293, 1, 'Nội dung', 'fa fa-desktop', 'Xóa môn', 'admin.mon_edit', 'POST|admin/mon/delete', 0, '', 1),
(21288, 1, 'Nội dung', 'fa fa-desktop', 'Sửa biểu mẫu', 'admin.form_edit', 'POST|admin/form/edit/{id?}', 0, '', 1),
(21289, 1, 'Nội dung', 'fa fa-desktop', 'Xóa biểu mẫu', 'admin.form_edit', 'POST|admin/form/delete', 0, '', 1),
(21290, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách môn', 'admin.mon', 'GET|admin/mon', 1, 'fa fa-globe', 1),
(21292, 1, 'Nội dung', 'fa fa-desktop', 'Sửa môn', 'admin.mon_edit', 'POST|admin/mon/edit/{id?}', 0, '', 1),
(21291, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết môn', 'admin.mon_edit', 'GET|admin/mon/edit/{id?}', 0, '', 1),
(21287, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết biểu mẫu', 'admin.form_edit', 'GET|admin/form/edit/{id?}', 0, '', 1),
(21286, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách biểu mẫu', 'admin.form', 'GET|admin/form', 1, 'fa fa-globe', 1),
(21285, 1, 'Nội dung', 'fa fa-desktop', 'Xóa ngành', 'admin.branch_delete', 'POST|admin/branch/delete', 0, '', 1),
(21284, 1, 'Nội dung', 'fa fa-desktop', 'Sửa ngành', 'admin.branch_edit', 'POST|admin/branch/edit/{id?}', 0, '', 1),
(21283, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết ngành', 'admin.branch_edit', 'GET|admin/branch/edit/{id?}', 0, '', 1),
(21282, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách ngành', 'admin.branch', 'GET|admin/branch', 1, 'fa fa-globe', 1),
(21281, 1, 'Nội dung', 'fa fa-desktop', 'Xóa sinh viên', 'admin.sinh_vien_delete', 'POST|admin/sinh-vien/delete', 0, '', 1),
(21280, 1, 'Nội dung', 'fa fa-desktop', 'Sửa sinh viên', 'admin.sinh_vien_edit', 'POST|admin/sinh-vien/edit/{id?}', 0, '', 1),
(21279, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết sinh viên', 'admin.sinh_vien_edit', 'GET|admin/sinh-vien/edit/{id?}', 0, '', 1),
(21278, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách sinh viên', 'admin.sinh_vien', 'GET|admin/sinh-vien', 1, 'fa fa-globe', 1),
(21277, 1, 'Nội dung', 'fa fa-desktop', 'Xóa đăng ký', 'admin.contact_delete', 'POST|admin/contact/delete', 0, '', 1),
(21276, 1, 'Nội dung', 'fa fa-desktop', 'Sửa đăng ký', 'admin.contact_edit', 'POST|admin/contact/edit/{id?}', 0, '', 1),
(21275, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết đăng ký', 'admin.contact_edit', 'GET|admin/contact/edit/{id?}', 0, '', 1),
(21272, 1, 'Nội dung', 'fa fa-desktop', 'Sửa tin tức', 'admin.statics_edit', 'POST|admin/statics/edit/{id?}', 0, '', 1),
(21273, 1, 'Nội dung', 'fa fa-desktop', 'Xóa tin tức', 'admin.statics_delete', 'POST|admin/statics/delete', 0, '', 1),
(21274, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách đăng ký', 'admin.contact', 'GET|admin/contact', 1, 'fa fa-globe', 1),
(21269, 1, 'Nội dung', 'fa fa-desktop', 'Xóa banner', 'admin.banner_delete', 'POST|admin/banner/delete', 0, '', 1),
(21271, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết tin tức', 'admin.statics_edit', 'GET|admin/statics/edit/{id?}', 0, '', 1),
(21270, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách tin tức', 'admin.statics', 'GET|admin/statics', 1, 'fa fa-globe', 1),
(21267, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết banner', 'admin.banner_edit', 'GET|admin/banner/edit/{id?}', 0, '', 1),
(21268, 1, 'Nội dung', 'fa fa-desktop', 'Sửa banner', 'admin.banner_edit', 'POST|admin/banner/edit/{id?}', 0, '', 1),
(21266, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách banner', 'admin.banner', 'GET|admin/banner', 1, 'fa fa-globe', 1),
(21264, 1, 'Nội dung', 'fa fa-desktop', 'Sửa nội dung', 'admin.category_edit', 'POST|admin/category/edit/{id?}', 0, '', 1),
(21265, 1, 'Nội dung', 'fa fa-desktop', 'Xóa nội dung', 'admin.category_delete', 'POST|admin/category/delete', 0, '', 1),
(21263, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết nội dung', 'admin.category_edit', 'GET|admin/category/edit/{id?}', 0, '', 1),
(21262, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách nội dung', 'admin.category', 'GET|admin/category', 1, 'fa fa-globe', 1),
(21260, 1, 'Nội dung', 'fa fa-desktop', 'Sửa kiểu dữ liệu', 'admin.type_edit', 'POST|admin/type/edit/{id?}', 0, '', 1),
(21261, 1, 'Nội dung', 'fa fa-desktop', 'Xóa kiểu dữ liệu', 'admin.type_delete', 'POST|admin/type/delete', 0, '', 1),
(21259, 1, 'Nội dung', 'fa fa-desktop', 'Chi tiết kiểu dữ liệu', 'admin.type_edit', 'GET|admin/type/edit/{id?}', 0, '', 1),
(21258, 1, 'Nội dung', 'fa fa-desktop', 'Danh sách kiểu dữ liệu', 'admin.type', 'GET|admin/type', 1, 'fa fa-globe', 1),
(21339, 1, 'Trang thành viên', 'fa fa-desktop', 'Doanh nghiệp', 'doanh_nghiep', 'GET|member/indexSinhVien/doanh-nghiep', 0, '', 1),
(21340, 1, 'Trang thành viên', 'fa fa-desktop', 'Lịch học', 'mon', 'GET|member/indexSinhVien/mon', 0, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_title` varchar(64) NOT NULL DEFAULT '',
  `role_order_no` int(11) NOT NULL DEFAULT 0,
  `role_status` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `name` (`role_title`) USING BTREE,
  KEY `name_weight` (`role_title`,`role_order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores user roles.';

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_title`, `role_order_no`, `role_status`) VALUES
(1, 'Administrator', 1, 1),
(3, 'Thành viên', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role_group`
--

DROP TABLE IF EXISTS `user_role_group`;
CREATE TABLE IF NOT EXISTS `user_role_group` (
  `group_role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique role ID.',
  `group_role_title` varchar(64) DEFAULT '',
  `group_role_list` varchar(255) DEFAULT NULL,
  `group_role_order_no` int(11) DEFAULT 0,
  `group_role_status` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`group_role_id`) USING BTREE,
  UNIQUE KEY `name` (`group_role_title`) USING BTREE,
  KEY `name_weight` (`group_role_title`,`group_role_order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Stores user roles.';

--
-- Đang đổ dữ liệu cho bảng `user_role_group`
--

INSERT INTO `user_role_group` (`group_role_id`, `group_role_title`, `group_role_list`, `group_role_order_no`, `group_role_status`) VALUES
(1, 'Administrator', '1', 1, 1),
(3, 'Thành viên', '3', 2, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
