-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2020 lúc 07:43 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test01`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `status`) VALUES
('hophuong99', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `tenHang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `tenHang`, `status`) VALUES
(1, 'Laptop Dell', 1),
(2, 'Laptop Asus', 1),
(3, 'Laptop HP', 1),
(4, 'Macbook', 1),
(5, 'Laptop Acer', 1),
(6, 'Laptop MSI', 0),
(7, 'Laptop Lenovo', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: chưa phản hồi; 1: đã phản hồi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `sender`, `email`, `mobile`, `title`, `content`, `reply`, `status`) VALUES
(1, 'Minh Hiệp', 'hehehe@gmail.com', 973847599, 'Laptop bật không lên', '12344567800542 Alo', 'Oke bro !!', 1),
(2, 'Hà Giang', 'haha@email.com', 373847599, 'Mua laptop giá rẻ', 'Lúc này, bạn thử tháo RAM ra kiểm tra xem có phù hợp với laptop không và thay thế bằng thanh mới.', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `fullname`, `avatar`, `mobile`, `email`, `address`, `status`) VALUES
(2, 'nhuanh', '716a5f9ab9fe759b7c7baa0816fad585', 'Đào Như Anh', 'id2.jpg', '0986636425', 'nal44@gmail.com', 'Thành phố HCM VN', 1),
(3, 'hophuong99', 'e10adc3949ba59abbe56e057f20f883e', 'Phương', 'id3.jpg', '0946920526', 'haibang172@yahoo.com.vn', 'Thành phố Hà Tĩnh', 1),
(4, 'nhat123', 'e10adc3949ba59abbe56e057f20f883e', 'Minh Nhật', 'id4.jpg', '0987654321', 'nhat123@gmail.com', 'Vũng Tàu', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `imgNew` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `imgNew`, `created_at`) VALUES
(1, 'Bán - Mua laptop đã rẻ, nay lại chẳng cần lo lắng về tài chính !', '<br><b>Lần đầu tiên tại Laptop.cc với sự kết hợp cùng HD SAISON.</b><br><br>Kể từ 09/04/2018, Laptop.cc kết hợp cùng HD SAISON cung cấp dịch vụ mua trả góp cho khách hàng. Không cần phải lo lắng về tài chính, chưa đủ tiền vẫn có thể mua máy về sử dụng. Một số ưu điểm khi mua trả góp với HD SAISON:<br>- Thẩm định nhanh<br>- Lãi suất hợp lý (1.09%-3%)<br>- Trả trước tối thiểu chỉ từ 10%<br>- Chỉ cần CMND, Bằng lái xe (hoặc hộ khẩu)<br>- Không cần thẻ tín dụng, không cần chứng minh thu nhập<br>- Miễn phí Bảo hiểm khoản vay<br>- Thanh toán hàng tháng thuận tiện<br>\r\n<br>Chương trình mua trả góp áp dụng với mọi khoản vay tối thiểu từ 2.000.000đ đến tối đa 60.000.000đ, và áp dụng cả với khách hàng mua nhiều sản phẩm cùng lúc. Lãi suất ưu đãi dành cho công chức nhà nước: giáo viên, giảng viên, bác sỹ, y tá, hộ lý, điều dưỡng…<br>\r\nĐăng ký ngay tại đây để nhận được quà tặng là USB 16GB:<br>https://goo.gl/forms/B0yFjYPE9dKNnCTs2<br>Để được tư vấn cụ thể quý khách có thể nhắn tin qua Fanpage của Laptop.cc hoặc liên hệ trực tiếp số điện thoại: 0243.2262.450<br><br><b>* Chương trình bán trả góp hiện chỉ áp dụng tại chi nhánh 40 Trần Đại Nghĩa *</b>', 'new1.jpg', '2019-07-18 03:03:08'),
(2, 'Hướng dẫn sử dụng laptop đúng cách tránh đột tử', '<br><b>Sai lầm thứ nhất: Cản trở máy thoát nhiệt.</b><br> <br>Laptop luôn phát sinh nhiệt trong khi sử dụng. Và mỗi chiếc laptop đều có hệ thống thoát nhiệt sử dụng quạt. Cản trở hệ thống này hoạt động chính là một đòn chí tử với chiếc laptop của bạn. Ví dụ:<br>- Sử dụng laptop trên chăn, đệm.<br>- Sử dụng laptop sát tường hoặc có vật cản che lấp khe thổi khí của máy.<br>- Laptop quá bẩn bị bám bụi che lấp khe thoát nhiệt<br><br ><b>Sai lầm thứ 2: Di chuyển máy khi đang hoạt động</b><br><br>Bạn chỉ có thể di chuyển laptop khi máy đang hoạt động nếu laptop của bạn sử dụng ổ SSD, hoặc laptop của bạn là dòng doanh nhân có tính năng chống sốc ổ cứng. Đa số laptop phổ thông sử dụng ổ cứng HDD với cơ chế hoạt động bằng đầu đọc từ tính lấy dữ liệu trên đĩa quay ở tốc độ cao (5400 hoặc 7200 vòng / phút) và rất dễ bị tổn thương nếu bị va chạm trong lúc đang hoạt động. Việc hư hỏng ổ đĩa cứng ngoài việc mất chi phí sửa chữa còn dẫn tới nguy cơ mất toàn bộ dữ liệu trong máy. <br><br><b>Sai lầm thứ 3: Ăn uống khi sử dụng laptop</b><br><br>Ăn uống trong khi sử dụng laptop có thể dẫn tới những hư hỏng không thể khắc phục. Nhẹ nhất là việc rơi thức ăn vào kẽ bàn phím, lâu dài có thể tích tụ ẩm mốc dẫn tới chập phím, đứt mạch bàn phím. Nặng nhất là việc đổ nước vào máy, hậu quả của nó thường rất thảm khốc. Có nhiều trường hợp đổ nước vào máy dẫn tới cháy toàn bộ bo mạch chủ, RAM và cả CPU của máy, chi phí khắc phục hậu quả đắt ngang mua máy khác.<br><br><b>Sai lầm thứ 4: Thường xuyên quên tắt máy</b><br><br>Laptop có cơ chế tự chuyển sang chế độ sleep khi máy được gập lại. Việc này khá vô hại nếu như máy tính được để một chỗ. Tuy nhiên nếu bạn để quên máy trong tình trạng sleep để mang máy trong túi di chuyển thì rất có thể máy vô tình khởi động lên khi bị rung lắc. Và máy tính tự hoạt động trong túi kín thì có thể dẫn tới hư hỏng rất nghiêm trọng.<br><br><b>Sai lầm thứ 5: Lầm tưởng màn hình không dễ bị phá huỷ</b><br><br>Sự thật là màn hình là thứ mỏng manh nhất trong toàn bộ chiếc laptop. Bất kỳ va chạm từ vật cứng nào cũng có nguy cơ làm dập, vỡ màn hình. Va chạm nhẹ có thể gây ra vết dập màu đen không thể xoá mờ, va chạm mạnh hơn sẽ làm rạn toàn bộ màn hình và gây ra tình trạng không thể hiển thị hình ảnh. Bề mặt màn hình cũng rất dễ xước nếu bị lau bằng khăn khô khi có bụi dính trên màn.', 'new2.png', '2019-07-18 03:06:21'),
(3, '4 SAI LẦM của SINH VIÊN khi chọn mua LAPTOP', '<br><b>1. Nhìn vào cấu hình</b><br><br>Rất nhiều người khi đi mua máy thường đặt nặng vấn đề cấu hình, như: CPU, Card đồ họa, RAM, tản nhiệt, kết cấu máy… Tuy nhiên, các thông số kỹ thuật của thiết bị chỉ mang tính tham khảo, không phải là yếu tố quyết định hoàn toàn chiếc máy đó có phù hợp với bạn hay không. Do đó, việc quan tâm quá mức chúng là điều không cần thiết. Đừng bị ám ảnh bởi tuổi thọ pin, độ phân giải, tốc độ xử lý… Nếu bạn có một ngân sách vừa phải, bạn sẽ cần phải chấp nhận và cân bằng các phần cứng đó cho phù hợp.<br><br><b>2. Chọn máy tính từ các hãng tên tuổi</b><br><br>Mỗi dòng laptop của từng hãng đều có những ưu điểm riêng, nhắm tới từng đối tượng khách hàng trong từng phân khúc. Thế nhưng đại đa số người dùng khi lần đầu đi mua đều lựa chọn những thương hiệu tên tuổi hàng đầu như Dell, Lenovo, HP, … một phần vì muốn đảm bảo sự an toàn, một phần nghe theo review của người mua trước mà không tìm hiểu kĩ càng, cũng như đánh giá được tính năng của sản phẩm. Vì thế thường dẫn đến sai lầm, bởi những hãng này thường có giá sản phẩm rất cao, vì vậy mà khi mua máy nếu bạn có kinh tế hạn hẹp sẽ khó chọn được một chiếc máy sử dụng như ý, hoặc nếu có dư dả thì lại mua một chiếc máy mà bản thân không thể sử dụng hết tính năng và hiệu suất làm việc.<br><br><b>3. Lựa chọn máy có card rời</b><br><br>Nhiều người cứ nghĩ card đồ họa rời tốt hơn đồ họa tích hợp. Điều này không phải lúc nào cũng đúng. Một sự thật là nếu không chơi game hay làm đồ họa, đồ họa tích hợp đã là quá đủ cho mọi nhu cầu của bạn. Card đồ họa rời chỉ khiến chiếc máy của bạn nặng hơn, tốn điện hơn và tỏa nhiều nhiệt hơn.<br><br><b>4.Không thử trải nghiệm máy</b><br><br>Không có mẫu laptop nào phù hợp cho tất cả mọi người. Nhu cầu và tính chất công việc sẽ ảnh hưởng lớn đến cảm giác của bạn khi sử dụng thiết bị. Thay vì mù quáng theo số đông, bạn nên cân nhắc lựa chọn máy theo sở thích và nhu cầu. Mua máy qua lời khuyên là lỗi thường gặp nhất của người lần đầu sử dụng máy tính.<br>Trải nghiệm của bản thân mới là thứ xác thực nhất, hiện nay có rất nhiều cửa hàng lớn cho khách hàng trải nghiệm sản phẩm trước khi mua. Việc này hoàn toàn miễn phí, vậy nên tội gì mà không thử.', 'new3.jpg', '2019-07-18 03:17:08'),
(4, '4 trình duyệt internet tốt nhất trên Internet 2019', '<br><b>Chrome</b><br><br>Chúng ta hãy cùng bắt đầu với Chrome, đây là trình duyệt được rất nhiều người sử dụng bởi nó có tốc độ xử lý khá mạnh, và hỗ trợ tới 42 ngôn ngữ khác nhau cho bạn lựa chọn. Với Chrome người dùng có thể đồng bộ được tất cả những thông tin, dữ liệu với Gmail và chúng ta hầu hết đều sử dụng Gmail rất nhiều nên lại là một lý do nữa giải thích vì sao Chrome chiếm đến hơn một nửa thị phần sử dụng của toàn bộ người dùng hiện nay.<br>Ngoài ra, Chrome còn một lợi thế nữa là thư viện tiện ích, add-on khổng lồ của nó. Chúng giúp ích rất nhiều cho việc sử dụng và đặt biệt là hiệu quả làm việc của người dùng. Tiện lợi, hỗ trợ cho công việc một cách đồng nhất nhanh gọn đó là vì sao Chrome luôn là một trình duyệt mà mình ưu tiên sử dụng nhất trên máy tính.<br><br><b>Cốc cốc</b><br><br>Được phát triển trên nền của Google Chrome, Cốc cốc được đội ngũ phát triển và tối ưu dành cho người dùng Việt Nam, do đó nó được người dùng Việt ưa chuộng và sử dụng rất nhiều nhờ tính năng tải trực tiếp video, audio hay tối ưu tốc độ download của trình duyệt này.<br>Cốc cốc cũng đã hạn chế được phần nào sự ngốn ram từ Chrome nhưng nếu so sánh với các trình duyệt khác nó vấn tiêu tốn khá nhiều tài nguyên của máy tính.<br><br><b>Firefox</b><br><br>Xét về hiệu năng sử dụng, tính bảo mật và sự tiện lợi cho người dùng, Mozilla Firefox chắc chắn xứng đáng với vị trí hàng đầu trong danh sách bởi vì các bản cập nhật thường xuyên và add-on luôn hỗ trợ trong thời gian dài. Với hiệu suất cao, load web nhanh, Mozilla Firefox đã làm cho chính nó trở thành một trong những trình duyệt tốt nhất dành cho Windows 10.<br>Ngoài ra, Firefox rất dễ tiếp cận cho những người mới bắt đầu. Bởi bạn có thể dễ dàng thực hiện những tuỳ biến sau vài phút trải nghiệm Firefox.<br><br><b>Internet Microsoft Edge</b><br><br>\r\nEdge có rất nhiều điểm mạnh mà người dùng có thể chưa biết. Edge không cần cài đặt hay tải về vì cài đặt sẵn trong Microsoft. Edge cũng được Microsoft tối ưu với các tính năng, thao tác cử chỉ điều khiển phù hợp nhất với hệ điều hành Window, nhờ vậy nếu bạn đã quen sử dụng nó thì việc bạn lướt web trên chiếc máy tính dễ dàng chẳng khác gì trên smartphone cả chỉ cần lướt qua lướt lại một cách dễ dàng, Edge có tốc độ tải web nhanh không hề kém cạnh so với 2 ông lớn Chrome và Firefox.', 'new4.png', '2019-07-19 02:47:26'),
(5, 'Có Nên Cắm Sạc Laptop Liên Tục Không?', '<br><b>1. Tại sao dung lượng pin của LAPTOP lại bị giảm?</b><br><br>Đầu tiên, bạn đọc cần chú ý một điều rằng: Giống như các loại pin khác, dù bạn có sử dụng pin của laptop một cách cẩn thận đến như thế nào thì tuổi thọ và dung lượng của chúng cũng sẽ ngày càng giảm. Lý do là trong quá trình sạc, các ion ở trong pin chuyển động từ cực dương sang cực âm, và ngược lại trong quá trình xả (quá trình sử dụng). Cứ như vậy, qua càng nhiều chu kỳ sạc (một lần sạc và xả), các cực ở trong pin bị hao mòn gây nên giảm dung lượng bên trong. Tùy thuộc vào mỗi loại pin mà số chu kỳ sạc sẽ khác nhau, con số trung bình sẽ vào khoảng 500 chu kỳ sạc đầy.<br>Và để tránh chu kỳ sạc và xả này, nhiều người dùng sử dụng cách luôn luôn cắm sạc laptop hoặc không bao giờ xả pin máy. Tuy vậy, việc lưu trữ pin ở mức dung lượng cao nhất và luôn cắm sạc như vậy không tốt cho pin, do khi cắm sạc laptop liên tục sẽ khiến cho pin phải tiếp xúc với nguồn nhiệt nhiều hơn và một điều rõ ràng là NHIỆT không hề tốt cho pin của máy tính. Nếu phải tiếp xúc với nhiệt độ trên 45 độ C quá lâu, pin của laptop sẽ bị chai nhanh chóng.<br>Do đó, nếu laptop có pin rời, bạn nên tháo pin khỏi máy tính xách tay nếu dự định để nó cắm trong một thời gian dài. Điều này đảm bảo sẽ giúp pin máy tính không tiếp xúc với tất cả nhiệt lượng không cần thiết.<br>Việc này đặc biệt hiệu quả trên các laptop gaming hoặc workstation. Tuy nhiên, hiện nay nhiều laptop đời mới rất khó để tiếp cận và tháo pin khi sử dụng, do đó người dùng sẽ cần sử dụng các cách khác để có thể tản nhiệt cho máy tính.<br><br><b>2. Nên RÚT hay CẮM SẠC khi laptop đã ĐẦY PIN hay không?</b><br><br>Như ở trên chúng ta đã thấy, việc cắm sạc cho laptop và luôn giữ pin ở mức độ 100% hay sạc đầy rồi rút dây đều sẽ làm giảm tuổi thọ của pin. Về cơ bản, dù cho người dùng có làm điều gì thì pin của máy tính vẫn sẽ bị hao mòn và giảm dần dung lượng theo thời gian. Việc duy nhất bạn có thể làm là hạn chế hiện tượng này và làm nó diễn ra chậm hơn mà thôi.<br><br><b>3. Hiệu chỉnh pin - thao tác cần thiết cho laptop</b><br><br>Bạn cần chú ý rằng, hiệu chỉnh pin không hề giúp pin laptop kéo dài tuổi thọ mà chỉ giúp máy tính của bạn có thể đo lường được dung lượng pin được chính xác hơn. Nói cách khác nếu máy tính của bạn không được hiệu chỉnh thường xuyên, các “đồng hồ” đo dung lượng pin của laptop có hiển thị sai giá trị của nó. Ví dụ: khi bạn gặp hiện tượng máy còn 20% pin nhưng bỗng nhiên bị sập nguồn, đó là do laptop đã đo sai dung lượng pin.\r\nCách thực hiện việc hiệu chỉnh pin cũng rất đơn giản, bạn chỉ cần sạc pin laptop lên 100%, sau đó sử dụng máy cho đến khi sập nguồn hẳn rồi sạc lại. Sau khi kết thúc quá trình trên, các “đồng hồ” sẽ đo được chính xác dung lượng pin và thời lượng của máy thực sự sử dụng được bao lâu. Ngoài ra, bạn nên thực hiện hiệu chỉnh pin 1 tháng 1 lần để laptop có thể đo dung lượng pin chính xác hơn.', 'new5.jpg', '2019-07-19 03:00:24'),
(6, '7nm, 10nm, .... trên CPU có NGHĨA LÀ GÌ?', '<br><b>1. Cấu tạo CPU là gì? </b><br><br>Đầu tiên để có thể hiểu rõ và nắm được vấn đề, chúng ta sẽ cần phải quay lại về cấu tạo của CPU. Vi xử lý hay còn gọi là CPU là một bộ phận cốt lõi tạo nên một chiếc máy tính. Nó là bộ não của máy tính có trách nhiệm tính toán, xử lý hàu hết các tác vụ như điều khiển thiết bị đầu vào như chuột, bàn phím thiết bị đầu ra như màn hình, máy in, …<br>Cấu tạo của CPU là một tấm mạch nhỏ bên trong chứa một tấm Wafer Silicon được bọ trong con chip bằng gốm và gắn vào bảng mạch. Trên tấm Silicon đó được đặt rất nhiều “bóng bán dẫn vi mô” hay còn có tên tiếng anh là Microscopic Transistors. Những bóng bán dẫn này có tác dụng giúp CPU xử lý, tính toán và truyền dữ liệu. <br><br><b>2. Quy trình hoạt động của CPU - Tiến trình Nanomet trên CPU là gì? </b><br><br>Như trên, chúng ta cũng đã được biết những bóng bán dẫn trong CPU giúp nó xử lý dữ liệu. Cụ thể, những bóng bán dẫn này sẽ bật tắt liên tục tương ứng với từng binary - đoạn mã nhị phân (ngôn ngữ của máy tính). Từ đó chúng cho phép CPU thực hiện các phép tính cần thiết để chạy các chương trình được lưu trữ trên bộ nhớ hệ thống. <br>Vì vậy, vi xử lý hay CPU có càng nhiều bóng bán dẫn có càng nhiều bóng bán dẫn sẽ càng có khả năng xử lý được nhiều phép tính, dữ liệu. Chính vì lý do này, các giáo sư đã nghĩ ra cách và cố gắng “nhét” càng nhiều bóng bán dẫn vào trong con chip vi xử lý - CPU càng tốt. Và để làm được điều đó nhưng vẫn vẫn giữ nguyên kích thước của CPU, họ phải giảm kích thước của các bóng bán dẫn đi. Đến hiện này, kích thước của các bóng bán dẫn này đã nhỏ đến mức nanomet (tương đương với 10-9) và đây trở thành một đơn vị hữu ích để đánh giá mức độ hiệu năng của một chip Vi Xử Lý - CPU trong máy tính.<br>Hiện nay, 10nm là quy trình sản xuất CPU mới của Intel, được ra mắt vào quý 4/2019 còn 7nm thường được đề cập trong quy trình của TSMC, là tiến trình mà AMD lựa chọn để sản xuất CPU thế hệ tiếp theo và chip A12X của Apple.', '2806_NanometCPU-4.png', '2019-08-09 15:39:00'),
(7, 'Tiêu tiền khôn ngoan: RAM máy tính bao nhiêu là đủ?', '<br><b>1, Nhóm người dùng cơ bản</b><br><br>Ở thời điểm hiện tại để có một bộ máy hoạt động mượt mà và trơn tru thì bạn cần khoảng 8GB RAM. Khi có 8GB RAM bạn có thể chạy mượt mà các tác vụ văn phòng cơ bản, giải trí nhẹ nhàng với các game nhẹ, xem phim, nghe nhạc mà không lo bị giật lag hay treo máy. Với mức RAM này thì bạn có thể làm việc đa nhiệm tương đối tốt với nhu cầu văn phòng, lướt web.<br>Với các tác vụ nhẹ như word, excel thì RAM chỉ dùng hết khoảng 2,2 đến 2,5GB , khi mở thêm một số file PDF hay word nặng tầm vài trăm mb thì dung lượng RAM bắt đầu đầy dần lên từ 3,2 đến 3,9GB. Chúng ta có thể thấy chỉ làm việc văn phòng nhẹ nhàng thì 4GB cũng có thể đáp ứng đủ với nhu cầu.<br>Tiếp theo là nhu cầu duyệt web,  với những trình duyệt ăn RAM như Chrome, Cốc cốc thì khi bạn mở khoảng 10 tab hỗn hợp gồm Facebook, Youtube, báo và một số website khác thì dung lượng RAM tiêu thụ từ 3,5 đến 3,8Gb, vẫn thoải mái sử dụng khi có thêm vài file word hay excel nữa. Nhưng nếu mở thêm nhiều tab trên trình duyệt thì hiện tượng ăn RAM xảy ra, lúc này RAM sẽ tiêu thụ từ 6-6,5GB ngang ngửa với khi bạn chạy máy ảo để lập trình.<br><br><b>2, Nhóm người dùng có nhu cầu sử dụng chuyên dụng về đồ họa</b><br><br>Với những công việc liên quan đến đồ họa thì thực sự mà nói không biết bao nhiêu là đủ, ví dụ các phần mềm Adobe kéo theo rất nhiều phần mềm sau đó, chẳng hạn như: premiere, AI, Lightroom…<br>Trung bình khi bạn chỉnh sửa màu với phần mềm Lightroom thì nó đã ngốn khoảng 4GB RAM, hoặc khi mở phần mềm photoshop cùng vài ảnh để chỉnh sửa thì dung lượng RAM ngốn tới 6GB, và nặng hơn như premiere thì RAM đã lên tới hơn 7 GB. Chẳng hạn một lúc bạn có thể mở 10 tab chrome, mở thêm một game nặng bất kỳ thì máy vẫn có thể hoạt động được nếu lúc này máy của bạn được trang bị 16GB RAM. Còn những việc chuyên biệt như chạy máy ảo, vẽ đồ họa 3Ds max, kỹ xảo phim ảnh thì càng nhiều RAm sẽ càng tốt, không bao giờ được dưới 8GB và khoảng 16GB là tốt nhất.', '1611_1.jpg', '2019-08-09 16:25:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`orderId`, `productId`, `quantity`, `price`) VALUES
(1, 3, 2, 47000000),
(1, 11, 1, 27000000),
(2, 9, 2, 30000000),
(2, 21, 5, 24000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordermethod`
--

CREATE TABLE `ordermethod` (
  `id` int(11) NOT NULL,
  `methodName` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordermethod`
--

INSERT INTO `ordermethod` (`id`, `methodName`, `status`) VALUES
(1, 'Thanh toán trực tiếp cho người giao hàng', 1),
(2, 'Ví điện tử', 1),
(3, 'Thanh toán tại cửa hàng', 1),
(4, 'Thanh toán bằng thẻ ATM', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `methodId` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: chưa xử lý; 2: đang xử lý; 3: đã xử lý'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userId`, `methodId`, `orderDate`, `status`) VALUES
(1, 1, 2, '2019-07-09', 2),
(2, 3, 2, '2020-11-06', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `priceName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `priceFrom` int(11) NOT NULL,
  `priceTo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prices`
--

INSERT INTO `prices` (`id`, `priceName`, `priceFrom`, `priceTo`) VALUES
(1, 'Dưới 10 triệu', 0, 10),
(2, 'Từ 10 - 20 triệu', 10, 20),
(3, 'Từ 20 - 30 triệu', 20, 30),
(4, 'Từ 30 - 40 triệu', 30, 40),
(5, 'Từ 40 - 60 triệu', 40, 60),
(6, 'Từ 60 - 80 triệu', 60, 80),
(7, 'Trên 80 triệu', 80, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `productName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productImage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `brandId`, `productName`, `productPrice`, `productImage`, `productDescription`, `quantity`) VALUES
(1, 5, 'Laptop Acer Predator 700', 109000000, 'acer_predator_helios_700_-anh3.jpg', 'Với những phần cứng và công nghệ tối tân nhất, bao gồm vi xử lý Intel® Core ™ i9 thế hệ thứ 9 có thể ép xung, card đồ họa NVIDIA GeForce RTX 2080 hoặc 2070, bộ nhớ RAM DDR4 lên đến 64GB và công nghệ Killer DoubleShot™ Pro với kết nối Killer Wi-Fi 6 AX 1650 và E3000 – mang lại băng thông mạng gấp bốn lần trong môi trường phức tạp so với mạng AC không dây thế hệ trước -  giúp cho việc chiến game mượt mà trên Predator Helios 700. Chiếc laptop còn có màn hình IPS FHD 144Hz với kích thước 17 inch cùng thời gian phản hồi 3ms.', 10),
(2, 2, 'Laptop Asus ZenBook 14', 39000000, 'asus_zenbook_pro_14_ux480fd_3.jpg', 'Máy được trang bị bộ vi xử lý Intel Core i5-8265U với xung nhịp có thể lên đến 3.9GHz, cho bạn những giây phút lướt web nhanh hơn, mạnh mẽ hơn. Bên cạnh đó, với bộ nhớ trong Ram 8GB LPDDR3-2133Mhz đảm bảo xử lí các tác vụ đa nhiệm thật mượt mà và ổn định. Ngoài ra, máy còn trang bị thêm bộ nhớ 256GB SSD M.2 NVMe, cho bạn lưu trữ cũng như vận hành máy một cách nhanh chóng, mượt mà hơn. Đặc biệt, Asus Zenbook UX433FA-A6061T sử dụng card đồ họa Intel UHD Graphics 620 máy còn có thể đáp ứng tốt các như cầu giải trí và làm việc khác như game online, nhiều game 3D, các công cụ đồ họa Photoshop, Lightroom…', 7),
(3, 2, 'Laptop Asus Zephyrus M', 47000000, 'asus_rog_zephyrus_m_gu502gu-anh1.jpg', 'CPU: Intel® Core™ i7-9750H (2.6GHz upto 4.5GHz, 6Cores, 12Threads, 12MB cache, FSB 8GT/s) / Ram: 16GB DDR4 2666MHz, 2 slot Ram, Max 32GB / Ổ cứng: 512GB SSD M.2 PCIe3x4 / VGA: NVIDIA® GeForce RTX™ 2060 6GB GDDR6 / Display: 15.6-inch FHD (1920x1080) IPS, 144Hz, Non-Glare, 100% sRGB / AC Wi-Fi, Bluetooth, USB-C Gen2, USB 3.1 Gen2, Per-Key RGB Bagbelyst tastatur / Pin: 4-Cell 76WHrs / Weight: 1.99Kg / Os: Windows 10 bản quyền\r\n', 10),
(4, 5, 'Laptop Acer Predator 500', 59000000, 'acer_sf515-silver-anh1.jpg', 'CPU: Intel® Core™ i7-8750H (2.20 upto 4.10GHz, 6 nhân 12 luồng, 9MB) / RAM: 16GB DDR4 2666MHz (Còn 1 khe) max 32GB / Ổ cứng: 256GB SSD PCIe NVMe / VGA: NVIDIA GeForce RTX 2070 8GB GDDR6 / Display: 15.6\" FHD(1920 x 1080) IPS / Led_Keyboard  led RGB với 3 zone màu chủ đạo / Pin: 4cell / Weight: 2.1kg / OS: Windows 10 Home', 5),
(5, 2, 'Laptop Asus Zenbook 14', 26000000, 'asus_zenbook_ux433_1_5.jpg', 'CPU: Intel® Core™ i5-8265U (1.60 upto 3.90GHz, 4 nhân 8 luồng, 6MB) / RAM: 8GB LPDDR3 2133 MHz / Ổ cứng: 256GB SSD M.2 PCIe / VGA: Intel UHD Graphics 620  / Display: 14\" FHD (1920 x 1080) IPS, Anti-Glare, NanoEdge, 100% sRGB   / Backlit Keyboard / Không có bàn di chuột NumberPad /  USB 3.1 type C, HDMI /  Pin: 3 Cell 50WHr Lithium-Polymer / Weight: 1.19 Kg / Color: Blue  / OS: Windows 10 Home SL 64bit.', 10),
(6, 3, 'Laptop HP EliteBook X2', 42000000, 'hp_elite_x2_1013_g3_5dj72pa_2.jpg', 'CPU: Intel® Core™ i5 8300H (2.30 upto 4.00GHz, 4 nhân 8 luồng, 8MB) / Ram: 8GB DDR4 2666MHz (còn 1 slot ram, up to 32GB SDRAM) / Ổ cứng: 256GB SSD PCIe / VGA: NVIDIA GeForce GTX 1050 4GB GDDR5 / Display: 15.6\" inch FHD (1920 x 1080) , Anti-glare , LED-backlit  /  Color: Silver / Weight: 2.14kg / Pin: 6Cell , 95.9Whr / OS: Free Dos\r\n', 0),
(7, 5, 'Laptop Acer Swift 3', 24000000, 'acer_swift_3_sf314-anh3_2.jpg', 'CPU : Intel® Core™ i5-8250U (1.6GHz upto 3.4GHz, 4Cores, 8Threads, 6MB cache) / RAM : 4GB DDR4 / Ổ cứng : 256GB SSD / VGA : Intel® UHD Graphics 620 / Display : 14.0\" Full HD (1920*1080) IPS  / Pin : 4-cell 3220 mAh / Weigh : 1.5Kg / Tính năng: Bảo mật vân tay / OS : Windows 10 Home\r\n', 8),
(8, 3, 'Laptop HP EliteBook 735', 9500000, 'hp_elitebook_735_g5_5zu72pa-3_2.png', 'CPU: AMD Ryzen 5 PRO 2500U APU with Radeon Vega Graphics (2GHz upto 3.6GHz, 4 nhân, 8 luồng, 6MB cache) / Ram: 8GB DDR4 2666MHz / Ổ cứng: 256GB PCIE NVME / VGA: AMD Radeon™ Vega Graphics / Display: 13.3\" FHD (1920 x 1080) IPS  /  2x USB 3.1, 1x USB 3.1 Type-C , Finger Print / Color: Silver / Pin: 3Cell 50WHr / Weight: 1.33Kg / OS: Windows 10 Pro', 11),
(9, 4, 'MacBook Air MREA2', 30000000, 'mac_space_gray_2_0.jpg', 'SP nguyên seal, chưa kích hoạt bảo hành, bảo hành chính hãng tại Apple Toàn Cầu\r\n* 1.8GHz dual-core Intel Core i5, Turbo Boost up to 2.9GHz, 3MB L3 cache\r\n* 8GB of 1600MHz LPDDR3, 128GB PCIe-based SSD\r\n* 13.3-inch (diagonal) LED-backlit glossy widescreen, Intel HD Graphics 6000 \r\n* MacOS Sierra', 3),
(10, 4, 'Macbook Air MREE2', 28000000, 'macbook_air_mree2_13-inch_128g_gold_0.jpg', 'SP nguyên seal, chưa kích hoạt bảo hành, bảo hành chính hãng tại Apple Toàn Cầu, 1.8GHz dual-core Intel Core i5, Turbo Boost up to 2.9GHz, 3MB L3 cache, 8GB of 1600MHz LPDDR3, 256GB PCIe-based SSD, 13.3-inch (diagonal) LED-backlit glossy widescreen, Intel HD Graphics 6000, MacOS Sierra', 5),
(11, 4, 'Macbook Pro MR9U2', 45000000, 'mac-u2-silver-0_8_0_0.jpg', '2.3GHz dual-core Intel Core i5 processor, Turbo Boost up to 3.6GHz, 8GB 2133MHz LPDDR3 memory, 128GB SSD storage, 13-inch, Intel Iris Plus Graphics 640,  Two Thunderbolt 3 ports, Backlit Keyboard - US English, MacOS Sierra, \" SP nguyên seal, chưa kích hoạt bảo hành, bảo hành chính hãng tại Apple toàn cầu \"\r\n', 0),
(12, 1, 'Laptop Dell XPS 15 9575', 59000000, 'dell_xps_15_9575_70170134_7.jpg', 'CPU: Intel® Core™ i7-8705G (3.10GHz up to 4.10GHz, 8MB Cache) - RAM: 16GB DDR4 2400MHz - Ổ cứng: 512GB SSD - VGA: Radeon RX Vega M GL Graphics 4GB - Màn hình: 15.6\" FHD (1920 x 1080) InfinityEdge Anti-Glare Touch IPS 100% sRGB 400-Nits display, Cảm ứng màn hình, xoay gập 360 độ - Tính năng: bảo mật vân tay - Pin: 75WHr - Weight: 2.0Kg - Color: Silver - OS: Windows 10 Home + office 365.', 10),
(13, 1, 'Laptop Dell XPS 13 9380', 39000000, 'dell_xps_13_9370_415px1_-_silver_anh4_0_0_0.jpg', 'CPU: Intel Core i7-8565U (1.8GHz up to 4.6GHz, 8MB Cache)\r\nRam: 8GB LPDDR3 2133MHz\r\nỔ cứng: 256GB SSD M.2PCIe NVMe\r\nVGA: Intel UHD Graphics 620\r\nDisplay: 13.3\" 4K Ultra HD (3840x2160) InfinityEdge Touch Display\r\nLed Keyboard / FingerPrint / Wlan + Bluetooth, Camera\r\nColor: Silve\r\nPin: 4 Cell 52WHr\r\nWeight: 1.21kg\r\nOS: Windows 10 Home.', 0),
(14, 1, 'Laptop Dell XPS 13 9370', 38500000, 'dell_xps_13_9370_rose_gold_anh4_0.jpg', 'CPU: Intel Core i7-8565U (1.8GHz up to 4.6GHz, 8MB Cache)\r\nRam: 8GB LPDDR3 2133MHz\r\nỔ cứng: 256GB SSD M.2PCIe NVMe\r\nVGA: Intel UHD Graphics 620\r\nDisplay: 13.3\" 4K Ultra HD (3840x2160) InfinityEdge Touch Display\r\nLed Keyboard / FingerPrint / Wlan + Bluetooth, Camera\r\nColor: Gold\r\nPin: 4 Cell 52WHr\r\nWeight: 1.21kg\r\nOS: Windows 10 Home.', 3),
(15, 2, 'Laptop Asus Vivobook S430', 21000000, '8cedfdac4d15909cb54a0dee45e384ef.jpg', 'CPU: Intel Core i7-8565U (1.8GHz up to 4.6GHz 8MB Cache) / RAM: 8GB DDR4 bus 2400MHz (Còn 1 slot ram) / Ổ cứng: 512GB SSD M.2 SATA / VGA: VGA Intel HD Graphics 620 / Display: 14.0\" FHD (1920 x 1080) IPS, Anti-Glare with 45% NTSC / Led_Keyboard, Finger Print, Bluetooth 4.2/ USB / HD Camera / Weigh: 1.4kg / Pin: 3 cell 42 WHrs / Color: Gun Metal / OS: Windows 10 SL', 15),
(16, 4, 'Macbook Air MREE3', 27000000, 'MREE2-3.jpg', '* CPU: 1.6GHz Intel Core i5 processor, up to 3.6GHz\r\n* RAM: 8GB 2133MHz LPDDR3 memory\r\n* HDD: 128GB SSD storage\r\n* 13-inch Retina display\r\n* Intel UHD Graphics 617\r\n* Touch ID, Force Touch trackpad\r\n* macOS', 4),
(17, 7, 'Laptop Lenovo TP T480s', 33000000, '445_a33b2225651735cd71bc4f019d5e8858.jpg', 'CPU: Intel Core i7-8550U (1.8GHz Upto 4.0GHz, 4 Cores 8 Threads, 8MB Cache) / RAM: 8GB DDR4 2400MHz (còn 1 slot) / 256GB M.2 SSD NVMe / VGA: Intel UHD Graphics 620 / Display: 14.0\" FHD (1920 x 1080) IPS anti-glare / FingerPrint / Camera, Wlan + Bluetooth / Card reader / USB,HDMI / Pin: 3 cell 57Wh / Weigh: 1.3kg / Color: Black / OS: DOS', 18),
(18, 5, 'Laptop Acer Swift 5', 34000000, 'acer_swift_5_sf515-anh1_0.jpg', 'CPU: Intel® Core™ i7-8565U (1.80 upto 4.60GHz, 4 nhân 8 luồng, 8MB) / RAM: 8GB DDR4 bus 2400MHz (Còn 1 slot ram) / Ổ cứng: 256GB SSD PCIe / VGA: VGA Intel HD Graphics 620 / Display: 15.6\" FHD (1920*1080) IPS - Cảm ứng / Led_Keyboard, Finger Print, Bluetooth 4.2/ USB / HD Camera / Weigh: 0.99kg / Pin: 3-cell, 4670 mAh / Color: Blue / OS: Windows 10 SL', 24),
(19, 3, 'Laptop HP Probook 450', 15500000, 'hp_1_260.jpg', 'CPU: Intel Core i5-8250U (1.6GHz Upto 3.4GHz, 4 Cores 8 Threads, 6MB)\r\nRAM: 8GB DDR4 2400Mhz (Còn 1 slot)\r\nỔ cứng: 1TB HDD 5400rpm + 1slot M.2 SSD\r\nVGA: Intel UHD Graphics 620\r\nDisplay: 15.6\" HD LED (1366x768)\r\nFingerPrint, TPM, Led Keyboard / Camera, Wlan ac + Bluetooth\r\nPin: 6cell / Weigh: 2.1kg / OS: DOS.', 10),
(20, 7, 'Laptop Lenovo IdeaPad 720s', 35000000, 'lenovo_thinkpad_x280_20kfs01b00_-_black_3.jpg', 'CPU: Intel® Core™ i7-8650U Processor ( 8M Cache 1.9GHz up to 4.20 GHz) / Ram: 16 GB DDR4 - 2400 Mhz / Ổ cứng: 512GB PCIe M.2 SSD / VGA: NVIDIA® Quadro P500 2GB GDDR5./ Display: 15.6\" FHD (1920 x 1080) IPS Touchscreen / 720p Webcam, Finger, Bluetooth ,Backlit / Pin: 104 Wh Lithium-Ion, tháo rời, 32-Wh Pin liền, 72-Wh Pin rời / Weight: 2.2kg / OS: Windows 10 Pro 64bit', 12),
(21, 1, 'Laptop Dell Inspiron 5584', 24000000, 'dell_2018.jpg', 'CPU:Intel® Core™ i7-8565U (1.80GHz Up to 4.60 GHz, 4Cores, 8Threads, 8MB Cache, FSB 4GT/s)\r\nRAM: 8GB DDR4 Buss 2400MHz (Còn 1 Slots RAM)\r\nỔ cứng: SSD 128GB + HDD 1TB\r\nVGA: NVIDIA GeForce® MX130 2GB GDDR5\r\nDisplay: 15.6-inch FHD (1920 x 1080) IPS\r\nBluetooth 4.2 / USB / HD Camera\r\nWeigh: 1.95kg\r\nPin: 3 cell 42WHrs\r\nColor: Silver\r\nOS: Windows 10 SL bản quyền.', 33),
(22, 1, 'Laptop Dell Vostro 3480', 11500000, 'dell_xps_13_9360_2018_i5ram_8gb_128gb_cam_ung_0_0.jpg', 'CPU: Intel® Core™ i3-8145U (2.10 upto 3.90GHz, 2 nhân 4 luồng, 4MB Cache)\r\nRam: 4GB DDR4 2666MHz (Trống 1 khe ram)\r\nỔ cứng: HDD 1TB 5400rpm 2.5\" SATA\r\nVGA: Intel® UHD Graphics 620\r\nDisplay: 14.0\" HD (1366x768) Anti-glare LED\r\nColor: Black\r\nPin: 42WHr, 3-Cell\r\nWeight: 1.79kg\r\nOS: Windows 10 Home bản quyền', 20),
(24, 5, 'Laptop Acer Aspire 7', 18200000, 'dai-dien-dc0e2deb-b3d9-43fd-a3f3-3ec9fd51eff9.jpg', 'CPU: Intel® Core i5-8300H (2.3GHz Upto 4.0GHz, 4 Cores 8 Threads, 8MB Cache) / RAM: 8GB DDR4 / HDD: 1TB 5400rpm / VGA: NVIDIA GeForce GTX 1050 4GB GDDR5 / Display: 15.6\" Full HD (1920x1080) IPS / Webcam, Wlan ac +BT / sd card reader / Pin: 4Cell / Weigh: 2.45kg / OS: Linux', 6),
(27, 7, 'Laptop Lenovo TP E580', 15600000, 'lenovo_thinkpad_edge_e580-anh1.jpg', 'CPU: Intel Core i5-8250U (1.6GHz Upto 3.4GHz, 4 Cores 8 Threads, 6MB Cache) /RAM: 4GB DDR4 2400MHz (còn 1 slot) / Ổ cứng: 1TB HDD 5400rpm + 1 Slot SSD PCI express/ VGA: Intel HD Graphics 720 / Display:15.6\" HD (1366 x 768) antiglare/ Camera / Wlan + Bluetooth /Card reader / Pin: 3 cell 45Wh / Weigh: 2.1 kg /OS: Windows 10 Home 64bit', 2),
(28, 4, 'MacBook Pro MV902', 55000000, 'b30b570010d02d7e9c48e3c49c914cdd.jpg', '* 2.6GHz 6‑core 9th‑generation Intel Core i7 processor, Turbo Boost up to 4.5GHz\r\n* Bộ nhớ: 16GB 2400MHz DDR4 memory\r\n* Ổ lưu trữ: 256GB SSD storage\r\n* Màn hình: 15.4-inch Retina display with True Tone, Touch Bar, Touch ID, IPS technology\r\n* Card màn hình: Radeon Pro 555X with 4GB of GDDR5 memory\r\n* HĐH: macOS', 3),
(29, 2, 'Laptop Asus TP412UA', 15000000, '1_2_0_0_0.jpg', 'CPU: Intel® Core™ i5-8250U Processor (6MB Cache, 1.60 GHz up to 3.40 GHz) / Ram: 4GB DDr4 Bus 2400MHz / Ổ cứng: SATA3 128GB M.2 SSD / VGA: Integrated Intel® HD Graphics 620 / Display: 14.0 inch FHD (1920X1080) WV 250nits Glare NTSC 45% - Cảm ứng màn hình / Finger Print,2x USB 2.0 1x USB 3.0 / USB 2.0 1x USB3.1 Type C (Gen 1) 1x Headphone-out & Audio-in Combo Jack 1x HDMI / Weight: 1.5 Kg / Color: Silver Blue / Pin: 3 Cells 42 Whrs Battery / OS: Windows 10 Home SL 64bit.', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderId`,`productId`);

--
-- Chỉ mục cho bảng `ordermethod`
--
ALTER TABLE `ordermethod`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ordermethod`
--
ALTER TABLE `ordermethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
