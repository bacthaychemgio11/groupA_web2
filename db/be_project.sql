-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 29, 2021 lúc 12:39 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `be_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `ID_account` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type_account` int(1) NOT NULL,
  PRIMARY KEY (`ID_account`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`ID_account`, `userName`, `pass`, `account_email`, `Type_account`) VALUES
(3, 'admin', '$2y$10$iQxZzruG/8pjMEpyGGP/BOrnfY5Bxs5gkpQmYysK9nLVBOP2UKEee', 'dtn12704@eoopy.com', 0),
(4, 'Hung', '$2y$10$PW25F2JoOeiC5dkC20ktNeENXcAeiUwbOUtfXisNN7m2YbbW2QzuC', 'dtn12704@eoopy.com', 1),
(5, 'Liem', '$2y$10$yTuwyjh.3QPt9w12sA4VOOo.LqMcWjvQxA73.OyPgzoUJ//haW63u', 'dtn12704@eoopy.com', 1),
(6, 'Nam', '$2y$10$nJwYA/QJ27DoekX8amDip.ZyUKb4jsysBNF95drNUBVe6UgBmPUr6', 'dtn12704@eoopy.com', 1),
(7, 'Hoang', '$2y$10$G1mOXUGhEqGF.Bhdb26Vu.krw55jrpThUP1LEb5Wmf7HK/j8aYq0e', 'wew74412@cuoly.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_account` int(11) NOT NULL,
  `bill_state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_account`, `bill_state`) VALUES
(20, 6, 1),
(19, 4, 0),
(18, 4, 1),
(16, 4, 1),
(17, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id_bill`,`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id_bill`, `id_product`, `quantity`) VALUES
(17, 11, 1),
(16, 3, 1),
(16, 157, 1),
(16, 15, 1),
(17, 175, 3),
(17, 161, 1),
(17, 134, 4),
(18, 73, 1),
(18, 150, 1),
(18, 148, 1),
(18, 158, 1),
(18, 94, 1),
(19, 267, 2),
(20, 265, 1),
(20, 217, 7),
(20, 222, 4),
(20, 227, 4),
(20, 276, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Organic Vegetable'),
(2, 'Fruits'),
(3, 'Vegetable'),
(4, 'Meat, Seafood'),
(5, 'Others'),
(11, 'Decorative Plants'),
(10, 'Seeds'),
(12, 'Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_photo` text COLLATE utf8mb4_unicode_ci,
  `product_state` tinyint(1) NOT NULL,
  `product_ispopular` tinyint(1) NOT NULL,
  `product_quality` int(11) NOT NULL,
  `product_more_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_price`, `product_photo`, `product_state`, `product_ispopular`, `product_quality`, `product_more_photo`) VALUES
(1, 'Bưởi da xanh hữu cơ (1kg)', 'Bưởi da xanh hữu cơ được trồng và chăm sóc theo tiêu chuẩn hữu cơ:\r\n- Không thuốc trừ sâu\r\n- Không phân bón hoá học\r\n- Không chất kích thích tăng trưởng\r\n', 90000, 'buoidaxanhhuuco.webp', 1, 1, 5, ''),
(2, 'Cá chim trắng vây vàng (1kg)', 'Là một trong bốn tặng phẩm của biển cả (Chim, Thu, Nụ, Đé), cá chim được biết đến như một loại cá ngon, chắc thịt lại giàu dinh dưỡng. Biển nước ta có nhiều loại cá chim như: Cá chim trắng, cá chim đen, cá chim gai, cá chim Ấn Độ. Tuy nhiên đặc biệt nhất phải nói đến cá chim vây vàng của vùng biển Cát Bà.\r\n\r\nCá chim trắng vây vàng tươi có thịt nạc tới, vị ngọt, thịt cá mềm không khô. Không chỉ vậy cá chim trắng vây vàng có hàm lượng dinh dưỡng cao, giàu omega 3, nhiều protein. Trong 100g cá có tới 19,4g protein, 5,4g lipit, 1,1g tro, 15mg canxi, 185mg photpho, 0,6mg sắt, 145mg natri, 263mg kali, 27mg vitamin A, 2mg vitamin PP, 1mg vitamin C, các vitamin B1, B2… cung cấp được 126kcal.', 350000, 'ca-chim-trang-vay-vang.webp', 0, 0, 4, ''),
(3, 'Cà chua hữu cơ (1kg)', 'Cà chua là một loại nguyên liệu thường thấy trong mỗi bữa ăn của gia đình Việt Nam. Chúng có tên gọi khoa học là Solanum lycopersicum, rất giàu dinh dưỡng vitamin A, C, K, B6 và là nguồn thực phẩm giàu Kali, Mangan, Magie, Chất xơ, Protein góp phần đặc biệt vào sức khỏe của con người.\r\n\r\nXuất xứ: Hà Nam.\r\n\r\nChất lượng: Giàu dinh dưỡng.', 37000, 'ca-chua-huu-co.webp', 1, 1, 4, ''),
(4, 'Cá thu nướng Phú Quốc (1kg)', 'Cá thu nướng Phú Quốc được đánh bắt lên, còn tươi rói, được cắt khúc, nướng lên thơm lừng, luôn giữ được độ tươi, độ ngọt và độ ẩm, độ chắc thịt của cá và không cần bất kì chất bảo quản nào.\r\nCá thu nướng có thể chế biến được rất nhiều món ngon như: cá kho, nướng, chiên... Các món từ cá thu đều rất ngon, bổ dưỡng', 380000, 'ca-thu-nuong-phu-quoc.webp', 1, 0, 4, ''),
(5, 'Cải ngồng RH (500g)', 'Thêm một loại rau nữa mà bạn không nên bỏ qua trong khu vườn nhỏ xinh của mình, đó là cải ngồng. Loại cải này khá dễ ăn, rất nhiều người “ghiền” món canh cải ngồng, cải ngồng xào. Không chỉ có vậy cải ngồng còn cung cấp nhiều dưỡng chất thiết yếu cho cơ thể.Cũng giống như một số loại cải khác, giống cải ngồng cao sản có khả năng kháng bệnh tốt. Không chỉ có vậy, nó còn được trồng vào bất kỳ thời điểm nào trong năm, rất phù hợp với điều kiện khí hậu nước ta. Trong cải ngồng có chứa nhiều vitamin A, B, C, K ,..\r\n\r\nTác dụng của cải ngồng mang lại:\r\n\r\nLàm đẹp da\r\nLàm sáng mắt\r\nHỗ trợ tiêu hóa', 32000, 'cai-ngong-RH.webp', 1, 0, 5, ''),
(6, ' Cam xoàn (1 kg)', 'Cam Xoàn được rất nhiều chị em phụ nữ, cũng như trẻ em yêu thích bởi vị thơm rất đặc trưng, vỏ mỏng, nhiều nước, ít hạt khác hẳn với các loại cam khác. Hơn nữa, đây là giống cam có hàm lượng vitamin C và liminoid rất cao giúp cơ thể tăng cường thể lực, hỗ trợ quá trình tiêu hóa, tăng thị lực và giảm nguy cơ mắc bệnh tim mạch.', 77000, 'cam-xoan.webp', 1, 0, 5, ''),
(7, 'Chanh hữu cơ (1kg)', 'Chanh hữu cơ organic là một loại trái cây thuộc họ cam, quýt. Thành phần chính trong chanh có chứa đường, sắt, canxi, các loại vitamin B, A, đặc biệt hàm lượng vitamin C rất cao.\r\n\r\nNhờ có nhiều loại vitamin giúp hấp thụ thông qua da, khiến da giữ được sự mịn màng tươi trẻ. Không chỉ có thế mà trong chanh còn chứa chất chống ung thư rất mạnh mẽ. Chúng ta hãy cùng tìm hiểu về loại trái cây có tác dụng tuyệt vời này ngay trong bài viết sau', 52000, 'chanh-huu-co.webp', 1, 0, 4, ''),
(8, 'Cua gạch Năm Căn (1kg)', 'Cua Cà Mau hầu hết được nuôi thâm canh theo hướng tự nhiên, sinh thái trong các vuông tôm, kết hợp với rừng và các loài thủy sản khác. Đặc biệt, huyện Năm Căn là vùng ven biển, có hệ sinh thái đa dạng nên đất và nước màu mỡ. Bên cạnh đó, môi trường khí hậu ổn định nên tạo được lượng thức ăn tự nhiên dồi dào cho con cua phát triển nhanh, thịt cua ngon hơn những vùng khác.\r\n\r\nTừng chú cua được lựa chọn kỹ càng trước khi đưa đến tay người tiêu dùng, chúng tôi cam kết sản phẩm hoàn toàn tự nhiên và chất lượng được đảm bảo ở mức độ cao nhất.\r\n\r\nCua gạch Năm Căn: gạch son đầy, thịt chắc, ngon, ngọt', 680000, 'cua-gach-nam-can.webp', 0, 0, 3, ''),
(9, 'Dưa hấu có hạt (1kg)', 'Trong dưa hấu, hơn 90% là nước, đó là lý do khi ăn bạn sẽ cảm thấy nhanh no. Ngoài ra, loại quả này chứa hàm lượng chất xơ dồi dào. Nước và chất xơ khi vào cơ thể cung cấp năng lượng, chống mất nước trong ngày hè, cải thiện tiêu hóa.', 27000, 'dau-hau-co-hat.webp', 1, 0, 4, ''),
(10, 'Hành khô Kinh Môn (1kg)', 'Hành khô là một trong những loại gia vị quen thuộc trong bữa ăn của người Việt. Thức ăn có thêm hành khô sẽ thơm ngon, dậy mùi và đúng vị hơn rất nhiều. Không những thế còn giúp khử bớt vị béo không cần thiết trong món ăn.\r\n\r\nHành khô còn có các tác dụng như: kháng khuẩn, thanh trùng đường hô hấp; có chứa chất chống oxy hóa, tăng cường hệ miễn dịch; ngăn ngừa thiếu máu, giảm viêm, ổn định huyết áp, giúp xương chắc khỏe.', 78000, 'hanh-kho-kinh-mon.webp', 1, 1, 0, ''),
(11, 'Hạt óc chó Mỹ (800g)', 'Hạt óc chó có một lớp vỏ cứng xù xì nhưng bên trong chứa những thành phần dinh dưỡng rất tốt cho sức khỏe con người như Omega 3, ALA, photpho, canxi, vitamin B, vitamin C, sắt….\r\nNhờ vào đặc điểm khí hậu và thổ nhưỡng lý tưởng mà Mỹ trở thành nước có sản lượng quả óc chó lớn nhất, đạt chất lượng và ngon nhất thế giới.', 450000, 'hat-oc-cho-my.jpg', 1, 1, 5, ''),
(12, 'Dấm táo mèo', 'Ngoài dấm gạo vẫn hay được sử dụng thì nay trên các kệ hàng Bác Tôm đã có thêm sự lựa chọn một loại dấm mới - Dấm táo mèo mật ong.\r\n\r\nDấm táo mèo có màu vàng trong, khi mở nắp sẽ có mùi thơm đặc trưng của táo mèo và mật ong rừng. Dấm táo mèo không chỉ được biết đến như một loại gia vị trong tủ bếp mà còn là vị thuốc có giá trị dinh dưỡng cao, có khả năng phòng và chữa được nhiều loại bệnh', 35000, 'dam-tao-meo.webp', 0, 0, 3, ''),
(13, 'Mực ống tươi (1 kg)', 'Được đánh giá là loại mực tươi ngon nhất trong các loại mực. Mực ống tươi Bác Tôm có xuất xứ từ Phan Thiết hoặc Phú Quốc (tùy vào thời điểm) được đánh bắt trực tiếp từ biển khơi, là một trong những đặc sản biển nổi tiếng với hương vị thơm ngon, ngọt tự nhiên. Mực ống tươi đem lại giá trị thương mại cao nên rất được ưa chuộng tại nhiều thị trường.\r\n\r\nMực ống là nhóm động vật biển thuộc lớp chân đầu. Mực ống có phần thân và phần đầu rõ ràng. Thân cân xứng hai phía, có da và có 8 tay và một cặp xúc tu. Mực ống có chứa hợp chất mực màu đen trong cơ thể, khi gặp nguy hiểm, mực phun ra tạo màn đen dày đặc, qua đó lẩn trốn khỏi nguy cơ đe dọa.', 430000, 'muc-ong-tuoi.webp', 0, 1, 5, ''),
(14, 'Táo envy size to (1 kg)', 'Giống táo thương mại cao cấp từ NewZealand\r\nThịt rất cứng, giòn, vị ngọt đặc trưng\r\nVỏ mỏng, khối lượng tới 500 – 700g/ trái\r\nMón quà tặng cao cấp cho ba mẹ, đối tác', 250000, 'tao-envy-size-to.jpg', 1, 0, 4, ''),
(15, 'Súp lơ baby (800g)', 'Súp lơ baby hay còn gọi là bông cải xanh baby (baby broccoli hay broccolini), loại rau xanh nhìn giống cây súp lơ xanh nhưng bông nhỏ hơn và cọng dài, ốm hơn, song, thường bị hiểu nhầm là súp lơ non.Tuy nhiên, đây là giống lai tự nhiên giữa súp lơ và cải rổ. Công dụng của súp lơ baby được quảng cáo tốt gấp hàng chục lần so với súp lơ thông thường. Nó rất giàu các vitamin C, A, canxi, folate và sắt.Bông Cải Xanh Baby thân mềm hơn Bông Cải thường, nên có thể ăn cả bông lẫn thân. Đặc biệt, vị Bông Cải Xanh Baby khi ăn ngon ngọt hơn.', 95000, 'sup-lo-baby.png', 1, 0, 4, ''),
(16, 'Mật ong bạc hà', 'Vốn nổi tiếng với các sản phẩm quý giá, độc đáo từ núi rừng Hà Giang. Mật ong hoa bạc hà từ cao nguyên núi Đồng Văn là một sản phẩm mang trong mình không chỉ là giá trị vật chất, mà còn là giá trị về văn hóa của đồng bào vùng cao nơi đây.\r\n\r\nCây bạc hà là loại cây dại mọc ở vùng núi cao thuộc các huyện Mèo Vạc, Đồng Văn, Yên Minh, Quản Bạ tỉnh Hà Giang. Nơi có độ cao từ 1000-1600m so với mực nước biển. Hoa bạc hà màu tím, nở vào cuối tháng 10 đến đầu tháng 1 hàng năm. Hoa bạc hà có mùi thơm mát, rất dễ chịu.\r\n\r\nMật ong hoa bạc hà là loại mật ong được khai thác từ mật của những cây hoa bạc hà đó. Mật ong hoa bạc hà rất hiếm, nên việc tìm mua mật ong bạc hà nguyên chất lại càng khó hơn.', 285000, 'mat-ong-bac-ha.webp', 0, 0, 4, ''),
(17, 'Ớt chuông vàng Đà Lạt (1kg)', 'Ớt Chuông có nhiều màu như xanh, đỏ, cam, vàng, thân tròn như quả chuông, hương thơm, vị rất giòn ngọt, ít hăng.', 85000, 'ot-chuong-vang-da-lat.webp', 1, 0, 0, ''),
(18, 'Quýt Đường (1kg)', 'Quýt đường hữu cơ là loại trái cây thuộc họ cam, được trồng phổ biến ở nhiều tỉnh thành trên khắp cả nước. Đặc điểm của loại cây này là dạng cây gỗ nhỏ, hoa nhỏ màu trắng, trái có dạng tròn, vỏ khá mỏng từ xanh tới vàng, thịt màu cam có vị ngọt đặc trưng. Với hàm lượng dinh dưỡng phong phú có trong trái quýt đường đem lại những lợi ích, khả năng cải thiện sức khỏe hiệu quả cho con người. ', 79000, 'quyt-duong.webp', 1, 0, 4, ''),
(19, 'RAU MUỐNG RH (1 kg)', 'Rau muống có chứa hàm lượng canxi cao tốt cho những người bị loãng xương và huyết áp thấp và phụ nữ có thai. Ngoài ra, trong rau muống còn chứa protit, glucid, cellulose, vitamin B1, B2… Những người bị táo bón ăn rau muống cũng rất tốt. Trong ngọn rau muống, có một chất giống như insulin nên những người bị đái tháo đường có thể ăn 5 – 10 ngọn rau muống trước bữa ăn khoảng 30 phút.\r\n\r\nNhững người cao tuổi ăn rau muống ngày hai bữa có não trẻ hơn 5 năm và ít bị suy giảm tinh thần hơn 40% so với những người ăn ít rau muống..', 32000, 'rau-muong-rh.webp', 1, 0, 4, ''),
(20, 'Sữa chua Mục Đồng (1 hộp 300gr)', 'Được xuất xứ từ những trang trại nuôi bò sữa có quy trình nghiêm ngặt tại Mục Đồng, Trác Văn, Hà Nam. Sữa chua Mục Đồng như là biểu tượng đặc trưng cho các sản phẩm sữa chua hữu cơ. Với tiêu chuẩn 5 KHÔNG luôn được đặt lên hàng đầu, sữa chua Mục Đồng luôn là sự lựa chọn cho người tiêu dùng thông thái.', 12000, 'sua-chua-muc-dong.webp', 1, 1, 4, ''),
(21, 'Thịt bò bắp (1kg)', 'Vĩnh Tường, Vĩnh Phúc từ lâu đã là địa danh nổi tiếng về nghề mua, bán, giết mổ trâu bò để cung cấp cho thị trường Hà Nội. Để được những miếng thịt bò thơm ngon, các “nghệ nhân” Vĩnh Tường phải có kinh nghiệm tối thiểu 5 năm để có thể thực hiện chuẩn quy trình mổ thịt bò, đem lại những phần bò ngon nhất đến tay người tiêu dùng.', 345000, 'thit-bo-bap.webp', 1, 0, 4, ''),
(22, 'Tỏi Kinh Môn (1kg)', 'Tỏi khô là 1 trong những loại gia vị quen thuộc, không thể thiếu trong các căn bếp và rất nhiều món ăn.\r\n\r\nTỏi không chỉ giúp các món ăn thơm ngon, dậy vị mà còn có các tác dụng rất tốt để nâng cao sức khỏe. Rất nhiều người dân đã dùng tỏi để tiêu diệt các loại sâu bọ, côn trùng có hại hiệu quả và an toàn để thay thế thuốc trừ sâu.', 97000, 'toi-kinh-mon.jpg', 1, 1, 5, ''),
(23, 'Tôm sú Nam Định (1 kg)', 'Đứng trong danh sách những thủy hải sản được ưa chuộng nhất. Tôm sú Nam Định đang dần khẳng định được mình trên thị trường với những tiêu chí về chất lượng như: Trạng thái - Màu sắc - Mùi vị.\r\n\r\nTôm sú là loại hải sản rất tươi ngon, thịt săn chắc, dễ chế biến, và mang đầy đủ hương vị từ vùng đất Nam Định. Trong thịt tôm sú đem đến khá nhiều dưỡng chất cần thiết như: protein, vitamin D, vitamin B3 và kẽm. Ngoài ra, i-ốt trong thành phần thịt tôm sú còn làm một cách tốt hơn trao đổi chất của tuyến giáp hiệu quả hơn. Đối với những người muốn tăng cân hay giảm cân thì điều này là cực kỳ cần thiết bởi vì nếu thiếu i-ốt có thể dẫn đến hoạt động của tuyến giáp không được hiệu quả như vậy khó kiểm soát được thực hiện sự trao đổi chất cần thiết.', 505000, 'tom-su-nam-dinh.webp', 0, 1, 5, ''),
(24, 'Trứng gà quê sạch', 'Nguồn gốc rõ ràng và đảm bảo trứng gà sạch 100%. Bác Tôm chuyên cung cấp sản phẩm gà quê sạch được xuất xứ từ Hòa Bình hoặc Hà Tĩnh, sản phẩm trứng gà Quê sạch đảm bảo là hàng chuẩn không sử dụng bất cứ hóa chất bảo quản, trứng đều là loại trứng gà nhỏ xịn được đẻ ra từ loại gà ta nuôi trong vườn. Đặc biệt gà được cho ăn thóc, gạo, ngô, các phế phẩm nông nghiệp và hoàn toàn không cho ăn các thức ăn công nghiệp.', 4800, 'trung-ga-que-sach.webp', 1, 0, 4, ''),
(25, 'Trứng cút thảo dược', 'Thảo dược được kết hợp từ nhiều loại lá thuốc tự nhiên được chưng cất thành dung dịch cho chim uống định kỳ 20 ngày 1 lần (mỗi lần 3 ngày) để phòng các loại bệnh thông thường mà chim hay mắc phải\r\n- Hoàn toàn không dùng thuốc kháng sinh\r\n- Chim hấp thụ tốt dinh dưỡng từ thức ăn để chuyển hóa vào trứng khiến trứng tăng độ thơm\r\nngon, tăng cường dinh dưỡng\r\n- Chuồng trại được vệ sinh định kỳ 2 lần/tuần\r\n- Thức ăn là cám xay từ ngô, sắn...& bột thịt', 45000, 'trung-cut-thao-duoc.webp', 0, 0, 4, ''),
(26, 'Thịt bò thăn (1 kg)', 'Trên thị trường hiện nay, ngoài thịt lợn ra thì thịt bò cũng khá phổ biến với người tiêu dùng. Nhưng thịt bò cũng có quá nhiều lựa chọn: thịt mông, thịt vai, thịt thăn, nạm, sườn… Vậy bạn có biết đâu là phần thịt bò ngon nhất chưa?\r\n\r\nĐể trả lời câu hỏi trên Bác Tôm xin được đưa ra ngay câu trả lời đó là “Thịt bò thăn”. Đây là phần thịt bò được ưa chuộng nhất bởi thịt mềm và nhiều nạc nhất. Chính vì vậy giá thành thịt cũng cao nhất và quy trình để chế biến thịt thăn cũng đòi hỏi nhiều công phu, tỉ mỉ hơn.', 365000, 'thit-bo-than.jpg', 0, 1, 4, ''),
(27, 'Bề bề bơi (1kg)', 'Bề bề tươi sống hay còn gọi là tôm tít, tôm tích, là loại thực phẩm có giá trị dinh dưỡng cao. Tôm tít được cung cấp tại giadinhhaisan.com khu vực Hà Nội với mức giá ưu đãi.', 425000, 'be-be-boi.webp', 1, 0, 4, ''),
(28, 'Vải Thanh Hà (1kg)', 'Vải Thanh Hà có vị ngọt mát, thịt quả dày, mọng nước, hạt nhỏ', 85000, 'vai-thanh-ha.webp', 1, 1, 5, ''),
(29, ' Rau cải ngọt RH (1kg)', 'Cải ngọt là một trong những loại giống thuộc họ nhà cả dễ ăn và được nhiều người yêu thích. Cải ngọt ôn tính. Cải ngọt tốt cho sức khỏe nhờ công dụng trường vị, chữa các bệnh ho, táo bón, ngăn ngừa trị và ung thư ruột kết.\r\n\r\nChất dinh dưỡng: Có chất đường, vitamin B1, axít pamic, coban, iot. Rễ và lá có nhiều chất kiềm thúc đẩy sự tiêu hoá, thúc đẩy cơ thể tiếp thu albumin bảo vệ gan, chống mỡ trong gan.\r\n\r\nCải ngọt có thể chế biến thành các món ăn như cải ngọt xào thịt, canh cải ngọt nấu tôm, rau cải ngọt luộc chấm xì dầu, cải ngọt xào thịt bò, cải ngọt xào chân gà…, làm lẩu cá, lẩu thịt.\r\n\r\nSử dụng sản phẩm rau cải ngọt hữu cơ của Bác Tôm để mang đến cho gia đình nhiều món ăn ngon và an toàn.', 32000, 'rau-cai-ngot-RH.webp', 1, 0, 3, ''),
(30, 'Cá chép đầm (1 kg)', 'Cá Chép - một món ngon, thông dụng và khó cưỡng đối với bất kỳ một người yêu thích những món thủy hải sản nào. Cá chép tại Bác Tôm được nhập trực tiếp từ những đầm tại Hòa Bình, luôn đảm bảo tươi ngon, thịt chắc, ngọt, và thơm khi nấu.\r\n\r\nTrong cá chép có rất nhiều thành phần mà cơ thể con người cần được đáp ứng như: protein amino acid, chất xơ tốt, nhiều đạm. Ngoài ra cá chép chứa một lượng lớn các axit béo không bão hòa đa omega 3, trong đó Eicosapentaenoic acid (EPA) giúp làm giảm chất béo trong máu, chống ung thư, giảm xơ vữa động mạch.', 138000, 'ca-chep-dam.webp', 1, 1, 5, ''),
(31, 'Mận An Phước xuất khẩu (1kg)', 'Mận An Phước có sự khác biệt nhiều với roi ngoài Bắc. Vỏ trái màu đỏ bóng, to đẹp, nếu dùng để trưng bàn thờ ngày đầu tháng thì rất hợp, dùng để ăn tươi cũng rất ngon. Ruột quả dày, hơi xốp nhưng giòn, thơm thơm, lại là trái cây Việt sạch nên an toàn.', 99000, 'man-an-phuoc-xuat-khau.webp', 1, 0, 4, ''),
(32, 'Tôm hùm Nha Trang (1 kg)', 'Tôm hùm thân dài và có một cái đuôi cơ bắp. Hầu hết tôm hùm đều có một đôi càng lớn và đầy sức mạnh. Loài tôm hùm sống ở biển trong điều kiện sống khắt khe với vùng biển ấm, lặng, ở các khe hoặc hang hốc dưới đáy biển. \r\n\r\nTôm hùm rất có giá trị dinh dưỡng. Thịt Tôm hùm có chứa rất ít chất béo và carbohydrate trong khi hàm lượng protein lại cao.', 990000, 'tom-hum-nha-trang.webp', 0, 1, 5, ''),
(33, 'Gà đồi Hòa Bình(1 kg)', 'Gà đồi được nuôi theo phương pháp truyền thống tại các Hộ dân ở Hòa Bình, gà được thả rông, tự kiếm ăn ban ngày và tối ngủ ở các bụi cây, thức ăn chính là thóc mỗi sáng sớm còn ban ngay gà tự kiếm giun trong vườn, trên núi. Chính vì thế gà rất săn chắc, thịt thơm ngon, khi luộc không ra nhiều nước.\r\n\r\nHướng dẫn chặt thịt gà', 235000, 'ga-doi-hoa-binh.webp', 1, 1, 4, ''),
(34, 'Hồng tre (1kg)', 'HỒNG DA TRE \r\n🥰 Đúng thật!!! Chẳng hồng nào ngon bằng hồng da tre. Thứ quả hồng có lớp vỏ xanh cứng ngắc hơi giốmg hồng ngâm, trông y hệt thân cây tre, xấu xí và tẻ nhạt. Thế mà cứ nhẩn nha xếp lên lá chuối úp ngược núm quả xuống, thong thả chờ đợi vài hôm, tới khi vỏ da tre trong veo dần ra, thì mới ăn được.\r\n\r\n🍑 Hồng da tre thịt quả vàng cam mềm mướt, không nhão và xơ như hồng đỏ, nhưng lại cũng không ngọt sắc như hồng đỏ, mà lại có vị rất thanh mát, ngọt dịu dàng.\r\n\r\n🍑 Những người ăn hồng mềm sợ khó cầm, hẳn sẽ nghĩ sao cái hồng da tre này nó lại hay quá trời hay, nó ăn theo một lối khác, cái vỏ nó cứng, nên có thể dùng thìa xúc từng miếng ngon lành, có tiếp khách cũng sang chảnh không lo khách ngại lem nhem. Nhiều nhà tiếp khách được khen làm em sướng phổng mũi.\r\n\r\n🍑 Hầu hết khách ăn quen mua, mua nhiều, mua đi mua lại nên chắc biết lý do nhà em bán được nhiều. Nhưng vẫn nhắc lần nữa cho ai chưa thử rằng nó ngon, #hot là có lý do: cực kỳ ngon, ghét hồng mềm còn nghiện vì nó được ví như miếng pudding sang chảnh trong khách sạn 5* mềm mượt mà lại giòn giòn ngọt lịm, thơm phức...', 90000, 'hong_tre.webp', 1, 1, 5, ''),
(35, 'Lươn đồng Nghệ An (1 kg)', 'Lươn đồng Nghệ An là một thực phẩm từ xưa đã nổi tiếng khắp cả nước, khi ăn bất kể món lươn nào người ta cũng nhớ đến là xứ Nghệ, cũng bởi vì xứ Nghệ là xứ sở của lươn.\r\n\r\nLươn là loài thủy sản nước ngọt, thân tròn, da trơn, màu nâu vàng và thường sống rúc trong bùn. Lươn còn có tên gọi khác là “Sâm động vật dưới nước”. Đặc biệt, đây là loại lươn đồng chính hiệu, được người dân xứ Nghệ đánh bắt từ ruộng thông qua đặt trúm, rồi sau đó sơ chế chỉ giữ lại phần thịt.', 315000, 'luon-dong-nghe-an.webp', 1, 0, 2, ''),
(36, 'Chuối Viba (1kg)', 'Chuối Viba được trồng theo tiêu chuẩn VietGap, là giống chuối tiêu hồng ăn thơm ngon, ngọt quanh năm', 22000, 'chuoi-viba.webp', 1, 1, 2, ''),
(37, 'Cua cốm (1 kg)', 'Cua 2 da hay Cua cốm là những con cua chuẩn bị thay vỏ, giai đoạn này thì thịt cua chứa rất nhiều dinh dưỡng và ngon nhất. Là món quà đặc sản mà người Cà Mau dành biếu tặng cho khách quý, ít bán ra thị trường.\r\n\r\nTrong tất cả các giai đoạn của một con cua thì giai đoạn cốm (vài ngày trước khi lột) là rất quý. Đây là giai đoạn cua chắc thịt, thơm, nhiều chất dinh dưỡng nhất. So với cua thịt thì độ chắc của cua cốm gấp 5 lần, rủi ro cua bị ốp hay ít thịt là hầu như không hề có nên khi ăn sẽ rất chắc thịt. Phần gạch của cua cốm, thật ra là lớp chất dinh dưỡng mà cua tích trữ để sử dụng trong thời gian trú ẩn sau khi lột da thì rất béo và bùi. Lớp gạch này không bị cứng và dễ gây ngán ở cua gạch', 780000, 'cua-com.webp', 0, 1, 5, ''),
(38, 'Ổi Phúc Lợi (1kg)', 'Long Biên (Hà Nội) từ lâu đã nổi tiếng với giống ổi Phúc Lợi thơm ngon có vị ngọt nhẹ và giòn giòn mỗi khi thưởng thức. Để có thương hiệu ổi Phúc Lợi như hiện nay, người trồng ổi phải thực hiện quy trình làm đất, chọn giống, chăm sóc, tỉa cành, phun thuốc, bón phân rất cầu kỳ và công phu theo tiêu chuẩn VietGAP. Người trồng ổi phải ủ ngô, đậu tương… vào các thùng trong thời gian nhất định, khi đã đạt được yêu cầu mới mang ra bón vào gốc với lượng nhất định theo chu kỳ cây ra hoa, kết trái hoặc khi cần thúc cho trái phát triển nhanh. Để giảm thiểu chi phí đầu vào sản phẩm, nhiều người tận dụng thức ăn thừa, cơm thừa để ngâm ủ cho hoai mục, làm thức ăn bón cho cây ổi', 55000, 'oi-phuc-loi.webp', 1, 0, 4, ''),
(39, 'Cải thảo (1kg)', 'Cải thảo còn được gọi là cải bao, cải cuốn, bắp cải tây là phân loài thực vật thuộc họ Cải ăn được có nguồn gốc từ Trung Quốc, được sử dụng rộng rãi trong các món ăn ở Đông Nam Á và Đông Á. Loài thực vật này trồng nhiều ở Trung Quốc, Hàn Quốc, Nhật Bản, Việt Nam... nhưng cũng có thể bắt gặp ở Bắc Mỹ, châu Âu, Úc, New Zealand.\r\nCải thảo có màu sắc khá giống với cải bắp, phần lá bao ngoài của màu xanh đậm, còn lá cuộn ở bên trong (gọi là lá non) có màu xanh nhạt, trong khi phần cuống lá có màu trắng.\r\nTrọng lượng: ~1 - 1,8kg\r\nĐặc điểm: Cải thảo ăn có vị ngọt, thanh rất dễ chế biến', 35000, 'cai-thao.webp', 1, 0, 0, ''),
(40, 'Bắp bò Wagyu F1 (1 kg)', 'Thịt bò Wagyu là một loại thịt bò thượng hạng và có giá trị dinh dưỡng cao. Thịt bò có các vân mỡ là điểm tạo nên sự khác biệt với bò thông thường. Thịt ngọt, mềm, khi ăn có vị ngậy hơn thịt bò thường rất nhiều', 585000, 'bap-bo-wagyu-f1.jpg', 0, 1, 5, ''),
(41, 'Thanh long đỏ đặc biệt (1kg)', 'Thanh long ruột đỏ được sử dụng trong vườn lại giống thanh long Long Định 1, được lai từ mẹ là giống thanh long ruột trắng Bình Thuận và bố là thanh long ruột đỏ Colombia. Sau quá trình khảo nghiệm, thanh long ruột đỏ Bình Thuận đã chứng tỏ được rất nhiều ưu điểm. Mà dễ thấy là năng suất cao gấp 1,5 lần so với thanh long ruột trắng và độ ngọt cũng trội hơn.', 88000, 'thanh-long-do-dac-biet.jpg', 1, 1, 3, ''),
(42, 'Dưa chuột RB (1kg)', 'Dưa chuột là loại quả được sử dụng rất phổ biến tại Việt Nam bởi sự thanh mát và có nhiều cách chế biến khách nhau.\r\n\r\nDưa chuột có thể được dùng để ăn trực tiếp, làm dưa góp, đắp mặt dưỡng da, làm các món gỏi, cuốn,...', 32000, 'dua-chuot-rb.webp', 1, 1, 5, ''),
(43, 'Trứng vịt (1kg)', 'Một quả trứng vịt chứa 130 calo, lượng calo này trong trứng vịt gấp đôi lượng calo trong trứng gà, tuy nhiên kích thước trung bình của một quả trứng vịt thường gấp 30% so với trứng gà. Trong 100 gam trứng vịt thì sẽ cung cấp cho cơ thể khoảng 185 đơn vị calo, trong khi đó ở trứng gà thì con số này là 149 đơn vị calo. Hàm lượng protein, chất béo bão hoà, số lượng vitamin của trứng vịt cũng nhiều hơn so với trứng gà.', 45000, 'trung-vit.webp', 1, 1, 3, ''),
(44, 'Cá quả (1 kg)', 'Cá quả còn có tên gọi là cá chuối, cá lóc. Cá có vẩy nhỏ, cá hình ống tròn, toàn thân màu xám xanh, có nhiều đường vân màu đen, thịt ngon bổ, dễ chế biến thành nhiều món ăn.', 275000, 'ca-qua.webp', 1, 0, 0, ''),
(45, 'Xương ống lợn quế (1kg)', 'Đây là phần xương trong bắp chân của lợn quế, do thành phần chứa nhiều tủy sống nên thường được dùng để hầm, ninh lấy nước. Do thịt lợn quế nuôi đảm bảo nên khi hầm, ninh lâu vẫn đảm bảo nước dùng ngọt, không cặn và bọt.', 95000, 'xuong-ong-lon-que.webp', 0, 1, 4, ''),
(46, 'Khoai tây RA (1 kg)', 'Khoai tây bở, thơm, dùng nấu canh xương, súp hay chiên đều ngon', 35000, 'khoai-tay-ra.webp', 1, 1, 3, ''),
(51, 'Xoài cát chu Chú 10 (1kg)', 'Được vun trồng từ vùng đất Cao Lãnh trù phú, xoài Cát Chu là một trong những đặc sản lừng danh không chỉ trong nước mà còn vươn tầm thế giới, nhưng hiện tại giá trị thực của xoài chưa về đúng vị trí của nó.\r\n\r\nXoài cát chu chú Chín không chỉ mang đến cho khách hàng quả xoài ngon mà còn phải an toàn. Nhờ áp dụng tiêu chuẩn GlobalGap vào sản xuất, cũng như sử dụng kỹ thuật bao trái nên đảm bảo tuyệt đối về an toàn và dư lượng thuốc bảo vệ thực vật.', 85000, 'xoai-cat-chu-chu-10.webp', 1, 1, 5, ''),
(52, 'Gà ri hữu cơ (1 kg)', 'BÁN GÀ THÌ DỄ, CHỨ NUÔI MỚI TỐN CÔNG\r\n(Gà đạt chuẩn hữu cơ, siêu hiếm tại Việt Nam)\r\nQuả thật là gà bán tại các cửa hàng thì dễ vô cùng, cũng bởi gà đã được làm sạch sẵn, hút chân không rồi nên đâu có khó khăn gì đâu. ', 245000, 'ga-ri-huu-co.jpg', 1, 1, 5, ''),
(50, 'Mướp hương (1kg)', 'Mướp là một loại cây thảo dạng dây leo, được trồng để lấy quả xanh. Với nhiều chất dinh dưỡng và công dụng đặc biệt tốt cho sức khỏe, mướp được nhiều người lựa chọn trong bữa ăn gia đình.\r\n\r\nMướp hương có vị thơm ngát, ăn ngọt mát ', 10000, 'muop-huong.webp', 0, 1, 4, ''),
(53, 'Cua đồng bóc mai (1 kg)', 'Từ lâu nay, cua đồng là món ăn bổ dưỡng, dân dã và phổ biến khắp cả nước. Với hương vị đặc trưng thơm ngon, đây là món ăn kích thích vị giác, dễ tiêu hóa và phù hợp cho những ngày hè nóng nực.\r\n\r\nTại Bác Tôm, cua đồng bóc mai là loại cua ngon nhất, có thớ thịt dày, chắc; khi nấu sẽ có mùi thơm hấp dẫn. Đặc biệt, cua đồng còn có tác dụng giúp chữa trẻ còi xương, chậm biết đi; chữa vết thương đụng dập, lở loét; chữa tâm trạng bồn chồn, kém ăn, ít ngủ; giải nhiệt mùa hè, trị lở ngứa…', 270000, 'cua-dong-boc-mai.jpg', 0, 1, 5, ''),
(54, 'Bánh đa gạo lứt (1 gói 800g)', 'Bánh đa quê được làm hoàn toàn từ gạo lứt và vừng đã qua rang chín. Hạt gạo được giữ nguyên phần cám và mầm để bảo toàn dinh dưỡng, tạo vị ngọt tự nhiên cho chiếc bánh và vừng rang trước khi cho vào bột để chiếc bánh luôn có mùi thơm và vị rất bùi. ', 3000, 'banh-da-gao-lut.jpg', 1, 0, 1, ''),
(55, 'Quả lặc lày (1kg)', 'Giàu vitamin, khoáng chất và chất xơ, lặc lày mang lại một số lợi ích sức khỏe, rất tốt cho tóc và da của bạn. \r\n\r\nLặc lày ăn vị ngọt, rất mát, thường sử dụng để luộc, xào với thịt.', 10000, 'qua-lac-lay.webp', 0, 1, 5, ''),
(56, 'Cá trắm đen (1 kg)', 'Được biết đến là một loài cá nước ngọt thuộc giống cá chép, cá trắm đen sống ở các ao hồ, sông lớn ở vùng đồng bằng Bắc và Trung bộ nước ta. Cá sống chủ yếu các vùng sông Hồng, sông Đà, sông Mã, sông Thái Bình....\r\n\r\nCá trắm đen là loài cá được ưa chuộng cũng như giá thành đắt nhất trong các giống cá nước ngọt phổ thông hiện nay. Cá có thân dài, hơi tròn, đầu vừa phải, cuống đuôi dẹp. Miệng cá ngắn và nhọn, hướng về phía trước hình móng ngựa. Mắt cá bé, khoảng cách giữa 2 ổ mắt rồng. Thêm vào đó hàng vây của cá có màu đen óng dễ nhận biết, chính vì vậy mọi người cũng dễ dàng phân biệt được cá trắm đen với các loại cá khác.', 285000, 'ca-tram-den.webp', 1, 0, 4, ''),
(57, 'Quả sấu hữu cơ (1kg)', 'Mướp là một loại cây thảo dạng dây leo, được trồng để lấy quả xanh. Với nhiều chất dinh dưỡQuả sấu chín có chứa vitamin C, a-xít hữu cơ, protid, glucid, cellulose, canxi, phốt pho và sắt rất tốt cho sức khỏe.\r\n\r\nLoại quả này có lẽ được các bà nội trợ rất ưa chuộng vì có thể sử dụng làm nhiều món ăn ngon, dùng ngâm đường làm nước giải khát, làm ô mai… Mùa sấu chỉ kéo dài 3 tháng, thế nhưng nếu biết cách chọn và bảo quản, bạn có thể dự trữ sấu để ăn quanh nămng và công dụng đặc biệt tốt cho sức khỏe, mướp được nhiều người lựa chọn trong bữa ăn gia đình.', 8000, 'qua-sau-huu-co.webp', 0, 1, 5, ''),
(58, 'Củ cải trắng (1kg)', 'Một loại cây sinh trưởng tốt ở những nơi có khí hậu mát mẻ và được trồng ở khắp các tỉnh miền Bắc - Củ cải. Tuy nhiên, thiên nhiên đã trù phú cho vùng đất Bắc Hà có được loại củ cải với chất lượng tuyệt vời, vị ngọt thanh mát và còn có những công dụng không ngờ tới:\r\n\r\nGiảm nguy cơ ung thư\r\nĐiều chỉnh huyết áp\r\nTốt cho bệnh nhân tiểu đường\r\nPhòng chống cảm lạnh và ho\r\nNgăn ngừa bệnh vàng da\r\nChống táo bón\r\nNhưng cũng có một vài lưu  ý: không sử dụng củ cải với  táo, nho, lê, nhân sâm, mộc nhĩ vì sẽ dẫn tới những tác dụng phụ không mong muốn.\r\n\r\nCủ cải được cung cấp bởi Bác Tôm được đảm bảo rõ nguồn gốc cũng như chất lượng sản phẩm.', 30000, 'cu-cai-trang.webp', 1, 1, 4, ''),
(59, 'Cá thát lát - rút xương (1 kg)', '', 320000, 'ca-that-lat-rut-xuong.webp', 0, 1, 4, ''),
(60, 'Dừa COCOLALA (1 trái)', 'Được lựa chọn từ dừa xiêm xanh của Bến Tre với những trái dừa “bánh tẻ” cho chất lượng cùi dừa dẻo và nước ngon, ngọt nhất. Không sử dụng chất tẩy trắng, do đó sản phẩm dừa xiêm nắp khoen COCOLALA sẽ có màu nâu vàng tự nhiên.', 40000, 'dua-cocolala.webp', 1, 0, 3, ''),
(61, 'Củ cải đỏ RD', 'Củ cải đỏ (hay còn gọi là củ cải đường) giúp cải thiện hệ thống tiêu hóa, chống thiếu máu, phòng ngừa ung thư,…là liều thuốc kháng sinh đến từ thiên nhiên bảo vệ sức khỏe con người.', 95000, 'cu-cai-do-RH.jpg', 0, 1, 3, ''),
(83, 'Bánh Giò Nóng', 'Bánh giò là loại bánh được làm từ gạo tẻ kết hợp bột năng, nhân có: thịt lợn băm, mộc nhĩ, hành khô, nấm hương... Vỏ được gói bằng là chuối.\r\n\r\nPhần vỏ bánh mềm, mịn. Nhân bánh gồm thịt băm, mộc nhĩ cũng được khéo léo chế biến để vừa ăn.\r\n\r\nBánh giò thưởng thức khi còn nóng rất dậy vị hấp dẫn\r\n\r\nBánh giò có thể làm quà sáng, ăn lúc xế chiều đều hợp lý. Mọi người hay ăn bánh giò kèm dưa chuột góp, giò lụa và chút tương ớt hay nước tương tăng thêm phần đậm vị.', 17000, 'banh-gio-nong.webp', 0, 0, 5, ''),
(62, 'Giò sống lợn quế (1 bịch 600g)', 'Chọn lọc từ những phần thịt nạc ngon nhất của lợn quế sau đó được xay nhuyễn. Với giò sống khách hàng có thể chế biến đa dạng các món như: Canh bí đao nấm mọc, trứng cút bọc giò sống, bún sườn mọc nấu măng...', 295000, 'gio-song-lon-que.webp', 1, 0, 0, ''),
(63, 'Chanh đào (1kg)', 'Vườn chanh được bao quanh bởi những dãy núi cao, nằm tít trên sườn đồi leo muốn bở hơi tai, nhưng bù lại không khí trong lành và nguồn nước tự nhiên mát rượi, không sử dụng thuốc trừ sâu, thuốc diệt cỏ trong canh tác. Được mùa, những trái chanh rám hồng lúc lỉu trên cành nhìn là muốn hái...\r\nMọi người thường nhắc tới tác dụng “thần thánh” của Chanh Đào Mật Ong trong thời tiết giao mùa để phòng chống các bệnh viêm họng, ngoài ra chanh đào có đặc điểm vỏ mỏng (ngả vàng khi chín), ruột hồng, mọng nước cũng rất thích hợp để chị em pha chanh muối uống để giảm cân đó ạ.', 54000, 'chanh-dao.webp', 0, 1, 5, ''),
(64, 'Dưa lưới Chu Phấn (1 kg)', 'Dưa được trồng trong nhà màng theo quy trình công nghệ cao được chuyển giao bởi viện Khoa học nông nghiệp duyên hải Nam Trung Bộ. Trồng tại Farm Nhơn Phú – Quy Nhơn – Bình Định , đất cát và nắng gió nên độ brix cao hơn bình thường đạt trên 16.', 70000, 'dua-luoi-chu-phan.webp', 1, 0, 3, ''),
(65, 'Cá bống đục (1 kg)', 'Cá bống biển có hương vị thơm ngon không kém loại cá bống nước ngọt và cũng được dùng để chế biến các món ăn tương tự. Nếu bạn đã một lần thử qua thì chắc chắn sẽ rất thích cá bống đục.', 260000, 'ca-bong-duc.jpg', 0, 1, 5, ''),
(66, 'Kim chi (1 hộp)', 'Kim chi một món ăn chính trong ẩm thực tại bán đảo Triều Tiên, là một món ăn truyền thống gồm các loại rau muối và lên men, chẳng hạn như bắp cải napa và củ cải Hàn Quốc, được chế biến với nhiều lựa chọn gia vị khác nhau bao gồm gochugaru (ớt bột), hành lá, tỏi, gừng và jeotgal (hải sản muối), v.v. [1][2] Kimchi cũng được sử dụng trong nhiều loại canh.\r\n\r\n', 35000, 'kim-chi.webp', 0, 1, 5, ''),
(67, 'Hoa thiên lý (1kg)', 'Thiên lý (danh pháp hai phần: Telosma cordata) là một loài thực vật dạng dây leo. Trong thiên nhiên, thiên lý mọc ở các cánh rừng thưa, nhiều cây bụi. Tuy nhiên, nó được gieo trồng ở nhiều nơi như Trung Quốc (Quảng Đông, Quảng Tây), Ấn Độ (Kashmir), Myanma, Pakistan, Việt Nam; châu Âu, Bắc và Nam Mỹ.\r\nHoa rất thơm, chứa tinh dầu. Chúng được sử dụng để nấu ăn và trong y học để điều trị viêm màng kết.\r\n', 15000, 'hoa-thien-ly.jpg', 1, 1, 5, ''),
(68, 'Lê Hàn Quốc (1 kg)', 'Lê Hàn Quốc có mẫu mã đẹp, vỏ mọng, mịn. Quả rất đều, ăn giòn, mọng nước, ngọt mát, đậm vị hơn rất nhiều so với những loại lê thông thường ở Việt Nam.', 150000, 'le-han-quoc.webp', 1, 1, 3, ''),
(69, 'Sầu riêng Dona (1 kg)', 'Sầu riêng Dona được biết đến là một loại cây ăn trái của những vùng Đông Nam Bộ, Tây Nguyên và Đồng bằng sông Cửu Long nhưng lại có giá trị cao nhiều lần so với các cây nông sản. Như cũng nhiều nhà nông đang thắc mắc là việc chọn giống cây Sầu riêng như thế nào và giống cây sẽ quyết định yếu tố gì trong vụ mùa sắp tới. Bài viết này Viện Cây Trồng sẽ giúp bà con có cái nhìn khái quát hơn.', 155000, 'sau-rieng-dona.webp', 0, 1, 5, ''),
(70, 'Gà tre (1 kg)', 'Gà tre ngọt thơm, chắc thịt. Gà được chăn thả tự nhiên trong không gian rộng, được nuối từ 9-11 tháng trước khi xuất bán.', 235000, 'ga-tre.webp', 0, 1, 4, ''),
(71, 'Cá hồi fillet Nauy (1 kg)', 'Cá hồi fillet được Bác Tôm nhập trực tiếp từ Nauy qua đường hàng không. Với tên tuổi đã được tạo dựng uy tín từ lâu đời đảm bảo được chất lượng cũng như độ tươi ngon trong từng thớ cá hồi.\r\n\r\nĐể được những miếng cá hồi thơm ngon nhất thì luôn phải đảm bảo các tiêu chuẩn nghiêm ngặt trong quá trình nuôi dưỡng và sản xuất:\r\n\r\nThức ăn cho cá hồi đảm bảo không có chất biến đổi gen (thông thường thức ăn sẽ là cá loại cá con như cá tuyết, cá cơm....)\r\nGiống cá hồi Nauy phải được lựa chọn kỹ càng, những con khỏe mạnh và sạch bệnh nhất', 535000, 'ca-hoi-fillet-nauy.webp', 1, 1, 4, ''),
(72, 'Cải xoong an toàn (1kg)', 'Cây thảo sống nhiều năm, có thân bò dài tới 40cm, phân nhánh nhiều, đâm rễ ở các đốt, cả trong đất lẫn trong nước. Lá mọc so le, kép lông chim, có 3-9 lá kép hình trứng không đều, thuỳ tận cùng thường lớn hơn, mép nguyên hay khía tai bèo, màu lục sẫm. Hoa nhỏ, màu trắng, họp thành chùm ở đầu cành. Quả cải hình trụ, chứa nhiều hạt đỏ.', 35000, 'cai-xoong-an-toan.webp', 1, 0, 3, ''),
(73, 'Đu đủ (1 kg)', 'Được trồng theo phương pháp hữu cơ nên đu đủ tại Bác Tôm luôn đảm bảo an toàn nhất. Theo đó, sản phẩm đu đủ không sử dụng thuốc bảo vệ thực vật, không thuốc kích thích tăng trưởng và được chăm sóc theo đúng quy trình từ khi ươm giống cây.\r\n\r\nĐu đủ từ lâu đã được biết đến như “thần dược” trong các loại trái cây. Trong đu đủ, lượng beta caroten nhiều hơn trong các rau quả khác, đây là một loại vi chất dinh dưỡng có vai trò là chống oxy hoá mạnh giúp chống lại một số căn bệnh ung thư, chống khô mắt, khô da và có tác dụng nhuận tràng. Trong 100g đu đủ chín chứa 2.100 mcg beta caroten. Đu đủ có thể cung cấp cho cơ thể các loại vitamin thiết yếu như vitamin A và vitamin C.', 42000, 'du-du.webp', 1, 0, 2, ''),
(74, 'Tôm he Cát Bà (1kg)', '- Vỏ mỏng, mềm, thân to tròn\r\n- Thịt ngọt thơm đậm đà\r\n- Giàu dưỡng chất\r\nTôm he là loại tôm hiếm vì không nuôi được mà chỉ sống trong tự nhiên, được đánh bắt tại vùng biển Cá Bà. Tôm he không đi theo đàn lớn nên đặc biệt đánh bắt khó khăn, hàng về số lượng hạn chế.', 890000, 'tom-he-cat-ba.webp', 1, 0, 5, ''),
(75, 'Dưa hấu không hạt (1 kg)', 'Dưa hấu không hạt có ruột dưa đỏ, đẹp, không hạt, ngọt, vỏ mỏng, có mùi thơm đặc trưng, và dễ bảo quản.', 31000, 'dua-hau-khong-hat.webp', 1, 1, 5, ''),
(76, 'Cá trắm trắng - trắm cỏ (1 kg)', 'Cá trắm trắng có tên gọi dân dã khác là cá trắm cỏ có nguồn gốc từ họ cá chép. Cá trắm trắng cũng là loài duy nhất trong họ cá chép có thể nặng tới 100kg và dài 1,5m cũng như tuổi thọ cao nhất được ghi lại là 21 năm.\r\n\r\nVới hình dáng tương đối giống cá trắm đen như: thon dài, dẹp ở đuôi, đầu không quá to… Nhưng điểm khác biệt đó là màu sắc của các trắm trắng có phần tươi hơn, phần hông màu vàng lục nhạt, phần lưng màu nâu sẫm, bụng màu trắng xám nhạt.', 175000, 'ca-tram-trang.webp', 0, 1, 5, ''),
(77, 'Tương ớt Mường Khương (1 chai)', 'Khoảng chục năm trở lại đây, cái tên Mường Khương đã định vị trong lòng thực khách phương xa bởi hương vị của một loại tương ớt cay cay, thơm thơm ăn vào một lần là khiến người ta phải nhớ tới mãi.\r\n\r\nĐặc sản tương ớt Mường Khương ban đầu chỉ là công thức làm tương ớt nhỏ lẻ cũng những đồng bào huyện Mường Khương, Lào Cai, chủ yếu để phục vụ cho mục đích gia đình. Nhưng vì du lịch phát triển, cộng thêm “tiếng lành đồn xa” đã tạo nên một đặc sản vùng Tây Bắc lừng danh.', 25000, 'tuong-ot-muong-khuong.webp', 1, 0, 2, ''),
(78, 'Vịt cỏ Hòa Bình (1 kg)', 'Đặc sản về vịt cỏ vốn đã nổi tiếng khắp cả nước, bởi giống vịt cũng như sự phong phú trong cách chế biến. Hiện giờ, trên kệ hàng của Bác Tôm đã có sẵn vịt cỏ từ Hòa Bình.\r\n\r\nVịt cỏ Hòa Bình một loại thực phẩm tươi sống vô cùng nhỏ xương, thịt ngọt, vị đậm đà, trọng lượng từng con vừa tầm. Vịt cỏ được làm sạch nên quý khách không cần mất thời gian sơ chế mà có thể chế biến món ăn luôn, tiết kiệm được rất nhiều thời gian.\r\n\r\n', 115000, 'vit-co-hoa-binh.webp', 0, 1, 4, ''),
(79, 'Mít nghệ Tây Ninh (1 kg)', 'Mọi người sẽ cảm nhận được vị thơm ngọt và giòn – đây chính là những nét khác biệt đã làm nên thương hiệu mít nghệ Tây Ninh. Mít để chín già trên cây mới cắt, hàng đi xốp lạnh từ Tây Ninh về nhà Bác Tôm.', 130000, 'mit-nghe-tay-ninh.webp', 1, 0, 5, ''),
(80, 'Măng cụt Bảo Lộc (1kg)', 'Lang thang khắp các tỉnh đồng bằng sông Cửu Long để đến với “vương quốc hoa quả” Bến Tre. Dù bạt ngàn các loại trái cây đủ sắc màu, nhưng Bác Tôm cũng phải dừng chân lại tại vườn măng cụt để thưởng thức hương vị ngọt thanh mát của măng cụt nơi đây.\r\n\r\nKhông phải ngẫu nhiên mà măng cụt được ví là “Nữ hoàng của các loại trái cây”. Từ hàng trăm năm trước, người ta biết đến măng cụt như một loại trái cây quý, ngoài hương vị thơm ngon, thanh mát, dinh dưỡng tới sức khỏe con người, măng cụt còn là một dược liệu quý giá.', 130000, 'mang-cut-bao-loc.webp', 0, 1, 5, ''),
(81, 'Ba chỉ bò Mỹ (1kg)', 'Ba chỉ bò Mỹ là phần thịt được lấy từ phần bụng của con bò, là phần thịt với những dải thịt nạc và thịt mỡ xen kẽ nhau tạo nên độ mềm, ngậy, ngọt nhưng hoàn toàn không ngấy. Ba chỉ được cắt sẵn thành các lát mỏng để tiện cho chế biến.', 225000, 'ba-chi-bo-my.webp', 1, 0, 4, ''),
(82, 'Hành lá (1kg)', 'Hành lá hay hành xanh, hành non là tên gọi chung của các loài thuộc chi Hành. Tất cả hành lá đều có lá rỗng màu xanh (giống hành tây), nhưng lại thiếu một thân hành (củ hành) phát triển hoàn chỉnh. Chúng được trồng bởi hương vị thơm dịu hơn so với hầu hết hành tây và được ăn sống hoặc nấu chín như một loại rau.\r\n\r\n', 55000, 'hanh-la.webp', 1, 1, 4, ''),
(84, 'Đậu phụ bìa', 'Nguyên liệu làm đậu phụ là hạt đậu nành, được xay lên rồi ngâm vào nước. Tinh bột chảy vào nước thành hình dáng theo người làm tự tạo, bã được lọc ra ngoài. Các hình dáng thường thấy là hình vuông, tròn hay chữ nhật dài.\r\n\r\nKhi sản phẩm hoàn thành thì có thể sao chế thêm, như cắt thành hình chữ nhật rán với dầu. Thành một màu vàng bọc ngoài thêm gia vị thếm, là thành một bữa. Nếu không rán thì có thể cắt lát làm thêm phần phụ trong nồi canh rau hay cá.', 5000, 'dau-phu-bia.webp', 1, 0, 4, ''),
(85, 'Bánh bao Mộc', '- Bánh bao được làm hoàn toàn thủ công, theo phương pháp truyền thống, sạch 100% từ bột, thịt đến nấm hương. Không chất bảo quản, không phụ gia. Nhân được làm từ thịt lợn sạch nuôi sinh học, nấm hương rừng tự nhiên.\r\n- Số lượng: 4 - 5 bánh/hộp', 50000, 'banh-bao-moc.webp', 1, 1, 4, ''),
(86, 'Rau dền RH', 'Rau dền là một những loại rau có rất nhiều lợi ích cho cơ thể.\r\n\r\nNgăn ngừa ung thư\r\n\r\nCác hợp chất chống oxy hóa như vitamin E, C, sắt, magiê, phốt pho hay lysine có trong rau dền sẽ chống lại các gốc tự do có hại và ngăn chặn sự hình thành của các tế bào ác tính gây ra ung thư.\r\n\r\nGiảm cholesterol\r\n\r\nMột trong những lợi ích chính của lá rau dền là khả năng làm giảm cholesterol. Ngoài ra, tocotrienols, một loại vitamin E, trong rau giúp làm giảm cholesterol xấu (LDL) và ngăn ngừa bệnh tim mạch vành.', 32000, 'rau-den.webp', 0, 1, 2, ''),
(87, 'Cà rốt', '- Xuất xứ: Bắc Hà - Lào Cai\r\n- Đặc điểm: Giòn, ngọt, thanh mát\r\n- Trọng lượng: ~5 -10 quả/kg', 42000, 'ca-rot.webp', 1, 1, 5, ''),
(88, 'Đậu trạch RA', 'Đậu trạch Bác Tôm có xuất xứ từ Bắc Hà - Lào Cai, được trồng hữu cơ theo hướng 7 KHÔNG\r\n\r\nKhông thuốc trừ sâu\r\nKhông thuốc diệt cỏ\r\nKhông phân bón hóa học\r\nKhông chất kích thích tăng trưởng\r\nKhông biến đổi gen\r\nKhông chất bảo quản\r\nKhông tưới nước ô nhiễm', 35000, 'dau-trach-ra.webp', 1, 0, 1, ''),
(89, 'Bột cần tây sấy lạnh', '100% lành sạch từ cao nguyên 1500m Đà Lạt, được chế biến tại Jan’s Farm từ nguyên liệu tươi ngon với công nghệ khác biệt giữ nguyên tinh chất cần tây thơm mùi, giữ màu xanh tự nhiên và giữ trọn vị.', 145000, 'bot-can-tay-say-lanh.webp', 1, 0, 4, ''),
(90, 'Quả Susu RA', 'Su su là một phần quan trọng của chế độ ăn truyền thống trên khắp Trung Mỹ, và có thể được tìm thấy trong nhiều món ăn. Các bộ phận của cây su su như đọt non, lá non, quả và rể đều ăn được, trong đó quả là loại rau để xào, nấu là thông dụng nhất.\r\n\r\n+Đọt và lá non được dùng làm rau\r\n\r\n-Ở nhiều nước Nam Mỹ và Châu Á đọt và lá non của cây su su được dùng làm rau luộc, xào hay nấu canh.\r\n\r\n-Ở Việt Nam trước đây phần quả được dùng là chính, trong thời gian gần đây đọt và lá non của cây su su được thu hoạch và bán trên thị trường như một loại rau sạch, loại rau này không dùng để ăn sống mà phải qua chế biến như luộc, xào, nấu canh, nhúng lẫu…Ngọn su su được bán rất nhiều tại thị trấn Tam Đảo -Vĩnh Phúc. Ngọn su su Tam Đảo nổi tiếng ngon, giòn, xanh mướt.\r\n\r\n-Ở Đài Loan đọt non cây su su được dùng làm rau rất phổ biến, được người dân địa phương gọi là “rau râu rồng”, được dùng cùng lá non để luộc, xào và nấu canh.\r\n\r\n-Ở vùng núi phía Bắc Thái Lan, người dân tộc Miao gọi cây su su là “dưa núi” đọt và lá non của nó được thu hoạch dùng để làm rau luộc, xào và nấu canh.', 28000, 'qua-su-su-ra.webp', 0, 1, 5, ''),
(91, ' Rau cải chip (1kg)', 'Cải chip là món rau ăn quen thuộc. Lá cải bẹ trắng có thể chữa đau dạ dày, bệnh cam răng. Hạt cải bẹ trắng có vị cay, tính ấm, không độc có tác dụng trị đau răng, trị ho, tiêu thũng, tiêu đờm, thông kinh mạch. Nếu bạn hay người nhà bị đau bụng dưới, đau đầu, cam răng…, có thể khắc phục bằng cách sử dụng lá hoặc hạt cải bẹ trắng.\r\n\r\nRau cải bẹ trắng chứa nguyên tố vi lượng cùng các hoạt chất thực vật (Phytochemicals) đặc biệt là có vitamin C, chống ôxy hóa mạnh. Các nhà dinh dưỡng học đã chứng minh, người lớn nếu một ngày ăn 500g cải trắng, lượng canxi, sắt, carpten và vitamin cầu thiết cho cơ thể sẽ được cung cấp nhiều, giúp đầu óc bình tĩnh, giảm mệt mỏi, giảm cholesterol…', 32000, 'rau-cai-chip.webp', 1, 1, 4, ''),
(92, 'Bí xanh (1kg)', 'Bí xanh còn gọi là bí đao, bí phấn, đông qua, bạch qua, chẩm qua… Đây thực phẩm quen thuộc trong bữa ăn hằng ngày này rất tốt cho sức khỏe, nó có tác dụng thanh nhiệt làm mát ruột, giúp da đẹp dáng thon. Thành phần chủ yếu của bí là nước, nhiều chất xơ, không chứa lipid. Cứ 100g bí có 0,4g protid, 2,4g glucid, 19 mg canxi, 12mg phosphor, 0,3mg sắt, nhiều loại vitamin (A, B1, B2, B3, B9, C, E… và khoáng chất như kali, photpho, magie…) Ngoài ra, bí xanh còn được xem là một trong những loại thuốc có tác dụng chữa được nhiều bệnh như hen suyễn, ho gà, ngộ độc, ung thư họng, ung nhọt… Theo y học cổ truyền, bí xanh vị ngọt nhạt, tính mát, có công dụng thanh nhiệt, giải nhiệt và làm tan đờm, làm mát ruột và hết khát, lợi tiểu, làm hết phù, giải độc và giảm béo. Thường được dùng để chữa các chứng bệnh lý hô hấp có ho và khạc đờm do nhiệt, bệnh đái đường, phù do bệnh thận, bệnh gan, phù khi mang thai…', 35000, 'bi-xanh.webp', 1, 0, 2, ''),
(93, 'Phồng Tôm Đất', 'Bánh được làm từ những con tôm đất tươi, với đôi tay khéo léo của người thợ đã cho ra những sản phẩm chất lượng thơm ngon, ngọt, giòn không sử dụng phẩm màu hóa chất', 130000, 'phong-tom-dat.webp', 1, 1, 4, ''),
(94, 'Su hào RH', 'Củ Su hào là loại củ được trồng nhiều trong mùa lạnh. Hiện tại, su hào vẫn còn được bán nhiều ở chợ. Bản thân củ su hào đem lại rất nhiều lợi ích cho cơ thể con người. Su hào là thực phẩm ít chất béo hoà tan và cholesterol. Điều đó có nghĩa rằng, nó rất tốt cho tim và hệ tuần hoàn máu.', 32000, 'su-hao-rh.webp', 1, 1, 3, ''),
(95, 'Cải bó xôi RH', 'Cải bó xôi là cây trồng 1 năm, chiều cao khoảng 30 cm, lá oval, hoa vàng xanh.\r\n\r\nCải Bó Xôi được bày bán rộng rãi tại các chợ và siêu thị.', 32000, 'cai-bo-xoi.webp', 0, 1, 5, ''),
(96, 'Rau mồng tơi RH', 'Lá và đọt thân non của mồng tơi thường được dùng để nấu canh ăn mát và có tính nhuận trường. Nước ép từ quả dùng trị đau mắt. Tại Trung Quốc có nơi người ta dùng rau mồng tơi giã nát đắp chữa vú sưng, nứt, giải độc.', 32000, 'rau-mong-toi.webp', 1, 1, 2, ''),
(97, 'Cải canh RH (1kg)', 'Cải canh là một loài cỏ mọc năm hay 2 năm có thể cao tới 1m hoặc 1.5m. Lá phía dưới có rãnh sâu, phiến lá lượn sóng, mép có răng cưa to thô. Hoa mọc ở đầu cành hoặc kẽ lá, màu vàng. Quả hình trụ có mỏ ngắn. Hạt hình cầu, đường kính 1-1.6mm, 100 hạt chỉ nặng khoảng 0.2g. Vỏ ngoài màu vàng hay màu nâu, một số ít có màu nâu đỏ. Nhìn qua kính lúp sẽ thấy mặt hạt sẽ có vân hình mạng, tễ là một chấm rất rõ, ngâm nước phình to, sau khi loại bỏ vỏ, hạt sẽ lộ ra hai lá mầm. Hạt khô không có mùi, vị như có dầu lúc đầu, nhưng sau có vị cay nóng. Tán nhỏ với nước sẽ có tinh dầu mùi hắc xông lên.', 32000, 'cai-canh-rh.webp', 1, 1, 3, ''),
(98, 'Bí đỏ', '- Xuất xứ: Bắc Hà - Lào Cai\r\n- Đặc điểm: Ngọt, ăn rất bùi\r\n- Trọng lượng: 1- 2kg', 32000, 'bi-do.webp', 0, 0, 2, ''),
(99, 'Ngọn su su', 'Ngọn su su là phần ngọn non của cây su su. Ngọn su su là thực phẩm giàu folate, chất xơ, chất đồng, chất kẽm và vitamin B, giúp ngăn chặn sự hình thành của homocystein là chất có khả năng gây nên bệnh tim và đột quỵ. Vitamin C, K có trong ngọn su su giúp chống ô xy hóa, loãng xương.\r\n\r\n- Đặc điểm: ngọt mềm, chế biến nhiều món hấp dẫn', 28000, 'ngon-su-su.webp', 1, 1, 3, ''),
(100, 'Bánh chưng gù', 'Bánh chưng gù không phải không phải là món ăn mới, loại bánh chưng khá phổ biến từ vài năm trước. Đây là loại bánh truyền thống của người Dao Đỏ ở Yên Bái – Lào Cai. Bánh chưng gù có khá nhiều ưu điểm như:\r\n\r\nKích thước nhỏ, múp míp giống như cái lu: dễ cầm, dễ mang\r\n\r\nBánh chưng gù có kích thước nhỏ khá vừa đủ xinh. Bánh nho nhỏ cầm trong lòng bàn tay có cảm giác múp míp, đầy đặn, giống như chiếc lu đất đựng nước ngày xưa.\r\n\r\n', 33000, 'banh-chung-gu.webp', 1, 0, 3, ''),
(103, 'Bí ngòi Đà Lạt', 'Thuộc vào họ bầu bí, thân tròn, ít vân. Nhưng bí ngòi Đà Lạt có giá trị dinh dưỡng cao và được ví như nhà máy tổng hợp các loại vitamin A, C, B, K, chất xơ, các nguyên tố vi lượng magnesium, manganese, kali. Ngoài ra còn có thêm protein, kẽm, calcium và sắt\r\n\r\nBí ngòi Đà Lạt có 2 giống chính là bí ngòi xanh và bí ngòi vàng. Tuy nhiên, theo nhu cầu cách khách hàng, giống bí ngòi xanh đã sẵn sàng trên kệ của Bác Tôm.', 49000, 'bi-ngoi-da-lat.webp', 1, 0, 1, ''),
(104, 'Thì là (1kg)', 'Thì là chứa nhiều Vitamin C và chất xơ. Gần đây người ta còn cho rằng thì là có chứa một hoạt chất oxy hóa cực mạnh có thể giúp ngăn ngừa bệnh ung thư. Tuy nhiên nghiên cứu trên mới chỉ giới hạn trên động vật, chưa được thử nghiệm trên con người.', 120000, 'thi-la.webp', 1, 0, 5, ''),
(105, 'Khoai mỡ hữu cơ (500g)', 'Tại Việt Nam, khoai mỡ được trồng nhiều ở khắp vùng nông thôn để lấy củ ăn. Khoai mỡ bắt đầu vụ thu hoạch vào cuối tháng 7, đầu tháng 8 âm lịch hàng năm và lấy giống trồng vụ mới. Khoai mỡ ở Việt Nam có hai loại: ruột trắng và ruột tím. Loại ruột trắng có giống Mộng Linh, củ chùm, nặng ký (từ 4– 5 kg/củ), năng suất cao. Loại ruột tím lại chia ra giống tím than và tím bông lau, loại này củ suông, dài, tuy củ nhỏ hơn loại ruột trắng nhưng ăn ngon, khi chế biến thành món ăn màu sắc cũng đẹp hơn nên được thị trường ưa chuộng. Khoai mỡ tốt cho những người bị bệnh lý về tim mạch thường có hàm lượng homocysteine cao, gây tổn hại cho thành mạch máu. Vitamin B6 chứa trong khoai mỡ có thể giúp cơ thể phá vỡ homocysteine, ngăn ngừa bệnh tim và đột quỵ. Bên cạnh đó, khoai mỡ cũng giúp kiểm soát được đường huyết trong máu và trọng lượng cơ thể nhờ chứa nhiều chất xơ và carbohydrate phức hợp.', 47500, 'khoai-mo-huu-co.jpg', 1, 1, 4, ''),
(101, 'Rau lang RH', 'Rau lang tính mát có công dụng thanh nhiệt giải độc, ngừa mụn trị mụn, trị táo bón, lợi cho hệ tiêu hóa, nhiều chất xơ nên giúp nhuận tràng rất tốt.', 32000, 'rau-lang-rh.webp', 0, 1, 4, ''),
(102, 'Hoa gừng', 'Hoa gừng non mỡ màng giòn ngọt dậy, được bà con dân tộc ví nó như món măng ngọt vì mùi thơm ngon ngọt, chỉ cần bóc lớp vỏ bên ngoài, rửa sách rồi thái mỏng xào kèm thịt bò, tôm, hoặc nấu canh xương… vừa ngon vừa phòng cảm cúm.', 65000, 'hoa-gung.jpg', 0, 1, 5, ''),
(106, 'Khoai Lang Mật Hữu Cơ - 500g', 'Khoai lang là một loài cây nông nghiệp với các rễ củ lớn, chứa nhiều tinh bột, có vị ngọt, được gọi là củ khoai lang và nó là một nguồn cung cấp rau ăn củ quan trọng, được sử dụng trong vai trò của cả rau lẫn lương thực. - Khoai lang không chỉ là thực phẩm quen thuộc trong dân gian, mà lá và củ còn là vị thuốc trị nhiều bệnh.. Giống khoai này ăn ngọt, khi héo luộc lên bao giờ cũng chảy mật, rất ngon. Tuy nhiên giống khoai này lại không năng xuất nên bây giờ nhiều nhà không trông nữa mà chuyển sang trồng khaoi ruột vàng , nhạt hơn nhưng năng xuất hơn. - Khoai khi mới dỡ xong còn tươi luộc lên sẽ k có mật và nhạt nhưng chỉ để một thời gian và phơi héo thì ăn rất ngọt và thơm. - Khi luộc khoai chín, chắt hết nước đi đun thêm 1 chút với lửa nhỏ, mật trong khoai sẽ từ từ chảy rất thơm.', 40000, 'khoai-mat-huu-co.jpg', 1, 1, 5, ''),
(107, 'Khoai Lang Nhật Hữu Cơ - 500g', 'Đặc điểm của khoai lang Nhật là thân to mập, ít phân cành và có màu tím. Khả năng sinh trưởng phát triển mạnh, thời gian sinh trưởng 105 - 120 ngày. Năng suất 9 - 15 tấn/hécta. Dạng củ thuôn dài, vỏ củ nhẵn màu tím, ruột màu vàng đậm. Hàm lượng chất khô 27 - 33%. Phù hợp ăn tươi, chế biến, xuất khẩu.', 38000, 'khoai-lang-huu-co.jpg', 0, 1, 4, ''),
(108, 'Hạt Đậu Hà Lan Tươi Hữu Cơ-300g', 'Tính vị, tác dụng: Ðậu Hà Lan làm tăng năng lượng, giúp sự vận chuyển đường ruột. Người ta nhận thấy dầu hạt có hiệu quả chống hormon sinh dục, đối lập với hormon sinh dục nam, tạo ra sự vô sinh. Công dụng, chỉ định và phối hợp: Ðậu Hà Lan là loại đậu có giá trị kinh tế cao. Quả non làm rau xanh giàu chất dinh dưỡng cho người; hạt có hàm lượng bột và protein cao nên làm thức ăn tốt cho người và gia súc. Ta thường lấy quả non xào, luộc ăn và hạt dùng hầm thịt. Ðậu Hà Lan xào hay nấu ăn tươi rất dễ tiêu hoá và làm cho sự vận chuyển đường ruột được dễ dàng. Khi dùng khô thì bột đều chứa các hoạt chất đậm đặc lại, nên người ta thường phơi khô tán bột, dùng chủ yếu trong việc làm mứt. Ở Ấn Độ, hạt nếu ăn sống có thể gây ra kiết lỵ, còn ở Tây Ban Nha, người ta dùng đậu Hà Lan làm thuốc dịu và thuốc đắp.', 147000, 'dau-ha-lan-huu-co.jpg', 0, 1, 4, ''),
(109, 'Ớt Chuông Cam - 500g', 'Ớt Chuông có nhiều màu như xanh, đỏ, cam, vàng, thân tròn như quả chuông, hương thơm, vị rất giòn ngọt, ít hăng.', 58500, 'ot-chuong-cam-huu-co.jpg', 0, 0, 3, ''),
(110, 'Ớt Chuông Vàng Hữu Cơ - 500g', 'Ớt Chuông có nhiều màu như xanh, đỏ, cam, vàng, thân tròn như quả chuông, hương thơm, vị rất giòn ngọt, ít hăng. ', 58500, 'ot-chuong-vang-huu-co.jpg', 1, 0, 4, '');
INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_price`, `product_photo`, `product_state`, `product_ispopular`, `product_quality`, `product_more_photo`) VALUES
(111, 'Ớt Chuông Xanh Hữu Cơ - 500g', 'Ớt chuông là loại quả giúp giảm cân cực kỳ hiệu quả nhờ chứa rất ít năng lượng. Ăn loại quả này giúp tăng cường trao đổi chất nhờ hạ thấp nồng độ triglyceride – một dạng mỡ trong máu mà nếu tăng bất thường sẽ gây ra hội chứng trao đổi chất. Ngoài ra, ớt chuông cũng giúp ngăn ngừa tình trạng rối loạn tiêu hóa nhờ tiết dịch tiêu hóa. Chất chống oxy hóa Các gốc tự do có mặt trong cơ thể sẽ gây hại tế bào, tổn thương thần kinh và mạch máu. Ớt chuông giàu vitamin A và C, trong đó có cả chất chống oxy hóa cực mạnh. Những chất chống oxy hóa này giúp chống lại các gốc tự do trong cơ thể và giúp điều trị các bệnh tim, viêm xương khớp, hen phế quản, đục thủy tinh thể…     Ngừa ung thư Người ta tin rằng các hợp chất capsaicin trong ớt chuông có khả năng điều trị ung thư bằng cách ngăn chặn chất gây ung thư kết nối với ADN. Ớt chuông có khả năng ngăn chặn các tế bào ung thư và tiêu diệt chúng.     Giảm đau Hợp chất capsaicin có trong ớt chuông có thể ngăn chặn sự lây truyền của cơn đau từ da đến cột sống. Vì vậy, ớt chuông giúp hỗ trợ trong điều trị đau dây thần kinh, đau do bệnh zona, cũng như điều trị chấn thương sau phẫu thuật cắt cụt.     Tăng cường miễn dịch Ớt chuông giàu vitamin C, nên có thể kích thích các tế bào bạch cầu chống lại nhiễm trùng. Chính vì vậy, ớt chuông giúp tăng cường hệ miễn dịch của cơ thể. Vitamin C và chất flavonoid có trong ớt cũng ngăn ngừa các vấn đề về đường hô hấp như viêm phổi, hen suyễn, khí phế thũng và thở khò khè.', 47500, 'ot-chuong-xanh-huu-co.jpg', 1, 1, 4, ''),
(112, 'Ớt Chuông Đỏ Hữu Cơ - 500g', 'Ớt Chuông giàu Vitamin A, K, C, Kali, Magne, chất khoáng và chất xơ. Hổ trợ tiêu hóa, tốt cho mắt, hệ miễn dịch cao, giảm đường và cholesterol trong máu. Kích thích tuần hoàn máu, ngăn ngừa lão hóa.', 55000, 'ot-chuong-do-huu-co.jpg', 1, 1, 5, ''),
(131, 'Cherry New Zealand 500g Size 30', '1. Cherry New Zealand \r\nCherry New Zealand vỏ màu đỏ sẫm, quả căng mọng, chắc, bóng, vị ngọt. Những quả Cherry New Zealand căng bóng luôn là mặt hàng được khách hàng Việt Nam đặc biệt ưa chuộng, một đặc sản đắt tiền và thường dùng để làm quà biếu. \r\n2. Mùa vụ  \r\nCherry New Zealand chỉ có vào dịp cuối năm, từ  tháng 12 – tháng 2 năm sau. \r\n3. Giá trị dinh dưỡng \r\nCherry là nguồn vitamin A tuyệt vời, là loại trái cây giàu chất sắt, chất xơ cao, không cholesterol và Natri, tốt cho hệ miễn dịch, tiêu hóa và làm đẹp da. Cherry chống oxy hóa rất tốt cho tim mạch, giúp bảo vệ cơ thể chống lại bệnh ung thư và nó hoạt động như một loại thuốc giảm đau và giảm viêm cho các bệnh nhân gút và khớp. Cherry chứa melatonin – một chất giúp điều hòa giấc ngủ nên nó có thể giúp ngủ ngon. Cherry cũng là một món ăn nhẹ tốt cho sức khỏe mà trẻ em yêu thích. Cherry được ví là “Kim cương của hoa quả”, chính là một thực phẩm quý khách cần bổ sung vào thực đơn của mình.', 397500, 'cherry-new-zealand.jpg', 0, 1, 4, ''),
(130, 'Chanh Dây Hữu Cơ-1kg', '• Chanh dây rất giàu Vitamin C. Vitamin C chính là chất chống ôxy hóa và chống viêm nhiễm. Do đó có thể giúp bạn giảm các triệu chứng hen suyễn.\r\n• Chanh dây cũng là loại hoa quả có nhiều chất xơ nên dễ gây no bung. Hơn nữa, chất xơ rất tốt cho sức khỏe, nó có thể ngừa bệnh tim mạch vành. Ngoài ra còn giữ \r\n• Chanh dây cũng là loại hoa quả có nhiều chất xơ nên dễ gây no bung. Hơn nữa, chất xơ rất tốt cho sức khỏe, nó có thể ngừa bệnh tim mạch vành. Ngoài ra còn giữ được lượng cholesterol . \r\n• Chanh dây cũng giàu carbohydrate cung cấp năng lượng cho cơ thể. \r\n• Chanh dây cũng chứa nhiều chất sắt và kali. \r\n• Ở những nước nhiệt đới, đôi khi chanh dây còn có vị ngọt, nên người ta thường dùng để làm nước ép giải khát và thanh nhiệt. \r\n• Chanh leo có chứa thành phần gây ngủ và rất tốt để thư giãn, do đó bạn nên uống chanh leo trước khi đi ngủ (như vậy giấc ngủ sẽ sâu hơn). \r\n• Cùi chanh dây giống tinh dầu vanilla hoặc xi rô lựu; nên bạn có thể dùng nó làm gia vị khi nướng hay pha lẫn cùng các món cocktail. \r\n• Chanh dây có thể giúp bạn giảm sự phát triển của tế bào ung thư.', 90000, 'chanh-day-huu-co.jpg', 1, 0, 4, ''),
(128, 'Bơ Sáp Giống Cổ 1Kg', 'Bơ DakLak tại Organic được chọn lựa kỹ càng từ chính nông trại của Organic, đảm bảo sạch, không hóa chất, không thuốc tăng trưởng, các chất làm biến đổi gen. Có nhiều size theo cân nặng, đáp ứng đủ các nhu cầu của khách hàng,… Bơ trái to, thịt bơ béo ngậy, ruột vàng hấp dẫn,…\r\n', 120000, 'bo-huu-co.jpg', 1, 0, 3, ''),
(129, 'Cam Canh 1KG', 'Cam canh quả to, nhiều nước, thơm ngọt hấp dẫn. \r\nCam có thể dùng ăn trực tiếp hoặc làm nước ép, sinh tố, tinh dầu cam còn có công dụng giúp tinh thần sảng khoái. Ngoài ra, nước ép cam cũng là một thức uống giải khát rất được ưa thích. Bạn có thể dễ dàng bảo quản sản phẩm trong tủ lạnh để dùng cho các bữa tráng miệng trong gia đình, dùng trong giờ giải lao nơi làm việc hay mang theo trong các chuyến đi chơi, picnic…\r\n', 69000, 'cam-canh-huu-co.jpg', 1, 0, 3, ''),
(126, 'Cà Tím Hữu Cơ - 300g', 'Cà tím là một loài cây thuộc họ cà, màu tím huế, ruột trắng, không xơ, ăn ngon. Cà tím giúp giảm nguy cơ mắc các bệnh tim mạch nhờ tác dụng giống như nhóm statins, giúp phòng ngừa bệnh cao huyết áp cũng như bệnh tiểu đường ở một số người có nguy cơ cao. Cà tím còn giúp ngăn chặn sự hình thành của các gốc tự do nhờ nguồn axit folic và kali rất dồi dào, giúp ngăn ngừa ung thư và chống lão hoá các tế bào trong cơ thể. Món ngon với cà tím: cà tím cuộn thịt chiên xù, cà tím kẹp thịt rán giòn, cà tím chiên giòn, cà tím sốt cà chua, cà tím xào hành, cà tím nhồi thịt nướng, thịt ba chỉ cháy cạnh ăn kèm cà tím, canh cà tím nấu sườn non, cà tím xào tôm, cà tím kho thịt, canh cà tím đậu hũ…', 24000, 'ca-tim-huu-co.jpg', 1, 0, 0, ''),
(127, 'Bơ Booth - 1kg', 'Trong vài năm gần đây người tiêu dùng Việt dần quen với một giống Bơ cực ngon được trồng tại Đắk Lăk. Không chỉ cho chất lượng ổn định: ít sượng, ít thối mà còn mang lại hương vị nhiều phần khác biệt. Người ta đánh giá Bơ Booth có cơm khô và dẻo hơn đáng kể so với bơ Sáp thường, đồng thời khi ăn cảm nhận rõ vị ngọt ngậy nổi bật, chỉ bóc ăn không đã ngon rồi chứ chưa cần thêm đường, thêm sữa. \r\nĐặc biệt mùa Bơ Booth từ tháng 9-11, tức là muộn hơn 2 tháng so với Bơ Sáp, khiến nó đã ngon nay lại thêm phần quý hiếm. \r\n\r\nLink nguồn : https://organicfood.vn/trai-cay-huu-co/bo-booth.html?limit=25', 98000, 'bo-booth.jpg', 0, 0, 4, ''),
(119, 'Bí Nhật Hữu Cơ - 350g', 'Bí đỏ Nhật có màu xanh luc, đậm, dạng tròn, dẹt. Bí đỏ Nhật một loại quả dễ trồng nhưng lại có giá trị dinh dưỡng đặc biệt. Người Nhật Bản luôn coi nó là một trong những món ăn trường sinh bất lão.', 43750, 'bi-nhat-huu-co.jpg', 1, 0, 5, ''),
(120, 'Bí Đao Hữu Cơ - 500g', 'Bí xanh (bí đao) có vị ngọt mát thường được nấu chung với tôm khô tạo thành món canh ngon quen thuộc vào mùa hè. Trong mình bí xanh có chứa rất nhiều các chất như đường, protit, vitamin E, PP, B1, B2, C đồng thời còn có sắt bổ máu, canxi bổ xương,… \r\nSử dụng bí xanh như một loại mặt nạ sẽ cực kỳ hữu dụng trong việc nâng tông độ sáng của làn da, tăng cường độ ẩm giúp da mềm mại. Bí xanh cũng được sử dụng như một cách trị nám da mặt hiệu quả và vô cùng an toàn. Trước khi làm mặt nạ bí xanh, bạn cần chuẩn bị một miếng bí vừa tầm, tiết kiệm khoảng 50g, 500g đường phèn. \r\nCách thực hiện: rửa sạch bí xanh, thái hạt lưu và hầm nhừ cùng đường. Khi thấy hỗn hợp đã đặc lại, bạn hãy xay mịn rồi lọc bỏ phần bã, chỉ lấy phần nước cất của hỗn hợp rồi bảo quản trong tủ lạnh để sử dụng dần dần. Mỗi ngày bạn có thể uống 1 thìa nước cốt trên, hòa chung với 200-300ml nước lọc ấm sẽ giúp thanh lọc các độc tố có trong cơ thể, điều tiết lại tuyến nội tiết đang bị giới hạn. Bên cạnh đó, đắp trực tiếp phần nước cốt lên vùng bị nám cũng sẽ nhanh chóng xóa bỏ dấu tích của các nốt nâu nám da mất thẩm mỹ.\r\n', 44000, 'bi-dao-huu-co.jpg', 1, 1, 4, ''),
(121, 'Bí Đỏ Hữu Cơ (Bí Hồ Lô) -700g', 'Bí đỏ có rất nhiều dinh dưỡng : - Hàm lượng các chất vitamin A trong bí đỏ giúp cải thiện thị giác. - Ruột và hạt bí đỏ có chứa nhiều vitamin E - một loại antioxidant tự nhiên giúp củng cố hệ miễm nhiễm, ngăn ngừa sự xuất hiện những nếp nhăn sớm, bảo vệ da khỏi lão hóa và cải thiện chức năng hệ tim mạch. - Vitamin K và T là những loại vitamin hiếm, có rất ít trong các thực phẩm,với Vitamin K cần thiết để tổng hợp protit của máu và mô xương. Vitamin T giúp làm đông máu và tạo các tế bào máu. Nhờ đó vitamin T rất quan trọng trong việc ngăn ngừa một số dạng thiếu máu.', 52500, 'bi-ho-lo-huu-co.jpg', 0, 0, 0, ''),
(122, 'Bông Atiso Tươi -300gr', 'Atisô là cây thảo lớn, cao 1 - 1,2m, có thể đến 2m. Thân ngắn, thẳng và cứng, có khía dọc, phủ lông trắng như bông. Lá to, dài, mọc so le; phiến lá xẻ thùy sâu và có răng không đều, mặt trên xanh lục mặt dưới có lông trắng, cuống lá to và ngắn. Cụm hoa hình đầu, to, mọc ở ngọn, màu đỏ tím hoặc tím lơ nhạt, lá bắc ngoài của cụm hoa rộng, dày và nhọn, đế cụm hoa nạc phủ đầy lông tơ, mang toàn hoa hình ống.Quả nhẵn bóng, màu nâu sẫm có mào lông trắng.', 153000, 'bong-atiso-tuoi-huu-co.jpg', 0, 1, 4, ''),
(123, 'Bông Cải Xanh Hữu Cơ - 300g', 'Bông cải xanh hoặc súp lơ xanh, là một loại cây thuộc họ cải, có hoa lớn ở đầu, thường được dùng như rau. Bông cải xanh thường được chế biến bằng cách luộc hoặc hấp, nhưng cũng có thể được ăn sống như là rau sống trong những đĩa đồ nguội khai vị.', 26400, 'bong-cai-xanh-huu-co.jpg', 1, 0, 4, ''),
(124, 'Bông Cải Trắng - 500g', 'Bông cải trắng đã được biết đến từ lâu là mang lại giá trị dinh dưỡng và có lợi cho sức khỏe. Với hàm lượng calo và chất xơ ít (khoảng 25 calo và 2g chất xơ), đây là món ăn tuyệt vời cho người muốn giảm cân. Một số hoạt chất trong cải đã được chứng minh hoạt động rất hiệu quả trên hệ miễn dịch, tăng cường kháng viêm, chống vi trùng và vi khuẩn và điều trị chứng loạn sản cổ tử cung. \r\nBông cải trắng cung cấp một lượng lớn vitamin C giúp chống oxy hóa đã được chứng minh giúp chống lại các gốc tự do có hại, tăng cường khả năng miễn dịch, ngăn ngừa các bệnh nhiễm trùng và ngừa ung thư. Bông cải trắng chứa nhiều khoáng chất như mangan, đồng, sắt và kali, các nguyên tố vi lượng này cũng là thành phần không thể thiếu cho hoạt động của các enzym trong cơ thể, góp phần bảo vệ khung xương, hồng cầu và điều hòa huyết áp. Bông cải trắng giúp làm bền các thành mạch máu. Một số vitamin khác giúp kích hoạt hoạt động chống viêm trong mao mạch và ngăn ngừa tổn thương mạch máu ...', 64000, 'bong-cai-trang-huu-co.jpg', 0, 0, 3, ''),
(125, 'Cà Rốt Baby - 400g', 'Cà rốt chứa rất nhiều vitamin A, B, C đặc biệt là hàm lượng vitamin A cao rất tốt cho mắt, giúp tăng cường thị lực, bồ bổi thị lực, các vitamin này còn giúp chuyển hóa và tái tạo da, tăng sức đề kháng, phòng và trị các bệnh, giúp bổ tỳ tiêu thực, nhuận tràng, bổ can minh mục, thanh nhiệt giải độc. Thường dùng để dưỡng da, trị chứng da khô, trứng cá đầu đen, mụn nhọt...\r\nCà rốt có thể chữa được các bệnh như: cảm mạo, bệnh sởi, thủy đậu, tiêu chảy. Tinh dầu trong cà rốt có tác dụng diệt khuẩn, caroten trong cà rốt có thể chuyển hóa thành vitamin A giúp sáng mắt, phòng tránh được bệnh quáng gà, khô giác mắt, ngoài ra, caroten còn giúp phòng chống bệnh ung thư. Chưa hết, trong cà rốt có chứa insulin có tác dụng làm giảm 1/3 lượng đường trong máu,giúp hạ huyết áp là thực phẩm lý tưởng cho người bị tiểu đường và người bị cao huyết áp. Ngoài ra trong hạt cà rốt có chứa chất B bisabolen giúp hạn chế sinh đẻ.', 98000, 'ca-rot-baby-huu-cojpg.jpg', 1, 0, 3, ''),
(132, 'Cherry Úc 500g', 'Cherry  Úc hay anh đào là loại trai cay thuộc họ Rosaceae, chi Prunus. Từ cherry là tên gọi chung để chỉ một số loại cây có quả hạch và có chứa hạt cứng. Trong tiếng Pháp, cherry được gọi là cerise, điều thú vị là trái “sơ ri” của Việt Nam được lấy tên từ chính trong tiếng Pháp “cerise”, nhưng thực tế quả sơ ri lại là trái của loài Malpighia Glabra. Loại quả này có hình dáng rất giống quả anh đào nhưng chúng lại không hề có họ hàng với nhau. Có rất nhiều chủng loại cherry khác nhau nhưng chỉ có khoảng 15 giống là được trồng nhiều vào mục đích thương mại. Cherry Úc thường được thu hoạch từ cuối tháng 11 đến tháng 2…Các loại quả chín đầu mùa thường có kích cỡ khoảng 26 – 28 mm, màu đỏ thẫm, vị ngọt thanh và ít bị sâu bệnh.', 330000, 'cherry-uc.jpg', 1, 0, 4, ''),
(133, 'Cherry Đỏ Mỹ - 500Gram', 'Loại quả này có hình dáng rất giống quả anh đào nhưng chúng lại không hề có họ hàng với nhau. Có rất nhiều chủng loại cherry khác nhau nhưng chỉ có khoảng 15 giống là được trồng nhiều vào mục đích thương mại. Cherry Úc thường được thu hoạch từ cuối tháng 11 đến tháng 2…Các loại quả chín đầu mùa thường có kích cỡ khoảng 26 – 28 mm, màu đỏ thẫm, vị ngọt thanh và ít bị sâu bệnh.', 299000, 'cherry-do-My.jpg', 0, 1, 4, ''),
(134, 'Chôm Chôm - 1Kg', 'Chôm chôm được trồng tự nhiên, không sử dụng hóa chất, thuốc trừ sâu, An toàn cho mọi người.  Giống chôm chôm vỏ mỏng, cơm dày, ngọt mang đến hương vị tuyệt vời. Tự nhiên thưởng thức không lo về chất lượng', 75000, 'chom-chom-huu-co.jpg', 1, 1, 5, ''),
(135, 'Chuối Già Hương - 1kg', 'Chuối già hương quả dài và cong, khi chín màu xanh, thịt thơm và ngọt, là loại chuối rất giàu dinh dưỡng.', 49000, 'chuoi-gia-huong.jpg', 1, 0, 4, ''),
(136, 'Chuối Sứ Hữu Cơ - 1kg', 'Chuối sứ hay gọi là chuối Xiêm, là một giống chuối có nguồn gốc từ Thái Lan, thân chuối ngắn, hai đầu thon nhỏ.', 55000, 'chuoi-su-huu-co.jpg', 1, 0, 5, ''),
(137, 'Dâu Giống New Zealand - 250gram', 'Dâu tây Đà Lạt giống New Zealand được coi là một trong các giống dâu tây cao cấp được trồng thủy canh tại Đà Lạt.\r\nKhông giống như giống Pháp và Mỹ được tròng trong nhà lướ, Dâu tây Đà Lạt giống New Zealand được trồng trong nhà kính. \r\nSự khác nhau ở môi trường sống và ít chịu ảnh hưởng của thời tiết đặc biệt là mưa đã mang lại cho loại Dâu tây này những giá trị dinh dướng và đặc điểm nổi bật nhất định.\r\nMột số điểm khách biệt của dâu tây giống New Zealand so với các giống khách đang được trồng ở Đà Lạt: \r\n- Hương thơm đặc trưng của dâu tây: đây có thể coi là đặc điểm nổi bật nhất, hương thơm này vốn chỉ thấy xuất hiện từ dâu tây được nhập khẩu  \r\n- Thịt giòn và ngọt: Ngoài hương thơm, loại dâu này còn có vị ngọt thanh và thịt rất giòn không hề bị xốp.  \r\n- Màu sắc bắt mắt: Màu đỏ đậm rất đẹp thường thấy ở các loại dâu tây nhập trực tiếp về từ Úc và Mỹ.', 190000, 'dau-giong-new-zealandjpg.jpg', 1, 1, 5, ''),
(138, 'Dưa Lưới Giống Nhật Ruột Xanh 1kg', 'Dưa lưới Biển Hoàng Gia - SeaRoyal được canh tác theo quy trình định hướng Organic đạt tiêu chuẩn JAS Nhật Bản khắt khe đánh giá, Dưa lưới Biển Hoàng Gia - SeaRoyal của DannyGreen cho độ ngọt thanh mà vẫn giữ được hàm lượng dinh dưỡng cao. \r\n- Xuất xứ giống: Nhật Bản. \r\n- Hình dạng: tròn đều, vỏ xanh nhạt có vân lưới nhẹ. \r\n- Bên trong: ruột cam, mềm, vị ngọt thanh. \r\n- Tiêu chuẩn/ Chứng nhận: JAS \r\n- Thời gian sử dụng: Sẵn sàng thưởng thức, bảo quản tốt hơn trong ngăn mát.  \r\n- Nhà sản xuất: Seagull ADC', 125000, 'dua-luoi-ruot-xanh.jpg', 1, 0, 2, ''),
(139, 'Dưa Lê Hoàng Kim Hữu Cơ', 'Hình dạng bên ngoài: trái hình elip, vỏ vàng tươi. Bên trong: ruột trắng, hơi giòn, vị ngọt thanh. Dưa hoàng kim là loại quả chứa hàm lượng nước cao giúp ngăn ngừa mất nước. Nó cũng rất tốt cho những người muốn giảm cân, vì chứa ít calo và giàu chất dinh dưỡng. Dưa hoàng kim chứa chất xơ, beta-carotene, kali, sắt, mangan, a xít folic, vitamin A, vitamin C và các chất dinh dưỡng quan trọng khác.', 125000, 'dua-le-hoang-kim-organic-2jpg.jpg', 1, 1, 4, ''),
(140, 'Dâu Hàn Quốc -Hộp 330g', 'Dâu Hàn Quốc được trồng ở nhà kính thông minh (smart farm) hoàn toàn tự động hóa. Từ trồng cho đến chăm sóc nhằm giảm tối đa việc sử dụng phân bón, thuốc bảo vệ thực vật theo đúng quy trình quản lý thực hành nông nghiệp tốt (GAP). \r\nDâu Hàn Quốc có hàm lượng lớn vitamin, chất khoáng và đường fructose giúp thúc đẩy chuyển hóa các chất trong cơ thể, làm máu huyết lưu thông, đồng thời có tác dụng trấn tĩnh, an thần. Bên cạnh đó, các loại vitamin A, B1, B2 và C có trong dâu tây, có tác dụng tăng sức đề kháng, chống nhiễm trùng, nhiễm độc, cảm cúm, stress và chống lão hóa. \r\nDâu Hàn Quốc ngay sau khi thu hoạch sẽ được đóng gói bằng công nghệ xử lý CO2 nồng độ cao với bao bì chuyên dụng. Chỉ trong hai ngày, sản phẩm dâu tây sẽ có mặt tại Việt Nam, với độ tươi ngon tương đương với các sản phẩm được bán cho người tiêu dùng Hàn Quốc.\r\n', 325000, 'dau-han-quoc.jpg', 1, 0, 0, ''),
(141, 'Hồng Xiêm (Sapoche) - 1Kg ', '- Vị ngọt của hồng xiêm chứa rất ít sodium, phù hợp với người bệnh cao huyết áp, tim mạch, bệnh thận \r\n- Với hàm lượng canxi, photpho, các vitamin và khoáng chất, hồng xiêm là sự lựa chọn tuyệt vời cho bà bầu và trẻ nhỏ, tránh các bệnh thiếu máu, giúp phát triển hệ thống, chống mỏi mệt,.. \r\n- Hồng xiêm nhiều chất xơ, kích thích hệ tiêu hóa', 130000, 'hong-xiem-huu-co.jpg', 1, 0, 2, ''),
(142, 'Kiwi Vàng - 500gram ', 'Tổ tiên của trái kiwi vàng Chile được phát hiện đầu tiên tại thung lũng sông Dương Tử ở Trung Quốc vào thời kỳ cổ đại. \r\nVào năm 1966 loại trái cây lần đầu tiên được du nhập vào New Zealand từ Mỹ. Ngày nay kiwi được trồng nhiều tại các nước New Zealand, Italy, Chile, Pháp, Úc, Nhật Bản, Hy Lạp và Hoa Kỳ. Trong đó Chile là quốc gia xuất khẩu kiwi lớn thứ 3 trên toàn thế giới, sau New Zealand và Italy. \r\n Quy trình từ trồng, chăm sóc đến thu hoạch và vận chuyển kiwi được chính phủ Chile kiểm soát rất chặt chẽ để đảm bảo trái kiwi sau khi thu hái luôn đồng đều và đủ tiêu chuẩn Hiện nay, Chile là quốc gia có hơn 11.000 hecta diện tích trồng kiwi. Mùa vụ thu hoạch kiwi vàng Chile bắt đầu từ tháng 2 và kết thúc vào tháng 11 hàng năm.\r\n Kiwi được phân thành hai loại chính: kiwi vàng và kiwi xanh. Kiwi xanh là kiwi thuần chủng, kiwi vàng là kiwi lai tạo. Cả hai loại kiwi đều có trái hình trụ hoặc hình trứng (dài khoảng 8cm). Kiwi vàng Chile có đài ở đầu trái và trái thuôn dài, vỏ màu nâu đỏ và ít lông. Phần thịt vàng ươm với nhiều hạt nhỏ xung quanh trục dọc của quả, vị ngọt đậm và có mùi thơm đặc trưng rất hấp dẫn.', 125000, 'kiwi-vang.jpg', 1, 1, 4, ''),
(143, 'Kiwi Xanh - 1kg', 'Trái kiwi có nhiều hợp chất polyphenol, chất dinh dưỡng thực vật (phytonutrients), axít folic, vitamin C,E, nhiều khoáng tố như Ca, Cr, Cu, Fe, Mg, K, Zn,… \r\nMột quả kiwi hàng ngày có thể giúp sản sinh những vi chất bảo vệ cơ thể chống lại việc phá huỷ ADN và ngăn chặn các bệnh ung thư phổi, miệng, cổ họng, dạ dày, đại tràng và thực quản.\r\n', 180000, 'kiwi-xanh.jpg', 0, 1, 4, ''),
(144, 'Lê Xanh Mỹ - 1Kg', 'Lê xanh được nhập khẩu 100% từ Mỹ \r\nLê xanh Mỹ có hình dáng hơi bầu dục như hình quả trứng, to ở phần dưới và nhỏ dần về phía cuống,  trái lê có màu xanh sáng, đôi lúc cũng sẽ có những trái có ửng đỏ.  \r\nMùa Lê xanh thường bắt đầu vào mùa thu thời gian giữa tháng Chín hoặc đầu tháng Mười . Mùa vụ kéo dài đến hè năm sau. Loại lê này không thay đổi màu sắc khi chín như một số loại khác, màu xanh sáng vẫn được giữ nguyên dù cho trái lê đã đạt tới độ chín mùi.   \r\nLê xanh Mỹ khi chín rất mọng nước, thịt giòn. ngọt thanh pha lẫn một ít vị chua nhẹ tạo cảm giác tươi mát khi ăn. Vì thế, các đầu bếp thường dùng loại lê này cho các món ăn như salad hoặc món tráng miệng.  \r\nVới việc bảo quản ở nhiệt độ phòng, loại trái này sẽ đạt đến độ chín trong vòng 3 đến 5 ngày, tuy nhiên nếu muốn bảo quản lâu hơn bạn có thể để chúng ở ngăn mát tủ lạnh để tăng thêm thời gian bảo quản lên vài ngày.\r\n', 119000, 'le-xanh-my.jpg', 1, 0, 0, ''),
(145, 'Lê Bỉ - 1Kg', 'Là giống lê của Bỉ với hình dáng quả chuông, tròn đều, vỏ xanh và có 1 phần ửng hồng nên còn được gọi với cái tên Lê má hồng.\r\nLê vào vụ vào tháng 10 đến tháng 1 năm sau, thịt lê giòn, ngọt nhẹ, quả lê mọng nước.  Một quả lê Bỉ có kích thước trung bình chứa 10% các vitamin C cần thiết cho cơ thể mỗi ngày. \r\nVới nguồn chất xơ dồi dào lê Bỉ là thực phẩm phù hợp cho những người đang giảm cân hoặc đang bị các chứng mỡ trong máu cao vì nó sẽ giúp bạn cảm thấy no lâu hơn, hạn chế đi việc bạn nạp quá nhiều thực phẩm có chứa lượng cholesterol cao vào cơ thể.  \r\nLê Bỉ có tính lành, không độc hại Lê Bỉ nên được bảo quản ở nhiệt độ 0 - 4 độ C. Vỏ quả Lê rất dễ bị bầm dập, và cuống lê rất dễ gãy nên lúc vận chuyển đi nhiều nơi phải thật cẩn thận và nhẹ tay. Khi dùng lê này bạn chỉ nên rửa đúng số lượng sẽ dùng vì nếu tiếp xúc với nước nhiều, trái lê sẽ rất dễ bị úng.\r\n', 175000, 'le-bi.jpg', 1, 0, 3, ''),
(146, 'Lê Nam Phi 1kg', 'Lê Nam Phi là loại lê có 3 màu đặc trưng là Xanh – Đỏ - Vàng xen kẽ nhau rất đẹp. Hình dáng phía trên thì thon dài, phía dưới hơi bầu tròn giống giọt nước, nhìn qua trông giống như trái hồ lô của Việt Nam. Trọng lượng trung bình mỗi quả từ 200g đến 300g. \r\nLê Nam Phi có vị ngọt dịu, rất giòn và thơm, ngon hơn khi ăn lạnh vào thời tiết nóng bức, được người tiêu dùng trên toàn thế giới ưa chuộng, xuất nhiều nhất sang châu Âu thị trường cực kỳ khó tính về chất lượng và an toàn thực phẩm. Và với chất lượng tuyệt vời, giá thành hợp lý nên  lê Nam Phi cũng được người tiêu dùng Việt Nam tiêu thụ rất nhiều. ', 145000, 'le-nam-phi.jpg', 1, 0, 3, ''),
(147, 'Lựu Ai Cập - 500G', 'Lựu Ai Cập giàu chất chống oxi hóa, giúp bảo vệ cơ thể khỏi các gốc tự do gây lão hóa, các bệnh tim mạch và ung thư. \r\nDầu hạt Lựu có khả năng ngăn ngừa sự hình thành tế bào ung thư da với khả năng mau liền các vết thương da. \r\nNgoài ra nước quả lựu còn có vai trò giúp phụ nữ đối phó với các triệu trứng của thời mãn kinh. \r\nNước lựu giúp duy trì sức khỏe tim mạch và phòng ngừa các bệnh về tim mạch.\r\n', 227500, 'luu-ai-cap.jpg', 0, 0, 0, ''),
(148, 'Lựu Đỏ 1Kg', 'Lựu là loại trái cây nhập khẩu có vỏ màu vàng, trái tương đối lớn (khoảng 2 trái / kg), hạt đỏ thẫm, nhiều nước, đặc biệt ăn rất ngọt và nhiều nước. \r\nXuất xứ: Thái Lan\r\n', 239000, 'luu-thai-lan.jpg', 1, 1, 5, ''),
(149, 'Nhãn Giống Indo - 1Kg', 'Nhãn Indo  hiện nay đang là giống nhãn được trồng phổ biến ở Nam Bộ do đặc tính thịt dai, cơm dày, hạt nhỏ và vỏ mỏng, trái lớn.  \r\nLoại nhãn được ưu chuộng trên cả nước ', 75000, 'nhan_indo.jpg', 1, 0, 0, ''),
(150, 'Nho Mẫu Đơn Hàn Quốc - 1KG', 'Nho mẫu đơn là giống nho thơm ngon nổi tiếng tại Hàn Quốc, đặc tính có mùi thơm và ngọt, là những loại trái cây cao cấp, trái đẹp không chát, vị ngọt thanh.  \r\nGiống như các loại dưa lưới, nho mẫu đơn cũng được trồng theo kiểu “1 nhánh 1 chùm”, do đó, các chùm nho sẽ được hấp thụ tối đa các chất dinh dưỡng, từ đó sản xuất ra loại nho có chất lượng cao. Mỗi chùm nho đều được bọc bằng giấy để ngăn ngừa sự tấn công của các loại côn trùng. \r\nNho mẫu đơn chứa nhiều vitamin C, K, B6 và các khoáng chất như magne, sắt, kali. Chúng rất giàu sắt, rất tốt cho phụ nữ, trẻ em và những người bị thiếu máu. Ngoài ra, hàm lượng polyphenol có trong nho mẫu đơn cũng giúp ngăn ngừa các bệnh về tim mạch. \r\nTrong Nho mẫu đơn có chứa nhiều loại vitamin (như C, K, B6) cùng nhiều loại khoáng chất có giá trị như magie, sắt và kali… Không chỉ vậy, Nho mẫu đơn cũng chứa rất nhiều sắt, nên rất có ý nghĩa với phụ nữ, trẻ em và những người bị thiếu máu. \r\nNgoài ra, trong Nho mẫu đơn hàm lượng polyphenol có rất nhiều, giúp ích trong việc ngăn ngừa các bệnh tim mạch. \r\nTheo giới thiệu của vùng trồng nho mẫu đơn bậc nhất Nhật Bản- Okayama, nho mẫu đơn có hàm lượng đường cao gấp 18 lần và hàm lượng axit- vị chua rất thấp nên có được vị ngọt thơm đặc biệt. Phần lớn lượng đường trong nho là đường glucose nên rất tốt .', 539000, 'nho-mau-don-han-quoc.jpg', 1, 1, 5, ''),
(151, 'Nho Xanh Không Hạt Mỹ (Hàng Air)-500g', 'Nho tươi với tất cả các màu như đỏ, xanh và đen đều chứa hợp chất chống oxi hóa tự nhiên giúp cho tim khỏe mạnh, nho còn có khả năng chống ung thư và duy trì sức khỏe của não. \r\nNho xanh cũng có chứa chất chống oxy hóa. Một nghiên cứu mới đây khi nhìn vào tổng khả năng chống oxy hóa (theo như cách đo của ORAC) đã tìm thấy mức độ chênh lệch đáng kể của nho xanh và nho đỏ: khả năng chống oxy hóa của nho đỏ là 2016 trong khi của nho xanh là 1789. \r\nNgoài ra nho xanh còn có một loại enzim hỗ trợ đường tiêu hóa, việc ăn nho thường xuyên cũng giúp cho phụ nữ có làn da sáng và săn chắc.', 187500, 'nho-xanh-khong-hat-my-500x500.jpg', 0, 0, 3, ''),
(152, 'Táo Hữu Cơ Gala - 1Kg', 'Táo nhập khẩu có chứng nhận hữu cơ của USDA (Bộ Nông nghiệp Mỹ). Cũng như táo khác, chứa nhiều chất pectin, một chất xơ hòa tan làm giảm cholesterol và chất chống oxy hóa, ngăn ngừa bệnh tim. Lượng magiê và kali trong táo giúp điều chỉnh áp suất máu và giữ cho nhịp đập tim ở mức ổn định, chất chống ôxy hoá tự nhiên giúp bảo vệ thành mạch máu.  Vỏ táo giàu chất xơ và có lợi cho hệ tiêu hóa, hơn 1 nửa lượng vitamin C của quả táo đều nằm ở vỏ. Đường tự nhiên trong táo không ảnh hưởng tới bệnh nhân tiểu đường. Chất kẽm trong táo làm tăng khả năng ghi nhớ của não người. Mặt khác, kẽm còn phối hợp với một số chất để tạo ra kháng thể, nâng cao khả năng đề kháng của cơ thể. Ngoài ra táo còn chứa các nguyên tố vi lượng khác như canxi, kali, sắt, phốtpho, các vitamin C, B1, B2.', 170000, 'tao-gala-huu-co.jpg', 1, 1, 5, ''),
(153, 'Nho Đỏ Candy Heart Mỹ Non-GMO ', 'Nho đỏ Candy Heart là dòng nho hoàn toàn mới, lần đầu tiên xuất hiện tại thị trường Việt Nam.\r\nNho được đóng hộp và nhập khẩu nguyên đai, nguyên kiện, nguyên hộp. \r\nNho Candy Heart ăn cực kỳ ngọt, nhiều nước và đặc biệt thơm mùi kẹo đặc trưng không lẫn với bất kỳ 1 dòng nho nào khác Candy Heart là 1 trong những loại nho ngon độc đáo nhất mà chúng tôi từng thử. \r\nVới vị ngọt đậm đà và vô cùng ngọt ngào, chúng được mệnh danh \"Nho Cotton Candy đỏ\", thậm chí Candy Heart còn có hương vị tuyệt vời hơn so với nho Cotton Candy. (Cotton Candy là chủng Nho xanh với hương vị ngọt ngào, thơm như kẹo). \r\nNhững quả Nho với lớp vỏ dẻo dai, lớp nước ngọt ngào vỡ ra sau miếng cắn thử đầu tiên, hương vị sẽ ngày càng đậm đà, đậm chất caramel và kẹo dẻo nướng.\r\n', 229000, 'nho-do-candy-heart-my.jpg', 1, 1, 5, ''),
(154, 'Phúc Bồn Tử Đen Hữu Cơ 100gram', 'Phúc bồn tử là loại quả được nhiều người yêu thích đặc biệt là các chị em phụ nữ. Vì nó có thể dùng để làm mứt, làm bánh, làm kem, xay sinh tố giải nhiệt trong mùa nắng nóng, thậm chí còn được dùng để làm đẹp.\r\n', 165000, 'phuc-bon-tu-den-100g.jpg', 0, 1, 4, ''),
(155, 'Phúc Bồn Tử Đỏ Hữu Cơ 100gram', 'Phúc bồn tử là loại quả được nhiều người yêu thích đặc biệt là các chị em phụ nữ. Vì nó có thể dùng để làm mứt, làm bánh, làm kem, xay sinh tố giải nhiệt trong mùa nắng nóng, thậm chí còn được dùng để làm đẹp.\r\n', 60000, 'phuc-bon-tu-do-100g.jpg', 0, 1, 4, ''),
(156, 'Táo Xanh Hữu Cơ Granny Smith ', 'Táo là một thức ăn tương đối toàn diện, thực sự giúp giữ cơ thể mạnh mẽ và lành mạnh đặc biệt cho thể lực. Táo đặc biệt giúp cho làn da sáng bóng và săn chắc, cũng như một mái tóc óng mượt và khỏe mạnh.  \r\n• Táo chứa pectin, một loại xơ đặc biệt giúp chuyển hóa thức ăn nhanh hơn khi vào cơ thể và giúp cho cơ thể hấp thu tối đa các chất bổ dưỡng. \r\n• Một khoáng chất gọi là boron giúp xương mạnh mẽ cứng và mạnh mẽ hơn.  \r\n• Nhiều antioxidants - chất bảo vệ tim , tăng sức đề kháng và chống một số loại ung thư.  \r\n• Một quả táo có thể cung cấp đến một phần tư nhu cầu Vitamin C hàng ngày của bạn.\r\n', 80000, 'tao-granny-smith-huu-co-1kg.jpg', 0, 1, 5, ''),
(157, 'Táo Xanh Hữu Cơ Mỹ', 'Táo xanh hữu cơ chứng nhận (USDA) GREEN DRAGON là giống táo được lai trộn giữa táo Japanese Orin và Golden Delicious.Thông thường táo xanh có vị chua, nhưng táo xanh Green Dragon của Mỹ thì lại ngọt, thơm nức nở mà giòn nữa thì khách không nên bỏ qua. Là dòng táo được trồng hữu cơ, thịt táo chứa nhiều chất pectin, một chất xơ hòa tan làm giảm cholesterol và chất chống oxy hóa, ngăn ngừa bệnh tim. Lượng magiê và kali trong táo Organic giúp điều chỉnh áp suất máu và giữ cho nhịp đập tim ở mức ổn định, chất chống ôxy hoá tự nhiên giúp bảo vệ thành mạch máu. Vỏ táo giàu chất xơ và có lợi cho hệ tiêu hóa, hơn 1 nửa lượng vitamin C của quả táo đều nằm ở vỏ. Đường tự nhiên trong táo không ảnh hưởng tới bệnh nhân tiểu đường. Chất kẽm trong táo làm tăng khả năng ghi nhớ của não người. Mặt khác, kẽm còn phối hợp với một số chất để tạo ra kháng thể, nâng cao khả năng đề kháng của cơ thể. Ngoài ra táo còn chứa các nguyên tố vi lượng khác như canxi, kali, sắt, phốtpho, các vitamin C, B1, B2.\r\n', 170000, 'tao-xanh-huu-co-my.jpg', 1, 1, 5, ''),
(158, 'Táo Hữu Cơ Fuji Newzealand', '-   Táo Fuji New Zealand có kích cỡ trung bình, quả tròn nhưng hơi góc cạnh và cao thành, thịt chặt, nhiều nước và ngọt.  Fuji tươi ngon lâu hơn các giống táo khác (khoảng 1 năm)  nếu được bảo quản trong điều kiện từ 0 đến 4 độ và sử dụng công nghệ bảo quản CA \r\n-   Trọng lượng khoảng 200g đến 250g mỗi quả, có vỏ goài màu đỏ, vỏ nhẵn và trơn.\r\n-   Táo Fuji  được người tiêu dùng việt \r\nnam tiêu thụ khá mạnh, cụ thể là hàng năm số lượng táo fuji từ new zealand, Úc, Mỹ', 85000, 'tao-huu-co-nhap-khau-tu-my.jpg', 1, 1, 5, ''),
(159, 'Thơm (Dứa) Hữu Cơ - 1kg', 'Thơm, Dứa hay khóm (có nơi gọi là khớm) hay gai (miền Trung) hoặc trái huyền nương, tên khoa học Ananas comosus, là một loại quả nhiệt đới. Quả dứa thực ra là trục của bông hoa và các lá bắc mọng nước tụ hợp lại. Còn quả thật là các \"mắt dứa\".Quả dứa được ăn tươi hoặc đóng hộp dưới dạng khoanh, miếng hoặc đồ hộp nước dứa, hoặc nước quả hỗn hợp. Quả dứa có hàm lượng axit hữu cơ cao (axit malic và axit xitric). Dứa là nguồn cung cấp mangan dồi dào cũng như có hàm lượng Vitamin C và Vitamin B1 khá cao. Trong quả dứa có chứa enzym bromelain, có thể phân huỷ protein. Do vậy, quả dứa được sử dụng trong chế biến một số món ăn như thịt bò xào, thịt vịt xào để giúp thịt nhanh mềm và tạo hương vị đặc trưng.', 50000, 'thom-huu-cojpg.jpg', 0, 1, 5, ''),
(160, 'Trái Thù Lù Hữu Cơ - 200g', 'Trái thù lù hay còn được gọi với nhiều tên gọi khác như trái lòng đèn, trái tầm bốp, trái bôm bốp - một loại cây mọc dại ở Việt Nam với rất nhiều công năng chữa bệnh như tạo ra các tế bào bạch cầu giúp loại bỏ các chất lạ hoặc vi khuẩn. Trong trái thù lù có chứa các chất alkaloid, cacbohydrat, các chất xơ, chất béo, protein, các loại vitamin như vitamin A, C,… còn rất nhiều loại khoáng chất magie, kẽm, sắt, photpho. Công dụng tuyệt vời của loại quả này hiện nay được rất nhiều nước công nhận như hỗ trợ điều trị các loại bệnh như tiểu đường, ngừa sỏi tiết niệu. Vitamin C trong trái thù lù giúp tạo đề kháng cho cơ thể người dùng. Trái thù lù cũng là bài thuốc dân gian giúp trị cảm, sốt tại Việt Nam. \r\n\r\nLink nguồn : https://organicfood.vn/trai-cay-huu-co/trai-thu-lu-huu-co---200g.html?limit=25', 79800, 'trai-thu-lu.jpg', 1, 0, 0, ''),
(161, 'Việt Quất Hữu Cơ 125g', 'Việt quất ( tên khoa học Vaccinium myrtillus ) là thuộc họ Thạch nam,dạng thân bụi.Nó thường mọc ở những vùng đất chua, đất bạc màu tại những nơi có khí hậu ôn đới hay cận cực.Việt quất có hình dạng khá giống với quả sim của Việt Nam,quả có màu đậm,gần như đen với một chút ánh tía,thịt quả có màu đỏ hoặc ngả tím.Trái Việt quất hữu cơ có vị ngọt thanh,mới ăn có thể thấy hơi chát,sau quen rồi lại thấy hấp dẫn vô cùng.  Việt quất hữu cơ rất khó trồng nên ít nhà vườn nào trồng được chúng,quả chủ yếu thu hoạch từ cây mọc hoang nên rất an toàn.Quả việt quất hữu cơ chín rất mềm và mọng ,người thu hoạch,vận chuyển phải rất cẩn thận để tránh dập thối,hư hỏng. Trái Việt quất có thể dùng ăn tươi hay làm mứt,trộn hoa quả,ép lấy nước,trang trí bánh kem...Trong ẩm thực Pháp , Ý việt quất được sử dụng để làm rượu.', 120000, 'viet-quat-huu-co-125g.jpg', 1, 1, 5, ''),
(162, 'Ba Rọi Rút Sườn Hữu Cơ 500g', 'Thịt ba rọi rút sườn hữu cơ là phần thịt nằm gần phần sườn của heo và là phần ba rọi nhiều thịt nhất. Thông thường, thịt ba rọi rút sườn gồm 5 lớp: lớp da ngoài cùng, lớp mỡ, lớp thịt mỏng, lớp mỡ và cuối cùng là lớp thịt dày. Lớp thịt dày cuối cùng thường có xương sườn và phần thịt rút sườn ăn rất giòn, ngậy và ngon.', 175000, 'ba-roi-rut-suon-huu-co.jpg', 0, 1, 5, ''),
(163, 'Cốt Lết Heo Hữu Cơ 500gr', 'Cốt lết hữu cơ là phần thịt ngon, mềm và nhiều thịt nhất so với các phần khác của thịt heo sạch hữu cơ. Cốt lết hữu cơ rất giàu protein, là nguồn dinh dưỡng cần thiết để tái tạo lại cơ bắp sau khi tập thể dục và giúp tăng cường hệ miễn dịch. Ngoài ra, thịt cốt lết hữu cơ còn cung cấp một lượng axit amin cần thiết cho chế độ ăn của bạn và gia đình bạn.', 130000, 'cot-let-heo-huu-co.jpg', 1, 1, 5, ''),
(164, 'Khổ Qua Rừng - 300g', 'Giàu acid amin, lipid, lycopen; một số vitamin và muối khoáng có tác dụng thanh nhiệt, giải độc…', 82500, 'kho-qua-rung.jpg', 0, 1, 4, ''),
(165, 'Củ Sen Tươi Cắt Lát 250g', 'Củ sen hay còn gọi trong Đông y là Liên Ngẫu là bộ phận to, tròn cắm sâu xuống bùn của cả cây sen, chỉ được thu hoạch khi hồ sen đã héo.  Với hàm lượng dinh dưỡng bên trong, củ sen được xem là một vị thuốc dân gian có thể chữa các bệnh về da, cầm máu, lợi tiểu. ', 38000, 'cu-sen-cat-lat.jpg', 1, 1, 3, ''),
(166, 'Thịt Phi-Lê Bò Tơ Tây Ninh - 300g', 'Thịt phi-lê bò là phần thịt đỏ cao cấp nhất trong con bò, chỉ có lượng ít trong mỗi con, hình dáng thon dài. Sớ thịt nhỏ, mềm, ít mỡ nên rất được các bà nội trợ ưa thích cho bữa ăn thêm ngon miệng. Đặc biệt, phần tròn nằm trong lõi của miếng thịt rất tuyệt vời khi dùng để chế biến món bít-tết bởi độ ngon, mềm, ngọt của nó', 118000, 'phi-le-bo-to-tay-ninh.jpg', 0, 1, 4, ''),
(167, 'Lõi Vai Bò Úc Hữu Cơ Obe-300gram', 'MÔ TẢ PHƯƠNG THỨC GIAO HÀNG MÔ TẢ SẢN PHẨM Nếu cuối tuần muốn đổi gió hoặc bạn là một người sành ăn thì không nên bỏ qua thịt bò hữu cơ OBE nhé ', 193000, 'Loi-vai-bo-uc-huu-co-obe.jpg', 1, 1, 5, ''),
(168, 'Rau Rocket Arugula Hữu Cơ - Hộp 100g', 'Rau rocket hay còn gọi là cải lông,  là một nguyên liệu tuyệt vời cho món salad trộn. Vị cay cay cùng độ hăng tự nhiên giúp các món ăn từ loại rau này trở nên đặc biệt hơn bao giờ hết.', 57700, 'rau-rocket-arugula-huu-co.jpg', 1, 1, 3, ''),
(169, 'Xà Lách Hỗn Hợp Asian Hữu Cơ Hộp - 150g', 'Xà Lách Hỗn Hợp Italian Hữu Cơ Hộp 150 gram : - Được chứng nhận hữu cơ - Giàu Chất xơ - Giàu vitamin và chất chống oxi hóa Xà Lách Hỗn Hợp Italian Hữu Cơ là sản phẩm được làm từ các loại rau hữu cơ - được canh tác tại nông trại Organicfood Dalat.', 46400, 'xa-lach-hon-hop-italian-huu-co.jpg', 0, 1, 4, ''),
(170, 'Gà Tre Nguyên Con', 'Gà tre nguyên con đã làm sạch', 210000, 'ga-tre-nguyen-con.jpg', 1, 1, 5, ''),
(171, 'Cật Heo Hữu Cơ 300g', 'Cật heo hữu cơ (thận heo) là một cơ quan trong hệ tiết niệu của heo, có hai quả, mang nhiều chức năng. Chúng là một bộ phận quan, duy trì sự ổn định của bazo, cật heo đóng vai trò là bộ lọc máu tự nhiên trong cơ thể heo, và các chất thải theo niệu quản được dẫn đến bang quang để thải ra ngoài.', 96000, 'cat-heo-huu-co.jpg', 1, 1, 4, ''),
(172, 'Củ Dền Hữu Cơ-500g', 'Có rễ phồng thành củ nạc, ngọt, màu đỏ thẫm. Thân đứng có vằn, ít phân nhánh. Lá có phiến hình trứng, màu lục, có mép lượn sóng. Hoa màu lục nhạt, mọc thành bông khá dài.', 57500, 'cu-den-huu-co.jpg', 0, 1, 4, ''),
(173, 'Gừng Già Hữu Cơ - 100g ', 'Sử dụng gừng thường xuyên rất có lợi cho việc phòng, chữa sỏi mật. Sỏi mật hiện nay thường được điều trị bằng phẫu thuật và chưa có một thuốc đặc trị nào có hiệu quả.', 18800, 'gung-huu-co.jpg', 0, 1, 4, ''),
(174, 'Hoa Chuối Hữu Cơ - 1Kg', 'Hoa chuối giàu chất xơ, protein và axit béo không bão hòa, đồng thời cũng chứa nhiều vitamin E và flavonoids. Hoa chuối có thể được ăn sống hoặc nấu chín, thêm vào các món salad, súp và các loại trà.', 65000, 'hoa-chuoi-huu-co.jpg', 1, 1, 4, ''),
(175, 'Nạc Dăm Hữu Cơ 500g', 'Nạc dăm hữu cơ là phần thịt khá mềm vì có phần nạc và mỡ xen kẽ nhau, khi ăn sẽ không cảm thấy thịt bị khô mà độ ngậy cũng ở mức vừa phải. Thịt nạc dăm sạch có chứa nhiều protein bổ sung năng lượng cần thiết cho cơ thể.\r\n\r\nLink nguồn : https://organicfood.vn/thit-trung/nac-dam-huu-co-500g.html', 162000, 'nac-dam-huu-co-ausfarm.jpg', 1, 1, 3, ''),
(176, 'Sườn Cừu Úc 500g', 'Thịt sườn cừu mềm nhờ có lớp mỡ béo, thích hợp để chế biến các món ăn phong cách châu Âu: nướng, áp chảo, hầm... cùng với nhiều loại thảo mộc: hương thảo, húng tây, nhục đậu khấu... để làm giảm bớt mùi thịt cừu.', 425000, 'suon-cuu-uc.jpg', 0, 1, 4, ''),
(177, 'Thăn Nội Bò Phile Hữu Cơ Obe-500gram', 'Nếu cuối tuần muốn đổi gió hoặc bạn là một người sành ăn thì không nên bỏ qua thịt bò hữu cơ OBE nhé', 748000, 'than-noi-bo-uc-huu-co-obe.jpg', 1, 1, 4, ''),
(178, 'Cà Phê Hoà Tan Hữu Cơ Bio NaturGreen', 'Cafe Hữu Cơ NaturGreen với thành phần 100% Organic, thơm ngon đúng chất mà chỉ những ai sành điệu mới cảm nhận hết hương vị trong sản phẩm này. Chỉ cần pha 1 muỗng cafe cùng 150ml nước nóng là bạn đã có 1 ly cafe thơm ngon đúng điệu.', 219000, 'ca-phe-hoa-tan-bio-naturgreen.jpg', 1, 1, 4, ''),
(179, 'Cà Phê Hữu Cơ Nguyên Hạt 200gram L\'amant ', 'Sản phẩm đạt chứng nhận hữu cơ tiêu chuẩn USDA, EU và JAS. Thành phần: 100% cà phê hòa tan hữu cơ (15 túi)', 289000, 'CÀ PHÊ HỮU CƠ NGUYÊN HẠT 200GRAM L\'AMANT.png', 0, 1, 4, ''),
(180, 'Trà Bạc Hà Hữu Cơ Fitô', 'Trà bạc hà hữu cơ Fito là sản phẩm của công ty dược phẩm FITO PHARMA sản xuất từ nguyên liệu trà hữu cơ không sử dụng thuốc bảo vệ thực vật, phân bón hóa học, không chất biến đổi gen và đạt chứng nhận hữu cơ chuẩn Châu Âu', 70000, 'tra-bac-ha-huu-co-fito.jpg', 0, 1, 2, ''),
(188, 'Xương Bay Heo Hữu Cơ 500g', 'Xương bay heo hữu cơ là phần xương ngon, vị ngọt đậm đà, tính hàn, có tác dụng tiêu khát, giải độc, hoạt huyết và nhuận sắc. Đây là phần xương khi nấu chín rất ngọt nước, thích hợp để chế biến các món ninh làm nước dùng, lẩu hoặc nấu canh...đủ dinh dưỡng. Xương bay heo hữu cơ chứa nhiều vitamin và khoáng chất giúp tăng cường hoạt động của da, phát triển cơ bắp, hạn chế nguy cơ mắc bệnh loãng xương và xoa dịu các cơn đau khớp... Thịt Heo Hữu Cơ FAU là thịt heo đầu tiên và duy nhất tại Việt Nam đáp ứng các tiêu chuẩn khắt khe của Hiệp hội hữu cơ Canada, bởi quy trình chăn nuôi khép kín từ thức ăn, chăn nuôi chọn lọc, đến giết mổ và vận chuyển. Thịt Heo Hữu Cơ FAU không sử dụng chất tạo nạc, không chất kháng sinh, không chất bảo quản và không kim loại nặng.', 82500, '1608743964xuong-bay-huu-co-500x500.jpg', 1, 1, 5, ''),
(189, 'Bột Trà Xanh Hữu Cơ Hàn Quốc', 'Là bột trà xanh chất lượng cao được gia công tỉ mỉ từ những lá trà xanh non và nghiền mịn theo phương thức xay ở nhiệt độ thấp. Màu sắc và mùi vị của bột trà vẫn nguyên vẹn, bột trà được đựng trong hộp chuyên dụng nên sử dụng rất tiện lợi. Trà xanh hữu cơ là sản phẩm trà xanh hữu cơ chứa 100% lá trà hữu cơ được trồng tại Hàn Quốc với chất lượng ưu tú, có vị và hương thanh khiết. Sản phẩm đã đạt được tiêu chuẩn EU2092/91 Organic của Liên minh châu Âu và chứng nhận Hữu cơ USDA/NOP của Bộ Nông nghiệp Hoa Kỳ nên có thể hoàn toàn an tâm thưởng thức.', 239000, '1608810027bot-tra-xanh-huu-co-500x500.jpg', 0, 0, 2, ''),
(190, 'Lá Bạc Hà Hữu Cơ- 50g', 'MÔ TẢ PHƯƠNG THỨC GIAO HÀNG MÔ TẢ SẢN PHẨM Bạc hà tây được dùng làm gia vị vì nó có mùi thơm đặc trưng. Ngoài ra bạc hà còn được điều chế làm tinh dầu... Cần để bạc hà tây trong bao kín và bảo quản trong tủ lạnh.\r\n', 30000, '1608822744la-bac-ha-huu-co-500x500.jpg', 1, 0, 5, ''),
(193, 'Húng Quế Hữu Cơ - 50g', 'Húng quế là cây rau xanh, lá nhỏ, cành tím, có hoa màu trắng. Húng quế có các loại húng quế, húng quế ngọt, húng chanh, húng quế hồi.', 13500, '1608810770hung-que-huu-co-500x500.jpg', 1, 0, 5, ''),
(195, 'Lá Hương Thảo Hữu Cơ - 50g', 'Lá hương thảo hẹp, hình dải, dai, có mép gập xuống, không cuống, màu xanh sẫm và nhẵn ở trên, phủ lông rải rác màu trắng ở mặt dưới. Lá hương thảo có vị chát, nóng, mùi thơm nồng, hơi se, có mùi rất thơm.', 45000, '1608822657la-huong-thao-huu-co-500x500.jpg', 1, 0, 2, ''),
(203, 'Hoa Anh Thảo vàng', 'Nhiệt độ sinh trưởng: 15 - 35 độ C.\r\nMùa trồng thích hợp: Mùa Xuân, Mùa Thu, Mùa Đông.', 35000, '1609292928hoa-anh-thao-vang.jpg', 1, 0, 4, ''),
(204, 'Hoa Tử la lan kép Mix', 'Hoa tử la lan là loài cây đẹp nổi bật nhất trong tất cả các loài hoa cảnh trong nhà, cánh hoa mềm mượt như nhung, nhiều màu sắc rực rỡ: tím, đỏ thẫm, đỏ đậm, đỏ tía, hồng, hồng nhạt, trắng . Cây Tử La Lan có dạng thân củ, thấp cây (12-15 cm), lá hình thuôn hoặc oval, hoa hình chuông khá to. Cây rất khoe sắc do có ít lá và nhiều hoa to nở cùng lúc.\r\n\r\nHoa Tử la lan được xem là loài cây trồng một năm, vì sau khi nở hoa khoảng 6-8 tuần, hoa tàn đi, cây sẽ rơi vào trạng thái ngủ, sau một khoảng thời gian nó mới tiếp tục hồi sinh và ra hoa. Để tử la lan có thể sống được nhiều năm, ra hoa hằng năm, cần chú ý thường xuyên chăm sóc cho cây.', 45000, '1609293010hoa-tu-la-lan-kep-mix.jpg', 1, 0, 4, ''),
(205, 'Hoa Súng Thái Lan Mix (Water Lily)', 'Hoa Súng Thái Lan cho hoa vào tất cả các mùa trong năm, hoa nở liên tục và rất lâu tàn, khi bông hoa trước nở bung thì nụ sau sẽ ngoi lên mặt nước và bung nụ nhẹ tiếp tục khoe sắc. Loài hoa này vừa đẹp sắc vừa mang hương thơm nồng nàn làm say lòng người nên rất được yêu thích.\r\n \r\nHoa Súng Thái Mix có nhiều cánh hoa, xếp lợp, nhị nhiều, xếp xoắn, bộ nhụy gồm 5 – 35 lá noãn. Hoa Súng Thái rất đa dạng về màu sắc từ những màu đơn giản nhẹ nhàng như trắng tuyết, trắng hồng, hồng nhạt, vàng kem đến những màu bắt mắt như  vàng nắng, tím biếc, tím than, vàng chanh…\r\n \r\nHoa Súng nói chung và loài Súng Thái nói riêng mang ý nghĩa phong thủy rất tốt. Loài hoa này biểu tượng cho sức sống mãnh liệt, mang may mắn về mọi mặt trong cuộc sống, đem lại sự thuận lợi, sung túc trong làm ăn, sự thịnh vượng cho gia chủ. Mỗi sắc hoa của loài Súng Thái cũng chứa đựng nhiều cung bậc cảm xúc và ý nghĩa tiềm ẩn sâu sắc.\r\n \r\nHoa Súng Thái đẹp, đa dạng về màu sắc, hương thơm dễ chịu nên thường được trồng trong các chum vại, chậu làm cảnh trang trí ban công, sân thượng, sân vườn biệt thự hay trồng trong các ao, hồ nước, bể cá, trồng công viên, vườn hoa, trồng tiểu cảnh nước ở các khu biệt thự, khu nghỉ dưỡng, resort, các điểm du lịch…làm đẹp cho không gian sinh thái. ', 45000, '1609293055hoa-sung-thai-lan-mix-water-lily.jpg', 0, 1, 5, ''),
(207, 'Hoa Phi Yến xanh', 'Hoa Phi Yến có tên khoa học Delphimum ajacis L. Hoa phi yến còn có tên hoa chân chim vì hoa trông giống như chân con chim hoặc phi yến (chim yến đang bay) hay đôi khi \" bị gọi là hoa violet \" vì hoa màu tím và còn có tên La-let hay đông thảo thuộc họ Mao lương (Ranuncolaceae) thực chất cũng có cây cho hoa màu hồng và trắng xong rất ít.\r\n\r\nHoa Phi Yến có cuống dài, thanh mảnh, màu hồng, tím, hoặc trắng, tươi rất lâu. Hoa phi yến là loài hoa được ưa chuộng ở châu Âu vì vẻ đẹp nhẹ nhàng, tươi tắn và thanh thoát. Một số người xem hoa Violet là biểu tượng của “tính khiêm tốn”, với nhiều người khác nó lại mang ý nghĩa “Sự chung thủy”. Nó cũng gắn liền với sự e lệ của người con gái. Thời điểm hoa nở rộ nhiều nhất là vào cuối mùa xuân cho tới cuối mùa hè. Mùi hương của hoa rất quyến rũ ong và bướm.', 45000, '1609293218hat_giong_hoa_phi_yen_14.jpg', 1, 0, 5, ''),
(218, 'Xương Rồng (Cactus)', 'Xương rồng (Cactaceae) có nguồn gốc từ Châu Mỹ vùng đất sa mạc, thân xương rồng thường mọng để giữ nước, thân có gai. Xương rồng có khoảng 1.500 - 1.800 loài.', 35000, '1609296572xuong-rong-cactus.jpg', 1, 0, 4, ''),
(219, 'Hoa Mõm sói vàng', 'Hoa Mõm Sói vàng có tên khoa học là Antirinum majus L. Hoa Mõm Sói nở hoa dạng chùm dài, nở từ dưới lên trên đêu đặn, cắm lọ, cắm cụm, cắm đơn hay cắm với các loại hoa tươi khác, trồng chậu hoặc trồng vườn đều đẹp. Cây Hoa Mõm Sói vàng chịu rét giỏi, ưa ánh sáng nhiều nên thích hợp trồng vào mùa thu, mùa đông và mùa xuân', 35000, '1609296643hoa-mom-soi-vang.jpg', 1, 0, 4, ''),
(210, 'Hoa Mao Địa Hoàng Mix', 'Hoa mao địa hoàng có xuất xứ từ vùng khí hậu ôn đới. Mao địa hoàng hấp dẫn người chơi hoa không chỉ bởi hình dáng đẹp mắt mà còn bởi màu sắc lung linh. Màu sắc của hoa Mao Địa Hoàng rất đa dạng nhiều sắc độ như tím thẫm, tím nhạt, rồi cam đen, hồng đỏ, kem và trắng. Bên trong tràng hoa hình chóp ngược có các đốm nhỏ làm tăng thêm vẻ đẹp của hoa.\r\n\r\nMao địa hoàng cây thân cỏ, sống lâu năm. Thân có lông trắng và mềm. Mỗi cây sẽ có 5 – 7 củ với cuống dài và vỏ màu đỏ nhạt. Cây cao trung bình từ 120 – 140cm, lá có hình bầu dục dài, mọc tại các đốt thân gần dưới gốc cây, có răng cưa. Chính vì sự xinh xắn của cây và sự sặc sỡ của hoa mà chúng rất hay được trồng làm cảnh ở các nước phương Tây, tại các vị trí ven cửa ra vào.', 35000, '1609293470hoa-mao-dia-hoang-mix.jpg', 0, 0, 4, ''),
(217, 'Hoa Salem Mix', 'Hạt giống hoa Salem Mix đang được bán tại Dungcunongnghiep.vn. Hoa Salem còn được gọi là Hoa Trường Anh Hạnh Phúc có dạng thân dài, khả năng chống chịu bệnh tốt, có sức sống mãnh liệt, khả năng chịu hạn tốt. Màu sắc hoa tươi sáng, bền lâu, đa dạng về màu sắc, phổ biến nhất là Salem màu trắng, tím, vàng, hồng. Cánh hoa Salem sờ vào có cảm giác khô, hoa thường nở rất lâu tàn, khi tàn hoa cũng không rụng mà vẫn còn nguyên chỉ có cành lá bị hỏng. Cánh hoa salem mỏng manh và có độ cứng nhất định, tựa như một tờ giấy. Khi đã khô héo nó gần như vẫn giữ được một vẻ đẹp rất riêng, không bị mất màu, hoa nhỏ ra theo chùm, có thể cắt cành làm hoa khô để được 2-3 năm. Loài hoa tượng trưng cho tình yêu chung thủy, salem luôn là loài hoa được nhiều tín đồ yêu hoa săn đón.', 35000, '1609296331hoa-salem-mix.jpg', 1, 0, 4, ''),
(214, 'Hoa Súng Thái Lan Mini Mix', 'Hoa Súng Thái Lan Mini cho hoa vào tất cả các mùa trong năm, hoa nở liên tục và rất lâu tàn, khi bông hoa trước nở bung thì nụ sau sẽ ngoi lên mặt nước và bung nụ nhẹ tiếp tục khoe sắc. Loài hoa này vừa đẹp sắc vừa mang hương thơm nồng nàn làm say lòng người nên rất được yêu thích.\r\n \r\nHoa Súng Thái Mini có nhiều cánh hoa, xếp lợp, nhị nhiều, xếp xoắn, bộ nhụy gồm 5 – 35 lá noãn. Hoa Súng Thái rất đa dạng về màu sắc từ những màu đơn giản nhẹ nhàng như trắng tuyết, trắng hồng, hồng nhạt, vàng kem đến những màu bắt mắt như  vàng nắng, tím biếc, tím than, vàng chanh…\r\n \r\nHoa Súng nói chung và loài Súng Thái nói riêng mang ý nghĩa phong thủy rất tốt. Loài hoa này biểu tượng cho sức sống mãnh liệt, mang may mắn về mọi mặt trong cuộc sống, đem lại sự thuận lợi, sung túc trong làm ăn, sự thịnh vượng cho gia chủ. Mỗi sắc hoa của loài Súng Thái cũng chứa đựng nhiều cung bậc cảm xúc và ý nghĩa tiềm ẩn sâu sắc.\r\n \r\nHoa Súng Thái đẹp, đa dạng về màu sắc, hương thơm dễ chịu nên thường được trồng trong các chum vại, chậu làm cảnh trang trí ban công, sân thượng, sân vườn biệt thự hay trồng trong các ao, hồ nước, bể cá, trồng công viên, vườn hoa, trồng tiểu cảnh nước ở các khu biệt thự, khu nghỉ dưỡng, resort, các điểm du lịch…làm đẹp cho không gian sinh thái. ', 50000, '1609295867hoa-sung-thai-lan-mini-mix.jpg', 1, 1, 5, ''),
(222, '    Hoa Pancy Mix', 'Hoa Pansy ( viola) không những là loài hoa mang một vẻ đẹp dịu dàng, ưu nhã mà nó còn được xem là xem là loài hoa đai diện cho sự khiêm tốn, sự mong đợi, lòng thủy chung, son sắc. Hoa Pansy sẽ là một món quà tuyệt vời, cực kì lãng mạn khi bạn muốn bày tỏ sự yêu thường với ai đó.\r\n\r\nHoa Pansy ( viola) có nguồn gốc từ châu âu, hoa thân thảo sống một năm, chúng thường được trồng và đầu mùa xuân nên được coi là loài hoa tượng trưng cho mùa đông và mùa xuân ở một số nước, cây cao 15-25cm, kích thước hoa 3-4cm. Hoa thường có 5 cánh, hai cánh trên cùng xếp chồng lên nhau hướng lên trên, 2 cánh tiếp theo mọc đối xứng hướng sang 2 bên và 1 cánh hướng xuống dưới. Cây ưa thích khí hậu mát, ẩm, ưa sáng, có thể chịu nóng.\r\n\r\nHoa Pancy ( viola) có thể trồng thành luống tạo tiểu cảnh, thảm hoa hoặc trồng trong chậu, làm cây cảnh nội thất đều rất phù hợp. Hoa Pancy ra rất nhiều hoa và liên tục trong thời gian dài. Cánh hoa Pancy có hình dạng như những con bướm sặc sỡ đậu trên cành, cánh hoa mỏng, mềm mượt như nhung, màu sắc tươi sáng đa dạng, làm say đám biết bao con tim.', 35000, '1609296922hoa-pancy-mix.jpg', 1, 1, 5, ''),
(221, 'Hoa Anh thảo mix 5 màu', 'Hoa anh thảo - Số lượng: 15 - 20 hạt, tên khoa học là Cylamen thường được mệnh danh là hoa vương giả, quý phái. Đây là một giống hoa lâu năm dang thân thảo, cây mọng nước và sống ở môi trường thoáng khí, hoa đẹp cả hoa lẫn lá, thanh lịch sang trọng, là loại hoa cao cấp sử dụng cho mục địch chưng chậu. Hoa anh thảo nở vào khoảng tháng 11 năm trước đến tháng 2 năm sau, hoa và lá có dạng hình trái tim màu đỏ, trắng, hồng phấn, hồng đậm và hồng tím...\r\n\r\nHoa Anh Thảo chỉ nở khi màn đêm buông xuống, nó không bao giờ hé mở các búp hoa của mình cho đến khi trăng lên. Nó hướng về phía mặt trăng chứ chưa bao giờ dám hướng về phía mặt trời. Khi đêm xuống và không gian hoàn toàn yên tĩnh, các cánh hoa phát ra một thứ ánh sáng dìu dịu. Vì thế, hoa Anh Thảo tượng trưng cho một tình yêu thầm lặng, một tình yêu dấu kín. Mặt khác, còn thể hiện hoa Anh Thảo đại diện cho sự nhút nhát, thiếu tự tin, không dám đối diện với sự thật.', 35000, '1609296825hoa-anh-thao-mix-5-mau.jpg', 1, 0, 4, ''),
(223, 'Hoa Chuông Mix nhiều màu', 'Hoa chuông mix là loài hoa tượng trưng cho lòng biết ơn và tính kiên định. Loài hoa này rất thích hợp với điều kiện khí hậu nắng, trồng trong đất pha cát, và có thể trồng trong điều kiện thời tiết mát lạnh. Cây hoa chuông mix có chiều dài chỉ từ 12 – 15 cm, lá của nó hình thuôn hoặc là hình oval. Hoa nở to, đẹp, hình quả chuông. Sau khi gieo trồng thì chỉ khoảng 5 tháng là bạn đã có được hoa, mỗi đợt hoa chuông nở sẽ kéo dài trong khoảng 20 ngày.', 35000, '1609297004hoa-chuong-mix-nhieu-mau.jpg', 0, 0, 2, ''),
(224, 'Hoa Cẩm chướng đơn Mix', 'Cây cẩm chướng còn gọi là cây thạch trúc, có tên khoa học: Diranthus chinenseis. Cây cẩm chướng là cây thân thảo, lá mọc đối xứng, hoa mọc trên đỉnh. Hoa cẩm chướng có nhiều màu, có hoa đơn và hoa kép, hương thơm ngát. Cây hoa cẩm chướng có màu sắc sặc sỡ, thích hợp trồng làm cây sân vườn hoặc cây nội thất trang trí, trồng cắt cành cắm lọ…', 35000, '1609297338hoa-cam-chuong-don-mix.jpg', 1, 0, 4, ''),
(226, 'Hoa Cúc Chi mix nhiều màu', 'Cúc chi mix nhiều màu mang một vẻ đẹp thuần khiết, bình dị nhưng đầy sức quyến rũ. Những chậu cúc chi mix đa sắc màu có thể đặt ở ban công, trong nhà đều rất thích hợp', 35000, '1609297612hoa-cuc-chi-mix-nhieu-mau.jpg', 1, 0, 4, '');
INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_price`, `product_photo`, `product_state`, `product_ispopular`, `product_quality`, `product_more_photo`) VALUES
(227, 'Cúc đại đóa nhiều màu', 'Cúc đại đóa là cây sống hàng năm, mọc thành bụi, phân nhiều cành nhánh, hoa to mọc trên đỉnh. Hoa cúc đại đóa có nhiều màu: vàng, trắng, tím, lai thứ sinh… Cây hoa cúc đại đóa mang ý nghĩa “lạc quan trên nghịch cảnh”. Cây thường trồng chậu trang trí nội thất, sân nhà hoặc trồng vườn hoa trang trí sân vườn…', 50000, '1609297666cuc-dai-doa-nhieu-mau.jpg', 1, 1, 5, ''),
(228, 'Cúc đài loan mix', 'Phải thường xuyên làm cỏ xới xáo và vun luống khi cây còn nhỏ. Khi cây lớn cần nhổ cỏ thường xuyên.\r\nChú ý bấm ngọn tỉa cành để cây mọc nhánh, cho nhiều hoa.\r\nGiữ hoa cúc khỏe mạnh và xinh đẹp phải thường xuyên loại bỏ tất cả các phần thân chết và cây bệnh trong suốt quá trình trồng\r\nTốt nhất là tưới hoa cúc vào buổi sáng sớm hoặc chiều muộn\r\nHoa cúc cần đất chất lượng và khả năng thoát nước tốt. Chúng có hệ thống rễ cạn, vì vậy đất úng ngập có thể gây bệnh. Tuy nhiên, hoa cúc vẫn có thể phát triển mạnh trong đất nghèo, với điều kiện bạn thêm chất dinh dưỡng và chất hữu cơ theo định kỳ.\r\nĐừng trồng hoa cúc nơi cạnh tranh đối với ánh sáng và nước với cây cối và thực vật khác. Nếu không có đầy đủ ánh sáng mặt trời, hoa cúc sẽ cao, quanh co và yếu.', 40000, '1609297736cuc-dai-loan-mix.jpg', 1, 0, 4, ''),
(231, 'Hoa Cúc Đồng Tiền Mix nhiều màu', 'Hàng Việt: 10 hạt - Hàng Nga: 0,05 g\r\nNảy mầm hàng Việt: 80% - Hàng Nga: 90%\r\nHoa cánh kép, ra hoa liên tục, đường kính bông lớn 6-8cm.\r\nThích hợp trồng chậu, cắt cành.', 30000, '1609298098hoa-cuc-dong-tien-mix-nhieu-mau.jpg', 0, 0, 4, ''),
(232, 'Hoa Cúc Anh Mix', 'Phải thường xuyên làm cỏ xới xáo và vun luống khi cây còn nhỏ. Khi cây lớn cần nhổ cỏ thường xuyên.\r\nChú ý bấm ngọn tỉa cành để cây mọc nhánh, cho nhiều hoa.\r\nGiữ hoa cúc khỏe mạnh và xinh đẹp phải thường xuyên loại bỏ tất cả các phần thân chết và cây bệnh trong suốt quá trình trồng\r\nTốt nhất là tưới hoa cúc vào buổi sáng sớm hoặc chiều muộn\r\nHoa cúc cần đất chất lượng và khả năng thoát nước tốt. Chúng có hệ thống rễ cạn, vì vậy đất úng ngập có thể gây bệnh. Tuy nhiên, hoa cúc vẫn có thể phát triển mạnh trong đất nghèo, với điều kiện bạn thêm chất dinh dưỡng và chất hữu cơ theo định kỳ.\r\nĐừng trồng hoa cúc nơi cạnh tranh đối với ánh sáng và nước với cây cối và thực vật khác. Nếu không có đầy đủ ánh sáng mặt trời, hoa cúc sẽ cao, quanh co và yếu.', 35000, '1609298146hoa-cuc-anh-mix.jpg', 1, 0, 3, ''),
(230, 'Hoa Móng tay kép mix', 'Hạt giống hoa Móng tay kép mix đang được bán tại Dungcunongnghiep.vn. Hoa móng tay hay còn gọi là hoa bóng nước với đặc điểm dễ trồng, dễ chăm sóc phổ biến ở Việt Nam hoa có nhiều màu sắc hoa rực rỡ. Cây hoa móng tay có dạng cây cỏ hàng năm có thể cao 30-40 cm, lá mọc so le, mép lá răng cưa rỏ, hoa mọc ở nách lá. Trong toàn thân cây hoa móng tay chứa chất kháng sinh như các axit như axit gentisic, axit ferulic, axit cumaric, axit sinapic, axit cafeic… Lá cây bóng nước chứa axit xinnamic, hạt chứa 17,9% chất béo chủ yếu là axit parinaric, balsaminasterol… Vì vậy trong dân gian cây hoa móng tay còn được dùng để chữa một số bệnh.', 40000, '1609297879hoa-mong-tay-kep-mix.jpg', 1, 0, 4, ''),
(233, 'Hoa Hướng Dương lùn', 'Mặc dù bạn có thể bắt đầu gieo hạt trong nhà, nhưng hướng dương sẽ sinh trưởng tốt nhất khi được gieo trực tiếp xuống đất. Rễ hướng dương rất nhạy cảm với việc di chuyển, do đó cây có thể chết khi đánh ra trồng chỗ khác. Cây phát triển tốt nhất ở nhiệt độ 18–33ºC, nhưng bạn có thể trồng khi nhiệt độ ngoài trời thấp hơn một chút, khi đã hết đợt sương giá cuối cùng.\r\n\r\nThông thường hướng dương phát triển hết mức và cho hạt sau 80-120 ngày, tuy từng giống cây. Nếu mùa gieo trồng trong vùng ngắn hơn, bạn hãy trồng hướng dương trước đợt sương giá cuối cùng 2 tuần; hầu hết các hạt đều có thể sống sót.', 30000, '1609298809hoa-huong-duong-lun.jpg', 0, 0, 5, ''),
(234, 'Hoa Cẩm Chướng kép Mix', 'Cây cẩm chướng còn gọi là cây thạch trúc, có tên khoa học: Diranthus chinenseis. Cây cẩm chướng là cây thân thảo, lá mọc đối xứng, hoa mọc trên đỉnh. Hoa cẩm chướng có nhiều màu, có hoa đơn và hoa kép, hương thơm ngát. Cây hoa cẩm chướng có màu sắc sặc sỡ, thích hợp trồng làm cây sân vườn hoặc cây nội thất trang trí, trồng cắt cành cắm lọ…', 35000, '1609299903hoa-cam-chuong-kep-mix.jpg', 1, 0, 4, ''),
(235, 'Cỏ Đuôi Thỏ', 'Cỏ đuôi thỏ có tên tiếng Anh là: Bunny Tails, đây là 1 loại cây chịu hạn tốt, được trồng làm cảnh, khi nở trở thành những chùm bông như đuôi thỏ rất dễ thương. Cây cỏ này cho ra hoa quanh năm và bền. Hoa màu kem nhạt, trồng cảnh, khi nở hoa thành những chùm bông trắng mềm mại. Bạn có thể cắt hoa để làm hoa khô trang trí trong vài tháng. Cỏ đuôi thỏ có chiều cao khoảng 30 - 50 cm, lá xanh mượt. Bạn có thể cắt hoa cỏ đuôi thỏ để phơi khô và trưng bày trong khoảng vài tháng.', 35000, '1609300018co-duoi-tho.png', 1, 0, 5, ''),
(236, 'Hoa Tử Đằng Nhật Bản', 'Hạt giống hoa Tử Đằng đang được bán tại Dungcunongnghiep.vn. Hoa tử đằng được mệnh danh là loại “hoa tình yêu bất diệt” của đất nước Nhật Bản vì những dòng suối hoa tím rưc rỡ nở vào giữa tháng 4 đầu tháng 5 mang lại những cảm xúc bất tận cho người chiêm ngưỡng. Cây thuộc nhóm lâu năm, có thể lên đến 100 năm, có thể cao đến 20m, rộng đến 4000m2. Hoa Tử Đằng dễ gieo trồng, phát triển mạnh, chịu nắng hạn tốt nhưng lâu ra hoa. Hoa tử đằng có mùi thơm ngọt mọc thành chùm trong cành rủ xuống dài từ 10cm – 80cm có màu tím.', 45000, '1609300963hat_giong_hoa_tu_dang.jpg', 1, 0, 4, ''),
(238, 'Cây giống thược dược', 'Thược dược là biểu tượng của sự chung thủy dù đi qua nắng mưa bão tố, dù trải qua muôn ngàn khó khăn hay phong ba bão tố dù bị vùi lấp bao nhiêu đi nữa thì tình yêu anh dành cho em cũng như nhưng bông hoa thược dược kia luôn mong chờ để dâm chồi nảy lộc.', 30000, '1609315006hoa-thuc-duoc2(1).jpg', 1, 0, 4, ''),
(239, 'Cẩm tú cầu', 'Cây hoa cẩm tú cầu có hoa hình cầu to tròn, màu sắc đẹp giúp sân vườn thêm phần sang trọng, quyến rũ và nổi bật. Cây hoa cẩm tú cầu có thể làm cây nội thất hay cây ngoại thất đều được, hoặc trồng phối với các loại hoa khác. Trong các bản thiết kế sân vườn thì chắc chắn hoa cẩm tú cầu là một lựa chọn hoàn hảo.', 60000, '16093150530135291302710.jpg', 0, 0, 4, ''),
(240, 'Hoa dạ yến thảo kép', 'Hoa dạ yến thảo mang ý nghĩa như một lời nhắc nhở “Bạn luôn trong trái tim tôi”, Còn trong tình yêu thì dạ yến thảo thể hiện tình yêu mộng mơ, hư ảo. Những người yêu thích hoa dạ yến thảo thường là những người có rất giàu tình cảm, ấm áp. Họ thường là người bình tĩnh điềm đạm trong cuộc sống.', 50000, '1609315196hoa-da-yen-thao-kep-tim-f15.jpg', 1, 0, 4, ''),
(241, 'Cây may mắn', 'Cây may mắn giúp bạn loại bỏ rào cản, mang lại sự suôn sẻ và cường thịnh, mang thành công đến với bạn nhanh hơn. Đối với cây may mắn các loại khác nhau thì thể hiện được sự mềm mại và ý nghĩa trong nó khác nhau. Và cũng tùy theo lứa tuổi cũng như nhu cầu mà các mẫu cây may mắn cũng khác nhau.', 80000, '1609315258dscn93450.jpg', 0, 1, 5, ''),
(242, 'Hoa mẫu đơn', 'Theo phong thủy, trồng cây hoa mẫu đơn với màu sắc rực rỡ và hương thơm nồng nàn quyến rũ đem đến tài lộc, may mắn, phồn vinh thịnh vượng cho cả gia đình. Trong thế giới vật phẩm phong thủy, mẫu đơn được gọi là vật phẩm tình duyên, phú quý.', 80000, '1609315306hoa-mau-don-tq-1a0.jpg', 0, 1, 5, ''),
(243, 'Hoa trà my', 'Hoa trà my có rất nhiều ý nghĩa, mỗi màu hoa là một ý nghĩa khác nhau. Trà my hồng thể hiện lòng ngưỡng mộ, trà my đỏ là biểu trưng cho sự hơn người mà không kiểu cách, trà my vàng bày tỏ sự khát khao, trà my trắng biểu trưng cho vẻ đẹp hoàn mỹ, trọn vẹn, trà my cánh kép thể hiện lòng biết ơn và sự may mắn.', 85000, '1609315341Formal-Double-1.jpg', 0, 0, 4, ''),
(244, 'Cây sen đá', 'Ý nghĩa của sen đá ngoài thể hiện cho một tình yêu vĩnh cửu, thì sức sống mãnh liệt của loại cây mọng nước này còn tượng trưng cho sự kiên cường, không dễ dàng khuất phục mà chùn bước trước gian nan thử thách, luôn nỗ lực vươn lên trong mọi hoàn cảnh. Con đường phía trước không bao giờ trải đầy hoa hồng mà sẽ nhiều chông gai thử thách, đừng bao giờ sợ hãi mà hãy dũng cảm tiến về phía trước và mạnh mẽ đối diện như chính hoa đá đối diện với mọi điều kiện sống của nó. ', 70000, '1609315437cach-cham-soc-sen-da_cayxinh-1200x800.jpg', 0, 0, 4, ''),
(245, 'Cây hoa anh đào', 'Mỗi dịp tết đến xuân về người ta thường mua anh đào Nhật về cắm lọ lục bình trưng ở phòng khách, bàn làm việc… đem đến vẻ đẹp mới lạ, sang trọng và quý phái. Hoa anh đào Nhật còn được trồng chậu trưng ở đại sảnh công ty, phòng khách, phòng họp, khu thương mại, đô thị… mang đến sắc xuân rực rỡ, yêu kiều, không khí tươi vui, phấn khởi đón chào một năm mới nhiều tài lộc.', 150000, '1609315482Trong-hoa-anh-dao.jpg', 0, 0, 4, ''),
(246, 'Hạt giống hoa thanh trúc', 'Hoa thanh trúc nở quanh năm, thường được trồng vào vụ đông xuân. Hoa thanh trúc là loại hoa dễ trồng , sức sống cao cho màu sắc rực rỡ. Hoa thường được trồng ở chậu, ban công, vườn hoa để làm cảnh.', 25000, '1609315698hat giong hoa thanh truc 16.jpg', 1, 0, 5, ''),
(247, 'Hạt giống hoa mao địa hoàng', 'Tuy xinh đẹp nhưng lại mang biểu tượng của sự giả dối vì vào lúc ngôn ngữ của loài hoa được khai sinh, người ta cho rằng giữa các bông hoa xinh đẹp này có một chất độc gây ra sự đố kỵ. Ngày nay, chúng ta biết được rằng chất độc đó được chiết xuất từ Mao địa hoàng để chế tạo thành một loại thuốc kích thích tim mạch và làm thuốc lợi tiểu.', 25000, '16093162508-loai-hoa-dep-tuyet-trong-vao-mua-xuan-2891-130.jpg', 1, 0, 4, ''),
(248, 'Hạt giống bắp cải kiểng', 'Được các cửa hàng hoa và cây cảnh gọi với cái những cái tên mỹ miều như \"Hoa hồng sa mạc\" nhưng thực tế cây vốn thuộc giống bắp cải xoăn hay được dùng làm cảnh do không cuốn lá như bình thường. Những cây bắp cải kiểng được du nhập từ nước ngoài vào Việt Nam trong một năm trở lại đây và nhanh chóng chiếm được cảm tình của những người yêu cây nhờ sự độc đáo, mới lạ mà dễ chăm, dễ trồng.', 25000, '1609316324bap-cai-canh-650.jpg', 0, 0, 5, ''),
(249, 'Hạt giống hoa cúc tây', 'Hoa cúc magic, còn được gọi là hoa Sao, có tên gọi bắt nguồn từ chữ Hy Lạp “Aster”, có nghĩa là ngôi sao. Người ta nói nó tượng trưng cho sự chín chắn ví nó nở hoa vào đầu thu khi mà đa số các loài hoa khác đã tàn.', 25000, '16093163821510547230-cuc-tay-xu0.jpg', 0, 0, 5, ''),
(250, 'Hạt giống hoa bảo thạch ba tư', 'Bảo thạch Ba Tư là loài hoa trong màn sương được nhiều người mê mẩn với vẻ đẹp mong manh, sắc hoa đẹp đến nao lòng. Loài hoa này có nhiều màu sắc khác nhau, nhưng ưa chuộng nhiều nhất vẫn là màu xanh, ngoài ra còn có những màu khác như hồng, tím, trắng, cam,...', 25000, '1609316442Bao-thach-5.jpg', 0, 0, 4, ''),
(251, 'Hạt giống cỏ may mắn', 'Những chậu cỏ may mắn được đặt trên bàn làm việc hay bàn học của bạn, những lá cỏ xanh tươi, tô điểm thêm những viên sỏi trắng tinh, quá tuyệt vời, dường như mọi mệt mỏi sẽ tan biến khi nhìn vào nó.', 25000, '160931648311053045_1108310909197234_7464055966008977709_n0.jpg', 1, 0, 5, ''),
(252, 'Hạt giống cỏ bồ câu', 'Thêm một loại cỏ nữa bạn có thể trồng trong nhà để làm cảnh, đó là Hoa cỏ bồ câu. Màu hoa rất đẹp, hoa lớn hình chim bồ câu bay. Bạn hoàn toàn có thể gieo trồng và chăm sóc cỏ bồ câu ngay tại nhà dưới đây.', 25000, '1609316555Hạt-giống-cỏ-bồ-câu-Tài-liệu-HD-cách-gieo-trồng-2.jpg', 0, 0, 4, ''),
(253, 'Hoa dạ thảo', 'Mô tả chủng loại: Hạt giống hoa dạ thảo có khả năng phát triển tốt,cho hoa liên tục  cây ra liên tục quanh năm Thích hợp trồng chậu, luống..', 500000, '1609316600hoadathao0.png', 1, 0, 4, ''),
(254, 'Hạt giống hoa sen nước', 'Hoa sen nước mix còn có tên khoa học là Nelumbo nucifera mix. Hoa sen mix với nhiều màu khác nhau cho bạn lựa chọn. Sau đây chúng tôi sẽ giới thiệu tới các bạn cách gieo trồng và chăm sóc hoa sen nước mix.', 50000, '1609316646hoa-sen-mix0.jpg', 0, 0, 4, ''),
(255, 'Cây hoa mộc lan', 'Cây hoa mộc lan nổi tiếng thế giới với vẻ đẹp thanh khiết và lãng mạn, sang trọng cùng hương thơm nồng nàn quyến rũ mà nó tỏa ra. Cây hoa mộc lan thuộc Bộ Mộc Lan ( Magnoliales). Các cánh hoa của chúng được xếp thành vòng, có nhụy và nhị hoa xếp theo hình xoắn ốc trên đế hoa hình nón.', 25000, '160931669327.jpg', 1, 0, 4, ''),
(256, 'Củ giống hoa ly lùn', 'Hoa ly hay còn được gọi là hoa lily, đây là loài hoa có nguồn gốc ôn đới nhưng nay đã rất phổ biến tại xứ sở nhiệt đới như Việt Nam. Hoa ly có nhiều màu sắc rực rỡ khác nhau, có 6 cánh và mùi hương nồng nàn lan tỏa.', 15000, '1609316800muon-co-hoa-ly-lun-choi-tet-hoc-ngay-meo-trong-va-cham-soc-cuc-don-gian-duoi-day-14476835616234722232-1514990457-656-width640height4800.jpg', 0, 1, 4, ''),
(257, 'Củ giống hoa dạ lan hương', 'Tên gọi dạ lan hương dựa trên đặc tính của loài hoa này, nở và tỏa hương thơm ngát vào ban đêm,cứ như vậy dạ lan hương nhẹ nhàng đi vào lòng người và trở thành một loài hoa cảnh được yêu thích. Cách trồng dạ lan hương không khó, chỉ cần lưu ý đến kỹ thuật trồng hoa, sau khoảng thời gian từ 10 đến 12 tuần, gia chủ đã có một cây cảnh đẹp.', 70000, '16093169102e2320.jpg', 0, 1, 4, ''),
(258, 'Hạt giống hoa hoàng anh mix', '– Hoàng anh là loại cây ưa mát, do đó nên chọn những ngày thời tiết mát mẻ để gieo hạt.\r\n– Sau khi chuẩn bị đất trồng thì rắc nhẹ hạt lên bề mặt khay ươm, khoảng cách các hạt là từ 8-10cm, sau đó phủ lên một lớp đất mỏng.\r\n– Sử dụng bình tưới phun sương để làm ẩm đất. Chú ý tưới nhẹ nhàng, lưu lượng vừa phải, tránh không để hạt nổi lên mặt đất vì tỷ lệ nảy mầm sẽ thấp.', 25000, '1609316964hoa-hoang-anh(1).jpg', 1, 0, 4, ''),
(259, 'Hạt giống hoa Osaka', 'Hoa Osaka hay còn gọi là hoa Bọ Cạp vàng hay hoa Nữ hoàng. Hoa mỗi năm chỉ nở một lần vào giữa mùa khô ở miền Nam sau khi cây trút sạch lá. Hoa Osaka nếu nở đồng loạt, đặc biệt là trên những con đường trồng toàn loại hoa này thì thực sự đây là một nét đẹp cực kì hấp dẫn.', 25000, '16093170061-10.jpg', 1, 0, 3, ''),
(260, 'Hạt giống Hoa Lupin 100gr', 'Hoa đuôi chim (hay còn gọi là hoa đậu Lupin - Tên tiếng Anh là Lupini Mix) có thể trồng được quanh năm, dễ trồng và chăm sóc. Hoa thành từng chùm dài 20-30cm, nhiều màu sắc rực rỡ từ vàng, hồng, đỏ, trắng tới xanh, tím... Hoa có hương thơm\r\n\r\nHoa Lupin giống như những tòa bảo tháp vươn lên kiêu kỳ trong nắng. Một vẻ đẹp kiêu kỳ. Tuy nhiên, loài hoa này chỉ thích hợp để ngắm nhìn từ xa, bởi lá và hạt của hoa lupin đều có độc.', 1200000, '1609317099hatgionghoadaulupin_4(1).png', 1, 0, 4, ''),
(261, 'Hạt giống hoa oải hương', 'Hoa oải hương là một loại hoa có hương thơm dịu nhẹ rất được giới trẻ yêu thích. Nhiều người vẫn nghĩ loài hoa này rất khó trồng và chăm sóc nhưng ở trong điều kiện thích hợp hoa oải hương có thể phát triển nhanh chóng. Bạn có thể dễ dàng tự trồng cho mình một chậu hoa oải hương tuyệt đẹp từ hạt để trang trí cho ngôi nhà của mình.', 25000, '1609317138nhan-giong-hoa-lavender-7-900x5630.jpg', 1, 0, 4, ''),
(262, 'Hạt giống hoa mõm sói', 'Hoa mõm sói ( Antirrhinum hoặc snapdragon ) hay còn có tên gọi là hoa mõm chó, hoa Kim Ngư Thảo , mép dê, mõm rồng, mõm sư tử vì bông hoa trông như mõm một con vật bốn phân thường được tìm thấy tại những ngọn núi đá ở châu Âu, Mỹ và Bắc Phi, hoa của chúng khá đẹp', 25000, '160931717520141215204114hat-giong-hoa-mom-soi.jpg', 1, 0, 4, ''),
(264, 'Cây Cau Tiểu Trâm', 'Cây Cau Tiểu Trâm (Tên khoa học: Chamaedorea elegans) có chức năng thanh lọc không khí cực tốt. Cây được trồng trong nhà, trang trí không gian văn phòng, nhà ở…', 350000, '1610037202cay-cau-tieu-tram-0-600x600.jpg', 1, 0, 4, '1610037202cay-cau-tieu-tram-0-600x600.jpg#1610037202cay-cau-tieu-tram-1108196-600x600.jpg#1610037202cay-cau-tieu-tram-1108195-600x600.jpg#1610037202cay-cau-tieu-tram-1108193-600x600.jpg'),
(265, 'Cây Cần Thăng', 'Cây Cần Thăng (tên khoa học: Feoniella lucida) là viết tắt từ hai từ “Cần Cù” và “Thăng Tiến”. Sở hữu cây sẽ giúp bạn thăng quan, tiến chức trong sự nghiệp…', 250000, '1610044203cay-can-thang-03-768x768.jpg', 1, 1, 4, '1610044203cay-can-thang-03-768x768.jpg#1610044203cay-can-thang-02-768x768.jpg#1610044203cay-can-thang-01-768x768.jpg'),
(266, 'Cây Hạnh Phúc', 'Cây Hạnh Phúc (tên khoa học: Radermachera sinica) thuộc chi Heteropanax được phát hiện đầu tiên ở các khu rừng mưa nhiệt đới ở Đông Nam Á và Trung Quốc. Không chỉ giúp làm đẹp không gian sống, cây còn mang nhiều ý nghĩa phong thủy tốt lành…', 550000, '1610044407cay-hanh-phuc-1108199-600x600.jpg', 0, 1, 5, '1610044407cay-hanh-phuc-1108199-600x600.jpg#1610044407cay-hanh-phuc-11081914-600x600.jpg#1610044407cay-hanh-phuc-1108196-600x600.jpg#1610044407cay-hanh-phuc-1108195-600x600.jpg'),
(267, 'Cây Hồng Môn', 'Cây Hồng Môn (tên khoa học: Anthurium Taiflower) có hoa tựa hình trái tim màu đỏ rực rõ, lá cây có màu xanh mướt. Cây đặc biệt hợp với người mệnh Hỏa mang ý nghĩa may mắn tài lộc…', 220000, '1610044644Cay-hong-mon-1108196-600x600.jpg', 1, 0, 3, '1610044644Cay-hong-mon-1108196-600x600.jpg#1610044644Cay-hong-mon-1108191-600x600.jpg#1610044644Cay-hong-mon-1108197-600x600.jpg#1610044644cach-cham-soc-cay-hong-mon-768x768.jpg'),
(268, 'Cây Kim Ngân', 'Cây Kim Ngân (tên khoa học: Pachira Aquatica) còn được gọi là Money Tree, đối với người Tây phương có nghĩa là cây tiền. Cây thường được dùng để làm cây cảnh văn phòng, trang trí nhà ở với ý nghĩa mang lại nhiều tiền bạc, sự may mắn và thịnh vượng cho gia chủ…', 550000, '1610044832cay-kim-ngan-11081925-600x600.jpg', 1, 0, 4, '1610044832cay-kim-ngan-11081925-600x600.jpg#1610044832cay-kim-ngan-11081910-600x600.jpg#1610044832cay-kim-ngan-1108195-600x600.jpg#1610044832cay-kim-ngan-1108194-600x600.jpg'),
(269, 'Cây Cẩm Nhung', 'Cây Cẩm Nhung (tên khoa học: Fittonia) là loại cây cảnh để bàn làm việc có vẻ đẹp hết sức độc đáo. Không những thế, chúng còn mang một giá trị phong thủy hết sức tốt lành với may mắn, tài lộc, thịnh vượng đến cho gia chủ…', 170000, '1610045034cay-cam-nhung1.jpg', 0, 1, 5, '1610045034cay-cam-nhung1.jpg'),
(270, 'Cây Kim Tiền', 'Cây Kim Tiền (tên khoa học: Zamioculcas zamiifolia) là loại cây trồng trong nhà có vẻ đẹp sang trọng, đầy sức sống, mang đến nhiều giá trị phong thủy tốt lành đến với gia chủ…', 350000, '1610045242cay-kim-tien-005-600x600.jpg', 1, 0, 4, '1610045242cay-kim-tien-005-600x600.jpg#1610045242cay-kim-tien-1208191-600x600.jpg#1610045242cay-kim-tien-008-600x600.jpg#1610045242cay-kim-tien-007-600x600.jpg'),
(271, 'Cây Lan Ý', 'Cây Lan Ý (tên khoa học: Spathiphyllum wallisii (Peace Lily) ), đứng đầu danh sách các loại cây lọc không khí tốt nhất hiện nay, không chỉ hấp thụ một số chất gây ung thư mà còn hấp thụ năng lượng bức xạ nhân tạo phát ra từ tivi, điện thoại, máy tính, đồng hồ điện tử…', 220000, '1610081085cay-lan-y-1208194-600x600.jpg', 1, 0, 3, '1610081085cay-lan-y-1208194-600x600.jpg#1610081085cay-lan-y-1208193-600x600.jpg#1610081085cay-lan-y-1208192-600x600.jpg'),
(272, 'Cây Lô Hội', 'Cây Lô Hội (tên khoa học: Aloe Vera) là loại cây cảnh được trồng phổ biến và sở hữu nhiều lợi ích đặc biệt trong cuộc sống. Việc trồng và chăm sóc cây Lô Hội cũng vô cùng đơn giản và dễ thực hiện…', 150000, '1610081178lo-hoi-271219-1-600x600.jpg', 1, 1, 4, '1610081178lo-hoi-271219-1-600x600.jpg#1610081178cay-nha-dam-1208191-600x600.jpg'),
(273, 'Cây Lưỡi Hổ', 'Cây Lưỡi Hổ (tên khoa học: Sansevieria trifasciata) nằm trong top 10 những cây cảnh có khả năng thanh lọc không khí, hấp thụ chất gây ô nhiễm, cải thiện không gian sống tốt nhất hiện nay…', 170000, '1610081319cay-luoi-ho-1208192-600x600.jpg', 0, 1, 4, '1610081319cay-luoi-ho-1208192-600x600.jpg#1610081319cay-luoi-ho-1208193-600x600.jpg#1610081319cay-luoi-ho-1208195-600x600.jpg#1610081319cay-luoi-ho-12081911-600x600.jpg'),
(274, 'Cây Ngọc Bích', 'Cây Ngọc Bích (tên khoa học: Crassula ovata) hay còn gọi là sen đá Thạch Bích. Trong phong thủy, gia chủ trồng cây sẽ có được may mắn, tiền tài, phúc lộc…', 550000, '1610081499cay-ngoc-bich-1208192.jpg', 1, 1, 4, '1610081499cay-ngoc-bich-1208192.jpg#1610081499cay-ngoc-bich-1208193-600x600.jpg#1610081499cay-ngoc-bich-1208191-600x428.jpg'),
(275, 'Cây Ngũ Gia Bì', 'Cây Ngũ Gia Bì (tên khoa học: Scheffera Octophylla) là cây cảnh có khả năng đuổi muỗi, côn trùng nên được trồng nhiều trong văn phòng, nhà ở…', 650000, '1610081684cay-ngu-gia-bi-12081911-600x600.jpg', 1, 0, 4, '1610081684cay-ngu-gia-bi-12081911-600x600.jpg#1610081684cay-ngu-gia-bi-1208195-600x600.jpg#1610081684cay-ngu-gia-bi-12081913-600x600.jpg#1610081684cay-ngu-gia-bi-1208197-600x600.jpg'),
(276, 'Cây Phong Lá Đỏ', 'Cây Phong Lá Đỏ (tên khoa học: Acer rubrum) được xem là biểu tượng của nhiều nước trên thế giới đặc biệt là Canada. Cây có ý nghĩa mang lại may mắn, tài lộc…', 550000, '1610081847cay-phong-la-do-chau-thuy-tinh-vat-mau-2-768x768.jpg', 1, 1, 5, '1610081847cay-phong-la-do-chau-thuy-tinh-vat-mau-2-768x768.jpg#1610081847tieu-canh-phong-la-do.jpg#1610081847cay-phong-la-do-chau-dia-trang-2-768x768.jpg#1610081847cay-phong-la-do-chau-dia-trang-768x768.jpg'),
(277, 'Cây Phát Tài', 'Cây Phát Tài được tìm thấy ở Zambia, Tanzania và Tây Phi. Loại cây này có lá màu xanh sẫm, tán lá xòe rộng và có đường gân vàng nổi bật, thường được trồng trong nhà giúp thanh lọc không khí hiệu quả…', 300000, '1610084140cay-phat-tai-de-ban-281119-600x600.jpg', 1, 0, 4, '1610084140cay-phat-tai-de-ban-281119-600x600.jpg#1610084140cay-phat-tai-de-ban-dep-600x600.jpg'),
(278, 'Cây Tài Lộc', 'Cây Tài Lộc (tên khoa học: Hylocereus) còn có tên gọi khác là Cây May Mắn rất phù hợp dùng để thu hút tài lộc, may mắn cho gia chủ khi được trưng bày tại bàn làm việc, bàn tiếp khách. Bên cạnh đó, màu xanh mát của cây Tài Lộc còn giúp giải tỏa căng thẳng, mang lại cho bạn và gia đình sự thoải mái, dễ chịu…', 150000, '1610084390cay-tai-loc-11-768x768.jpg', 0, 1, 4, '1610084390cay-tai-loc-11-768x768.jpg#1610084390cay-tai-loc-04-768x768.jpg#1610084390cay-tai-loc-chau-kim-cuong-cao-600x600.jpg#1610084390cay-tai-loc-chau-dot-truc-600x600.jpg'),
(279, 'Cây Thủy Tùng', 'Cây Thủy Tùng (tên khoa học: Asparagus plumosus) trong phong thủy đặc biệt hợp với người tuổi Thân, có ý nghĩa mang đến tiền tài, tài lộc về cho gia chủ…', 300000, '1610084590cay-thuy-tung-1308192-600x600.jpg', 1, 0, 4, '1610084590cay-thuy-tung-1308192-600x600.jpg#1610084590cay-thuy-tung-1308197-600x600.jpg#1610084590cay-thuy-tung-1308194-600x600.jpg#1610084590cay-thuy-tung-1308195-600x600.jpg'),
(280, 'Cây Trầu Bà', 'Cây Trầu Bà (tên khoa học: Philodendron Imperial) là một loài thực vật có hoa họ Ráy (Araceae), tượng trưng cho sự may mắn, thành đạt và bình an cho gia chủ…', 450000, '1610084690cay-trau-ba-1608191-600x600.jpg', 1, 1, 4, '1610084690cay-trau-ba-1608191-600x600.jpg#1610084690cay-trau-ba-1608195-600x600.jpg#1610084690cay-trau-ba-1608192-600x600.jpg'),
(281, 'Cây Trúc Phú Quý', 'Cây Trúc Phú Quý (tên khoa học: Dracaena Surculosa) còn gọi là cây: Phát Dụ, cây Phát Lộc, Trúc Hạnh Vận… Trong phong thủy cây Trúc Phú Quý mang lại tài lộc, sức khỏe, may mắn cho gia chủ, giúp thúc vượng tài vận, tài khí của gia chủ ngày càng vượng phát, sự nghiệp phát triển vững vàng…', 250000, '1610084862cay-truc-phu-quy-1708196-600x600 (1).jpg', 1, 0, 4, '1610084862cay-truc-phu-quy-1708196-600x600 (1).jpg#1610084862cay-truc-phu-quy-1708194-600x600.jpg#1610084862cay-truc-phu-quy-1708196-600x600.jpg'),
(282, 'Cây Tùng Bồng Lai', 'Cây Tùng Bông Lai là một loài cây mang vẻ đẹp trang nhã, dễ chăm sóc và có sức sống khá mãnh liệt. Trong phong thủy loài cây này có ý nghĩa đem tới sức khỏe, tài lộc, thịnh vượng, giữ tiền và giữ của cho người gia chủ…', 320000, '1610085014cay-tung-bong-lai-600x600.jpg', 0, 1, 5, '1610085014cay-tung-bong-lai-600x600.jpg#1610085014tuoi-than-trong-cay-gi-600x600.jpg#1610085014cay-tung-bong-lai-chau-vat-vuong-768x768.jpg'),
(283, 'Cây Tùng La Hán', 'Cây Tùng La Hán (tên khoa học: Podocarpus brevifolius) còn gọi là Vạn Niên Tùng. Trồng cây mang lại sức khỏe, xua đuổi những điều xui xẻo đến với gia đình…', 520000, '1610085129tung-la-han-1708198.jpg', 1, 1, 5, '1610085129tung-la-han-1708198.jpg#1610085129tung-la-han-1708193-600x600.jpg#1610085129tung-la-han-1708192-600x600.jpg#1610085129tung-la-han-1708197-600x600.jpg'),
(284, 'Cây Vạn Lộc', 'Cây Vạn Lộc (tên khoa học: Aglaonema Rotundum Pink) có tốc độ sinh trưởng nhanh, dễ chăm sóc, phù hợp trang trí nội thất, phòng làm việc. Cây Vạn Lộc phong thủy tượng trưng cho sự may mắn, năng lượng tràn đầy và mang sự thịnh vượng, no đủ cho gia chủ.\r\n\r\n', 650000, '1610085251cay-van-loc-1308197-600x600.jpg', 1, 1, 5, '1610085251cay-van-loc-1308197-600x600.jpg#1610085251cay-van-loc-1308199.jpg#1610085251cay-van-loc-1308195-600x600.jpg#1610085251cay-van-loc-13081910.jpg'),
(285, 'Cây Đuôi Công Tím', 'Cây Đuôi Công Tím (tên khoa học: Calathea medallion/Calathea makoyana) với vẻ ngoài nổ bật, thu hút đã trở thành loại cây để bàn, cây văn phòng được ưa chuộng nhất hiện nay. Cây biểu trưng cho sự thịnh vượng và may mắn cho gia chủ.', 200000, '1610085352duoi-cong-tim-0908195-600x600.jpg', 1, 0, 3, '1610085352duoi-cong-tim-0908195-600x600.jpg'),
(286, 'Sen Mini Nhật', 'Mùa hè mang theo ánh nắng chói chang, những đóa Sen mini Nhật dịu dàng cùng sắc hương ngọt ngào sẽ làm dịu bớt đi cảm giác nóng nực, cho sân vườn thêm xinh…', 500000, '1610085438hoa-sen-4-768x768.jpg', 1, 1, 5, '1610085438hoa-sen-4-768x768.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_categories`
--

DROP TABLE IF EXISTS `products_categories`;
CREATE TABLE IF NOT EXISTS `products_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_categories`
--

INSERT INTO `products_categories` (`product_id`, `category_id`) VALUES
(0, 10),
(0, 11),
(0, 12),
(1, 2),
(2, 4),
(3, 1),
(4, 4),
(5, 1),
(6, 2),
(7, 1),
(8, 4),
(9, 2),
(10, 5),
(11, 5),
(12, 5),
(13, 4),
(14, 2),
(15, 3),
(16, 5),
(17, 2),
(18, 2),
(19, 1),
(20, 5),
(21, 4),
(22, 5),
(23, 4),
(24, 5),
(25, 5),
(26, 4),
(27, 4),
(28, 2),
(29, 1),
(30, 4),
(31, 2),
(32, 4),
(33, 4),
(34, 2),
(35, 4),
(36, 2),
(37, 4),
(38, 2),
(39, 3),
(40, 4),
(41, 2),
(42, 3),
(43, 5),
(44, 4),
(45, 4),
(46, 3),
(50, 1),
(51, 2),
(52, 4),
(53, 4),
(54, 5),
(55, 1),
(56, 4),
(57, 1),
(58, 3),
(59, 4),
(60, 2),
(61, 3),
(62, 4),
(63, 2),
(64, 2),
(65, 4),
(66, 5),
(67, 3),
(68, 2),
(69, 2),
(70, 4),
(71, 4),
(72, 3),
(73, 2),
(74, 4),
(75, 2),
(76, 4),
(77, 5),
(78, 4),
(79, 2),
(80, 2),
(81, 4),
(82, 3),
(83, 1),
(83, 5),
(84, 5),
(85, 5),
(86, 1),
(87, 3),
(88, 3),
(89, 5),
(90, 1),
(91, 1),
(92, 3),
(93, 5),
(94, 1),
(95, 1),
(96, 3),
(97, 1),
(98, 3),
(99, 3),
(100, 5),
(101, 1),
(102, 3),
(103, 3),
(104, 3),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 4),
(163, 4),
(164, 1),
(165, 1),
(166, 4),
(167, 4),
(168, 1),
(169, 1),
(170, 4),
(171, 4),
(172, 1),
(173, 1),
(174, 1),
(175, 4),
(176, 4),
(177, 4),
(178, 5),
(179, 5),
(180, 5),
(188, 4),
(189, 5),
(190, 3),
(193, 3),
(195, 3),
(203, 10),
(204, 10),
(205, 10),
(207, 10),
(210, 10),
(214, 10),
(217, 10),
(218, 10),
(219, 10),
(221, 10),
(222, 10),
(223, 10),
(224, 10),
(226, 10),
(227, 10),
(228, 10),
(230, 10),
(231, 10),
(232, 10),
(233, 10),
(234, 10),
(235, 10),
(236, 10),
(238, 10),
(239, 10),
(240, 10),
(241, 10),
(242, 10),
(243, 10),
(244, 10),
(245, 10),
(246, 10),
(247, 10),
(248, 10),
(249, 10),
(250, 10),
(251, 10),
(252, 10),
(253, 10),
(254, 10),
(255, 10),
(256, 10),
(257, 10),
(258, 10),
(259, 10),
(260, 10),
(261, 10),
(262, 10),
(264, 11),
(265, 11),
(266, 11),
(267, 11),
(268, 11),
(269, 11),
(270, 11),
(271, 11),
(272, 11),
(273, 11),
(274, 11),
(275, 11),
(276, 11),
(277, 11),
(278, 11),
(279, 11),
(280, 11),
(281, 11),
(282, 11),
(283, 11),
(284, 11),
(285, 11),
(286, 11);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
