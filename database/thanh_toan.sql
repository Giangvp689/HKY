-- Bảng thanh toán đặt cọc giữ chỗ phòng trọ
CREATE TABLE IF NOT EXISTS `thanh_toan` (
  `IDThanhToan` int(11) NOT NULL AUTO_INCREMENT,
  `IDPhongTro` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `SoTien` int(11) NOT NULL,
  `PhuongThuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chờ xác nhận',
  `GhiChu` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGian` datetime NOT NULL,
  PRIMARY KEY (`IDThanhToan`),
  KEY `IDPhongTro` (`IDPhongTro`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
