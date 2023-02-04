-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2020 lúc 11:05 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `smartphone_3t`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

CREATE TABLE `chitiethd` (
  `SoDH` int(11) NOT NULL,
  `ID_sanpham` int(11) NOT NULL,
  `MaHD` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `NgayDat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MaKH` int(11) NOT NULL,
  `TenNN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDTNN` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` text COLLATE utf8_unicode_ci NOT NULL,
  `Tinh/Thanh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongTien` int(11) NOT NULL,
  `TinhTrang` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Account` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanhieu`
--

CREATE TABLE `nhanhieu` (
  `ID` int(11) NOT NULL,
  `TenNH` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanhieu`
--

INSERT INTO `nhanhieu` (`ID`, `TenNH`) VALUES
(1, 'IPhone'),
(2, 'Samsung'),
(3, 'Sony'),
(4, 'Oppo'),
(5, 'Vivo'),
(6, 'Huawei'),
(7, 'Vsmart'),
(8, 'Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide_events`
--

CREATE TABLE `slide_events` (
  `ID` int(11) NOT NULL,
  `Hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide_events`
--

INSERT INTO `slide_events` (`ID`, `Hinh`, `MoTa`) VALUES
(1, '../img/events/800-170-800x170-60.png', ''),
(2, '../img/events/800-170-800x170-61.png', ''),
(3, '../img/events/800-170-800x170-62.png', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide_sanpham`
--

CREATE TABLE `slide_sanpham` (
  `ID` int(11) NOT NULL,
  `ID_sanpham` int(11) NOT NULL,
  `Hinh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide_sanpham`
--

INSERT INTO `slide_sanpham` (`ID`, `ID_sanpham`, `Hinh`) VALUES
(1, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-tinhnang.jpg'),
(2, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/-iphone-11-pro-max-thietke.jpg'),
(3, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-tongquan.jpg'),
(4, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-mausac.jpg'),
(5, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-chupanh.jpg'),
(6, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-quay4k.jpg'),
(7, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-chinhvideo.jpg'),
(8, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/-iphone-11-pro-max-night-mode.jpg'),
(9, 1, '../img/img_product/1.iPhone 11 Pro Max 64GB/vi-vn-iphone-11-pro-max-chandung.jpg'),
(10, 2, '../img/img_product/2.OPPO A52/oppo-a52-bbh-org.jpg'),
(11, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-amthanh.jpg'),
(12, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-camera.jpg'),
(13, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-cauhinh.jpg'),
(14, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-chip.jpg'),
(15, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-coloros.jpg'),
(16, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-manhinh.jpg'),
(17, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-pin.jpg'),
(18, 2, '../img/img_product/2.OPPO A52/vi-vn-oppo-a52-selfie.jpg'),
(19, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/samsung-galaxy-a21s-bbh-org.jpg'),
(20, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/-samsung-galaxy-a21s-selfie.jpg'),
(21, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-camerasau.jpg'),
(22, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-cauhinh.jpg'),
(23, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-khuonmat.jpg'),
(24, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-manhinh.jpg'),
(25, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-pin.jpg'),
(26, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-thietke.jpg'),
(27, 3, '../img/img_product/3.Samsung Galaxy A21s (6GB64GB)/vi-vn-samsung-galaxy-a21s-tinhnang.jpg'),
(28, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/-vi-vn-xiaomi-redmi-note-9s-camera-copy.jpg'),
(29, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/vi-vn-xiaomi-redmi-note-9s-chip.jpg'),
(30, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/vi-vn-xiaomi-redmi-note-9s-cong3d.jpg'),
(31, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/-vi-vn-xiaomi-redmi-note-9s-manhinh-copy.jpg'),
(32, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/vi-vn-xiaomi-redmi-note-9s-pin.jpg'),
(33, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/vi-vn-xiaomi-redmi-note-9s-selfie.jpg'),
(34, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/vi-vn-xiaomi-redmi-note-9s-thietke.jpg'),
(35, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/-vi-vn-xiaomi-redmi-note-9s-tinhnang-copy.jpg'),
(36, 4, '../img/img_product/4.Xiaomi Redmi Note 9S/vi-vn-xiaomi-redmi-note-9s-uudiem.jpg'),
(37, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-camerasau.jpg'),
(38, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-cauhinh.jpg'),
(39, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-chupdem.jpg'),
(40, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-lamdep.jpg'),
(41, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-macro.jpg'),
(42, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-manhinh.jpg'),
(43, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-sac.jpg'),
(44, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-tamnen.jpg'),
(45, 5, '../img/img_product/5.Vivo V19 Neo/vi-vn-vivo-v19-neo-thietke.jpg'),
(46, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-bo-camera.jpg'),
(47, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-camera-chinh.jpg'),
(48, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-goc-rong.jpg'),
(49, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-man-hinh.jpg'),
(50, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-mat-lung.jpg'),
(51, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-pin.jpg'),
(52, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-selfie.jpg'),
(53, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/-tong-quan-2.jpg'),
(54, 6, '../img/img_product/6.Vsmart Active 3 (6GB64GB)/vi-vn-bo-loc.jpg'),
(55, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/iphone-11-pro-max-512gb-bbh-org.jpg'),
(56, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/-iphone-11-pro-max-512gb-night-mode.jpg'),
(57, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-chandung.jpg'),
(58, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-chinhvideo.jpg'),
(59, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-chip.jpg'),
(60, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-chupanh.jpg'),
(61, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-cuongluc.jpg'),
(62, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-smarthdr.jpg'),
(63, 7, '../img/img_product/7.iPhone 11 Pro Max 512GB/vi-vn-iphone-11-pro-max-512gb-slofie.jpg'),
(64, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/-iphone-11-pro-max-256gb-night-mode.jpg'),
(65, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/-iphone-11-pro-max-256gb-thietke.jpg'),
(66, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-chandung.jpg'),
(67, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-chinhvideo.jpg'),
(68, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-chip.jpg'),
(69, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-chupanh.jpg'),
(70, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-cuongluc.jpg'),
(71, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-manhinh.jpg'),
(72, 8, '../img/img_product/8.iPhone 11 Pro Max 256GB/vi-vn-iphone-11-pro-max-256gb-mausac.jpg'),
(73, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-274020-024033.jpg'),
(74, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-274820-024844.jpg'),
(75, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-274920-024900.jpg'),
(76, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-274920-024916.jpg'),
(77, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-274920-024959.jpg'),
(78, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-275020-025014.jpg'),
(79, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-275020-025029.jpg'),
(80, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-4gb-275020-025048.jpg'),
(81, 9, '../img/img_product/9.Vsmart Joy 3 (4GB64GB)/vsmart-joy-3-bo-ban-hang-org.jpg'),
(82, 10, '../img/img_product/10.iPhone 11 Pro 256GB/-iphone-11-pro-256gb-night-mode.jpg'),
(83, 10, '../img/img_product/10.iPhone 11 Pro 256GB/-iphone-11-pro-256gb-thietke.jpg'),
(84, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-chandung.jpg'),
(85, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-chinhvideo.jpg'),
(86, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-chip.jpg'),
(87, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-chupanh.jpg'),
(88, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-cuongluc.jpg'),
(89, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-khangnuoc.jpg'),
(90, 10, '../img/img_product/10.iPhone 11 Pro 256GB/vi-vn-iphone-11-pro-256gb-manhinh.jpg'),
(91, 11, '../img/img_product/11.iPhone Xs Max 64GB/-iphone-xs-max-a12.jpg'),
(92, 11, '../img/img_product/11.iPhone Xs Max 64GB/iphone-xs-max-bo-ban-hang-org.jpg'),
(93, 11, '../img/img_product/11.iPhone Xs Max 64GB/-iphone-xs-max-faceid.jpg'),
(94, 11, '../img/img_product/11.iPhone Xs Max 64GB/-iphone-xs-max-man-hinh.jpg'),
(95, 11, '../img/img_product/11.iPhone Xs Max 64GB/-iphone-xs-max-thiet-ke.jpg'),
(96, 11, '../img/img_product/11.iPhone Xs Max 64GB/-iphone-xs-max-xoaphong.jpg'),
(97, 11, '../img/img_product/11.iPhone Xs Max 64GB/vi-vn-iphone-xs-max-tinhnang.jpg'),
(98, 12, '../img/img_product/12.iPhone Xs Max 256GB/iphone-xs-max-256gb-bo-ban-hang-org.jpg'),
(99, 12, '../img/img_product/12.iPhone Xs Max 256GB/-iphone-xs-max-a12.jpg'),
(100, 12, '../img/img_product/12.iPhone Xs Max 256GB/-iphone-xs-max-faceid.jpg'),
(101, 12, '../img/img_product/12.iPhone Xs Max 256GB/-iphone-xs-max-man-hinh.jpg'),
(102, 12, '../img/img_product/12.iPhone Xs Max 256GB/-iphone-xs-max-thiet-ke.jpg'),
(103, 12, '../img/img_product/12.iPhone Xs Max 256GB/-iphone-xs-max-xoaphong.jpg'),
(104, 12, '../img/img_product/12.iPhone Xs Max 256GB/vi-vn-iphone-xs-max-256gb-tinhnang.jpg'),
(105, 13, '../img/img_product/13.Samsung Galaxy S20+/samsung-galaxy-s20-plus-024020-084028-762.jpg'),
(106, 13, '../img/img_product/13.Samsung Galaxy S20+/samsung-galaxy-s20-plus-bbh1-org.jpg'),
(107, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-cauhinh.jpg'),
(108, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-chongnuoc.jpg'),
(109, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-manhinh.jpg'),
(110, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-pin.jpg'),
(111, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-quickshare.jpg'),
(112, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-rom.jpg'),
(113, 13, '../img/img_product/13.Samsung Galaxy S20+/vi-vn-samsung-galaxy-s20-plus-tansoquet.jpg'),
(114, 14, '../img/img_product/14.Samsung Galaxy S20/-samsung-galaxy-s20-plus-cauhinh.jpg'),
(115, 14, '../img/img_product/14.Samsung Galaxy S20/-samsung-galaxy-s20-slider-2.jpg'),
(116, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-camera.jpg'),
(117, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-chongnuoc.jpg'),
(118, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-manhinh.jpg'),
(119, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-pin.jpg'),
(120, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-quickshare.jpg'),
(121, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-rom.jpg'),
(122, 14, '../img/img_product/14.Samsung Galaxy S20/vi-vn-samsung-galaxy-s20-tansoquet.jpg'),
(123, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-amthanh.jpg'),
(124, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-anhselfie.jpg'),
(125, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-camerasau.jpg'),
(126, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-cameraselfie.jpg'),
(127, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-cauhinh.jpg'),
(128, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-chupdem.jpg'),
(129, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-coloros7.jpg'),
(130, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-macro.jpg'),
(131, 15, '../img/img_product/15.OPPO Reno 3/vi-vn-oppo-reno3-mongnhe.jpg'),
(132, 16, '../img/img_product/16.iPhone 11 64GB/-iphone-11-cautao-camera.jpg'),
(133, 16, '../img/img_product/16.iPhone 11 64GB/-iphone-11-thietke.jpg'),
(134, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-camerakep.jpg'),
(135, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-chandung.jpg'),
(136, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-chinhvideo.jpg'),
(137, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-chip.jpg'),
(138, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-chongnuoc.jpg'),
(139, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-gocsieurong.jpg'),
(140, 16, '../img/img_product/16.iPhone 11 64GB/vi-vn-iphone-11-manhinh.jpg'),
(141, 17, '../img/img_product/17.iPhone 7 32GB/-hinh-anh.jpg'),
(142, 17, '../img/img_product/17.iPhone 7 32GB/iphone-7--3.jpg'),
(143, 17, '../img/img_product/17.iPhone 7 32GB/iphone-7-32gb-bo-ban-hang-chuan-org.jpg'),
(144, 17, '../img/img_product/17.iPhone 7 32GB/--iphone-7-256gb-4-camera.jpg'),
(145, 17, '../img/img_product/17.iPhone 7 32GB/--loa.jpg'),
(146, 17, '../img/img_product/17.iPhone 7 32GB/--mau.jpg'),
(147, 17, '../img/img_product/17.iPhone 7 32GB/vi-vn-1-thietke.jpg'),
(148, 17, '../img/img_product/17.iPhone 7 32GB/vi-vn-iphone-7-tinhnang.jpg'),
(149, 18, '../img/img_product/18.iPhone 7 Plus 32GB/iphone-7-plus--2.jpg'),
(150, 18, '../img/img_product/18.iPhone 7 Plus 32GB/iphone-7-plus--3.jpg'),
(151, 18, '../img/img_product/18.iPhone 7 Plus 32GB/--iphone-7-plus-256gb-7-camera.jpg'),
(152, 18, '../img/img_product/18.iPhone 7 Plus 32GB/iphone-7-plus-bo-ban-hinh-chuan-org.jpg'),
(153, 18, '../img/img_product/18.iPhone 7 Plus 32GB/--loa.jpg'),
(154, 18, '../img/img_product/18.iPhone 7 Plus 32GB/--tay.jpg'),
(155, 18, '../img/img_product/18.iPhone 7 Plus 32GB/vi-vn-1-thietke (1).jpg'),
(156, 18, '../img/img_product/18.iPhone 7 Plus 32GB/vi-vn-iphone-7-plus-tinhnang.jpg'),
(157, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-1-thietke.jpg'),
(158, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-12.jpg'),
(159, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-13.jpg'),
(160, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-15.jpg'),
(161, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-16.jpg'),
(162, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-17.jpg'),
(163, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-18.jpg'),
(164, 19, '../img/img_product/19.iPhone 8 Plus 64GB/-iphone-8-plus-19.jpg'),
(165, 19, '../img/img_product/19.iPhone 8 Plus 64GB/iphone-8-plus-hinh-bo-ban-hang-org.jpg'),
(166, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-camerasau.jpg'),
(167, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-cauhinh.jpg'),
(168, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-gamebooster.jpg'),
(169, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-manhinh.jpg'),
(170, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-pin.jpg'),
(171, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-selfie.jpg'),
(172, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-sieurong.jpg'),
(173, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-thietke.jpg'),
(174, 20, '../img/img_product/20.Samsung Galaxy A31/vi-vn-samsung-galaxy-a31-tinhnang.jpg'),
(175, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/chip.jpg'),
(176, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/công-nghệ.jpg'),
(177, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/mànghinhtoois.jpg'),
(178, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/samsung-galaxy-a51-bbh-org.jpg'),
(179, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/-samsung-galaxy-a51-slider-camera.jpg'),
(180, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/-samsung-galaxy-a51-slider-tinh-nang-2.jpg'),
(181, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/samsung-galaxy-a5100001.jpg'),
(182, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/samsung-galaxy-a5100002.jpg'),
(183, 21, '../img/img_product/21.Samsung Galaxy A51 (6GB)/samsung-galaxy-a5100009.jpg'),
(184, 22, '../img/img_product/22.Samsung Galaxy Z Flip/-samsung-galaxy-z-flip-tinhnang.jpg'),
(185, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-camerakep.jpg'),
(186, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-cauhinh.jpg'),
(187, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-congnghe-kinh.jpg'),
(188, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-danhiem.jpg'),
(189, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-manhinh.jpg'),
(190, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-nhogon.jpg'),
(191, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-pin.jpg'),
(192, 22, '../img/img_product/22.Samsung Galaxy Z Flip/vi-vn-samsung-galaxy-z-flip-selfie.jpg'),
(193, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/-samsung-galaxy-s10-lite-tongquan.jpg'),
(194, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-camera.jpg'),
(195, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-chinhsuavideo.jpg'),
(196, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-congnghe-manhinh.jpg'),
(197, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-manhinh.jpg'),
(198, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-pin.jpg'),
(199, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-sacnhanh.jpg'),
(200, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-thietke.jpg'),
(201, 23, '../img/img_product/23.Samsung Galaxy S10 Lite/vi-vn-samsung-galaxy-s10-lite-vantay.jpg'),
(202, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/samsung-galaxy-note-10-lite-bbh-org.jpg'),
(203, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/-samsung-galaxy-note-10-lite-tongquan.jpg'),
(204, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/vi-vn-samsung-galaxy-note-10-lite-camera.jpg'),
(205, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/vi-vn-samsung-galaxy-note-10-lite-pin.jpg'),
(206, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/-vi-vn-samsung-galaxy-note-10-lite-spen-copy.jpg'),
(207, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/vi-vn-samsung-galaxy-note-10-lite-thietke.jpg'),
(208, 24, '../img/img_product/24.Samsung Galaxy Note 10 Lite/vi-vn-samsung-galaxy-note-10-lite-vantay.jpg'),
(209, 25, '../img/img_product/25.Samsung Galaxy A71/-samsung-galaxy-a71-cameraai.jpg'),
(210, 25, '../img/img_product/25.Samsung Galaxy A71/--samsung-galaxy-a71-camerasau-copy.jpg'),
(211, 25, '../img/img_product/25.Samsung Galaxy A71/-samsung-galaxy-a71-gocrong.jpg'),
(212, 25, '../img/img_product/25.Samsung Galaxy A71/-samsung-galaxy-a71-manhinh.jpg'),
(213, 25, '../img/img_product/25.Samsung Galaxy A71/-samsung-galaxy-a71-thietke.jpg'),
(214, 25, '../img/img_product/25.Samsung Galaxy A71/vi-vn-samsung-galaxy-a71-cauhinh.jpg'),
(215, 25, '../img/img_product/25.Samsung Galaxy A71/vi-vn-samsung-galaxy-a71-macro.jpg'),
(216, 25, '../img/img_product/25.Samsung Galaxy A71/vi-vn-samsung-galaxy-a71-sacnhanh.jpg'),
(217, 25, '../img/img_product/25.Samsung Galaxy A71/vi-vn-samsung-galaxy-a71-selfie.jpg'),
(218, 26, '../img/img_product/26.Samsung Galaxy A11/samsung-galaxy-a11-xanh-bbh-org.jpg'),
(219, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-baomat.jpg'),
(220, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-camerasau.jpg'),
(221, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-cauhinh.jpg'),
(222, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-manhinh.jpg'),
(223, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-pin.jpg'),
(224, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-sieurong.jpg'),
(225, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-thietke.jpg'),
(226, 26, '../img/img_product/26.Samsung Galaxy A11/vi-vn-samsung-galaxy-a11-tinhnang.jpg'),
(227, 27, '../img/img_product/27.OPPO A92/-oppo-a92-manhinhmoi.jpg'),
(228, 27, '../img/img_product/27.OPPO A92/-oppo-a92-selfiemoi.jpg'),
(229, 27, '../img/img_product/27.OPPO A92/-oppo-a92-thietkemoi.jpg'),
(230, 27, '../img/img_product/27.OPPO A92/vi-vn-oppo-a92-amthanh.jpg'),
(231, 27, '../img/img_product/27.OPPO A92/vi-vn-oppo-a92-cauhinh.jpg'),
(232, 27, '../img/img_product/27.OPPO A92/vi-vn-oppo-a92-chip.jpg'),
(233, 27, '../img/img_product/27.OPPO A92/vi-vn-oppo-a92-coloros.jpg'),
(234, 27, '../img/img_product/27.OPPO A92/vi-vn-oppo-a92-pin.jpg'),
(235, 27, '../img/img_product/27.OPPO A92/vi-vn-oppo-a92-tinhnang.jpg'),
(236, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-5g.jpg'),
(237, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-baovemat.jpg'),
(238, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-bonho.jpg'),
(239, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-camera.jpg'),
(240, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-chip.jpg'),
(241, 28, '../img/img_product/28.OPPO Find X2/-vi-vn-oppo-find-x2-chup-chandung-copy.jpg'),
(242, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-chupdem.jpg'),
(243, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-giaodien.jpg'),
(244, 28, '../img/img_product/28.OPPO Find X2/vi-vn-oppo-find-x2-hdr10.jpg'),
(245, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-108mp.jpg'),
(246, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-amthanh.jpg'),
(247, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-camerasau.jpg'),
(248, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-cauhinh.jpg'),
(249, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-hedieuhanh.jpg'),
(250, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-manhinh.jpg'),
(251, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-sac.jpg'),
(252, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-selfie.jpg'),
(253, 29, '../img/img_product/29.OPPO Reno3 Pro/vi-vn-oppo-reno3-pro-zoom.jpg'),
(254, 30, '../img/img_product/30.OPPO A9/-oppo-a9-thietke.jpg'),
(255, 30, '../img/img_product/30.OPPO A9/oppo-a9-up-bbh-org.jpg'),
(256, 30, '../img/img_product/30.OPPO A9/vi-vn-oppo-a9-4-camera.jpg'),
(257, 30, '../img/img_product/30.OPPO A9/vi-vn-oppo-a9-4k-eis.jpg'),
(258, 30, '../img/img_product/30.OPPO A9/vi-vn-oppo-a9-camera.jpg'),
(259, 30, '../img/img_product/30.OPPO A9/vi-vn-oppo-a9-cauhinh.jpg'),
(260, 30, '../img/img_product/30.OPPO A9/vi-vn-oppo-a9-dolby-atmos.jpg'),
(261, 30, '../img/img_product/30.OPPO A9/vi-vn-oppo-a9-game-boost.jpg'),
(262, 30, '../img/img_product/30.OPPO A9/-vi-vn-oppo-a9-tinhnang-copy.jpg'),
(263, 31, '../img/img_product/31.OPPO A91/oppo-a91-032320-062336-923.jpg'),
(264, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-camerachup.jpg'),
(265, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-camera-cucrong.jpg'),
(266, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-cauhinh.jpg'),
(267, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-game.jpg'),
(268, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-lamdep.jpg'),
(269, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-macro.jpg'),
(270, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-tinhnang.jpg'),
(271, 31, '../img/img_product/31.OPPO A91/vi-vn-oppo-a91-vantay.jpg'),
(272, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-281920-101957-619.jpg'),
(273, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102002-781.jpg'),
(274, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102007-835.jpg'),
(275, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102012-981.jpg'),
(276, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102018-136.jpg'),
(277, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102022-706.jpg'),
(278, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102027-926.jpg'),
(279, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-282020-102033-018.jpg'),
(280, 32, '../img/img_product/32.OPPO A12 (4GB)/oppo-a12-4gb-bbh-org.jpg'),
(281, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-camera.jpg'),
(282, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-cauhinh.jpg'),
(283, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-chongrung.jpg'),
(284, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-coloros-6.jpg'),
(285, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-loa.jpg'),
(286, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-manhinh.jpg'),
(287, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-sacnguoc.jpg'),
(288, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-sieurong.jpg'),
(289, 33, '../img/img_product/33.OPPO A5 (2020) 128GB/vi-vn-oppo-a5-2020-128gb-simthe.jpg'),
(290, 34, '../img/img_product/34.OPPO A1K/oppo-a1k-up-bbh-org.jpg'),
(291, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-bonho.jpg'),
(292, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-hdr.jpg'),
(293, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-manhinh.jpg'),
(294, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-pinkhung.jpg'),
(295, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-selfie.jpg'),
(296, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-thanhdieukhien.jpg'),
(297, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-thietke.jpg'),
(298, 34, '../img/img_product/34.OPPO A1K/vi-vn-oppo-a1k-tinhnang.jpg'),
(299, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-baomat.jpg'),
(300, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-camerasau.jpg'),
(301, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-cauhinh.jpg'),
(302, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-chedotoi.jpg'),
(303, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-manhinh.jpg'),
(304, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-pin.jpg'),
(305, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-selfie.jpg'),
(306, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-thietke.jpg'),
(307, 35, '../img/img_product/35.Vivo Y1s/vi-vn-vivo-y1s-tinhnang.jpg'),
(308, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-camerakep.jpg'),
(309, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-cauhinh.jpg'),
(310, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-manhinh.jpg'),
(311, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-mausac.jpg'),
(312, 36, '../img/img_product/36.Vivo Y11/-vi-vn-vivo-y11-pin-copy.jpg'),
(313, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-selfie.jpg'),
(314, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-tinhnang.jpg'),
(315, 36, '../img/img_product/36.Vivo Y11/vi-vn-vivo-y11-vantay.jpg'),
(316, 36, '../img/img_product/36.Vivo Y11/-vivo-y11-thietke-2.jpg'),
(317, 37, '../img/img_product/37.Vivo U10/vi-vn-vivo-u10-camera.jpg'),
(318, 37, '../img/img_product/37.Vivo U10/vi-vn-vivo-u10-gamemode.jpg'),
(319, 37, '../img/img_product/37.Vivo U10/vi-vn-vivo-u10-pin.jpg'),
(320, 37, '../img/img_product/37.Vivo U10/vi-vn-vivo-u10-sacnhanh.jpg'),
(321, 37, '../img/img_product/37.Vivo U10/vi-vn-vivo-u10-sieurong.jpg'),
(322, 37, '../img/img_product/37.Vivo U10/vi-vn-vivo-u10-tinhnang.jpg'),
(323, 37, '../img/img_product/37.Vivo U10/vivo-u10-bbh-org.jpg'),
(324, 37, '../img/img_product/37.Vivo U10/-vivo-u10-thietke.jpg'),
(325, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-darkmode.jpg'),
(326, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-hop-trochoi.jpg'),
(327, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-manhinh.jpg'),
(328, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-pinkhung.jpg'),
(329, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-sacnguoc.jpg'),
(330, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-sacnhanh.jpg'),
(331, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-selfie.jpg'),
(332, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-thaydoi-giongnoi.jpg'),
(333, 38, '../img/img_product/38.Vivo Y19/vi-vn-vivo-y19-thietke.jpg'),
(334, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-camerasau.jpg'),
(335, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-jovi.jpg'),
(336, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-macro.jpg'),
(337, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-manhinh.jpg'),
(338, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-multi-turbo.jpg'),
(339, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-rom.jpg'),
(340, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-sac.jpg'),
(341, 39, '../img/img_product/39.Vivo Y30/vi-vn-vivo-y30-tinhnang.jpg'),
(342, 39, '../img/img_product/39.Vivo Y30/vivo-y30-bbh-org.jpg'),
(343, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-4camera.jpg'),
(344, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-aod.jpg'),
(345, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-cauhinh.jpg'),
(346, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-darkmode.jpg'),
(347, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-game-center.jpg'),
(348, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-sacnhanh.jpg'),
(349, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-selfie.jpg'),
(350, 40, '../img/img_product/40.Vivo S1 Pro/vi-vn-vivo-s1-pro-taodang.jpg'),
(351, 40, '../img/img_product/40.Vivo S1 Pro/-vivo-s1-pro-tongquan.jpg'),
(352, 41, '../img/img_product/41.Vivo Y91C/vi-vn-vivo-y91c-baomat.jpg'),
(353, 41, '../img/img_product/41.Vivo Y91C/vi-vn-vivo-y91c-cameraselfie.jpg'),
(354, 41, '../img/img_product/41.Vivo Y91C/vi-vn-vivo-y91c-pin.jpg'),
(355, 41, '../img/img_product/41.Vivo Y91C/vi-vn-vivo-y91c-thietke.jpg'),
(356, 41, '../img/img_product/41.Vivo Y91C/vi-vn-vivo-y91c-tinhnang.jpg'),
(357, 41, '../img/img_product/41.Vivo Y91C/vivo-y91c-bo-ban-hang1-org.jpg'),
(358, 41, '../img/img_product/41.Vivo Y91C/-vivo-y91c-cauhinh-1.jpg'),
(359, 42, '../img/img_product/42.Vivo Y15/vi-vn-vivo-y15-camera.jpg'),
(360, 42, '../img/img_product/42.Vivo Y15/vi-vn-vivo-y15-manhinh.jpg'),
(361, 42, '../img/img_product/42.Vivo Y15/vi-vn-vivo-y15-pintrau.jpg'),
(362, 42, '../img/img_product/42.Vivo Y15/vi-vn-vivo-y15-thietke.jpg'),
(363, 42, '../img/img_product/42.Vivo Y15/vi-vn-vivo-y15-tienich.jpg'),
(364, 42, '../img/img_product/42.Vivo Y15/vi-vn-vivo-y15-tinhnang.jpg'),
(365, 42, '../img/img_product/42.Vivo Y15/vivo-y15-bbh-org.jpg'),
(366, 42, '../img/img_product/42.Vivo Y15/-vivo-y15-cameragocrong.jpg'),
(367, 42, '../img/img_product/42.Vivo Y15/-vivo-y15-cameraselfie.jpg'),
(368, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-camerasau.jpg'),
(369, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-chip.jpg'),
(370, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-chongrung.jpg'),
(371, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-hedieuhanh.jpg'),
(372, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-manhinh.jpg'),
(373, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-multiturbo.jpg'),
(374, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-pin.jpg'),
(375, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-thietke.jpg'),
(376, 43, '../img/img_product/43.Vivo Y50/vi-vn-vivo-y50-tinhnang.jpg'),
(377, 44, '../img/img_product/44.Huawei P40 Pro/-huawei-app-gallery-huawei-p40-pro-fix.jpg'),
(378, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-anh-selfie.jpg'),
(379, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-camerasau.jpg'),
(380, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-chip.jpg'),
(381, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-khuonmat.jpg'),
(382, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-selfie.jpg'),
(383, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-tannhiet.jpg'),
(384, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-thietke.jpg'),
(385, 44, '../img/img_product/44.Huawei P40 Pro/vi-vn-huawei-p40-pro-tinhnang.jpg'),
(386, 45, '../img/img_product/45.Huawei P40/-vi-vn-huawei-p40-camerasau-2.jpg'),
(387, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-chip.jpg'),
(388, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-khuonmat.jpg'),
(389, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-pin.jpg'),
(390, 45, '../img/img_product/45.Huawei P40/-vi-vn-huawei-p40-pro-anh-selfie-copy.jpg'),
(391, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-selfie.jpg'),
(392, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-thietke.jpg'),
(393, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-tinhnang.jpg'),
(394, 45, '../img/img_product/45.Huawei P40/vi-vn-huawei-p40-vantay.jpg'),
(395, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-chip.jpg'),
(396, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-macro.jpg'),
(397, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-manhinh.jpg'),
(398, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-sacnhanh.jpg'),
(399, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-selfie.jpg'),
(400, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-sieurong.jpg'),
(401, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-thietke.jpg'),
(402, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-tinhnang.jpg'),
(403, 46, '../img/img_product/46.Huawei Nova 5T/vi-vn-huawei-nova-5t-vantay.jpg'),
(404, 47, '../img/img_product/47.Huawei Nova 7i/-huawei-app-gallery-huawei-nova-7i-fix.jpg'),
(405, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-camera.jpg'),
(406, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-chip.jpg'),
(407, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-gpu.jpg'),
(408, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-man-hinh.jpg'),
(409, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-pin.jpg'),
(410, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-rom.jpg'),
(411, 47, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-thiet-ke.jpg'),
(412, 46, '../img/img_product/47.Huawei Nova 7i/vi-vn-huawei-nova-7i-tinh-nang.jpg'),
(413, 48, '../img/img_product/48.Huawei Y9s/huawei-y9s-bbh-org.jpg'),
(414, 48, '../img/img_product/48.Huawei Y9s/-huawei-y9s-thietke.jpg'),
(415, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-3camera.jpg'),
(416, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-camerachinh.jpg'),
(417, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-chip.jpg'),
(418, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-manhinh.jpg'),
(419, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-ram-rom.jpg'),
(420, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-selfie.jpg'),
(421, 48, '../img/img_product/48.Huawei Y9s/vi-vn-huawei-y9s-tinhnang.jpg'),
(422, 49, '../img/img_product/49.Huawei P30 Lite/-huawei-p30-lite-ai-camera.jpg'),
(423, 49, '../img/img_product/49.Huawei P30 Lite/huawei-p30-lite-bo-ban-hang-org.jpg'),
(424, 49, '../img/img_product/49.Huawei P30 Lite/-huawei-p30-lite-thietke.jpg'),
(425, 49, '../img/img_product/49.Huawei P30 Lite/vi-vn-huawei-p30-lite-cauhinh.jpg'),
(426, 49, '../img/img_product/49.Huawei P30 Lite/vi-vn-huawei-p30-lite-gocrong.jpg'),
(427, 49, '../img/img_product/49.Huawei P30 Lite/vi-vn-huawei-p30-lite-manhinh.jpg'),
(428, 49, '../img/img_product/49.Huawei P30 Lite/vi-vn-huawei-p30-lite-pin.jpg'),
(429, 49, '../img/img_product/49.Huawei P30 Lite/vi-vn-huawei-p30-lite-selfie.jpg'),
(430, 49, '../img/img_product/49.Huawei P30 Lite/vi-vn-huawei-p30-lite-tongquan.jpg'),
(431, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/-huawei-y9-prime-2019-typec.jpg'),
(432, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-bonho.jpg'),
(433, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-cameraai.jpg'),
(434, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-giaodien.jpg'),
(435, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-hieusuat.jpg'),
(436, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-lamdep3d.jpg'),
(437, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-manhinh.jpg'),
(438, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-pin.jpg'),
(439, 50, '../img/img_product/50.Huawei Y9 Prime (2019)/vi-vn-huawei-y9-prime-2019-selfie.jpg'),
(440, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-amthanh.jpg'),
(441, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-bonho.jpg'),
(442, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-camerasau.jpg'),
(443, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-fm.jpg'),
(444, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-ghepanh.jpg'),
(445, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-manhinh.jpg'),
(446, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-pin.jpg'),
(447, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-thietke.jpg'),
(448, 51, '../img/img_product/51.Huawei Y6p/vi-vn-huawei-y6p-tinhnang.jpg'),
(449, 52, '../img/img_product/52.Vsmart Star 3/vi-vn-vsmart-star-3-camera.jpg'),
(450, 52, '../img/img_product/52.Vsmart Star 3/vi-vn-vsmart-star-3-manhinh.jpg'),
(451, 52, '../img/img_product/52.Vsmart Star 3/vi-vn-vsmart-star-3-thietke.jpg'),
(452, 52, '../img/img_product/52.Vsmart Star 3/vi-vn-vsmart-star-3-tinhnang.jpg'),
(453, 52, '../img/img_product/52.Vsmart Star 3/vi-vn-vsmart-star-3-vantay.jpg'),
(454, 52, '../img/img_product/52.Vsmart Star 3/vsmart-star-3-bbh-org.jpg'),
(455, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-060720-0857151.jpg'),
(456, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-060720-0857182.jpg'),
(457, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-080720-1003090.jpg'),
(458, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-080720-1003390.jpg'),
(459, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-080720-1003540.jpg'),
(460, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-080720-1004120.jpg'),
(461, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-080720-1004270.jpg'),
(462, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-3gb-080720-1004410.jpg'),
(463, 53, '../img/img_product/53.Vsmart Star 4 (3GB32GB)/vsmart-star-4-bbh-org.jpg'),
(464, 54, '../img/img_product/54.Vsmart Bee 3/-vi-vn-vsmart-bee-3-camera-copy.jpg'),
(465, 54, '../img/img_product/54.Vsmart Bee 3/vi-vn-vsmart-bee-3-cauhinh.jpg'),
(466, 54, '../img/img_product/54.Vsmart Bee 3/vi-vn-vsmart-bee-3-hedieuhanh.jpg'),
(467, 54, '../img/img_product/54.Vsmart Bee 3/vi-vn-vsmart-bee-3-tienich.jpg'),
(468, 54, '../img/img_product/54.Vsmart Bee 3/vi-vn-vsmart-bee-3-tinhnang.jpg'),
(469, 54, '../img/img_product/54.Vsmart Bee 3/vsmart-bee-3-bobanhang-org.jpg'),
(470, 54, '../img/img_product/54.Vsmart Bee 3/-vsmart-bee-3-manhinh.jpg'),
(471, 54, '../img/img_product/54.Vsmart Bee 3/-vsmart-bee-3-thiet-ke.jpg'),
(472, 55, '../img/img_product/55.Vsmart Bee/vi-vn-vsmart-bee-4g.jpg'),
(473, 55, '../img/img_product/55.Vsmart Bee/vi-vn-vsmart-bee-cameratruoc.jpg'),
(474, 55, '../img/img_product/55.Vsmart Bee/vi-vn-vsmart-bee-hdr.jpg'),
(475, 55, '../img/img_product/55.Vsmart Bee/vi-vn-vsmart-bee-manhinh.jpg'),
(476, 55, '../img/img_product/55.Vsmart Bee/vi-vn-vsmart-bee-tinhnang.jpg'),
(477, 55, '../img/img_product/55.Vsmart Bee/vi-vn-vsmart-bee-ungdung.jpg'),
(478, 55, '../img/img_product/55.Vsmart Bee/vsmart-bee-bo-ban-hang-org.jpg'),
(479, 55, '../img/img_product/55.Vsmart Bee/-vsmart-bee-thiet-ke.jpg'),
(480, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-4camera.jpg'),
(481, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-anhsangxanh.jpg'),
(482, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-cauhinh.jpg'),
(483, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-chongbuinuoc.jpg'),
(484, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-cong3d.jpg'),
(485, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-kinhcuongluc.jpg'),
(486, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-lammat.jpg'),
(487, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-macro.jpg'),
(488, 56, '../img/img_product/56.Xiaomi Redmi Note 8 Pro (6GB128GB)/vi-vn-xiaomi-redmi-note-8-pro-6gb-128gb-selfie.jpg'),
(489, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/-_xiaomi-mi-note-10-pro-tinhnang1-2.jpg'),
(490, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/vi-vn-xiaomi-mi-note-10-pro-chip.jpg'),
(491, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/vi-vn-xiaomi-mi-note-10-pro-chupdem.jpg'),
(492, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/vi-vn-xiaomi-mi-note-10-pro-manhinh.jpg'),
(493, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/vi-vn-xiaomi-mi-note-10-pro-tongquan-camera.jpg'),
(494, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/xiaomi-mi-note-10-pro-bbh-org.jpg'),
(495, 57, '../img/img_product/57.Xiaomi Mi Note 10 Pro/-xiaomi-mi-note-10-pro-thietke1.jpg'),
(496, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-chip.jpg'),
(497, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-game.jpg'),
(498, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-ketnoi.jpg'),
(499, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-miui.jpg'),
(500, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-pin.jpg'),
(501, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-thietke.jpg'),
(502, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-tinhnang.jpg'),
(503, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-vantay.jpg'),
(504, 58, '../img/img_product/58.Xiaomi Mi Note 10 Lite/vi-vn-xiaomi-mi-note-10-lite-vlog.jpg'),
(505, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-4gb-64gb-tinhnang.jpg'),
(506, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-anhsangxanh.jpg'),
(507, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-cauhinh.jpg'),
(508, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-chongbuinuoc.jpg'),
(509, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-cong3d.jpg'),
(510, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-kinhcuongluc.jpg'),
(511, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-lammat.jpg'),
(512, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-macro.jpg'),
(513, 59, '../img/img_product/59.Xiaomi Redmi Note 8 Pro (6GB64GB)/vi-vn-xiaomi-redmi-note-8-pro-selfie.jpg'),
(514, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-4gb-128gb-tinhnang.jpg'),
(515, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-camerachinh.jpg'),
(516, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-cauhinh.jpg'),
(517, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-chong-anhsangxanh.jpg'),
(518, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-kinhcuongluc.jpg'),
(519, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-macro.jpg'),
(520, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-pro-selfie.jpg'),
(521, 60, '../img/img_product/60.Xiaomi Redmi Note 8 (4GB128GB)/vi-vn-xiaomi-redmi-note-8-128gb-sacnhanh.jpg'),
(522, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-androidone.jpg'),
(523, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-cameraai.jpg'),
(524, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-cauhinh.jpg'),
(525, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-sacnnhanh.jpg'),
(526, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-selfie.jpg'),
(527, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-thietke.jpg'),
(528, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-tinhnang.jpg'),
(529, 61, '../img/img_product/61.Xiaomi Mi A3/vi-vn-xiaomi-mi-a3-vantay.jpg'),
(530, 61, '../img/img_product/61.Xiaomi Mi A3/xiaomi-mi-a3-bo-ban-hang-org.jpg'),
(531, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/vi-vn-xiaomi-redmi-note-7-4gb-64gb-tinhnang.jpg'),
(532, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/vi-vn-xiaomi-redmi-note-7-camera.jpg'),
(533, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/vi-vn-xiaomi-redmi-note-7-cauhinh.jpg'),
(534, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/vi-vn-xiaomi-redmi-note-7-thietke.jpg'),
(535, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/xiaomi-redmi-note-7-bbh-org.jpg'),
(536, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/-xiaomi-redmi-note-7-man-hinh.jpg'),
(537, 62, '../img/img_product/62.Xiaomi Redmi Note 7 (4GB64GB)/-xiaomi-redmi-note-7-pin-khung.jpg'),
(538, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-cauhinh.jpg'),
(539, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-chongbam.jpg'),
(540, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-khuonmat.jpg'),
(541, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-manhinh.jpg'),
(542, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-mausac.jpg'),
(543, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-pin.jpg'),
(544, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-selfie.jpg'),
(545, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-thietke.jpg'),
(546, 63, '../img/img_product/63.Xiaomi Redmi 8A/vi-vn-xiaomi-redmi-8a-tinhnang.jpg'),
(547, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/vi-vn-vsmart-star-4-chip.jpg'),
(548, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/vi-vn-vsmart-star-4-giaodien.jpg'),
(549, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/vsmart-star-4-bbh-org.jpg'),
(550, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/-vsmart-star-4-slider.jpg'),
(551, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/-vsmart-star-4-slider-1.jpg'),
(552, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/-vsmart-star-4-slider-2.jpg'),
(553, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/-vsmart-star-4-slider-3.jpg'),
(554, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/-vsmart-star-4-slider-5.jpg'),
(555, 64, '../img/img_product/64.Vsmart Star 4 (2GB32GB)/-vsmart-star-4-slider-6.jpg'),
(556, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/-vi-vn-vsmart-joy-3-2gb-selfie-copy.jpg'),
(557, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vi-vn-vsmart-joy-3-chip.jpg'),
(558, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vi-vn-vsmart-joy-3-manhinh.jpg'),
(559, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vi-vn-vsmart-joy-3-pinsac.jpg'),
(560, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vi-vn-vsmart-joy-3-thietke.jpg'),
(561, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vi-vn-vsmart-joy-3-tinhnang.jpg'),
(562, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vi-vn-vsmart-joy-3-vantay.jpg'),
(563, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/vsmart-joy-3-bo-ban-hang-org.jpg'),
(564, 65, '../img/img_product/65.Vsmart Joy 3 (3GB32GB)/-vsmart-joy-3-camerasau.jpg'),
(565, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vi-vn-vsmart-joy-3-2gb-chip.jpg'),
(566, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vi-vn-vsmart-joy-3-2gb-manhinh.jpg'),
(567, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vi-vn-vsmart-joy-3-2gb-pinsac.jpg'),
(568, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/-vi-vn-vsmart-joy-3-2gb-selfie-copy.jpg'),
(569, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vi-vn-vsmart-joy-3-2gb-thietke.jpg'),
(570, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vi-vn-vsmart-joy-3-2gb-tinhnang.jpg'),
(571, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vi-vn-vsmart-joy-3-2gb-vantay.jpg'),
(572, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/-vsmart-joy-3-2gb-camerasau.jpg'),
(573, 66, '../img/img_product/66.Vsmart Joy 3 (2GB32GB)/vsmart-joy-3-bo-ban-hang-org.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongsokithuat`
--

CREATE TABLE `thongsokithuat` (
  `ID` int(11) NOT NULL,
  `Màu Sắc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Mausac_img` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idSanPham` int(11) NOT NULL,
  `Màn hình` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hệ điều hành` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CPU` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ram` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Bộ nhớ` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Camera trước` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Camera sau` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Thẻ sim` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Dung lượng pin` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongsokithuat`
--

INSERT INTO `thongsokithuat` (`ID`, `Màu Sắc`, `Mausac_img`, `idSanPham`, `Màn hình`, `Hệ điều hành`, `CPU`, `Ram`, `Bộ nhớ`, `Camera trước`, `Camera sau`, `Thẻ sim`, `Dung lượng pin`) VALUES
(1, 'Bạc', '../img/list_product/iphone-11-pro-max-while-200-18', 1, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(2, 'Đen', '../img/list_product/oppo-a52-black-200x200-180x125', 2, '6.5\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '5000 mAh, có sạc nhanh'),
(3, 'Xám', '../img/list_product/xiaomi-redmi-note-9s-4gb-gray-', 4, '6.67\", Full HD+', 'Android 10', 'Snapdragon 720G 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 5MP, 2MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '5020 mAh, có sạc nhanh'),
(6, 'Bạc', '../img/list_product/iphone-11-pro-max-512gb-while-', 7, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(7, 'Bạc', '../img/list_product/iphone-11-pro-max-256gb-while-', 8, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(9, 'Bạc', '../img/list_product/iphone-11-pro-256gb-while-200-', 10, '5.8\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3046 mAh, có sạc nhanh'),
(10, 'Bạc', '../img/list_product/iphone-xs-max-silver-200-180x1', 11, '6.5\", Super Retina', 'iOS 13', 'Apple A12 Bionic 6 nhân', '4 GB', '64 GB', '7 MP', 'Chính 12 MP & Phụ 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3174 mAh, có sạc nhanh'),
(11, 'Bạc', '../img/list_product/iphone-xs-max-256gb-png-180x12', 12, '6.5\", Super Retina', 'iOS 13', 'Apple A12 Bionic 6 nhân', '4 GB', '256 GB', '7 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3174 mAh, có sạc nhanh'),
(12, 'Đen', '../img/list_product/samsung-galaxy-a21s-den-200x20', 3, 'TFT LCD, 6.5\", HD+', 'Android 10', 'Exynos 850 8 nhân', '6 GB', '64 GB', '13 MP', '8 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(13, 'Xám', '../img/list_product/iphone-11-pro-max-black-200-18', 1, 'OLED, 6.5\", Super Retina XDR\r\n', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(15, 'Xanh lá', '../img/list_product/iphone-11-pro-max-green-200-18', 1, 'OLED, 6.5\", Super Retina XDR\r\n', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(16, 'Vàng đồng', '../img/list_product/iphone-11-pro-max-gold-200-180', 1, 'OLED, 6.5\", Super Retina XDR\r\n', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(17, 'Vàng đồng', '../img/list_product/iphone-11-pro-max-512gb-gold-2', 7, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(18, 'Xanh lá', '../img/list_product/iphone-11-pro-max-512gb-green-', 7, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(19, 'Xám', '../img/list_product/iphone-11-pro-max-512gb-black-', 7, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(20, 'Xám', '../img/list_product/iphone-11-pro-max-256gb-black-', 8, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(21, 'Xanh lá', '../img/list_product/iphone-11-pro-max-256gb-green-', 8, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(22, 'Vàng đồng', '../img/list_product/iphone-11-pro-max-256gb-gold-2', 8, '6.5\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '3 camera 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3969 mAh, có sạc nhanh'),
(23, 'Xám', '../img/list_product/iphone-11-pro-256gb-black-200-', 10, '5.8\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3046 mAh, có sạc nhanh'),
(24, 'Xanh lá', '../img/list_product/iphone-11-pro-256gb-green-200-', 10, '5.8\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3046 mAh, có sạc nhanh'),
(25, 'Vàng đồng', '../img/list_product/iphone-11-pro-256gb-gold-200-1', 10, '5.8\", Super Retina XDR', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '256 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3046 mAh, có sạc nhanh'),
(26, 'Xám', '../img/list_product/iphone-xs-max-256gb-gray-200-1', 12, '6.5\", Super Retina', 'iOS 13', 'Apple A12 Bionic 6 nhân', '4 GB', '256 GB', '7 MP', '12 MP ', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3174 mAh, có sạc nhanh'),
(27, 'Vàng đồng', '../img/list_product/iphone-xs-max-256gb-gold-200-2', 12, '6.5\", Super Retina', 'iOS 13', 'Apple A12 Bionic 6 nhân', '4 GB', '256 GB', '7 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3174 mAh, có sạc nhanh'),
(28, 'Đỏ', '../img/list_product/iphone-11-red-200-180x125.png', 16, 'IPS LCD, 6.1\", Liquid Retina', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3110 mAh, có sạc nhanh'),
(29, 'Đen', '../img/list_product/iphone-11-black-200-180x125.pn', 16, 'IPS LCD, 6.1\", Liquid Retina', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3110 mAh, có sạc nhanh'),
(30, 'Trắng', '../img/list_product/iphone-11-white-200-180x125.pn', 16, 'IPS LCD, 6.1\", Liquid Retina', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3110 mAh, có sạc nhanh'),
(31, 'Vàng', '../img/list_product/iphone-11-yellow-200-180x125.p', 16, 'IPS LCD, 6.1\", Liquid Retina', 'iOS 13', 'Apple A13 Bionic 6 nhân', '4 GB', '64 GB', '12 MP', '12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3110 mAh, có sạc nhanh'),
(32, 'Đen', '../img/list_product/iphone-7-32gb-black-200-180x12', 17, 'LED-backlit IPS LCD, 4.7\", Retina HD', 'iOS 13\r\n', 'Apple A10 Fusion 4 nhân\r\n', '2 GB', '32 GB', '7 MP', '12 MP', '1 Nano SIM, Hỗ trợ 4G', '1960 mAh'),
(33, 'Vàng đồng', '../img/list_product/iphone-7-32gb-gold-200-180x120', 17, 'LED-backlit IPS LCD, 4.7\", Retina HD', 'iOS 13\r\n', 'Apple A10 Fusion 4 nhân\r\n', '2 GB', '32 GB', '7 MP', '12 MP', '1 Nano SIM, Hỗ trợ 4G', '1960 mAh'),
(34, 'Bạc', '../img/list_product/iphone-7-plus-silver-200-180x1', 18, 'LED-backlit IPS LCD, 5.5\", Retina HD\r\n', 'iOS 13', 'Apple A10 Fusion 4 nhân', '3 GB', '64 GB', '12 MP', '12 MP', '1 Nano SIM, Hỗ trợ 4G', '2900 mAh'),
(35, 'Đen', '../img/list_product/iphone-7-plus-black-200-180x12', 18, 'LED-backlit IPS LCD, 5.5\", Retina HD\r\n', 'iOS 13', 'Apple A10 Fusion 4 nhân', '3 GB', '64 GB', '12 MP', '12 MP', '1 Nano SIM, Hỗ trợ 4G', '2900 mAh'),
(36, 'Vàng đồng', '../img/list_product/iphone-7-plus-gold-200-180x120', 18, 'LED-backlit IPS LCD, 5.5\", Retina HD\r\n', 'iOS 13', 'Apple A10 Fusion 4 nhân', '3 GB', '64 GB', '12 MP', '12 MP', '1 Nano SIM, Hỗ trợ 4G', '2900 mAh'),
(37, 'Vàng hồng', '../img/list_product/iphone-7-plus-pink-200-180x120', 18, 'LED-backlit IPS LCD, 5.5\", Retina HD\r\n', 'iOS 13', 'Apple A10 Fusion 4 nhân', '3 GB', '64 GB', '12 MP', '12 MP', '1 Nano SIM, Hỗ trợ 4G', '2900 mAh'),
(38, 'Xám', '../img/list_product/iphone-8-plus-h-0-180x125.png', 19, 'LED-backlit IPS LCD, 5.5\", Retina HD', 'iOS 13', 'Apple A11 Bionic 6 nhân', '3 GB', '64 GB', '7 MP', 'Chính 12 MP & Phụ 12 MP', '1 Nano SIM, Hỗ trợ 4G', '2691 mAh, có sạc nhanh'),
(39, 'Vàng đồng', '../img/list_product/iphone-8-plus-h14-180x125.png', 19, 'LED-backlit IPS LCD, 5.5\", Retina HD', 'iOS 13', 'Apple A11 Bionic 6 nhân', '3 GB', '64 GB', '7 MP', 'Chính 12 MP & Phụ 12 MP', '1 Nano SIM, Hỗ trợ 4G', '2691 mAh, có sạc nhanh'),
(40, 'Xanh dương', '../img/list_product/samsung-galaxy-a21s-xanh-200x2', 3, 'TFT LCD, 6.5\", HD+', 'Android 10', 'Exynos 850 8 nhân', '6 GB', '64 GB', '13 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(42, 'Xanh dương', '../img/list_product/samsung-galaxy-s20-plus-200x20', 13, 'Dynamic AMOLED 2X, 6.7\", Quad HD+ (2K+)', 'Android 10', 'Exynos 990 8 nhân', '8 GB', '128 GB', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D', '2 Nano SIM HOẶC 1 Nano SIM + 1 eSIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(43, 'Xám', '../img/list_product/samsung-galaxy-s20-plus-200x20', 13, 'Dynamic AMOLED 2X, 6.7\", Quad HD+ (2K+)', 'Android 10', 'Exynos 990 8 nhân', '8 GB', '128 GB', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D', '2 Nano SIM HOẶC 1 Nano SIM + 1 eSIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(44, 'Đen', '../img/list_product/samsung-galaxy-s20-plus-200x20', 13, 'Dynamic AMOLED 2X, 6.7\", Quad HD+ (2K+)', 'Android 10', 'Exynos 990 8 nhân', '8 GB', '128 GB', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP, TOF 3D', '2 Nano SIM HOẶC 1 Nano SIM + 1 eSIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(45, 'Xám', '../img/list_product/samsung-galaxy-s20-200x200-xam', 14, 'Dynamic AMOLED 2X, 6.2\", Quad HD+ (2K+)', 'Android 10', 'Exynos 990 8 nhân', '8 GB', '128 GB', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', '2 Nano SIM HOẶC 1 Nano SIM + 1 eSIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(46, 'Hồng', '../img/list_product/samsung-galaxy-s20-200x200-hon', 14, 'Dynamic AMOLED 2X, 6.2\", Quad HD+ (2K+)', 'Android 10', 'Exynos 990 8 nhân', '8 GB', '128 GB', '10 MP', 'Chính 12 MP & Phụ 64 MP, 12 MP', '2 Nano SIM HOẶC 1 Nano SIM + 1 eSIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(47, 'Xanh dương', '../img/list_product/samsung-galaxy-a31-xanh-200x20', 20, 'Super AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek MT6768 8 nhân (Helio P65)', '6 GB', '128 GB', '20 MP', 'Chính 48 MP & Phụ 8 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(48, 'Đen', '../img/list_product/samsung-galaxy-a31-den-200x200', 20, 'Super AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek MT6768 8 nhân (Helio P65)', '6 GB', '128 GB', '20 MP', 'Chính 48 MP & Phụ 8 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(49, 'Trắng', '../img/list_product/samsung-galaxy-a31-trang-200x2', 20, 'Super AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek MT6768 8 nhân (Helio P65)', '6 GB', '128 GB', '20 MP', 'Chính 48 MP & Phụ 8 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(50, 'Xanh ngọc', '../img/list_product/samsung-galaxy-a51-blue-chi-ti', 21, 'Super AMOLED, 6.5\", Full HD+', 'Android 10', 'Exynos 9611 8 nhân', '6 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(51, 'Đen', '../img/list_product/samsung-galaxy-a51-den-200x200', 21, 'Super AMOLED, 6.5\", Full HD+', 'Android 10', 'Exynos 9611 8 nhân', '6 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(52, 'Trắng', '../img/list_product/samsung-a51-trang-200x200-180x', 21, 'Super AMOLED, 6.5\", Full HD+', 'Android 10', 'Exynos 9611 8 nhân', '6 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(53, 'Tím', '../img/list_product/samsung-galaxy-z-flip-tim-200x', 22, 'Chính: Dynamic AMOLED, phụ: Super AMOLED, 6.7\", Quad HD (2K)', 'Android 10', 'Snapdragon 855+ 8 nhân', '8 GB', '256 GB', '10 MP', 'Chính 12 MP & Phụ 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3300 mAh, có sạc nhanh'),
(54, 'Đen', '../img/list_product/samsung-galaxy-z-flip-den-200x', 22, 'Chính: Dynamic AMOLED, phụ: Super AMOLED, 6.7\", Quad HD (2K)', 'Android 10', 'Snapdragon 855+ 8 nhân', '8 GB', '256 GB', '10 MP', 'Chính 12 MP & Phụ 12 MP', '1 eSIM & 1 Nano SIM, Hỗ trợ 4G', '3300 mAh, có sạc nhanh'),
(55, 'Xanh dương', '../img/list_product/samsung-galaxy-s10-lite-xanh-2', 23, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Snapdragon 855 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 12 MP, 5 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(56, 'Đen', '../img/list_product/samsung-galaxy-s10-lite-den-20', 23, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Snapdragon 855 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 12 MP, 5 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(57, 'Bạc', '../img/list_product/samsung-galaxy-note-10-lite-wh', 24, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Exynos 9810 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 12 MP & Phụ 12 MP, 12 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(58, 'Đen', '../img/list_product/samsung-galaxy-note-10-lite-bl', 24, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Exynos 9810 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 12 MP & Phụ 12 MP, 12 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(59, 'Xanh dương', '../img/list_product/samsung-galaxy-a71-blue-200x20', 25, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Snapdragon 730 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(60, 'Bạc', '../img/list_product/samsung-galaxy-a71-selver-200x', 25, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Snapdragon 730 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(61, 'Đen', '../img/list_product/samsung-galaxy-a71-black-200x2', 25, 'Super AMOLED, 6.7\", Full HD+', 'Android 10', 'Snapdragon 730 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(62, 'Xanh dương', '../img/list_product/samsung-galaxy-a11-xanh-200x20', 26, 'PLS TFT LCD, 6.4\", HD+', 'Android 10', 'Snapdragon 450 8 nhân', '3 GB', '32 GB', ' 2 MP', 'Chính 13 MP & Phụ 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(63, 'Đen', '../img/list_product/samsung-galaxy-a11-den-200x200', 26, 'PLS TFT LCD, 6.4\", HD+', 'Android 10', 'Snapdragon 450 8 nhân', '3 GB', '32 GB', ' 2 MP', 'Chính 13 MP & Phụ 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(64, 'Trắng', '../img/list_product/samsung-galaxy-a11-trang-200x2', 26, 'PLS TFT LCD, 6.4\", HD+', 'Android 10', 'Snapdragon 450 8 nhân', '3 GB', '32 GB', ' 2 MP', 'Chính 13 MP & Phụ 5 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(65, 'Trắng', '../img/list_product/oppo-a52-white-200x200-180x125', 2, '6.5\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '5000 mAh, có sạc nhanh'),
(66, 'Xanh lá', '../img/list_product/xiaomi-redmi-note-9s-4gb-green', 4, '6.67\", Full HD+', 'Android 10', 'Snapdragon 720G 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 5MP, 2MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '5020 mAh, có sạc nhanh'),
(67, 'Trắng', '../img/list_product/xiaomi-redmi-note-9s-4gb-white', 4, '6.67\", Full HD+', 'Android 10', 'Snapdragon 720G 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 5MP, 2MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '5020 mAh, có sạc nhanh'),
(68, 'Đen', '../img/list_product/vivo-v19-neo-den-200x200-180x1', 5, 'Super AMOLED, 6.44\", Full HD+', 'Android 10', 'Snapdragon 675 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '4500 mAh, có sạc nhanh'),
(69, 'Xanh dương', '../img/list_product/vivo-v19-neo-xanh-200x200-180x', 5, 'Super AMOLED, 6.44\", Full HD+', 'Android 10', 'Snapdragon 675 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '4500 mAh, có sạc nhanh'),
(70, 'Xanh dương', '../img/list_product/vsmart-active-200x200-180x125.', 6, 'AMOLED, 6.39\", Full HD+', 'Android 9.0 (Pie)', 'MediaTek Helio P60 8 nhân', '6 GB', '64 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4020 mAh, có sạc nhanh'),
(71, 'Xanh lá', '../img/list_product/vsmart-active-3-6gb-emerald-gr', 6, 'AMOLED, 6.39\", Full HD+', 'Android 9.0 (Pie)', 'MediaTek Helio P60 8 nhân', '6 GB', '64 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4020 mAh, có sạc nhanh'),
(72, 'Đen', '../img/list_product/vsmart-active-3-black-thumb-ma', 6, 'AMOLED, 6.39\", Full HD+', 'Android 9.0 (Pie)', 'MediaTek Helio P60 8 nhân', '6 GB', '64 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4020 mAh, có sạc nhanh'),
(73, 'Tím', '../img/list_product/vsmart-joy-3-4gb-tim-200x200-1', 9, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân\r\n', '4 GB', '64 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(74, 'Đen', '../img/list_product/vsmart-joy-3-4gb-den-200x200-1', 9, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân\r\n', '4 GB', '64 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(75, 'Trắng', '../img/list_product/vsmart-joy-3-4gb-trang-200x200', 9, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân\r\n', '4 GB', '64 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(76, 'Xanh dương', '../img/list_product/oppo-reno3-xanh-200x200-2-180x', 15, 'AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek Helio P90 8 nhân', '8 GB', '128 GB', '44 MP', 'Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4025 mAh, có sạc nhanh'),
(77, 'Đen', '../img/list_product/oppo-reno3-den-200x200-1-180x1', 15, 'AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek Helio P90 8 nhân', '8 GB', '128 GB', '44 MP', 'Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4025 mAh, có sạc nhanh'),
(78, 'Trắng', '../img/list_product/oppo-reno3-trang-200x200-1-180', 15, 'AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek Helio P90 8 nhân', '8 GB', '128 GB', '44 MP', 'Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4025 mAh, có sạc nhanh'),
(79, 'Tím', '../img/list_product/oppo-a92-tim-200x200-4-180x125', 27, 'TFT LCD, 6.5\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(80, 'Trắng', '../img/list_product/oppo-a92-white-200x200-180x125', 27, 'TFT LCD, 6.5\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(81, 'Đen', '../img/list_product/oppo-a92-black-200x200-180x125', 27, 'TFT LCD, 6.5\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(82, 'Xanh dương', '../img/list_product/oppo-find-x2-blue-200x200-1-18', 28, 'AMOLED, 6.78\", Quad HD+ (2K+)', 'Android 10', 'Snapdragon 865 8 nhân', '12 GB', '256 GB', '32 MP', 'Chính 48 MP & Phụ 13 MP, 12 MP', '2 Nano SIM, Hỗ trợ 5G', '4200 mAh, có sạc nhanh'),
(83, 'Đen', '../img/list_product/oppo-find-x2-black-180x125.png', 28, 'AMOLED, 6.78\", Quad HD+ (2K+)', 'Android 10', 'Snapdragon 865 8 nhân', '12 GB', '256 GB', '32 MP', 'Chính 48 MP & Phụ 13 MP, 12 MP', '2 Nano SIM, Hỗ trợ 5G', '4200 mAh, có sạc nhanh'),
(84, 'Đen', '../img/list_product/oppo-reno3-pro-den-200x200-180', 29, 'Sunlight Super AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek Helio P95 8 nhân', '8 GB', '256 GB', '44 MP', 'Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4025 mAh, có sạc nhanh'),
(85, 'Trắng', '../img/list_product/oppo-reno3-pro-trang-200x200-1', 29, 'Sunlight Super AMOLED, 6.4\", Full HD+', 'Android 10', 'MediaTek Helio P95 8 nhân', '8 GB', '256 GB', '44 MP', 'Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4025 mAh, có sạc nhanh'),
(86, 'Xanh lá', '../img/list_product/oppo-a9-200x200-xanh-la-180x12', 30, 'TFT, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(87, 'Trắng', '../img/list_product/oppo-a9-200x200-trang-180x125.', 30, 'TFT, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(88, 'Tím', '../img/list_product/oppo-a9-200x200-tim-180x125.pn', 30, 'TFT, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(89, 'Đen', '../img/list_product/oppo-a91-den-200x200-180x125.p', 31, 'AMOLED, 6.4\", Full HD+', 'ColorOS 6.1 (Android 9.0)', 'MediaTek Helio P70 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', 'có sạc nhanh'),
(90, 'Trắng', '../img/list_product/oppo-a91-trang-200x200-180x125', 31, 'AMOLED, 6.4\", Full HD+', 'ColorOS 6.1 (Android 9.0)', 'MediaTek Helio P70 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', 'có sạc nhanh'),
(91, 'Xanh dương', '../img/list_product/oppo-a12-4gb-xanh-200x200-180x', 32, 'IPS LCD, 6.22\", HD+', 'ColorOS 6.1 (Android 9.0)', 'MediaTek Helio P35 8 nhân', '4 GB', '64 GB', '5 MP', 'Chính 13 MP & Phụ 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '4230 mAh'),
(92, 'Đen', '../img/list_product/oppo-a12-4gb-den-200x200-180x1', 32, 'IPS LCD, 6.22\", HD+', 'ColorOS 6.1 (Android 9.0)', 'MediaTek Helio P35 8 nhân', '4 GB', '64 GB', '5 MP', 'Chính 13 MP & Phụ 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '4230 mAh'),
(93, 'Trắng', '../img/list_product/oppo-a5-2020-128gb-trang-200x2', 33, 'TFT, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '128 GB', '8 MP', 'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(94, 'Đen', '../img/list_product/oppo-a5-2020-128gb-den-200x200', 33, 'TFT, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '128 GB', '8 MP', 'Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(95, 'Đen', '../img/list_product/oppo-a1k-den-200x200-180x125.p', 34, 'IPS LCD, 6.1\", HD+', 'Android 9.0 (Pie)\r\n', 'MediaTek MT6762R 8 nhân\r\n', '2 GB', '32 GB', '5 MP', '8 MP\r\n', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh'),
(96, 'Đỏ', '../img/list_product/oppo-a1k-do-200x200-180x125.pn', 34, 'IPS LCD, 6.1\", HD+', 'Android 9.0 (Pie)\r\n', 'MediaTek MT6762R 8 nhân\r\n', '2 GB', '32 GB', '5 MP', '8 MP\r\n', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh'),
(97, 'Xanh dương', '../img/list_product/untitled-5-180x125.png', 35, 'IPS LCD, 6.22\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân\r\n', '2 GB', '32 GB', '5 MP', '13 MP', '2 Nano SIM, Hỗ trợ 4G', '4030 mAh'),
(98, 'Đen', '../img/list_product/untitled-7-180x125.png', 35, 'IPS LCD, 6.22\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân\r\n', '2 GB', '32 GB', '5 MP', '13 MP', '2 Nano SIM, Hỗ trợ 4G', '4030 mAh'),
(99, 'Đỏ', '../img/list_product/vivo-y11-red-200-180x125.png', 36, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 439 8 nhân\r\n', '3 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(100, 'Xanh dương', '../img/list_product/vivo-y11-blue-200-180x125.png', 36, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 439 8 nhân\r\n', '3 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(101, 'Xanh da trời nhạt', '../img/list_product/vivo-y11-200x200-xanh-da-troi-', 36, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 439 8 nhân\r\n', '3 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(102, 'Xanh dương', '../img/list_product/vivo-u10-blue-200-180x125.png', 37, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '64 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(103, 'Đen', '../img/list_product/vivo-u10-black-200-180x125.png', 37, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '64 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(104, 'Đen', '../img/list_product/vivo-y19-black-200-180x125.png', 38, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'MediaTek MT6768 8 nhân (Helio P65)', '6 GB', '128 GB', '16 MP', 'Chính 16 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(105, 'Trắng', '../img/list_product/vivo-y19-white-200-180x125.png', 38, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'MediaTek MT6768 8 nhân (Helio P65)', '6 GB', '128 GB', '16 MP', 'Chính 16 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(106, 'Xanh dương', '../img/list_product/thumbvivoy30color-180x125.png', 39, 'IPS LCD, 6.47\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân', '4 GB', '128 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(107, 'Trắng', '../img/list_product/thumbvivoy30color-1-180x125.pn', 39, 'IPS LCD, 6.47\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân', '4 GB', '128 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(108, 'Đen', '../img/list_product/vivo-s1-pro-black-200-180x125.', 40, 'Super AMOLED, 6.38\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh\r\n'),
(109, 'Trắng', '../img/list_product/vivo-s1-pro-white-200-180x125.', 40, 'Super AMOLED, 6.38\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4500 mAh, có sạc nhanh\r\n'),
(110, 'Đỏ', '../img/list_product/vivo-y91c-red-200-180x125.png', 41, 'IPS LCD, 6.22\", HD+', 'Android 8.1 (Oreo)', 'MediaTek MT6762R 8 nhân', '2 GB', '32 GB', '5 MP', '13 MP', '2 Nano SIM, Hỗ trợ 4G', '4030 mAh'),
(111, 'Đen', '../img/list_product/vivo-y91c-black-200-180x125.pn', 41, 'IPS LCD, 6.22\", HD+', 'Android 8.1 (Oreo)', 'MediaTek MT6762R 8 nhân', '2 GB', '32 GB', '5 MP', '13 MP', '2 Nano SIM, Hỗ trợ 4G', '4030 mAh'),
(112, 'Đỏ', '../img/list_product/vivo-y15-red-200-180x125.png', 42, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'MediaTek MT6762 8 nhân (Helio P22)', '4 GB', '64 GB', '16 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(113, 'Xanh dương', '../img/list_product/vivo-y15-blue-200-180x125.png', 42, 'IPS LCD, 6.35\", HD+', 'Android 9.0 (Pie)', 'MediaTek MT6762 8 nhân (Helio P22)', '4 GB', '64 GB', '16 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(114, 'Xanh dương', '../img/list_product/vivo-y50-xanhduong-200x200-180', 43, 'IPS LCD, 6.53\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(115, 'Đen', '../img/list_product/vivo-y50-den-200x200-1-180x125', 43, 'IPS LCD, 6.53\", Full HD+', 'Android 10', 'Snapdragon 665 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh'),
(116, 'Xanh dương', '../img/list_product/huawei-p40-pro-xanh-200x200-re', 44, 'OLED, 6.58\", Quad HD+ (2K+)', 'EMUI 10 (Android 10 không có Google)', 'Kirin 990 8 nhân', '8 GB', '256 GB', 'Chính 32 M', 'Chính 50 MP & Phụ 40 MP,12 MP, TOF 3D', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G', '4200 mAh, có sạc nhanh'),
(117, 'Bạc', '../img/list_product/huawei-p40-pro-bac-200x200-re-', 44, 'OLED, 6.58\", Quad HD+ (2K+)', 'EMUI 10 (Android 10 không có Google)', 'Kirin 990 8 nhân', '8 GB', '256 GB', 'Chính 32 M', 'Chính 50 MP & Phụ 40 MP,12 MP, TOF 3D', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G', '4200 mAh, có sạc nhanh'),
(118, 'Xanh dương', '../img/list_product/huawei-p40-re-up-200x200-180x1', 45, 'OLED, 6.1\", Full HD+', 'EMUI 10 (Android 10 không có Google)', 'Kirin 990 8 nhân', '8 GB', '128 GB', 'Chính 32 M', 'Chính 50 MP & Phụ 16 MP, 8 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G', '3800 mAh, có sạc nhanh'),
(119, 'Bạc', '../img/list_product/huawei-p40-re-up-200x200-1-180', 45, 'OLED, 6.1\", Full HD+', 'EMUI 10 (Android 10 không có Google)', 'Kirin 990 8 nhân', '8 GB', '128 GB', 'Chính 32 M', 'Chính 50 MP & Phụ 16 MP, 8 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G', '3800 mAh, có sạc nhanh'),
(120, 'Xanh dương', '../img/list_product/huawei-nova-5t-blue-200x200-18', 46, 'IPS LCD, 6.26\", Full HD+', 'Android 9.0 (Pie)', 'Kirin 980 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 16 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '3750 mAh, có sạc nhanh'),
(121, 'Xanh lá', '../img/list_product/huawei-nova-5t-green-200x200-1', 46, 'IPS LCD, 6.26\", Full HD+', 'Android 9.0 (Pie)', 'Kirin 980 8 nhân', '8 GB', '128 GB', '32 MP', 'Chính 48 MP & Phụ 16 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '3750 mAh, có sạc nhanh'),
(122, 'Xanh lá', '../img/list_product/huawei-nova-7i-green-200x200-1', 47, 'LTPS LCD, 6.4\", Full HD+', 'EMUI 10 (Android 10 không có Google)', 'Kirin 810 8 nhân\r\n', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4200 mAh, có sạc nhanh'),
(123, 'Hồng', '../img/list_product/huawei-nova-7i-pink-200x200-1-', 47, 'LTPS LCD, 6.4\", Full HD+', 'EMUI 10 (Android 10 không có Google)', 'Kirin 810 8 nhân\r\n', '8 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4200 mAh, có sạc nhanh'),
(124, 'Xanh dương', '../img/list_product/huawei-y9s-200x200-1-180x125.p', 48, 'TFT, 6.59\", Full HD+', 'Android 9.1', 'Kirin 710F 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 1 chung khe thẻ nhớ), Hỗ trợ 4G', '4000 mAh'),
(125, 'Đen', '../img/list_product/huawei-y9sb-black-200-180x125.', 48, 'TFT, 6.59\", Full HD+', 'Android 9.1', 'Kirin 710F 8 nhân', '6 GB', '128 GB', '16 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 1 chung khe thẻ nhớ), Hỗ trợ 4G', '4000 mAh'),
(126, 'Trắng', '../img/list_product/huawei-p30-lite-white-200-180x', 49, 'IPS LCD, 6.15\", Full HD+', 'Android 9.0 (Pie)', 'Kirin 710', '6 GB', '128 GB', '32 MP', 'Chính 24 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '3340 mAh, có sạc nhanh'),
(127, 'Xanh dương', '../img/list_product/huawei-y6p-xanh-200x200-1-180x', 50, 'LTPS LCD, 6.59\", Full HD+', 'Android 9.0 (Pie)', 'Kirin 710F 8 nhân', '4 GB', '128 GB', '16 MP', 'Chính 16 MP & Phụ 8 MP, 2 MP\r\n', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4000 mAh'),
(128, 'Xanh lá', '../img/list_product/huawei-y6p-xanh-200x200-1-180x', 51, 'IPS LCD, 6.3\", HD+', 'EMUI 10 (Android 10 không có Google)', 'MediaTek MT6762R 8 nhân', '4 GB', '64 GB', '8 MP', 'Chính 13 MP & Phụ 5 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G\r\n', '5000 mAh'),
(129, 'Xanh dương', '../img/list_product/vsmart-star-3-xanh-200x200-180', 52, 'IPS LCD, 6.09\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 215 4 nhân', '2 GB', '16 GB', '8 MP', 'Chính 8 MP & Phụ 5 MP', '2 Nano SIM, Hỗ trợ 4G', '3500 mAh'),
(130, 'Đen', '../img/list_product/vsmart-star-3-den-200x200-180x', 52, 'IPS LCD, 6.09\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 215 4 nhân', '2 GB', '16 GB', '8 MP', 'Chính 8 MP & Phụ 5 MP', '2 Nano SIM, Hỗ trợ 4G', '3500 mAh'),
(131, 'Đen', '../img/list_product/vsmart-star-4-den-200x200-3-18', 53, 'IPS LCD, 6.09\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân\r\n', '3 GB', '32 GB', '8 MP', 'Chính 8 MP & Phụ 5 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '3500 mAh'),
(132, 'Đen', '../img/list_product/vsmart-bee-3-den-200x200-1-180', 54, 'IPS LCD, 6.0\", HD+', 'Android 9.0 (Pie)\r\n', 'MediaTek MT6739WW 4 nhân', '2 GB', '16 GB', '5 MP', '8 MP', '2 Nano SIM, Hỗ trợ 4G', '3000 mAh'),
(133, 'Xanh dương', '../img/list_product/vsmart-bee-blue-200-180x125.pn', 55, 'IPS LCD, 5.45\", HD+', 'Android 8.1 (Oreo)', 'MediaTek MT6739 4 nhân', '1 GB', '16 GB', '5 MP', '8 MP', '2 Nano SIM, Hỗ trợ 4G', '2500 mAh'),
(134, 'Đen', '../img/list_product/vsmart-bee-black-200-180x125.p', 55, 'IPS LCD, 5.45\", HD+', 'Android 8.1 (Oreo)', 'MediaTek MT6739 4 nhân', '1 GB', '16 GB', '5 MP', '8 MP', '2 Nano SIM, Hỗ trợ 4G', '2500 mAh'),
(135, 'Xanh dương', '../img/list_product/xiaomi-redmi-note-8-pro-6gb-12', 56, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'Mediatek Helio G90T 8 nhân', '6 GB', '128 GB', '20 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(136, 'Xám', '../img/list_product/xiaomi-redmi-note-8-pro-6gb-12', 56, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'Mediatek Helio G90T 8 nhân', '6 GB', '128 GB', '20 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(137, 'Trắng', '../img/list_product/xiaomi-redmi-note-8-pro-6gb-12', 56, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'Mediatek Helio G90T 8 nhân', '6 GB', '128 GB', '20 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(138, 'Xanh lá', '../img/list_product/xiaomi-mi-note-10-pro-green-20', 57, 'AMOLED, 6.47\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 730G 8 nhân', '8 GB', '256 GB', '32 MP', 'Chính 108 MP & Phụ 20 MP, 12 MP, 5 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5260 mAh, có sạc nhanh'),
(139, 'Đen', '../img/list_product/xiaomi-mi-note-10-pro-black-20', 57, 'AMOLED, 6.47\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 730G 8 nhân', '8 GB', '256 GB', '32 MP', 'Chính 108 MP & Phụ 20 MP, 12 MP, 5 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5260 mAh, có sạc nhanh'),
(140, 'Tím', '../img/list_product/xiaomi-mi-note-10-lite-tim-200', 58, 'AMOLED, 6.47\", Full HD+', 'Android 10', 'Snapdragon 730G 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5260 mAh, có sạc nhanh'),
(141, 'Đen', '../img/list_product/xiaomi-mi-note-10-lite-den-200', 58, 'AMOLED, 6.47\", Full HD+', 'Android 10', 'Snapdragon 730G 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5260 mAh, có sạc nhanh'),
(142, 'Trắng', '../img/list_product/xiaomi-mi-note-10-lite-trang-2', 58, 'AMOLED, 6.47\", Full HD+', 'Android 10', 'Snapdragon 730G 8 nhân', '8 GB', '128 GB', '16 MP', 'Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5260 mAh, có sạc nhanh'),
(143, 'Xanh dương', '../img/list_product/xiaomi-redmi-note-8-pro-6gb-64', 59, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'Mediatek Helio G90T 8 nhân', '6 GB', '64 GB', '20 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(144, 'Xám', '../img/list_product/xiaomi-redmi-note-8-pro-black-', 59, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'Mediatek Helio G90T 8 nhân', '6 GB', '64 GB', '20 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(145, 'Trắng', '../img/list_product/xiaomi-redmi-note-8-pro-white-', 59, 'IPS LCD, 6.53\", Full HD+', 'Android 9.0 (Pie)', 'Mediatek Helio G90T 8 nhân', '6 GB', '64 GB', '20 MP', 'Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4500 mAh, có sạc nhanh'),
(146, 'Xanh dương', '../img/list_product/xiaomi-redmi-note-8-128gb-blue', 60, 'IPS LCD, 6.3\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '128 GB', '13 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(147, 'Đen', '../img/list_product/xiaomi-redmi-note-8-128gb-blac', 60, 'IPS LCD, 6.3\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '128 GB', '13 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(148, 'Trắng', '../img/list_product/xiaomi-redmi-note-8-128gb-whit', 60, 'IPS LCD, 6.3\", Full HD+', 'Android 9.0 (Pie)', 'Snapdragon 665 8 nhân', '4 GB', '128 GB', '13 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(149, 'Xanh dương', '../img/list_product/xiaomi-mi-a3-blue-200-180x125.', 61, 'AMOLED, 6.01\", HD+', 'Android 9 Pie (Android One)', 'Snapdragon 665 8 nhân', '4 GB', '64 GB', '32 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4030 mAh, có sạc nhanh'),
(150, 'Trắng', '../img/list_product/xiaomi-mi-a3-white-200-180x125', 61, 'AMOLED, 6.01\", HD+', 'Android 9 Pie (Android One)', 'Snapdragon 665 8 nhân', '4 GB', '64 GB', '32 MP', 'Chính 48 MP & Phụ 8 MP, 2 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '4030 mAh, có sạc nhanh'),
(151, 'Đỏ', '../img/list_product/xiaomi-redmi-note-7-red-200-18', 62, 'IPS LCD, 6.3\", Full HD+', 'Android 9.0 (Pie)', 'Android 9.0 (Pie)', '4 GB', '64 GB', '13 MP', 'Chính 48 MP & Phụ 5 MP', '2 SIM Nano (SIM 1 chung khe thẻ nhớ), Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(152, 'Đen', '../img/list_product/xiaomi-redmi-note-7-black-200-', 62, 'IPS LCD, 6.3\", Full HD+', 'Android 9.0 (Pie)', 'Android 9.0 (Pie)', '4 GB', '64 GB', '13 MP', 'Chính 48 MP & Phụ 5 MP', '2 SIM Nano (SIM 1 chung khe thẻ nhớ), Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(153, 'Trắng', '../img/list_product/xiaomi-redmi-note-7-white-200-', 62, 'IPS LCD, 6.3\", Full HD+', 'Android 9.0 (Pie)', 'Android 9.0 (Pie)', '4 GB', '64 GB', '13 MP', 'Chính 48 MP & Phụ 5 MP', '2 SIM Nano (SIM 1 chung khe thẻ nhớ), Hỗ trợ 4G', '4000 mAh, có sạc nhanh'),
(154, 'Đỏ', '../img/list_product/xiaomi-redmi-8a-red-200-180x12', 63, 'IPS LCD, 6.22\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 439 8 nhân', '2 GB', '32 GB', '8 MP', '12 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(155, 'Đen', '../img/list_product/xiaomi-redmi-8a-black-200-180x', 63, 'IPS LCD, 6.22\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 439 8 nhân', '2 GB', '32 GB', '8 MP', '12 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(156, 'Xanh dương', '../img/list_product/xiaomi-redmi-8a-blue-200-180x1', 63, 'IPS LCD, 6.22\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 439 8 nhân', '2 GB', '32 GB', '8 MP', '12 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(157, 'Xanh lá', '../img/list_product/vsmart-star-4-xanh-la-1-180x12', 64, 'IPS LCD, 6.09\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân', '2 GB', '32 GB', '8 MP', 'Chính 8 MP & Phụ 5 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '3500 mAh'),
(158, 'Đen', '../img/list_product/vsmart-star-4-den-200x200-3-18', 64, 'IPS LCD, 6.09\", HD+', 'Android 10', 'MediaTek Helio P35 8 nhân', '2 GB', '32 GB', '8 MP', 'Chính 8 MP & Phụ 5 MP', '2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G', '3500 mAh'),
(159, 'Tím', '../img/list_product/vsmart-joy-3-200x200-180x125.p', 65, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân', '3 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(160, 'Đen', '../img/list_product/vsmart-joy-3-den-200x200-180x1', 65, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân', '3 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(161, 'Trắng', '../img/list_product/vsmart-joy-3-trang-200x200-180', 65, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân', '3 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(162, 'Tím', '../img/list_product/vsmart-joy-3-2gb-tim-200x200-1', 66, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân', '2 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(163, 'Đen', '../img/list_product/vsmart-joy-3-2gb-den-200x200-1', 66, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân', '2 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh'),
(164, 'Trắng', '../img/list_product/vsmart-joy-3-2gb-trang-200x200', 66, 'IPS LCD, 6.5\", HD+', 'Android 9.0 (Pie)', 'Snapdragon 632 8 nhân', '2 GB', '32 GB', '8 MP', 'Chính 13 MP & Phụ 8 MP, 2 MP', '2 Nano SIM, Hỗ trợ 4G', '5000 mAh, có sạc nhanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin_sanpham`
--

CREATE TABLE `thongtin_sanpham` (
  `ID` int(11) NOT NULL,
  `TenSP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Nhanhieu` int(20) NOT NULL,
  `Hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `GiaNY` int(11) DEFAULT NULL,
  `GiaBan` int(11) NOT NULL,
  `KhuyenMai` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ngaynhap` date NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtin_sanpham`
--

INSERT INTO `thongtin_sanpham` (`ID`, `TenSP`, `Nhanhieu`, `Hinh`, `GiaNY`, `GiaBan`, `KhuyenMai`, `Ngaynhap`, `SoLuong`) VALUES
(1, 'iPhone 11 Pro Max 64GB', 1, '../img/list_product/thumb_11-ProMAX_2.jpg', 33990000, 30049000, 'Giảm ngay 2 triệu (đã trừ vào giá)', '2019-10-12', 0),
(2, 'OPPO A52', 4, '../img/list_product/oppo-a52-black-200x200-180x125.png', 5990000, 5690000, 'Giảm ngay 16% (910.000đ) (áp dụng đặt và nhận hàng từ 16 - 31/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-12', 0),
(3, 'Samsung Galaxy A21s (6GB/64GB)', 2, '../img/list_product/samsung-galaxy-a21s-xanh-200x200-1-180x125.png', NULL, 5690000, 'Giảm ngay 16% (910.000đ) (áp dụng đặt và nhận hàng từ 16 - 31/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-08-06', 0),
(4, 'Xiaomi Redmi Note 9S', 8, '../img/list_product/xiaomi-redmi-note-9s-4gb-gray-200x200-180x125.png', NULL, 5990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-01-16', 0),
(5, 'Vivo V19 Neo', 5, '../img/list_product/vivo-v19-neo-den-200x200-180x125.png', 7690000, 7390000, 'Giảm ngay 300.000đ (đã trừ vào giá) *\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-12', 0),
(6, 'Vsmart Active 3 (6GB/64GB)', 7, '../img/list_product/vsmart-active-200x200-180x125.png', 3990000, 3790000, ' Tặng thêm 01 tháng bảo hành chính hãng', '2020-02-20', 0),
(7, 'iPhone 11 Pro Max 512GB', 1, '../img/list_product/10044348-dien-thoai-iphone-11-pro-max-256gb-xam-1.jpg', 43990000, 40490000, 'Giảm ngay 2 triệu (đã trừ vào giá)\r\n', '2020-01-16', 0),
(8, 'iPhone 11 Pro Max 256GB', 1, '../img/list_product/10044348-dien-thoai-iphone-11-pro-max-256gb-xam-1.jpg', 37990000, 35490000, 'Giảm ngay 2 triệu (đã trừ vào giá)', '2020-02-20', 0),
(9, 'Vsmart Joy 3 (4GB/64GB)', 7, '../img/list_product/vsmart-joy-3-4gb-tim-200x200-180x125.png', 3290000, 3140000, 'Tặng thêm 01 tháng bảo hành chính hãng', '2020-01-16', 0),
(10, 'iPhone 11 Pro 256GB', 1, '../img/list_product/iphone-11-pro-256gb-gold-200-180x125.png', 34990000, 34490000, 'Giảm ngay 500.000đ (đã trừ vào giá)<br>\r\nMua online:\r\nGiảm ngay 2 triệu (áp dụng đặt và nhận hàng từ 4 - 7/6)', '2019-08-06', 0),
(11, 'iPhone Xs Max 64GB', 1, '../img/list_product/iphone-xs-max-silver-200-180x125.png', 25990000, 23990000, 'Giảm ngay 2 triệu (đã trừ vào giá)', '2019-10-12', 0),
(12, 'iPhone Xs Max 256GB', 1, '../img/list_product/iphone-xs-max-256gb-png-180x125.png', 30990000, 25990000, 'Giảm ngay 5 triệu (đã trừ vào giá, không áp dụng khi mua trả góp 0%)\r\n', '2019-08-06', 0),
(13, 'Samsung Galaxy S20+', 2, '../img/list_product/samsung-galaxy-s20-plus-200x200-xanh-180x125.png', 23990000, 18990000, 'Tặng tiền cước 5 triệu (áp dụng đặt và nhận hàng từ 5 - 7/6) (đã trừ vào giá)', '2020-05-12', 0),
(14, 'Samsung Galaxy S20', 2, '../img/list_product/samsung-galaxy-s20-200x200-xampng-180x125.png', 21490000, 18490000, 'Tặng tiền cước 3 triệu (áp dụng đặt và nhận hàng từ 1 - 15/6) (đã trừ vào giá)', '2020-02-20', 0),
(15, 'OPPO Reno 3', 4, '../img/list_product/10045584_dien-thoai-oppo-reno-3-den-1.jpg', 8990000, 8490000, 'Giảm ngay 500.000đ (đã trừ vào giá)', '2019-10-12', 0),
(16, 'iPhone 11 64GB', 1, '../img/list_product/iphone-11-red-200-180x125.png', 21990000, 20990000, 'Giảm ngay 1 triệu (đã trừ vào giá)', '2020-01-11', 0),
(17, 'iPhone 7 32GB', 1, '../img/list_product/iphone-7-32gb-black-200-180x120.png', 8490000, 8490000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-11', 0),
(18, 'iPhone 7 Plus 32GB', 1, '../img/list_product/iphone-7-plus-silver-200-180x120.png', 10990000, 10490000, 'Giảm ngay 500.000đ (áp dụng đặt và nhận hàng 16 - 31/7) (đã trừ vào giá) *\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-05-15', 0),
(19, 'iPhone 8 Plus 64GB', 1, '../img/list_product/iphone-8-plus-h-0-180x125.png', 14990000, 14490000, 'Giảm ngay 500.000đ (áp dụng đặt và nhận hàng 16 - 31/7) (đã trừ vào giá) *\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-11', 0),
(20, 'Samsung Galaxy A31', 2, '../img/list_product/samsung-galaxy-a31-xanh-200x200-1-180x125.png', 6490000, 5450000, 'Giảm ngay 16% (1.040.000đ) (áp dụng đặt và nhận hàng từ 16 - 31/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-11', 0),
(21, 'Samsung Galaxy A51 (6GB)', 2, '../img/list_product/samsung-galaxy-a51-blue-chi-tiet-180x125.png', 7990000, 6710000, 'Giảm ngay 16% (1.280.000đ) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-05-11', 0),
(22, 'Samsung Galaxy Z Flip', 2, '../img/list_product/samsung-galaxy-z-flip-tim-200x200-180x125.png', NULL, 36000000, 'Phiếu mua hàng Samsung 2.7 triệu\r\nTrả góp 0% thẻ tín dụng', '2020-01-11', 0),
(23, 'Samsung Galaxy S10 Lite', 2, '../img/list_product/samsung-galaxy-s10-lite-xanh-200x200-180x120.png', 14990000, 129900000, 'Giảm ngay 1 triệu (đã trừ vào giá)\r\nTrả góp 0% thẻ tín dụng ', '2019-10-12', 0),
(24, 'Samsung Galaxy Note 10 Lite', 2, '../img/list_product/samsung-galaxy-note-10-lite-white-200x200-180x125.png', 11490000, 9990000, 'Giảm ngay 1.5 triệu (áp dụng đặt và nhận hàng từ 17 - 19/7) (đã trừ vào giá)\r\nMua ĐH Samsung Active 2 giảm đến 3.000.000đ (ĐH không kèm KM khác) ', '2018-01-11', 0),
(25, 'Samsung Galaxy A71', 2, '../img/list_product/samsung-galaxy-a71-blue-200x200-180x125.png', 10490000, 8390000, 'Giảm ngay 20% (2.1 triệu) (áp dụng đặt và nhận hàng từ 16 - 31/7) (đã trừ vào giá)\r\nMua ĐH Samsung Active 2 giảm đến 3.000.000đ (ĐH không kèm KM khác) ', '2020-01-11', 0),
(26, 'Samsung Galaxy A11', 2, '../img/list_product/samsung-galaxy-a11-xanh-200x200-180x125.png', 3690000, 3100000, 'Giảm ngay 16% (590.000đ) (áp dụng đặt và nhận hàng từ 16 - 31/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2017-12-11', 0),
(27, 'OPPO A92', 4, '../img/list_product/oppo-a92-tim-200x200-4-180x125.png', 6990000, 6490000, 'Giảm ngay 500.000đ (áp dụng đặt và nhận hàng từ 3 - 19/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-11', 0),
(28, 'OPPO Find X2', 4, '../img/list_product/oppo-find-x2-blue-200x200-1-180x125.png', 23990000, 19990000, 'Giảm ngay 4 triệu (áp dụng đặt và nhận hàng từ 17 - 19/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-05-19', 0),
(29, 'OPPO Reno3 Pro', 4, '../img/list_product/oppo-reno3-pro-den-200x200-180x125.png', 24990000, 21990000, 'Giảm ngay 2.5 triệu (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-13', 0),
(30, 'OPPO A9', 4, '../img/list_product/oppo-a9-200x200-xanh-la-180x125.png', 6990000, 5490000, 'Giảm ngay 1 triệu (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-10-12', 0),
(31, 'OPPO A91', 4, '../img/list_product/oppo-a91-den-200x200-180x125.png', 6990000, 5990000, 'Giảm ngay 1 triệu (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-05-18', 0),
(32, 'OPPO A12 (4GB)', 4, '../img/list_product/oppo-a12-4gb-xanh-200x200-180x125.png', 2990000, 2690000, 'Giảm ngay 300.000đ (áp dụng đặt và nhận hàng từ 8 - 19/7) (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-11-12', 0),
(33, 'OPPO A5 (2020) 128GB', 4, '../img/list_product/oppo-a5-2020-128gb-den-200x200-180x125.png', NULL, 4490000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-11-12', 0),
(34, 'OPPO A1K', 4, '../img/list_product/oppo-a1k-do-200x200-180x125.png', NULL, 2690000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-05-30', 0),
(35, 'Vivo Y1s', 5, '../img/list_product/untitled-5-180x125.png', NULL, 2690000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-12', 0),
(36, 'Vivo Y11', 5, '../img/list_product/vivo-y11-red-200-180x125.png', NULL, 2990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2018-01-05', 0),
(37, 'Vivo U10', 5, '../img/list_product/vivo-u10-blue-200-180x125.png', 3990000, 3790000, 'Giảm ngay 200.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-11', 0),
(38, 'Vivo Y19', 5, '../img/list_product/vivo-y19-black-200-180x125.png', 4990000, 4790000, 'Giảm ngay 200.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-01-11', 0),
(39, 'Vivo Y30', 5, '../img/list_product/thumbvivoy30color-180x125.png', NULL, 4990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-11-12', 0),
(40, 'Vivo S1 Pro', 5, '../img/list_product/vivo-s1-pro-black-200-180x125.png', 6990000, 5990000, 'Giảm ngay 1 triệu (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2020-05-15', 0),
(41, 'Vivo Y91C', 5, '../img/list_product/vivo-y91c-red-200-180x125.png', NULL, 2390000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-11-12', 0),
(42, 'Vivo Y15', 5, '../img/list_product/vivo-y15-red-200-180x125.png', 3790000, 3290000, 'Giảm ngay 500.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-01-11', 0),
(43, 'Vivo Y50', 5, '../img/list_product/vivo-y50-xanhduong-200x200-180x125.png', 6290000, 5990000, 'Giảm ngay 300.000đ (đã trừ vào giá) *\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-11-12', 0),
(44, 'Huawei P40 Pro', 6, '../img/list_product/huawei-p40-pro-xanh-200x200-re-up-180x125.png', NULL, 23990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-05-11', 0),
(45, 'Huawei P40 ', 6, '../img/list_product/huawei-p40-re-up-200x200-180x125.png', NULL, 17990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-12-12', 0),
(46, 'Huawei Nova 5T', 6, '../img/list_product/huawei-nova-5t-blue-200x200-180x125.png', NULL, 8990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2020-01-20', 0),
(47, 'Huawei Nova 7i ', 6, '../img/list_product/huawei-nova-7i-green-200x200-1-180x125.png', 6990000, 6690000, 'Giảm ngay 300.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2018-01-11', 0),
(48, 'Huawei Y9s', 6, '../img/list_product/huawei-y9s-200x200-1-180x125.png', NULL, 5990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-11-12', 0),
(49, 'Huawei P30 Lite', 6, '../img/list_product/huawei-p30-lite-white-200-180x125.png', 5490000, 4990000, 'Giảm ngay 500.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-11-12', 0),
(50, 'Huawei Y9 Prime (2019)', 6, '../img/list_product/huawei-y9-prime-2019-blue-2-400x400.jpg', 5490000, 5490000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-11-12', 0),
(51, 'Huawei Y6p ', 6, '../img/list_product/huawei-y6p-xanh-200x200-1-180x125 (1).png', NULL, 3490000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-23', 0),
(52, 'Vsmart Star 3', 7, '../img/list_product/vsmart-star-3-xanh-200x200-180x125.png', NULL, 1990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-01-29', 0),
(53, 'Vsmart Star 4 (3GB/32GB)', 7, '../img/list_product/vsmart-star-4-den-200x200-3-180x125.png', NULL, 2490000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2018-05-11', 0),
(54, 'Vsmart Bee 3', 7, '../img/list_product/vsmart-bee-3-den-200x200-1-180x125.png', NULL, 1590000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-11-15', 0),
(55, 'Vsmart Bee', 7, '../img/list_product/vsmart-bee-blue-200-180x125.png', NULL, 990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-20', 0),
(56, 'Xiaomi Redmi Note 8 Pro (6GB/128GB)', 8, '../img/list_product/xiaomi-redmi-note-8-pro-6gb-128gb-xanh-duong-180x125.png', 5990000, 5690000, 'Giảm ngay 300.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-10-12', 0),
(57, 'Xiaomi Mi Note 10 Pro', 8, '../img/list_product/xiaomi-mi-note-10-pro-green-200-180x125.png', 14990000, 13990000, 'Giảm ngay 1 triệu (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-05-12', 0),
(58, 'Xiaomi Mi Note 10 Lite', 8, '../img/list_product/xiaomi-mi-note-10-lite-tim-200x200-180x125.png', NULL, 9990000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-12', 0),
(59, 'Xiaomi Redmi Note 8 Pro (6GB/64GB)', 8, '../img/list_product/xiaomi-redmi-note-8-pro-6gb-64gb-xanh-duong-200-180x125.png', 5490000, 5190000, 'Giảm ngay 300.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-18', 0),
(60, 'Xiaomi Redmi Note 8 (4GB/128GB)', 8, '../img/list_product/xiaomi-redmi-note-8-128gb-blue-200-180x125.png', 4990000, 4790000, 'Giảm ngay 200.000đ (đã trừ vào giá)\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2020-03-11', 0),
(61, 'Xiaomi Mi A3', 8, '../img/list_product/xiaomi-mi-a3-blue-200-180x125.png', 4490000, 3490000, 'Giảm ngay 1 triệu (đã trừ vào giá) *\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-03-12', 0),
(62, 'Xiaomi Redmi Note 7 (4GB/64GB)', 8, '../img/list_product/xiaomi-redmi-note-7-red-200-180x125.png', 4990000, 3990000, 'Giảm ngay 1 triệu (đã trừ vào giá) *\r\nTặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác) ', '2019-02-12', 0),
(63, 'Xiaomi Redmi 8A', 8, '../img/list_product/xiaomi-redmi-8a-red-200-180x125.png', NULL, 2290000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-06-12', 0),
(64, 'Vsmart Star 4 (2GB/32GB)', 7, '../img/list_product/vsmart-star-4-xanh-la-1-180x125.jpg', NULL, 2190000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-10-12', 0),
(65, 'Vsmart Joy 3 (3GB/32GB)', 7, '../img/list_product/vsmart-joy-3-200x200-180x125.png', NULL, 2690000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác', '2019-10-12', 0),
(66, 'Vsmart Joy 3 (2GB/32GB)', 7, '../img/list_product/vsmart-joy-3-2gb-tim-200x200-180x125.png', NULL, 2290000, 'Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không áp dụng thêm khuyến mãi khác)', '2019-05-12', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Level` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`SoDH`),
  ADD KEY `chitiethd_MaHD` (`MaHD`),
  ADD KEY `chitiethd_idsanpham` (`ID_sanpham`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hoadon_khachhang` (`MaKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD KEY `khachhang_user` (`Account`);

--
-- Chỉ mục cho bảng `nhanhieu`
--
ALTER TABLE `nhanhieu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `slide_events`
--
ALTER TABLE `slide_events`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `slide_sanpham`
--
ALTER TABLE `slide_sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `slideSanpham_IDsanpham` (`ID_sanpham`);

--
-- Chỉ mục cho bảng `thongsokithuat`
--
ALTER TABLE `thongsokithuat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `thongsokithuat_sanpham` (`idSanPham`);

--
-- Chỉ mục cho bảng `thongtin_sanpham`
--
ALTER TABLE `thongtin_sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Nhanhieu` (`Nhanhieu`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  MODIFY `SoDH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanhieu`
--
ALTER TABLE `nhanhieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slide_events`
--
ALTER TABLE `slide_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slide_sanpham`
--
ALTER TABLE `slide_sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT cho bảng `thongsokithuat`
--
ALTER TABLE `thongsokithuat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT cho bảng `thongtin_sanpham`
--
ALTER TABLE `thongtin_sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `chitiethd_MaHD` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethd_idsanpham` FOREIGN KEY (`ID_sanpham`) REFERENCES `thongtin_sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_khachhang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_user` FOREIGN KEY (`Account`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `slide_sanpham`
--
ALTER TABLE `slide_sanpham`
  ADD CONSTRAINT `slideSanpham_IDsanpham` FOREIGN KEY (`ID_sanpham`) REFERENCES `thongtin_sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thongsokithuat`
--
ALTER TABLE `thongsokithuat`
  ADD CONSTRAINT `thongsokithuat_sanpham` FOREIGN KEY (`idSanPham`) REFERENCES `thongtin_sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thongtin_sanpham`
--
ALTER TABLE `thongtin_sanpham`
  ADD CONSTRAINT `sanpham_nhanhieu` FOREIGN KEY (`Nhanhieu`) REFERENCES `nhanhieu` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
