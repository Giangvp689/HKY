-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2020 at 04:45 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15771106_nha_tro_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dia_chi_phong_tro`
--

CREATE TABLE `dia_chi_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `DiaChi` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `XaPhuong` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `QuanHuyen` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TenChuTro` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Không xác định',
  `Sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dia_chi_phong_tro`
--

INSERT INTO `dia_chi_phong_tro` (`IDPhongTro`, `DiaChi`, `XaPhuong`, `QuanHuyen`, `TenChuTro`, `Sdt`) VALUES
(97, '26 Phố Võng Thị, Phường Bưởi, Quận Tây Hồ, Hà Nội', 'Phường Bưởi', 'Quận Tây Hồ', 'Tú', '0902131232'),
(98, '404 Đường Xuân Đỉnh, Phường Xuân Đỉnh, Quận Bắc Từ Liêm, Hà Nội', 'Phường Xuân Đỉnh', 'Quận Bắc Từ Liêm', 'Phan Ngọc', '0365629846'),
(99, 'Số nhà 14, ngách 40, ngõ 165 Đường Dương Quảng Hàm, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Phường Quan Hoa', 'Quận Cầu Giấy', 'Hiệu', '0346182739'),
(100, 'Tân mỹ, phường Mỹ Đình 1, quận Nam Từ Liêm (ngay đằng sau sân vận động Mỹ Đình)', 'Phường Mỹ Đình 1', 'Quận Nam Từ Liêm', 'Lâm', '0127382948'),
(101, 'Số nhà 118 Đường nguyễn Đổng Chi - Quận Nam Từ Liêm. (siêu thị thành đô rẽ vào hoặc đường Hàm Nghi đi vào)', 'Phường Mỹ Đình 1', 'Quận Nam Từ Liêm', 'Vũ', '0371123874'),
(102, 'Số 32/C1 – Đường Doãn Kế Thiện - P.Mai Dịch - Cầu Giấy.', 'Phường Mai Dịch', 'Quận Cầu Giấy', 'Long', '0141234847'),
(103, 'Số nhà 57A NGÕ 221 PHỐ TÔN ĐỨC THẮNG - PHƯỜNG HÀNG BỘT- ĐỐNG ĐA- HN.', 'Phường Hàng Bột', 'Quận Đống Đa', 'Hương', '0371988264'),
(104, 'Số nhà 7 ngõ 32/48/3 Đường Đỗ Đức Dục, Phường Mễ Trì, Quận Nam Từ Liêm, Hà Nội', 'Phường Mễ Trì', 'Quận Nam Từ Liêm', 'Vũ', '0981340254'),
(105, '5 ngõ 43 Đường Cổ Nhuế, Phường Cổ Nhuế 2, Quận Bắc Từ Liêm, Hà Nội', 'Phường Cổ Nhuế 2', 'Quận Bắc Từ Liêm', 'Mạnh ', '0973214984'),
(106, 'Đường Trường Chinh, Phường Khương Thượng, Quận Đống Đa, Hà Nội', 'Phường Khương Thượng', 'Quận Đống Đa', 'Nam', '0936358507'),
(107, 'Đường Trường Chinh, Phường Khương Thượng, Quận Đống Đa, Hà Nội', 'Phường Khương Thượng', 'Quận Đống Đa', 'Nam', '0495342493'),
(110, '	Đường Dương Quảng Hàm, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Phường Quan Hoa', 'Quận Cầu Giấy', 'Beemo', '0123456789'),
(111, '45 Đường Hồ Ba Mẫu, Phường Trung Phụng, Quận Đống Đa, Hà Nội', 'Phường Trung Phụng', 'Quận Đống Đa', '', '0123456789'),
(112, 'số 5 ngách 111/22 Đường Cù Chính Lan, Phường Khương Mai, Quận Thanh Xuân, Hà Nội', 'Phường Khương Mai', 'Quận Thanh Xuân', 'Beemo', '0123456789'),
(113, '14 ngõ 10 Đường Đại Linh, Phường Trung Văn, Quận Nam Từ Liêm, Hà Nội', 'Phường Đại Mỗ', 'Quận Nam Từ Liêm', 'Beemo', '0123456789'),
(114, 'SỐ 35 NGÕ 28/106 Đường Đại Linh, Phường Trung Văn, Quận Nam Từ Liêm, Hà Nội', 'Phường Phương Canh', 'Quận Nam Từ Liêm', 'Beemo', '0123456789'),
(115, 'Đường Trần Duy Hưng, Phường Trung Hòa, Quận Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'Beemo', '0123456789'),
(116, '57/35 Đường Nguyễn An Ninh, Phường Tương Mai, Quận Hoàng Mai, Hà Nội', 'Phường Tương Mai', 'Quận Hoàng Mai', 'Beemo', '0123456789'),
(117, 'Sn 23 Đường Độc Lập, Phường Cự Khối, Quận Long Biên, Hà Nội', 'Phường Long Biên', 'Quận Long Biên', 'Beemo', '0123456789'),
(118, '177 Đường Cầu Diễn, Phường Cầu Diễn, Quận Nam Từ Liêm, Hà Nội', 'Phường Cầu Diễn', 'Quận Nam Từ Liêm', 'Beemo', '0123456789'),
(119, 'số 7 Đường Hoàng Liệt, Phường Hoàng Liệt, Quận Hoàng Mai, Hà Nội', 'Phường Hoàng Liệt', 'Quận Hoàng Mai', 'Beemo', '0123456789'),
(121, ' 20 ngõ 196, Đường Cầu Giấy, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Phường Quan Hoa', 'Quận Cầu Giấy', 'Nguyễn Văn Hải', '0978335871'),
(122, ' Đường Trần Duy Hưng, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội', 'Phường Trung Hòa', 'Quận Cầu Giấy', 'Nguyễn Viết Tú', '0982948818'),
(123, ' NGUYỄN THỊ ĐỊNH, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội', 'Phường Trung Hòa', 'Quận Cầu Giấy', 'Nguyễn Ngọc Ngạn', '0358192797'),
(124, ' Đường Hoàng Quốc Việt, Phường Nghĩa Đô, Quận Cầu Giấy, Hà Nội', 'Phường Nghĩa Đô', 'Quận Cầu Giấy', 'Nguyễn Ngọc ', '0396594050'),
(125, ' Đường Cầu Giấy, Phường Dịch Vọng, Quận Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'ms Nga', '0906014476'),
(126, '105, Đường Doãn Kế Thiện, Phường Mai Dịch, Quận Cầu Giấy, Hà Nội', 'Phường Mai Dịch', 'Quận Cầu Giấy', '', '0868028855'),
(127, '37/201, Đường Cầu Giấy, Phường Dịch Vọng, Quận Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', '', '0989501286'),
(128, ' Đường Cầu Giấy, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Phường Quan Hoa', 'Quận Cầu Giấy', '', '0869732569'),
(129, 'Nhà C1, dự án 15 Đông Quan, Đuòng Đông Quan, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Phường Quan Hoa', 'Quận Cầu Giấy', '', '0387461379'),
(130, ' 65, Đường Yên Hòa, Phường Yên Hoà, Quận Cầu Giấy, Hà Nội', 'Phường Yên Hòa', 'Quận Cầu Giấy', 'Hiếu', '0928437775');

-- --------------------------------------------------------

--
-- Table structure for table `gia_phong_tro`
--

CREATE TABLE `gia_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `TieuDe` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `KieuPhong` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `KieuVeSinh` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa xác định',
  `GiaChoThue` int(11) NOT NULL,
  `DienTich` double NOT NULL,
  `GiaDien` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `GiaNuoc` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DoiTuong` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa xác định',
  `TienIch` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGianDang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gia_phong_tro`
--

INSERT INTO `gia_phong_tro` (`IDPhongTro`, `user_name`, `TieuDe`, `KieuPhong`, `KieuVeSinh`, `GiaChoThue`, `DienTich`, `GiaDien`, `GiaNuoc`, `DoiTuong`, `TienIch`, `MoTa`, `ThoiGianDang`) VALUES
(97, '123abcde', 'Cho Thuê CCMN Căn Hộ Dịch Vụ Full Nội Thất Sát Hồ Tây', 'Phòng trọ', 'Khép kín', 6500000, 40, '3000/số', '15000/khối', 'Tất cả', 'đầy đủ', 'Cho thuê 20 phòng CMMN Căn hộ dịch vụ cao cấp tại 26 Võng Thị quận Tây Hồ,đi bộ 200m.tới hồ tây.diện tích 40m2.thiết kế hiện đại,Căn hộ vừa được xây xong đang setup nội thất cao cấp mới 100%.đầy đủ.nội thất bao gồm thang máy,cửa phòng thiết kế khóa thẻ từ cao cấp,sàn gỗ.ĐH.NL.giường,tủ quần áo,tủ bếp kệ bếp đẹp miễn chê,bàn ghế phòng khách,tủ lạnh 120l.tivi màn hình phẳng có truyền hình cáp,máy giặt ngoài ban công.bếp từ nấu ăn,hút mùi.chăn,ga 2 bộ.gối,đêm.chỉ việc mang quần áo đến ở.Tầng hầm để xe riêng.bảo vệ trông đêm giờ giấc thoải mái ko chung chủ ra vào 24/24.phòng nào cũng có ban công để máy giặt và phơi đồ riêng.phòng nào cũng có cửa sổ rộng rãi thoáng mát.dọn vệ sinh đổ rác hằng ngày.Đi bộ ra Hồ Tây 200m.Nhà mới xây,nội thất mới sắm toàn bộ mới 100%.giá 6,5tr đến 7tr/tháng.tt 1 cọc 1.hãy là chủ nhân đầu tiên của căn phòng mới.ảnh thật của phòng do tay nghề kém chứ phòng bên ngoài đẹp hơn ảnh nhiều.liên hệ chính chủ.', '2020-12-11 17:24:53'),
(98, '123abcde', 'Cho Thuê CCMN 1 Ngủ 1 Khách Khu Ngoại Giao Đoàn (Phạm Văn Đồng) Full Đồ', 'Phòng trọ', 'Khép kín', 5500000, 55, '3100/số', '16000/khối', 'Tất cả', 'đầy đủ', '- Giờ giấc thoải mái, khoá cửa vân tay, hệ thống camera từng tầng.\r\n- Full nội thất bao gồm: Điều hòa, nóng lạnh, giường (có thể kê 2 giường), tủ, quạt trần, kệ bếp chậu rửa.\r\n- Thiết kế: 1 khách + 1 ngủ 55m2 giá 5tr5\r\n- Địa chỉ: Mặt phố 404 Xuân Đỉnh, Bắc Từ Liêm, Hà Nội \r\nGần uỷ ban phường Xuân Đỉnh, 5 phút ra Công viên Hoà Bình', '2020-12-11 20:31:28'),
(99, '123abcde', 'CHO THUÊ CĂN HỘ KIỂU CHUNG CƯ MINI KHÉP KÍN 36M2 NHÀ ĐẸP NGÕ 165, DƯƠNG QUẢNG HÀ', 'Phòng trọ', 'Khép kín', 3500000, 36, '3200/số', '15000/khối', 'Tất cả', 'đầy đủ', 'Hiện tại mình đang có phòng trống tại Quận Cầu Giấy vị trí trung tâm Thành Phố rất thuận tiện đi lại và sinh hoạt.\r\n- Địa chỉ: Số nhà 14, ngách 40, ngõ 165, đường Dương Quảng Hàm, phường Quan Hoa, quận Cầu Giấy, Hà Nội (Gần Đại học Thủ Đô)\r\n- Vị trí: Trung tâm quận Cầu Giấy nên di chuyển cực kỳ thuận tiện qua các quận khác.\r\n+ Nhà gần Cầu Giấy, gần chợ Quan Hoa, gần siêu thị Vinmart, Lottemart, gần nhiều cửa hàng quán ăn, gần bến xe bus; gần trường mầm non; gần trường học cấp 1, cấp 2, cấp 3; gần nhiều trường đại học như đại học Thủ Đô, ĐH Giao thông vận tải, ĐH ngoại thương, ĐH Luật, ĐH Quốc Gia, ĐH Sư Phạm, HV Báo Chí, Đại học điện lực, HV Kỹ thuật quân sự….\r\n+ Xung quanh có nhiều ngân hàng lớn như Vietcombank, Viettinbank, BIDV, Techcombank, MB….\r\n+ Nhà gần Cầu Giấy chỉ mất 2 phút đi xe, cách lottemart 5 phút đi xe, cách công viên Nghĩa Đô 5 phút đi bộ, cách phố Quan Hoa, đường Cầu Giấy 100m, cách đường Nguyễn Văn Huyên, Nguyễn Khánh Toàn 50m….\r\n- Tiện ích trong 1 phòng khép kín đầy đủ gồm:\r\n+ Điều hòa,\r\n+ Giường cho bạn giấc ngủ ngon.\r\n+ Tủ áo quần cho bạn gọn gàng ngăn nắp trong căn phòng của mình.\r\n+ Nóng lạnh an toàn chống giật.\r\n+ Khu vệ sinh khép kín, riêng biệt có đầy đủ thiết bị vệ sinh cho bạn riêng tư, kín đáo, sạch sẽ.\r\n+ Khu bếp nấu ăn riêng biệt không lo ám mùi vào phòng rất thuận tiện cho việc nấu ăn.\r\n+ Có chỗ để đồ riêng rộng rãi, gọn gàng cho căn phòng thêm rộng rãi.\r\n+ Có cửa sổ thoáng mát ngập tràn ánh sáng tự nhiên cho căn phòng\r\n+ Ban công để máy giặt phơi đồ thoáng rộng riêng biệt với phòng ngủ.\r\n- Internet tốc độ cao, có công tơ điện nước riêng từng phòng.\r\n- Nhà có chỗ để xe ở tầng 1 rộng rãi miễn phí\r\n- Giờ giấc thoải mái không chung chủ. Có khóa vân tay, khóa cơ, camera an ninh an toàn cho tài sản của bạn.\r\n- Không gian sống thoáng mát, yên tĩnh, cách âm cách nhiệt, sạch sẽ, có vệ sinh lau dọn hàng tuần.\r\n- Phòng rộng: 36m2\r\n- Giá: 3.5 tr\r\n(Chính chủ không qua môi giới)\r\nPhòng đẹp còn mới, phòng vừa mới trống hãy liên hệ ngay để hẹn giờ xem phòng trước khi đến kẻo hết. Chắc chắn bạn sẽ hài lòng với sự lựa chọn của mình. (Đảm bảo bạn xem là thích)\r\n(Ưu tiên hộ gia đình; Các bạn sinh viên ở sạch sẽ; người đi làm tử tế, lịch sự, ở lâu dài)', '2020-12-11 20:36:17'),
(100, '123abcde', 'CHO THUÊ CĂN HỘ 2 PHÒNG KHÉP KÍN CAO CẤP TẠI MỸ ĐÌNH, NAM TỪ LIÊM', 'Nhà nguyên căn', 'Khép kín', 3200000, 30, '3300/số', '17000/khối', 'Tất cả', 'đầy đủ', 'Căn hộ có đầy đủ tiện nghị: Thang máy, phòng nghủ, phòng nấu ăn và ăn, vệ sinh khép kín có nóng lạnh, tủ đứng, giường đôi, bệ bếp, tử bếp, quạt, rèm vải, ban công phơi quần áo riêng biệt, để xe máy. Căn hộ rất tiện ích cho một gia đình nhỏ sinh sống lâu dài, gần chợ, bệnh viện, siêu thị. Căn hộ có diện tích từ 25 đến 30 m2', '2020-12-11 20:41:00'),
(101, '123abcde', 'Chung cư mini 7 tầng mới hoàn thiện TẠI SỐ 118 ĐƯỜNG NGUYỄN ĐỔNG CHI có nhiều lo', 'Nhà nguyên căn', 'Khép kín', 4500000, 40, '3400/số', '17000/khối', 'Tất cả', 'đầy đủ', 'Hiện nay còn 1 căn \r\n-  Loại 1 phòng ngủ và khách DT25m2 giá 3.500.000d/ tháng.\r\n- Loại 1 phòng ngủ và 1 khách DT40 Gía 4.500.000 đ/tháng.\r\n- Gía cả linh hoạt, thanh toán 3 tháng + cọc 1 tháng. \r\n- Nội thất: Có nóng lạnh, giường, tủ, kệ bếp, chậu rửa, thiết bị vệ sinh hiện đại, các phòng đều thiết kế có cửa sổ thông thoáng.\r\nTòa nhà có thang máy, bảo vệ 24/24, an ninh đảm bảo, điện nước ổn định.\r\n- Vị trí: Nhà nằm ở khu vực đông dân cư, dân trí cao, gần chợ, trường FPT, dân lập Lê Qúy Đôn, Đoàn Thị Điểm, mầm non hoa anh đào, sát đô thị Mỹ Đình …, cách đường Hàm Nghi 300m.\r\nMặt đường trước cửa 5m, hai ô tô tránh nhau, phù hợp người đi làm, hộ gia đình trẻ có thêm ông bà hoặc giúp việc ở cùng.', '2020-12-11 20:50:32'),
(102, '123abcde', 'Tòa nhà 8 tầng tại phố Doãn Kế Thiện mới hoàn thiện vào ở luôn.', 'Nhà nguyên căn', 'Khép kín', 5000000, 40, '3500/số', '16000/khối', 'Tất cả', 'đầy đủ', '- Diện tích các phòng từ 38m2 - 40m2.\r\nGiá cho thuê 5.000.000đ/tháng, các phòng bao gồm:\r\nPhòng ngủ + phòng khách và khu bếp riêng biệt.\r\n- Phòng ngủ được trang bị điều hòa 2 chiều, giường, tủ quần áo...\r\n- Phòng khách cũng có thể làm phòng ngủ nếu nhà Đông người.\r\n- Phòng bếp được trang bị bàn ăn, bàn bếp, tủ bếp, chậu rửa bát, hút mùi,...\r\n- Khu vực nhà vệ sinh được lắp đầy đủ thiết bị hiện đại như chậu rửa mặt, bệt Inax, vòi sen, bình nóng lạnh,...\r\n- Tòa nhà có bảo vệ 24/24, đảm bảo an ninh tuyệt đối, giờ giấc ra vào thoải mái.\r\n- Khu vực ban công phơi đồ riêng biệt của từng phòng.\r\n* Tòa nhà nằm ở vị trí trung tâm, giao thông thuận tiện, cách mặt đường Doãn Kế Thiện 20m, đối diện chợ Đồng Xa nên rất thuận tiện cho việc mua sắm, đi chợ, nằm trong khuôn viên tập quân đội nên an ninh rất tốt, gần các trung tâm thương mại, gần các trường ĐH như quốc gia, ngoại ngữ, gần bến xe Mỹ Đình,...', '2020-12-11 20:52:42'),
(103, '123abcde', 'CHO THUÊ CHUNG CƯ MINI 1 P.NGỦ, DT40M2 ĐẦY ĐỦ TIỆN NGHI SÀN GỖ MẶT HỒ VĂN CHƯƠNG', 'Nhà nguyên căn', 'Khép kín', 6500000, 40, '3500/số', '18000/khối', 'Tất cả', 'đầy đủ', 'Tòa nhà chung cư mini 8 tầng đang hoàn thiện mặt hồ văn chương vào ở luôn,có nhiều căn hộ gồm 1 phòng ngủ,phòng khách, bếp cho thuê.\r\nDiện tích các căn hộ từ 35m2 - 40m2 - 50m2. \r\nGiá cho thuê 6.500.000đ - 7.500.000 -8.500.000 đ/căn.\r\n- Thanh toán tối thiểu 03, 06 tháng + đặt cọc 01 tháng.\r\nCác căn hộ bao gồm:\r\n+Loại A: gồm 2 phòng ngủ, 1 phòng khách và bếp, 2 phòng ngủ vew mặt hồ, 2 điều hòa,\r\nDT45m2  giá 8.5 Triệu / tháng.\r\n+Loại B: gồm 1 phòng ngủ+1 phòng khách có cửa sổ thông thoáng nhìn vew sang hồ Văn chương. DT 40m2 -GIÁ 7,5TR/tháng.\r\n+Loại C: gồm 1 phòng đơn khép kín có cửa sổ thông thoáng nhìn vew sang hồ Văn chương. DT 35m2 - GIÁ 6,5 tr/tháng.\r\n*Hiện nay còn trống 1 căn loại C đầu tháng 9 vào ở.\r\n-Các căn hộ đều được trang bị đầy đủ đồ như điều hòa 2 chiều, sàn gỗ cao cấp,giường, tủ quần áo,\r\n- Phòng bếp được trang bị bàn ăn, bàn bếp, tủ bếp, chậu rửa bát, hút mùi, tủ lạnh ….\r\n- Khu vực nhà vệ sinh được lắp đầy đủ thiết bị hiện đại như chậu rửa mặt, bệt Inax, vòi sen, bình nóng lạnh...\r\n- Có ban công riêng biệt từng căn hộ và khu vực phơi đồ và để máy giặt.\r\n- Tiện ích: Tòa nhà có bảo vệ 24/24, đảm bảo an ninh tuyệt đối, giờ giấc ra vào thoải mái.\r\n-Thang máy cao cấp, mỗi hộ gia đình có thẻ từ sử dụng riêng, internet cáp quang, miễn phí tuyền hình cáp, miễn phí máy giặt.\r\n- Tòa nhà nằm ở vị trí trung tâm, giao thông thuận tiện, ô tô đỗ cửa, cách mặt đường TÔN ĐỨC THẮNG 100m,nằm ngay ngã ba mặt hồ Văn Chương, không khí thoáng mát trong lành, gần các trung tâm thương mại, đi lại vào phố cổ rất thuận tiện...\r\n- Ưu tiên cho hộ gia đình, người đi làm thuê ở lâu dài.', '2020-12-11 21:42:54'),
(104, '123abcde', 'Cho thuê căn hộ mini cực đẹp mới xây đủ nội thất Đỗ Đức Dục', 'Phòng trọ', 'Khép kín', 4300000, 30, '3500/số', '25000/khối', 'Tất cả', 'đầy đủ', 'Cho thuê căn hộ mới xây cực đẹp, tất cả đồ dùng nội thất còn mới tinh, nhà thoáng rộng rất phù hợp cho các hộ gia đình hoặc các bạn sinh viên, đi làm ở 2-3 người.\r\n* Địa chỉ: Số nhà 7 ngõ 32/48/3 Đỗ Đức Dục, Mễ Trì, Nam Từ Liêm, Hà Nội (bạn có thể tìm với từ khóa Kovi House 03 trên google map).\r\n- Vị trí đắc địa:\r\n+ Cực gần các đường lớn: Đường Phạm Hùng, Mễ Trì, Đỗ Đức Dục. Đi lại dễ dàng.\r\n+ Cực gần các tòa nhà cao ốc, công trình trọng điểm: khách sạn Marriott, West Point, Bảo tàng Hà Nội, Keangnam (chỉ mất khoảng 5 phút tới các địa điểm này).\r\n+ Xung quanh gần các khu dịch vụ tiện ích, nhà hàng, khu văn phòng, công ty, ngân hàng, trường học, trung tâm.\r\n* Tiện ích:\r\n- Thang máy hiện đại tốc độ cao.\r\n- Tất cả các phòng đều thông thoáng, bếp riêng biệt.\r\n- Không gian yên tĩnh.\r\n- An ninh chặt chẽ, có camera, khóa từ.\r\n- Có quản lý.\r\n- Giờ giấc đi lại thoải mái.\r\n- Vệ sinh khép kín.\r\n* Nội thất:\r\nNhà mới xây đầy đủ đồ tiện nghi cho bạn sử dụng.\r\n- Đồ nội thất: Giường đệm, tủ áo quần, tủ bếp, bàn bếp, bàn ghế đa năng, bàn làm việc, rèm cửa, điều hòa, quạt trần, bình nóng lạnh, wifi tốc độ cao, đủ thiết bị vệ sinh cao cấp...\r\n+ Loại phòng 1: Diện tích 30 m2, giá chỉ 4.2 triệu/tháng có giảm thêm cho khách ở dài hạn. (Điện: 3.500 Đ/ 1 số, nước: 25.000 Đ/ 1 khối, Tất cả dịch vụ khác 200.000 bao gồm: Thang máy, máy giặt, internet, rác... ).\r\n+ Loại phòng 2: Diện tích 33m2 giá chỉ 4.5 triệu/tháng có giảm thêm cho khách ở dài hạn. (Điện: 3.500 Đ/ 1 số, nước: 25.000 Đ/ 1 khối, Tất cả dịch vụ khác 200.000 bao gồm: Thang máy, máy giặt, internet, rác... ).', '2020-12-11 21:45:41'),
(105, '123abcde', 'Phòng đủ đồ điều hòa, nóng lạnh mới 100% tại Cổ Nhuế', 'Phòng trọ', 'Khép kín', 3500000, 30, '3500/số', '20000/khối', 'Tất cả', 'đầy đủ', 'Nhà tôi có tòa nhà CCMN vừa mới xây xong tổng 21 phòng.\r\nĐến ngày 1/12/2020 là có thể vào ở được luôn.\r\n- Địa chỉ: Nhà số 5 ngõ 43 đường Cổ Nhuế, P. Cổ Nhuế 2, Bắc Từ Liêm, Hà Nội.\r\n- Vị trí: Ngay sát ngã tư Cổ Nhuế - Phạm Văn Đồng. Đi bộ 50m2 ra bắt xe buýt. Oto đỗ cửa rất thuận tiện khi di chuyển. Gần chung cư bộ Công An tiện thể dục đi dạo thư giãn. Đi bộ vài bước ra chợ Cổ Nhuế, khu vực đông dân cư nhiều cửa hàng dịch vụ tiện ích.\r\n------------------\r\n- Diện tích: 30m2 được thiết kế thành 1 phòng studio khép kín.\r\n- Trang thiết bị trong phòng gốm: 1 điều hòa 12000BTU, 1 gường gỗ thịt, 1 tủ quần áo, 1 bình nóng lạnh, kệ bếp chậu rửa nấu ăn, tủ bếp trên dưới, rèm cửa đầy đủ, hệ thống điện 3pha hiện đại, wifi từng phòng. Đặc biệt là tất cả các phòng đều có ban công phơi đồ và cửa sổ thoáng với thiết kế hiện đại.\r\n- Thích hợp ở hộ gia đình, nhóm 2 - 4 người.\r\n- Để xe tầng 1 free cực kỳ rộng rãi.\r\n- Giờ giấc tự do, thoải mái, khóa vân tay, camera an ninh.\r\n- Đóng tiền 1 tháng cọc 1 tháng.\r\n- Giá: 3.5tr - 3.6tr/th.\r\n- Ai đến thuê sớm thì sẽ chọn được phòng đẹp nhất.\r\n---------------\r\nNgoài ra tôi còn phòng với giá rẻ hơn từ 2,6tr - 3,3tr (20 - 40m2) đã trang bị đầy đủ điều hòa, nóng lạnh, giường, tủ.', '2020-12-11 21:52:35'),
(110, 'beemoVNC', 'CHO THUÊ CĂN HỘ CHUNG CƯ MINI KHÉP KÍN 36M2 NHÀ ĐẸP NGÕ 165, DƯƠNG QUẢNG HÀM, CẦ', 'Phòng trọ', 'Khép kín', 3500000, 200, '', '', 'Sinh viên', '', 'CHO THUÊ PHÒNG KIỂU CHUNG CƯ MINI KHÉP KÍN 36M2 NHÀ ĐẸP, TIỆN NGHI, TỰ DO, YÊN TĨNH, THOÁNG MÁT, NGÕ 165, ĐƯỜNG DƯƠNG QUẢNG HÀM, CẦU GIẤY, HÀ NỘI.\r\n\r\nBạn đang mong muốn sống trong 1 căn phòng thoáng đẹp khép kín của chung cư mini tiện nghi, thoải mái, yên tĩnh, thoáng mát, tự do giờ giấc như chính nhà của mình? Bạn đang mong muốn thuê căn phòng giá cả hợp lý mà lại rất chất lượng?\r\n\r\nHiện tại mình đang có phòng trống tại Quận Cầu Giấy vị trí trung tâm Thành Phố rất thuận tiện đi lại và sinh hoạt.\r\n\r\n- Địa chỉ: Số nhà 14, ngách 40, ngõ 165, đường Dương Quảng Hàm, phường Quan Hoa, quận Cầu Giấy, Hà Nội (Gần Đại học Thủ Đô)\r\n\r\n- Vị trí: Trung tâm quận Cầu Giấy nên di chuyển cực kỳ thuận tiện qua các quận khác.\r\n\r\n+ Nhà gần Cầu Giấy, gần chợ Quan Hoa, gần siêu thị Vinmart, Lottemart, gần nhiều cửa hàng quán ăn, gần bến xe bus; gần trường mầm non; gần trường học cấp 1, cấp 2, cấp 3; gần nhiều trường đại học như đại học Thủ Đô, ĐH Giao thông vận tải, ĐH ngoại thương, ĐH Luật, ĐH Quốc Gia, ĐH Sư Phạm, HV Báo Chí, Đại học điện lực, HV Kỹ thuật quân sự….\r\n\r\n+ Xung quanh có nhiều ngân hàng lớn như Vietcombank, Viettinbank, BIDV, Techcombank, MB….\r\n\r\n+ Nhà gần Cầu Giấy chỉ mất 2 phút đi xe, cách lottemart 5 phút đi xe, cách công viên Nghĩa Đô 5 phút đi bộ; cách phố Quan Hoa, đường Cầu Giấy 100m; cách đường Nguyễn Văn Huyên, Nguyễn Khánh Toàn 50m….\r\n\r\n- Tiện ích trong 1 phòng khép kín đầy đủ gồm:\r\n\r\n+ Điều hòa,\r\n\r\n+ Giường cho bạn giấc ngủ ngon.\r\n\r\n+ Tủ áo quần cho bạn gọn gàng ngăn nắp trong căn phòng của mình.\r\n\r\n+ Nóng lạnh an toàn chống giật.\r\n\r\n+ Khu vệ sinh khép kín, riêng biệt có đầy đủ thiết bị vệ sinh cho bạn riêng tư, kín đáo, sạch sẽ.\r\n\r\n+ Khu bếp nấu ăn riêng biệt không lo ám mùi vào phòng rất thuận tiện cho việc nấu ăn.\r\n\r\n+ Có chỗ để đồ riêng rộng rãi, gọn gàng cho căn phòng thêm rộng rãi.\r\n\r\n+ Có cửa sổ thoáng mát ngập tràn ánh sáng tự nhiên\r\n\r\n+ Ban công để máy giặt phơi đồ thoáng rộng riêng biệt với phòng ngủ.\r\n\r\n- Internet tốc độ cao, có công tơ điện nước riêng từng phòng.\r\n\r\n- Nhà có chỗ để xe ở tầng 1 rộng rãi miễn phí\r\n\r\n- Giờ giấc thoải mái không chung chủ. Có khóa vân tay, khóa cơ, camera an ninh an toàn cho tài sản của bạn.\r\n\r\n- Không gian sống thoáng mát, yên tĩnh, cách âm cách nhiệt, sạch sẽ, có vệ sinh lau dọn hàng tuần.\r\n\r\n- Phòng rộng: 36m2\r\n\r\n- Giá: 3.5tr\r\n\r\n- Liên hệ: Mr Lực: 0961.529.365 (Chính chủ không qua môi giới)\r\n\r\nPhòng đẹp phòng vừa mới trống hãy liên hệ ngay để hẹn giờ xem phòng trước khi đến kẻo hết. Chắc chắn bạn sẽ hài lòng với sự lựa chọn của mình. (Đảm bảo bạn xem là thích)\r\n\r\n(Ưu tiên hộ gia đình; Các bạn sinh viên ở sạch sẽ; người đi làm tử tế, lịch sự, ở lâu dài)', '2020-12-12 22:52:47'),
(111, 'beemoVNC', 'CCMN full đồ tại Hồ Ba Mẫu - Xã Đàn', 'Phòng trọ', 'Khép kín', 4000000, 20, '', '', 'Sinh viên', '', '- Diện tích toà căn 28m2/căn trong tòa nhà 8 căn hộ riêng biệt, có thang máy. Mỗi căn đc trang bị đầy đủ từ bát đĩa, bếp từ, nồi chảo, chăn ga gối đệm đến đồ điện TV, tủ lạnh, điều hoÀ, nóng lạnh, máy giặt. Chỉ việc xách vali đến và ở\r\n\r\n- Nhà trong ngõ nông, cách mặt hồ 30m, 2 xe máy tránh nhau, bãi ô tô gửi cách nhà 100m.\r\n\r\n- ở tối đa 4 người (có đệm dự phòng)\r\n\r\n- được phép nuôi động vật\r\n\r\n- phơi đồ ngoài ban công từng phòng, có máy giặt riêng\r\n\r\n- Thanh toán linh động 3 cọc 1 hoặc 1 cọc 1\r\n\r\n- Miễn phí: dịch vụ vệ sinh phòng, thay ga gối hàng tuần, wifi, th cap, gửi xe và sử dụng thang máy, vệ sinh môi trường', '2020-12-12 22:55:58'),
(112, 'beemoVNC', 'Phòng Trọ Cho Người Đi Làm Thuê Tại Thanh Xuân', 'Phòng trọ', 'Khép kín', 4500000, 20, '', '', 'Sinh viên', '', 'Nhà 4 tầng cho người đi làm và hộ gia đình thuê phòng. phòng ở tầng 1 diện tích 35m2 khép kín thoáng mát đầy đủ tiện nghi đi cổng chung với chủ ô tô đỗ cửa.có đường dây mạng điều hòa bình nóng lạnh riêng\r\n\r\nLiên hệ cô Đạm\r\n\r\nSĐT : 0912728493\r\n\r\nĐ/c số 5 ngách 111/22 Cù Chính Lan, T.Xuân.HN', '2020-12-12 22:57:34'),
(113, 'beemoVNC', 'Chính chủ cho thuê CCMN ngõ 10 Đại Linh, Trung Văn giá 3,3 triệu/tháng.', 'Phòng trọ', 'Khép kín', 3300000, 30, '', '', 'Tất cả', '', 'Chính chủ cho thuê CCMN ngõ 10 Đại Linh, Trung Văn giá 3,3 triệu/tháng.\r\n\r\nVị trí: Số 14 ngõ 10 Đại Linh, Trung Văn, Nam Từ Liêm Hà Nội.\r\n\r\nNgôi nhà gần chợ và các trung tâm như: Trung tâm hội nghị quốc gia 800m, cách đường Tố Hữu 800m, cách Big C Thăng Long 1km, cách Keangnam 2km.\r\n\r\nCách điểm đón xe bus số 33 500m\r\n\r\nRất thuận lợi cho việc đi lại.\r\n\r\nBố trí: Gồm 6 tầng 100% trong đó.\r\n\r\n+ Tầng 1 để xe và 1 phòng khép kín.\r\n\r\n+ Tầng 2 đến tầng 6 mỗi tầng 3 phòng khép kín.\r\n\r\nDiện tích: Diện tích mỗi phòng khoảng 25m2.\r\n\r\nNội thất: Giường, tủ quần áo, nóng lạnh, điều hòa, bàn bếp, chậu rửa.\r\n\r\nGiá dịch vụ: Điện 3.000/kw.\r\n\r\nNước 30k/m3.\r\n\r\nMạng 100k/phòng, vệ sinh chung 50k/phòng.\r\n\r\nThang máy 50k/người lớn.\r\n\r\nGiá cho thuê 3,1 đến 3,5 triệu/tháng', '2020-12-12 22:58:58'),
(114, 'beemoVNC', 'Chính chủ cho thuê CCMN ngõ 28/10 Đại Linh, Trung Văn, giá 2.8tr/tháng.', 'Phòng trọ', 'Khép kín', 2800000, 32, '', '', 'Tất cả', '', 'Chính chủ cho thuê CCMN ngõ 28/10 Đại Linh, Trung Văn, giá 2.8tr/tháng.\r\n\r\nVị trí: Số 35 ngõ 28/10 Đại Linh, Trung Văn, Nam Từ Liêm Hà Nội.\r\n\r\nNgôi nhà gần chợ và các trung tâm như: Trung tâm Hội Nghị Quốc Gia 1km, cách đường Tố Hữu 1km, cách Big C Thăng Long 1,5km, cách Keangnam 2km.\r\n\r\nRất thuận lợi cho việc đi lại.\r\n\r\nBố trí: Gồm 4 tầng 1 tum mới xây 100% trong đó.\r\n\r\n+ Tầng 1 để xe và 1 phòng khép kín.\r\n\r\n+ Tầng 2 đến tầng 4 mỗi tầng 2 phòng khép kín.\r\n\r\n+ Tầng 5 sân phơi và 1 phòng khép kín.\r\n\r\nDiện tích: Diện tích mỗi phòng khoảng 22m2.\r\n\r\nNội thất: Giường, tủ quần áo, nóng lạnh, điều hòa, bàn bếp, chậu rửa.\r\n\r\nGiá dịch vụ: Điện 3.500/kw.\r\n\r\nNước 30k/m3.\r\n\r\nMạng 100k/phòng, vệ sinh chung 50k/phòng.\r\n\r\nThang máy 50k/người lớn.\r\n\r\nGiá cho thuê 2,7 đến 2,9 triệu/tháng.', '2020-12-12 23:00:55'),
(115, 'beemoVNC', 'Cho thuê căn hộ mini ở 204 Trần Duy Hưng, giờ giấc thoải mái, không chung chủ', 'Phòng trọ', 'Khép kín', 3200000, 20, '', '', 'Sinh viên', '', 'Tòa nhà được thiết kế hiện đại có cầu thang máy đi lên các tầng, cổng được thiết kế khóa vân tay nên ai ở thì mới vào được nhà.\r\n\r\n- Bố trí căn hộ trong ngôi nhà:\r\n\r\n+ Tầng 1: Chỗ để xe rộng rãi.\r\n\r\n+ Từ tầng 2 - tầng 5: Mỗi tầng được thiết kế 2 căn hộ khép kín, nhiều cửa sổ đảm bảo ánh sáng vào trong các phòng.\r\n\r\n+ Diện tích phòng 28m2 - 30m2.\r\n\r\n- Nội thất: Bình nóng lạnh, bàn bếp, thiết bị vệ sinh cao cấp...\r\n\r\nGiá cho thuê: 3.6 triệu/căn.\r\n\r\n+ Diện tích phòng 30m2.\r\n\r\n- Nội thất: Điều hòa, Giường, tủ quần áo, bình nóng lạnh, bàn bếp, thiết bị vệ sinh cao cấp...\r\n\r\nGiá cho thuê: 3.8 triệu/căn.\r\n\r\nVị trí: ngõ 204, Trần Duy Hưng, Trung Hòa, Cầu Giấy, Hà Nội.\r\n\r\nLiên hệ chủ nhà: 0985.466.872.\r\n\r\nƯu tiên hộ gia đình ở lâu dài và tử tế.', '2020-12-12 23:02:38'),
(116, 'beemoVNC', 'Cho thuê phòng trọ tại Nguyễn An Ninh, Trương Định gần ĐHKT, XD, BK', 'Phòng trọ', 'Khép kín', 2800000, 25, '', '', 'Tất cả', '', 'Cho thuê chung cư mini tại Số 57 Ngõ 35 Phố Nguyễn An Ninh - Tương Mai - Hoàng Mai – Hà Nội.\r\n\r\n(Chính chủ không qua trung gian)\r\n\r\n- Phòng đẹp, thiết kế tiện dụng, thoáng mát, công trình khép kín, riêng tư độc lập, đảm bảo xem là thích.\r\n\r\n- Còn phòng 20-30m2 có điều hòa thoáng mát .\r\n\r\n- Nhà vệ sinh khép kín xịn, tiện nghi, có Nóng lạnh.- Điện, nước, internet giá rẻ, công tơ điện riêng. - Có cáp Tivi, camera 24/24 yên tâm an ninh.- Để xe tầng 1 tiện lợi miễn phí, Ô tô đỗ đón tận cửa.\r\n\r\n- Giá: 3,0-3,8 tr/tháng ( thanh toán 2 tháng một lần, cọc 1 tháng) .\r\n\r\n- Địa Chỉ: Số 57 Ngõ 35 Phố Nguyễn An Ninh – Hà Nội.\r\n\r\nLiên hệ gọi điện hẹn trước thời gian xem phòng vào khoảng 11h-14h sáng và 17h-19h chiều, ngoài giờ đó thì gọi điện lhe trước. : Chị Trang 0934.672.806', '2020-12-12 23:04:24'),
(117, 'beemoVNC', 'Phòng trọ khép kín giá rẻ Long Biên 30m2', 'Phòng trọ', 'Không khép kín', 1500000, 23, '', '', 'Tất cả', '', 'Xin chào!\r\n\r\nHiện gia đình mình còn 1 phòng trọ rộng 30m2\r\n\r\nPhòng sạch sẽ bệ sinh khép kín, đầy đủ thiết bị vệ sinh\r\n\r\nPhòng hiện có 1 giường, kệ bếp, nóng lạnh, gác xép rất rộng ạ\r\n\r\nKhu dân cư an ninh tốt, thoáng mát, riêng chủ chủ thoải mái\r\n\r\nBạn nào có nhu cầu lh chú dư 0943483978', '2020-12-12 23:05:43'),
(118, 'beemoVNC', 'Cho Thuê Phòng Trọ Cầu Diễn 30m2, Đủ Đồ', 'Phòng trọ', 'Khép kín', 1700000, 15, '', '', 'Tất cả', '', 'Cho Thuê CCMN mới 100% ở 177 Cầu Diễn\r\n\r\nNội Thất :\r\n\r\n+ Diện tích 30m2\r\n\r\n+ Phòng Khép Kín\r\n\r\n+ Giường, tủ, Nóng lạnh, Điều Hòa, Bàn ăn uống, Cửa sổ, rèm cửa to thoáng, quạt trần, máy giặt chung, Cửa Vân Tay\r\n\r\n+ Bếp và tủ bếp tách biệt với phòng\r\n\r\n+ Để xe Free tầng 1\r\n\r\nGiá : 3tr2 - 3tr5', '2020-12-12 23:07:01'),
(119, 'beemoVNC', 'CHO THUÊ PHÒNG TRỌ KHÉP KÍN KDC LINH ĐÀM - P.HOÀNG LIỆT - Q.HOÀNG MAI - HÀ NỘI', 'Phòng trọ', 'Khép kín', 4200000, 23, '', '', 'Tất cả', '', 'Địa chỉ:\r\n\r\nSố 7 - Ngõ 2 - Tổ 18 - KDC Linh Đàm - P. Hoàng Liệt - Q.Hoàng Mai - Hà Nội. (Cách trường THCS Hoàng Liệt 10m, Cách bến xe Nước Ngầm 500m, Cách Khu đô thị Linh Đàm 500m).\r\n\r\n* Đặc điểm phòng: \r\n\r\nCó toilet riêng trong phòng. \r\n\r\nPhòng có 2 cửa sổ nhìn ra 2 hướng, 1 mặt nhìn ra đường lớn, 1 mặt nhìn ra hồ.\r\n\r\nCó Internet cáp quang, Wifi, Truyền hình cáp.\r\n\r\nCó chỗ để xe trong nhà. \r\n\r\nCó đồng hồ điện nước riêng.\r\n\r\nGiao chìa khóa riêng, thời gian đi lại thoải mái, tự do tiếp bạn bè.\r\n\r\nCó bàn bếp để bếp ga, dụng cụ làm bếp, có thể đun nấu ở hành lang bên ngoài.\r\n\r\n* Giá phòng: 1,5 - 2 triệu (free chỗ để xe).\r\n\r\n* Liên hệ: cô Loan SĐT: 0912.423.060', '2020-12-12 23:08:17'),
(121, 'manhdaubuoi123', 'Cho thuê phòng đủ đồ 30m2 ngõ 196 Cầu Giấy', 'Phòng trọ', 'Khép kín', 4500000, 30, '3000d/kw', '7k/m3', 'Tất cả', 'Có bạn cùng phòng tên Mạnh tuy bẩn tính nhưng được cái ích kỉ', 'Tòa nhà 7 tầng số 20 ngõ 196 phố cầu giấy, mới hoàn thiện xong\r\n- *. Vị trí tiện ích:\r\nTòa nhà nằm gần mặt đường Nguyễn văn Huyên kéo dài, cách đường Cầu giấy 30m,được thiết kế thông minh, tiện lợi, đầy đủ tiện ích đi kèm, gồm tầng 1 với DT: 250m2 để xe rộng rãi. Giao thông đi lại thuận tiện và 6 tầng trên là các căn hộ chung cư mini cho thuê.\r\n- Chỉ 3 phút để tiếp cận hệ thống ngân hàng, siêu thị, trung tâm thương mại, trường học quốc tế từ mầm non đến trung học, đại học quanh khu vực cầu giấy...\r\n*. Thiết kế 03 loại diện tích: 27m2, 35m2, 42m2 với phong cách hiện đại, tiện dụng.\r\n- 1 phòng ngủ riêng biệt: Điều hòa 02 chiều, giường, tủ quần áo, sàn gỗ...\r\n- 1 Phòng khách được thiết kế đẹp có thể làm phòng ngủ nếu nhà đông người.\r\n- Khu bếp riêng biệt, có tủ bếp trên và dưới, chậu rửa bát hiện đại nấu nướng không sợ mùi vào phòng ngủ và khách.\r\n- WC khép kín hiện đại, bình nóng lạnh, thiết bị vệ sinh Inax.\r\n- Tòa nhà được lắp camera an ninh, đảm bảo, bảo vệ 24/24h.\r\n- Gửi xe miễn phí, tối đa mỗi phòng 2 xe máy, truyền hình cáp, internet cáp quang, camera các tầng, có thang máy tốc độ cao...\r\n- Căn hộ có cửa sổ thoáng mát, chỉ việc xách va li đến ở.', '2020-12-13 16:12:07'),
(122, 'manhdaubuoi123', 'Phòng trọ hồ Trung Kính Trần Duy Hưng 35m2 giá 4.6', 'Phòng trọ', 'Khép kín', 4600000, 35, '4k/kw', '7k/m3', 'Tất cả', '', '+ Chung cư mini mới\r\n+ Vị trí đẹp siêu thuận lợi.\r\n+ Tòa nhà tọa lạc ngay góc hồ cực đẹp.\r\n+ 10 bước chân ra phố Trần Duy Hưng, vào ở được ngay.\r\n+ Căn studio 1 phòng bếp, 1 phòng ngủ, đầy đủ đồ.\r\n- Vệ sinh khép kín, full đồ: Điều hòa, nóng lạnh, máy gặt, tủ lạnh.\r\nGiường tủ, bàn ghế, bếp chậu rửa, tủ bếp...\r\n- Camera an ninh 24/24.\r\n- Giờ giấc tự do.\r\n- Khóa vân tay.', '2020-12-13 16:16:10'),
(123, 'manhdaubuoi123', 'CHUNG CƯ MINI TẠI NGUYỄN THỊ ĐỊNH.', 'Phòng trọ', 'Khép kín', 4500000, 35, '4k/kw', '8k/m3', 'Sinh viên', '', 'CHÍNH CHỦ CHO THUÊ CHUNG CƯ MINI CAO CẤP FULL ĐỒ NHƯ HÌNH - MỚI 100%, KHÔNG CHUNG CHỦ GIỜ GIẤC THOẢI MÁI.\r\n', '2020-12-13 16:20:43'),
(124, 'manhdaubuoi123', 'cho thuê phòng 35m2 full đồ ở hoàng quốc việt', 'Phòng trọ', 'Khép kín', 4000000, 30, '3000d/kw', '7k/m3', 'Người đi làm', '', '\r\nNội thất gồm: Điều hòa 2 chiều, Nóng lạnh, Giường, Tủ quần áo, Chăn ga gối đệm, Tivi, Kệ Tivi, Tủ lạnh, Máy lọc nước, Tủ bếp, Máy hút mùi, Sàn gỗ, Máy giặt, Rèm,... Đạt chuẩn khách sạn 4*.\r\nBảng Giá dịch vụ:\r\n+ Điện: 3,8k/ 1số tính theo công tơ.\r\n+ Nước: 100k/người/tháng.\r\n+ Mạng internet và truyền hình cáp : 80k/ 1phòng.\r\n+ Giá dịch vụ 200k/người, bao gồm:\r\nTiền điện cầu thang máy, Tiền điện hàng lang chung, Vệ sinh hành lang hàng ngày và rác vệ sinh phòng riêng, camera an ninh, bảo vệ 24/24 (dịch vụ tốt , giá rẻ ).\r\nHình thức thanh toán: Tiền cọc + Tiền phòng + dịch vụ/tháng.\r\nTiện ích xung quanh:\r\n+ 50m: Chợ, siêu thị, cửa hàng tạp hóa...\r\n+ 50m: Mặt đường Hoàng Quốc Việt, gần bãi gửi ô tô ngày và đêm, phòng gym, hồ điều hòa, công viên,...\r\n+ 150m: Trường mầm non, tiểu học, phòng khám...\r\n+ Gần các trường đại học như Thương Mại, Quốc Gia, Ngoại Ngữ, Sư phạm, điện lực........\r\nNhà sử dụng khóa ra vào vân tay. Có phục vụ vệ sinh phòng, hàng lang,, nhà xây mới 100% sử dụng nội thất và vệ sinh nhập khẩu. Phù hợp cho mọi đối tượng. Ở ghép thoải mái, không giới hạn số lượng, không giới hạn thời gian ra vào tòa nhà.', '2020-12-13 16:27:00'),
(125, 'manhdaubuoi123', 'Phòng trọ CCMN khép kín Quận Cầu Giấy 34m²', 'Phòng trọ', 'Khép kín', 3800000, 34, '4k/kw', '30k/m3', 'Tất cả', '', 'Chính chủ cho thuê phòng khép kín tại toà nhà chung cư mini 6 tầng, đường Cầu Giấy.\r\nHiện gia đình mình còn 01 phòng trống cho thuê tại CCMN Cầu Giấy.\r\n- Nhà mới, thiết kế theo mô hình chung cư mini, view thoáng đẹp, sinh hoạt khép kín, cửa sổ - ban công phơi đồ tại phòng- thoáng và tràn đầy ánh sáng … đầy đủ mọi tiện nghi ( internet, truyền hình cáp, nóng lạnh, điều hòa, giường ngủ, tủ tường, kệ bếp, chậu rửa, kho chứa đồ trong phòng, máy giặt, tủ lạnh, sân phơi ....), giờ giấc đi lại tự do, nhà để xe rộng miễn phí có camera hỗ trợ. An ninh tốt. Giờ giấc thoải mái.\r\nAi quan tâm và có nhu cầu thực sự alo hoặc inbox nhanh kẻo hết phòng nhé. Rất hiếm khi có phòng trống vì khách thường ở lâu dài.\r\n- Môi trường sống văn minh, yên tĩnh, khu vực dân trí cao, không khí trong lành.\r\nPhù hợp với hộ gia đình có nhu cầu ở ổn định, sinh viên có điều kiện kinh tế hoặc người đi làm văn phòng / công ty .\r\n-Vị trí trung tâm; gần công viên Cầu Giấy, công viên Nghĩa Đô, ĐH GTVT, Đại học ngoại thương, ĐH Quốc Gia, ĐH Thủ Đô, Học Viện Báo Chí, bệnh viện Sản, bệnh viện Nhi, viện GTVT, Vin Mart, Lotte Mart, Circle K, đi bộ ra đường sắt trên cao. Gần nhiều trường mẫu giáo, các trường tiểu học.\r\n- Hiện có phòng tầng 5, DT 35m2.\r\n- Hình thức thanh toán: Thu tháng 1 lần + cọc 1 tháng.\r\n- Địa chỉ: ngách 255/37, ngõ 255, đường Cầu Giấy\r\n- Giá phòng: diện tích 35m2 = giá 4tr/tháng\r\n- Số người ở tối đa 3-5 người / phòng.\r\n- Điện: 4k/số; nước 30k/ khối\r\n- Mọi thông tin chi tiết xin liên hệ số điện thoại: / Ms Nga.', '2020-12-13 16:30:44'),
(127, 'manhdaubuoi123', 'Phòng trọ quận Cầu Giấy khép kín An ninh tốt', 'Phòng trọ', 'Không khép kín', 1300000, 25, '', '', 'Tất cả', '', 'Có gác xép cầu thang chắc chắn, vệ sinh đầy đủ\r\nGần trường Đại học Ngoại ngữ Đại học Quốc gia,cách ngã tư cầu giấy 500m', '2020-12-13 16:44:19'),
(128, 'manhdaubuoi123', 'Cho Thuê Phòng Tầng 1 Giá Chỉ 2tr Ở Cầu Giấy', 'Phòng trọ', 'Khép kín', 2000000, 20, '', '', 'Sinh viên', '', 'cho thuê phòng tầng 1 giá rẻ chỉ 2tr /tháng như nhà riêng\r\ncó bếp, tủ bếp cực đẹp\r\nphòng diện tích 20m2\r\ngiá chỉ 2tr/tháng hoàn toàn riêng biệt\r\ngần các đường Nguyễn Khánh Toàn, Chùa Hà', '2020-12-13 16:52:13'),
(130, 'manhdaubuoi123', 'Phòng Gác Xếp Rộng, đủ đồ Yên Hòa Cầu Giấy 28m²', 'Phòng trọ', 'Khép kín', 3400000, 28, '9k/kw', '30k/m3', 'Tất cả', '', 'Chính chủ còn 1 phòng trọ cần cho thuê tại\r\n65B Yên Hòa, Cầu Giấy\r\n+ Diện tích: 28m2\r\n+ Có đầy đủ: Điều hoà, nóng lạnh, tủ quần áo, bàn ghế, kệ bếp và tủ bếp,...\r\n+ Phòng mới đẹp, có ban công phơi phóng thoáng mát\r\n+ Chỗ để xe rộng rãi và miễn phí\r\n+ Khóa cổng hiện đại bằng vân tay- an ninh tốt\r\n+ Khu vực trung tâm, gần các siêu thị, nhà hàng, chợ, ... => Cạnh các tuyến phố lớn Đường Láng, Nguyễn Khang, Trung Kính\r\nGần các trường đại học GTVT, Ngoại Thương, Luật, Báo Chí, Thanh Thiếu Niên, Quốc Gia, Sư Phạm\r\nLiên hệ A Hiếu ( gặp trực tiếp anh chủ không qua môi giới trung gian, k mất phí, xem thích thì thuê không thì vẫn vui vẻ k quạo)', '2020-12-13 16:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_phong_tro`
--

CREATE TABLE `hinh_anh_phong_tro` (
  `IDimage` int(11) NOT NULL,
  `IDPhongTro` int(11) NOT NULL,
  `DuongDan` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinh_anh_phong_tro`
--

INSERT INTO `hinh_anh_phong_tro` (`IDimage`, `IDPhongTro`, `DuongDan`) VALUES
(98, 97, 'uploads/07493463-4815-cho-thue-phong-tro-nha-tro-ha-noi.jpg'),
(99, 97, 'uploads/17493463-4815-cho-thue-phong-tro-nha-tro-quan-tay-ho-chinh-chu.jpg'),
(100, 97, 'uploads/27493463-4815-cho-thue-phong-tro-nha-tro-ha-noi-gia-re.jpg'),
(101, 98, 'uploads/07528184-3340-cho-thue-phong-tro-nha-tro-quan-bac-tu-liem-gia-re.jpg'),
(102, 98, 'uploads/17528184-3340-cho-thue-phong-tro-nha-tro-quan-bac-tu-liem-chinh-chu.jpg'),
(103, 98, 'uploads/27528184-3340-cho-thue-phong-tro-nha-tro-ha-noi-chinh-chu.jpg'),
(104, 99, 'uploads/06124464-4138-cho-thue-phong-tro-nha-tro-ha-noi.jpg'),
(105, 99, 'uploads/26124464-4138-cho-thue-phong-tro-nha-tro-ha-noi-gia-re.jpg'),
(106, 99, 'uploads/56124464-4138-cho-thue-phong-tro-nha-tro-ha-noi.jpg'),
(107, 100, 'uploads/20200917_021133_2241100_0.jpg'),
(108, 100, 'uploads/20200917_021133_2241100_1.jpg'),
(109, 100, 'uploads/20200917_021133_2241100_2.jpg'),
(110, 101, 'uploads/20170506_094741_2004541_1.jpg'),
(111, 101, 'uploads/20170506_094741_2004541_3.jpg'),
(112, 101, 'uploads/20170506_094741_2004541_4.jpg'),
(113, 102, 'uploads/20171105_055747_2004541_0.jpg'),
(114, 102, 'uploads/20171105_055747_2004541_2.jpg'),
(115, 102, 'uploads/20171105_055747_2004541_3.jpg'),
(116, 103, 'uploads/20170727_032304_2252522_5.jpg'),
(117, 103, 'uploads/20170827_070628_2252522_2.jpg'),
(118, 103, 'uploads/20170827_070628_2252522_4.jpg'),
(119, 103, 'uploads/20180814_121116_2252522_3.jpg'),
(120, 104, 'uploads/07330145-4031-cho-thue-phong-tro-nha-tro-quan-nam-tu-liem-chinh-chu.jpg'),
(121, 104, 'uploads/07330145-4124-cho-thue-phong-tro-nha-tro-quan-nam-tu-liem-gia-re.jpg'),
(122, 104, 'uploads/27330145-4124-cho-thue-phong-tro-nha-tro-ha-noi-gia-re.jpg'),
(123, 104, 'uploads/37330145-4124-cho-thue-phong-tro-nha-tro-ha-noi-chinh-chu.jpg'),
(124, 105, 'uploads/17478830-3439-cho-thue-phong-tro-nha-tro-ha-noi.jpg'),
(125, 105, 'uploads/27330145-4124-cho-thue-phong-tro-nha-tro-ha-noi-gia-re.jpg'),
(126, 105, 'uploads/27478830-3439-cho-thue-phong-tro-nha-tro-ha-noi-gia-re - Copy.jpg'),
(127, 105, 'uploads/27478830-3439-cho-thue-phong-tro-nha-tro-ha-noi-gia-re.jpg'),
(128, 106, 'uploads/20190918_102204_5112601_0.jpg'),
(129, 107, 'uploads/20190918_102204_5112601_0.jpg'),
(132, 110, 'uploads/1.1.jpg'),
(133, 110, 'uploads/1.2.jpg'),
(134, 110, 'uploads/1.3.jpg'),
(135, 111, 'uploads/2.1.jpg'),
(136, 111, 'uploads/2.2.jpg'),
(137, 111, 'uploads/2.3.jpg'),
(138, 112, 'uploads/3.1.jpg'),
(139, 112, 'uploads/3.2.jpg'),
(140, 112, 'uploads/3.3.jpg'),
(141, 113, 'uploads/4.1.jpg'),
(142, 113, 'uploads/4.2.jpg'),
(143, 113, 'uploads/4.3.jpg'),
(144, 114, 'uploads/5.1.jpg'),
(145, 114, 'uploads/5.2.jpg'),
(146, 114, 'uploads/5.3.jpg'),
(147, 115, 'uploads/6.1 - Copy.jpg'),
(148, 115, 'uploads/6.1.jpg'),
(149, 115, 'uploads/6.3.jpg'),
(150, 116, 'uploads/7.1.jpg'),
(151, 116, 'uploads/7.2.jpg'),
(152, 116, 'uploads/7.3.jpg'),
(153, 117, 'uploads/8.1.jpg'),
(154, 117, 'uploads/8.2.jpg'),
(155, 117, 'uploads/8.3.jpg'),
(156, 118, 'uploads/9.1.jpg'),
(157, 118, 'uploads/9.2.jpg'),
(158, 118, 'uploads/9.3.jpg'),
(159, 119, 'uploads/10.1 - Copy.jpg'),
(160, 119, 'uploads/10.1.jpg'),
(161, 119, 'uploads/10.2.jpg'),
(162, 119, 'uploads/10.3.jpg'),
(164, 121, 'uploads/1903523dc2762432ed4ed1ee2f57b3b7-2662874754967216194.jpg'),
(165, 122, 'uploads/6ca124b409ecb76d2d1bfbfa6fed1e90-2696110799010068183.jpg'),
(166, 123, 'uploads/6ca124b409ecb76d2d1bfbfa6fed1e90-2696110799010068183.jpg'),
(167, 123, 'uploads/339d6f86a2eccbbad0926c65b67ad223-2696622832723198645.jpg'),
(168, 123, 'uploads/d8a0b8fa4d62f303b60d1361d7d6b550-2696622833107184073.jpg'),
(169, 124, 'uploads/2e93bcbf66218e0dbdac0fbd3d8e8970-2694871644242460955.jpg'),
(170, 124, 'uploads/632137ec20bac9ca67a3e1c473bf338f-2694871644436236544.jpg'),
(171, 124, 'uploads/c3140b9c1ba8a019c6e5945aec2f3e9e-2694871645414543486.jpg'),
(172, 125, 'uploads/6d17fd41eda7635627bcc9347872c15f-2692926863400346675.jpg'),
(173, 125, 'uploads/2894c79ea10ea4645fc54e595f54b595-2692926862391710126.jpg'),
(174, 125, 'uploads/151008520e7a2f22787c0cd643aceba6-2692926862127945112.jpg'),
(175, 126, 'uploads/533d8acd259678d5bda00f0e46a7e1b3-2692298130813691757.jpg'),
(176, 126, 'uploads/b17a4de85bb84d991cf9756d73bbc07f-2692298132407658349.jpg'),
(177, 126, 'uploads/c3140b9c1ba8a019c6e5945aec2f3e9e-2694871645414543486.jpg'),
(178, 127, 'uploads/07f0b4a737e0e6309c770d6ce384e62e-2697486322399209128.jpg'),
(179, 128, 'uploads/360864e243886d633353826f248e2019-2697484478728680685.jpg'),
(180, 128, 'uploads/fe8daeff1603c1d27d9e88b5b3a47b23-2697484478736191514.jpg'),
(181, 129, 'uploads/2d003cc595ed8f22a7b4ab88a4c3d3f2-2697494413848553396.jpg'),
(182, 129, 'uploads/47c26fe7a6bd937e37faac734ad8b390-2697494412041199627.jpg'),
(183, 129, 'uploads/a3d2d418cb9a334fe99728e76bc68f1c-2697494413786095627.jpg'),
(184, 129, 'uploads/ff2620d23aaf94efa9edadcce3c490e9-2697494409639368876.jpg'),
(185, 130, 'uploads/0f0a2c7ba17e7103ddf2ae8ee17fcf4e-2697424222506354747.jpg'),
(186, 130, 'uploads/9f4fa77be4c328bf463f2a3c5e2782ab-2697424222661709892.jpg'),
(187, 130, 'uploads/917719ccccdee416a9e80ca71f69b027-2697424222545346747.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `password` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `password`) VALUES
('123abc', '123456'),
('123abcd', '123456'),
('123abcde', '123456'),
('admin', 'minno'),
('BeemoVNC', '123456'),
('manhdaubuoi123', '123456'),
('manhnv', 'manhnv'),
('manhtest', 'manhnv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`);

--
-- Indexes for table `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD PRIMARY KEY (`IDimage`),
  ADD KEY `IDPhongTro` (`IDPhongTro`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  MODIFY `IDimage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD CONSTRAINT `gia_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `gia_phong_tro_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE;

--
-- Constraints for table `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD CONSTRAINT `hinh_anh_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
