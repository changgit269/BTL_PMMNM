-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2023 lúc 09:07 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopcbtn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `hovaten` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `hovaten`, `taikhoan`, `matkhau`, `sodienthoai`, `email`, `diachi`, `chucvu`) VALUES
(10, 'Đào Đức Cháng', 'changdz', '123', 386075101, 'changdz@gmail.com', '					Vĩnh Phúc		', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(10, 'Túi Hermes', 1),
(11, 'Túi Chanel', 2),
(12, 'Túi Chloe', 3),
(13, 'Túi Dior', 4),
(14, 'Túi GuCi', 5),
(15, 'Túi Balenciaga', 6),
(16, 'Túi LV', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasanpham` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `id_danhmuc`, `trangthai`) VALUES
(1, 'Túi Hermes', 'Tui003', 50000000, 9, 'hermes-01.jpg', 'KÍCH THƯỚC\r\n• Height: 10 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Hermès sở hữu màu sắc thanh lịch cùng thiết kế đơn giản nhưng lại có sức hút cực lớn, có thể mix với trang phục linh hoạt, bạn có thể kết hợp túi với nhiều loại trang phục khác nhau để diện đi chơi, đi làm, dạo phố,....', 10, 1),
(2, 'Túi Hermes', 'Tui002', 30000000, 9, 'hermes-02.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Hermès sở hữu màu sắc thanh lịch cùng thiết kế đơn giản nhưng lại có sức hút cực lớn, có thể mix với trang phục linh hoạt, bạn có thể kết hợp túi với nhiều loại trang phục khác nhau để diện đi chơi, đi làm, dạo phố,....', 10, 1),
(3, 'Túi Hermes', 'Tui001', 25000000, 6, 'hermes-04.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Hermès sở hữu màu sắc thanh lịch cùng thiết kế đơn giản nhưng lại có sức hút cực lớn, có thể mix với trang phục linh hoạt, bạn có thể kết hợp túi với nhiều loại trang phục khác nhau để diện đi chơi, đi làm, dạo phố,....', 10, 1),
(4, 'Túi Chanel', 'Tui004', 89000000, 10, 'chanel-05.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi đeo Chanel được làm từ chất liệu cao cấp, forrm túi thời trang các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ. Logo thương hiệu bắt mắt, màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau tùy theo sở thích', 11, 1),
(5, 'Túi Chanel', 'Tui005', 50000000, 10, 'chanel-07.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi đeo Chanel được làm từ chất liệu cao cấp, forrm túi thời trang các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ. Logo thương hiệu bắt mắt, màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau tùy theo sở thích', 11, 1),
(6, 'Túi Chanel', 'Tui006', 23000000, 10, 'chanel-04.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi đeo Chanel được làm từ chất liệu cao cấp, forrm túi thời trang các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ. Logo thương hiệu bắt mắt, màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau tùy theo sở thích', 11, 1),
(7, 'Túi Chanel', 'Tui007', 99000000, 10, 'chanel-02.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi đeo Chanel được làm từ chất liệu cao cấp, forrm túi thời trang các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ. Logo thương hiệu bắt mắt, màu sắc đơn giản dễ dàng kết hợp với các trang phục khác nhau tùy theo sở thích', 11, 1),
(8, 'Túi Chloe', 'Tui008', 59000000, 10, 'chloe-04.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Đây là mẫu túi xách dành cho các cô nàng yêu thích sự nhẹ nhàng nhưng không kém phần tinh tế và cuốn hút. Sản phẩm cao cấp bạn cũng có thể làm quà tặng cho người thân hoặc bạn bè vào mỗi dịp đặc biệt.', 12, 1),
(9, 'Túi Chloe', 'Tui009', 50000000, 10, 'chloe-02.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Đây là mẫu túi xách dành cho các cô nàng yêu thích sự nhẹ nhàng nhưng không kém phần tinh tế và cuốn hút. Sản phẩm cao cấp bạn cũng có thể làm quà tặng cho người thân hoặc bạn bè vào mỗi dịp đặc biệt.', 12, 1),
(10, 'Túi Dior', 'Tui010', 73000000, 10, 'Dior-09.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Dior được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn. Ngăn túi rộng rãi bạn có thể để được những vật dụng cần thiết khi đi ra ngoài.', 13, 1),
(11, 'Túi Dior', 'Tui011', 89000000, 10, 'Dior-06.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Dior được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn. Ngăn túi rộng rãi bạn có thể để được những vật dụng cần thiết khi đi ra ngoài.', 13, 1),
(12, 'Túi Dior', 'Tui012', 27000000, 10, 'Dior-03.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Dior được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn. Ngăn túi rộng rãi bạn có thể để được những vật dụng cần thiết khi đi ra ngoài.', 13, 1),
(13, 'Túi Dior', 'Tui013', 67000000, 10, 'Dior-02.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Dior được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn. Ngăn túi rộng rãi bạn có thể để được những vật dụng cần thiết khi đi ra ngoài.', 13, 1),
(14, 'Túi GuCi', 'Tui014', 48000000, 10, 'GuCi-07.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Guci được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 14, 1),
(15, 'Túi GuCi', 'Tui015', 27000000, 10, 'GuCi-04.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Guci được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 14, 1),
(16, 'Túi GuCi', 'Tui016', 39000000, 10, 'GuCi-02.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Guci được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 14, 1),
(17, 'Túi BLC', 'Tui017', 55000000, 10, 'Balenciaga-09.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Balenciga được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 15, 1),
(18, 'Túi BLC', 'Tui018', 30000000, 10, 'Balenciaga-06.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Balenciga được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 15, 1),
(19, 'Túi BLC', 'Tui019', 50000000, 10, 'Balenciaga-04.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách Balenciga được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 15, 1),
(20, 'Túi LV', 'Tui020', 60000000, 10, 'LV-05.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách LV được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 16, 1),
(21, 'Túi LV', 'Tui021', 40000000, 10, 'LV-09.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách LV được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 16, 1),
(22, 'Túi LV', 'Tui022', 20000000, 10, 'LV-07.jpg', 'KÍCH THƯỚC\r\n• Height: 15 cm\r\n• Length: 20 cm\r\n• Width: 5 cm\r\nCHẤT LIỆU\r\n• Da cao cấp\r\nXUẤT XỨ\r\n• Pháp', 'Túi xách LV được làm từ chất liệu cao cấp. Form túi thời trang với các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ, khóa kéo chắc chắn.Kiểu cách nhẹ nhàng nhưng không kém phần thu hút.', 16, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD CONSTRAINT `tbl_cart_detail_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_sanpham` (`id_sanpham`);

--
-- Các ràng buộc cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `tbl_giohang_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_dangky` (`id_khachhang`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `tbl_danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
