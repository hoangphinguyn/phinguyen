-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 04:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(0, 'Tin tức', 'Tin-tuc', 0),
(1, 'Sức khoẻ', 'Suc-khoe', 0),
(2, 'Đánh giá', 'Danh-gia', 0),
(3, 'Tư liệu', 'Tu-lieu', 0),
(4, 'Khảo sát', 'Khao-sat', 0),
(5, 'Thể lệ', 'The-le', 0),
(6, 'Thời sự', 'Thoi-su', 0),
(7, 'Khoa học', 'Khoa-hoc', 0),
(8, 'Giải trí', 'Giai-tri', 0),
(9, 'Pháp luật', 'Phap-luat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `author` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(0, '150 xe buýt điện chở khách cho Metro Bến Thành - Suối Tiên', '17 tuyến buýt với 150 xe điện, lộ trình kết nối nhà ga Metro Bến Thành - Suối Tiên, sẽ bắt đầu hoạt động khi dự án vận hành thương mại ngày 22/12.\r\n\r\nTheo Trung tâm quản lý giao thông công cộng (Sở Giao thông Vận tải TP HCM),', 'TP HCM17 tuyến buýt với 150 xe điện, lộ trình kết nối nhà ga Metro Bến Thành - Suối Tiên, sẽ bắt đầu hoạt động khi dự án vận hành thương mại ngày 22/12.\r\n\r\nTheo Trung tâm quản lý giao thông công cộng (Sở Giao thông Vận tải TP HCM), những tuyến buýt này do Công ty cổ phần Xe khách Phương Trang Futabuslines là doanh nghiệp vận tải trúng thầu và đảm nhận khai thác.\r\n\r\n17 tuyến xe lần lượt mang số hiệu: 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168 và 169. Tất cả xe đều chạy bằng điện, gồm hai loại 30 và 60 chỗ. Lộ trình của những tuyến buýt này kết nối từ các khu dân cư, trường học, đầu mối giao thông, trung tâm thương mại... đến các nhà ga Metro Bến Thành - Suối Tiên. Đây là những nơi tập trung đông người, giúp khách dễ đón xe buýt đến các nhà ga và ngược lại.\r\n\r\nXe buýt điện chuẩn bị đưa vào hoạt động, kết nối các ga Metro Bến Thành - Suối Tiên. Ảnh: Hạ Giang\r\nXe buýt điện chuẩn bị đưa vào hoạt động, kết nối các ga Metro Bến Thành - Suối Tiên. Ảnh: Hạ Giang\r\n\r\nĐể đáp ứng yêu cầu vận hành liên tục và ổn định, Phương Trang cho biết họ đã xây dựng hai trạm sạc điện tại TP Thủ Đức, đồng thời tận dụng hạ tầng hiện có trên toàn quốc, như bến xe, trạm dừng nghỉ... để đầu tư thêm hệ thống này.\r\n\r\nMạng lưới buýt tại TP HCM hiện có hơn 2.000 xe, trong đó buýt điện và CNG có gần 550, còn lại chạy bằng dầu diesel. Trước đó, từ năm 2022 thành phố bắt đầu thí điểm hoạt động 5 tuyến buýt điện, nhưng đến nay mới một tuyến đưa vào khai thác là D4 (Vinhomes Grand Park - Bến xe buýt Sài Gòn). Sở Giao thông Vận tải cho biết khi đưa vào hoạt động, khách đi buýt D4 liên tục tăng, nhận được nhiều phản hồi tích cực từ hành khách.\r\n\r\nThành phố đang đặt mục tiêu từ năm 2025, toàn bộ xe buýt thay thế, đầu tư mới đều chạy bằng điện, năng lượng xanh. Kế hoạch này nhằm thực hiện chương trình hành động của Chính phủ về chuyển đổi năng lượng xanh, giảm phát thải khí của ngành giao thông vận tải. Để thực hiện, TP HCM đang nghiên cứu các chính sách hỗ trợ, thu hút đơn vị vận tải tham gia đầu tư hệ thống xe buýt.\r\n\r\nMetro Bến Thành - Suối Tiên có tổng mức đầu tư hơn 43.700 tỷ đồng, là dự án đường sắt đô thị đầu tiên ở TP HCM. Toàn tuyến dài gần 20 km, từ Bến Thành (quận 1) đến depot Long Bình (TP Thủ Đức), với ba ga ngầm và 11 ga trên cao. Cùng với tổ chức mạng lưới xe buýt điện kết nối, tại nhiều nhà ga của dự án này được xây dựng hệ thống cầu bộ hành, bãi đậu xe... để khách dễ dàng tiếp cận.', 'z6097588540329-eb61de1e9eb89e8-5431-7183-1733318297.jpg', 0, 0, 0, '2024-12-05 01:27:03', '2024-12-05 01:27:03', '6\r\n\r\n'),
(1, 'Những người Mỹ mộ đạo tôn sùng ông Trump', 'Nhóm cử tri Thiên chúa giáo mộ đạo được cho là nền tảng ủng hộ vững chắc của cựu tổng thống Trump, có thể tạo đòn bẩy đưa ông tới Nhà Trắng.', 'Nhóm cử tri Thiên chúa giáo mộ đạo được cho là nền tảng ủng hộ vững chắc của cựu tổng thống Trump, có thể tạo đòn bẩy đưa ông tới Nhà Trắng.\r\n\r\nĐó là một buổi chiều thứ bảy ấm áp nhưng âm u. Khoảng 100 người biểu tình đang hò hét trước Nhà Trắng, nói với người đàn ông sống ở đó rằng họ ngưỡng mộ ông, họ đánh giá cao những gì ông đã làm, nhưng giờ là lúc ông cần rời đi.\r\n\r\n\"Hey hey, ho ho, cảm ơn, Joe, đến lúc ra đi rồi\", đám đông hô hào.\r\n\r\nHọ thuộc về một liên minh vững chắc ủng hộ cựu tổng thống Donald Trump, với những người da trắng theo đạo Thiên chúa là thành phần chủ chốt.\r\n\r\n<img src= \"https://i1-vnexpress.vnecdn.net/2024/10/30/dsc-3075-20240719055025050-jpe-3534-5134-1730279916.jpg?\">\r\nw=1020&h=0&q=100&dpr=1&fit=crop&s=lHUVII9JZLvM0G9u9HDIWg>\r\nCựu tổng thống Mỹ Donald Trump trên sân khấu Đại hội Toàn quốc đảng Cộng hòa ở Milwaukee hồi tháng 7. Ảnh: CNN\r\n\r\nVào đầu những năm 1970, 90% người Mỹ tự nhận mình là người theo đạo Thiên chúa. Nhưng đến năm 2020, con số này giảm xuống còn 64%. Trung tâm nghiên cứu Pew lưu ý nếu xu hướng cải đạo gần đây tiếp diễn, người theo đạo Thiên chúa có thể chỉ còn chiếm chưa đến một nửa dân số Mỹ trong vòng vài thập kỷ tới.\r\n\r\nVì vậy, khi Trump đưa ra phán quyết bãi bỏ quyền phá thai hồi năm 2022, họ đã ăn mừng vì đức tin của mình được bảo toàn. Và khi ông hứa sẽ đưa họ trở lại thành một thế lực chính trị, họ đồng loạt ủng hộ.\r\n\r\n\"Chúng ta phải đưa tôn giáo của mình trở lại\", Trump nói với tổ chức Đài phát thanh Tôn giáo Quốc gia hồi đầu năm. \"Chúng ta phải đưa Thiên chúa giáo trở lại đất nước này\".\r\n\r\nTheo một phân tích của bình luận viên Shadi Hamid từ Washington Post, sau khi Trump thể hiện lập trường ủng hộ chủ nghĩa dân tộc Thiên chúa giáo trong cuộc bầu cử năm 2016, những người thuộc nhóm này đã góp phần giúp ông giành chiến thắng. Số lượng thành viên trong các nhà thờ Thiên chúa từ đó tăng lên, được thôi thúc bởi những người ủng hộ Trump đang tìm kiếm nơi để thực hành tín ngưỡng.\r\n\r\n\"Họ trở thành những người theo đạo Thiên chúa vì ý nghĩa chính trị của nó\", Hamid viết. \"Trong số những người da trắng không theo đạo Thiên chúa ủng hộ Trump vào năm 2016, khoảng 16% bắt đầu xác định mình là người theo đạo vào năm 2020. Điều này một lần nữa cho thấy chính trị, chứ không phải tôn giáo, là yếu tố thúc đẩy họ\".\r\n\r\nCó thể nhìn thấy tình cảm của nhóm này đối với cựu tổng thống Trump tại Đại hội Toàn quốc đảng Cộng hòa (RNC) ở Milwaukee hồi tháng 7.\r\n\r\n\"Hãy để cơn sốt Trump trỗi dậy. Hãy để cơn sốt Trump thống trị một lần nữa\", Đô vật Hulk Hogan khuấy động đám đông tại sự kiện. Xé chiếc áo đen có in hình lá cờ Mỹ để lộ chiếc áo phông đỏ in dòng chữ Trump - Vance bên trong, ông sử dụng một cụm từ kỳ lạ phù hợp với cả người hâm mộ lẫn người phản đối để mô tả về cựu tổng thống.\r\n\r\n\"Hãy để cơn sốt Trump khiến nước Mỹ vĩ đại trở lại\", Hogan hô lớn.\r\n\r\nXuyên suốt 4 ngày từ 15 đến 18/7 , RNC đã trở thành lễ kỷ niệm thuần túy. Hết diễn giả này đến diễn giả khác tranh nhau tung ra những lời khen ngợi Trump và chỉ trích đối thủ đảng Dân chủ, lúc bấy giờ vẫn là Tổng thống Biden.\r\n\r\nCương lĩnh được đảng Cộng hòa công bố tại đại hội không giống các tài liệu chính sách khô khan, cũ kỹ, mà giống như một bài phát biểu của Trump chứa đầy những tuyên bố khoa trương, cùng các thông tin chưa được kiểm chứng. Nhưng rất ít người trong phòng tỏ ra hoài nghi về việc cựu tổng thống, sau tất cả, sẽ trở lại Nhà Trắng.\r\n\r\nVới Trump, việc ông áp đảo Tổng thống Biden trong các cuộc thăm dò dư luận ba tuần trước đó đã khiến cuộc hội tụ của các đảng viên Cộng hòa trở nên ngọt ngào hơn.\r\n\r\nChủ tịch Teamsters Sean O\'Brien là người đứng đầu một công đoàn từng ủng hộ ứng viên Dân chủ Hillary Clinton và Biden, bước lên sân khấu gọi cựu tổng thống là \"người cứng rắn\".\r\n\r\nNhiều gương mặt từng cạnh tranh với Trump trong các vòng bầu cử sơ bộ giờ đây phủ nhận những lời chỉ trích của chính họ dành cho cựu tổng thống chỉ vài tháng trước.\r\n\r\nThống đốc Nam Carolina Nikki Haley từng khiến những người trung thành với Trump tức giận hồi đầu năm nay khi từ chối rời khỏi cuộc đua tranh suất ứng viên đảng Cộng hòa và gọi ông là \"kẻ độc hại\". Tại đại hội, bà đã đầu hàng tuyệt đối khi tuyên bố \"Donald Trump được sự ủng hộ mạnh mẽ từ tôi, chấm hết\".\r\n\r\nVới gương mặt rạng rỡ từ chỗ ngồi của mình tại nhà thi đấu Fiserv Forum của Milwaukee, Trump hoàn toàn bị cuốn hút bởi bầu không khí tại sự kiện. Với một miếng băng trắng lớn trên tai che đi vết thương trong vụ ám sát hụt trước đó, ông trông vui vẻ và vô cùng phấn khích khi đô vật Hogan hô hào trên sân khấu.\r\n\r\nTrong 8 năm kể từ lần đầu tiên bước chân vào Nhà Trắng, Trump đã buộc đảng Cộng hòa phải chấp nhận quan điểm của ông rằng bất cứ điều gì ngoại trừ lòng trung thành tuyệt đối đều là sự phản bội, bất cứ điều gì không phải sự thống trị tuyệt đối đều là thất bại và những người Mỹ kính sợ Chúa sẽ mất tất cả những gì họ yêu quý ở đất nước của mình nếu ông không trở lại Nhà Trắng.\r\n\r\n\"4 tháng nữa, chúng ta sẽ có một chiến thắng đáng kinh ngạc và chúng ta sẽ bắt đầu 4 năm vĩ đại nhất trong lịch sử đất nước\", Trump phát biểu trên sân khấu vào ngày cuối đại hội với phong thái tự tin giống như của một người chưa từng thất bại.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/10/30/wl2-3854-20241028201431495-jpe-8002-2723-1730279916.jpg\"> w=1020&h=0&q=100&dpr=1&fit=crop&s=0VWePwq34KpKZA9Tdlv4Cg\r\nÔng Trump vỗ tay dưới hàng ghế khán giả tại Đại hội Toàn quốc đảng Cộng hòa hồi tháng 7. Ảnh: CNN\r\n\r\nTối hôm đó, ông thực sự không phải kẻ thua cuộc. Trong hội trường, đám đông ngưỡng mộ tin rằng Trump đã thắng cuộc bầu cử năm 2020. Họ tin rằng cuộc bầu cử đã bị gian lận. Và họ biết ông Biden đang ở thế khó.\r\n\r\nMột số tín đồ Thiên chúa giáo trong nhà thi đấu thừa nhận rằng việc Trump kết hôn nhiều lần, bị cáo buộc ngoại tình, có ngôn từ mất kiểm soát hay hành vi thô lỗ là điều đáng lo ngại. Nhưng họ cũng bị mê hoặc bởi cách ông vượt qua những vụ bê bối, thất bại về tài chính và các vụ truy tố hình sự.\r\n\r\n\"Cùng nhau, chúng ta sẽ mở ra một kỷ nguyên mới an toàn, thịnh vượng và tự do cho công dân của mọi chủng tộc, tôn giáo, màu da và tín ngưỡng\", Trump nói. \"Bất hòa và chia rẽ trong xã hội của chúng ta phải được chữa lành. Chúng ta sẽ cùng nhau vươn lên, hoặc sẽ sụp đổ. Tôi đang tranh cử để trở thành tổng thống cho toàn thể nước Mỹ, chứ không phải một nửa nước Mỹ\".\r\n\r\nTrong gần 10 phút, Trump bám sát diễn văn đã được chuẩn bị sẵn, đề cao tình đoàn kết và hòa giải mà chiến dịch của ông đã cam kết sau vụ ám sát hụt. Những người trong đám đông, với hàng chục người đeo băng tai để thể hiện đoàn kết với cựu tổng thống, gật đầu đồng tình.\r\n\r\nNhưng rồi sau đó, ông tiếp tục nói thêm một tiếng 20 phút nữa về những lời buộc tội, bất bình và dối trá, trong bài phát biểu lan man đến mức ngay cả những người ủng hộ trung thành cũng phải nhìn đồng hồ.\r\n\r\nNhưng trước đó, ông đã kịp kể một câu chuyện mà không người đam mê ánh đèn sân khấu nào có thể cưỡng lại. Câu chuyện về một buổi chiều đẹp trời, ông bị bắn nhưng không tìm cách chạy trốn mà vẫn đứng vững, tay giơ cao, không cúi đầu.\r\n\r\n\"Đáng lẽ tôi đã không ở đây đêm nay\", ông nói một cách nghiêm trang.\r\n\r\n\"Có chứ!\", đám đông liên tục hét lên đáp lại lời cựu tổng thống.\r\n\r\n\"Cảm ơn, nhưng không phải\". Trump vừa nói vừa lắc đầu. \"Tôi đứng trước các bạn trong nhà thi đấu này chỉ nhờ ân sủng của Chúa toàn năng\".\r\n\r\nĐám đông một lần nữa trở nên phấn khích.', 'dsc-3075-20240719055025050-jpe-3534-5134-1730279916.jpg', 0, 0, 0, '2024-11-02 13:25:57', '2024-11-02 13:25:57', '1'),
(2, 'Hai lần bút phê \'dọn đường\' giúp đại gia Nguyễn Cao Trí của ông Mai Tiến Dũng', 'Cựu bộ trưởng, chủ nhiệm Văn phòng Chính phủ Mai Tiến Dũng bị cáo buộc dù không được phân công nhưng vẫn hai lần ký bút phê vào đơn kiến nghị để giúp đỡ ông Nguyễn Cao Trí.', 'Cựu bộ trưởng, chủ nhiệm Văn phòng Chính phủ Mai Tiến Dũng bị cáo buộc dù không được phân công nhưng vẫn hai lần ký bút phê vào đơn kiến nghị để giúp đỡ ông Nguyễn Cao Trí.\r\n\r\nNgày 1/11, ông Mai Tiến Dũng cùng bà Trần Bích Ngọc, cựu Vụ trưởng Vụ I Văn phòng Chính phủ, bị Cơ quan Cảnh sát điều tra Bộ Công an đề nghị truy tố về tội Lợi dụng chức vụ, quyền hạn trong khi thi hành công vụ. Ông Nguyễn Cao Trí, Tổng giám đốc Công ty Sài Gòn Đại Ninh, bị đề nghị truy tố về tội Đưa hối lộ.\r\n\r\nTrong 6 người bị đề nghị truy tố tội Nhận hối lộ tại vụ án có cựu Bí thư Tỉnh ủy Lâm Đồng Trần Đức Quận và cựu Chủ tịch UBND tỉnh Lâm Đồng Trần Văn Hiệp.\r\n\r\n>> Danh sách 10 bị can\r\n\r\nTheo kết luận điều tra, Công ty Cổ phần Đầu tư Du lịch Sài Gòn Đại Ninh được UBND tỉnh Lâm Đồng cấp giấy chứng nhận đầu tư thực hiện dự án Khu đô thị thương mại, du lịch, nghỉ dưỡng sinh thái Đại Ninh ở huyện Đức Trọng từ năm 2010. Công ty do bà Phan Thị Hoa làm Chủ tịch HĐQT kiêm Tổng giám đốc. Tổng diện tích đất quy hoạch thực hiện dự án 3.595 ha.\r\n\r\nQuá trình thanh tra công tác quản lý, sử dụng đất đai và đầu tư xây dựng trên địa bàn tỉnh Lâm Đồng, Thanh tra Chính phủ xác định Công ty Sài Gòn Đại Ninh trong quá trình thực hiện dự án có nhiều vi phạm. Việc này thuộc các trường hợp thu hồi đất, chấm dứt hoạt động dự án.\r\n\r\n<img src = \"https://i1-vnexpress.vnecdn.net/2024/11/02/mai-du-ng-1192-1730535793.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=E7s5ZmpWxsaiCc38lha2qg\">\r\nÔng Mai Tiến Dũng khi còn đương chức. Ảnh: VGP\r\n\r\nNăm 2020, Thanh tra Chính phủ ban hành kết luận thanh tra, kiến nghị Thủ tướng giao UBND tỉnh Lâm Đồng chấm dứt hoạt động, thu hồi đất của dự án Đại Ninh. Nắm bắt được việc này, ông Nguyễn Cao Trí, Chủ tịch HĐQT Công ty Cổ phần Tập đoàn Đầu tư và quản lý giáo dục Văn Lang, đã thỏa thuận mua lại dự án từ bà Hoa. Hình thức là mua lại cổ phần của công ty do bà Hoa và người thân đang nắm giữ.\r\n\r\nSau khi đạt được thỏa thuận chuyển nhượng dự án Đại Ninh, ông Trí được ông Trần Văn Minh, Phó tổng Thanh tra Chính phủ (đã chết), hướng dẫn gửi đơn kiến nghị lên Chính phủ để chỉ đạo Thanh tra vào cuộc. Mục đích là để dự án được gia hạn, giãn tiến độ, không bị thu hồi.\r\n\r\nĐầu tháng 10/2020, đại gia Trí cầm theo đơn ra Hà Nội gặp ông Mai Tiến Dũng tại trụ sở Văn phòng Chính phủ để trình bày. Ông Trí nhờ ông Dũng bút phê vào đơn, giao Vụ I, Văn phòng Chính phủ tham mưu, báo cáo lãnh đạo Chính phủ có ý kiến chỉ đạo, để chuyển đơn cho Thanh tra Chính phủ giải quyết, kết luận điều tra nêu.\r\n\r\nÔng Dũng đồng ý, bút phê \"chuyển vụ I\" vào đơn của ông Trí và giao cho vụ trưởng Trần Bích Ngọc làm đề xuất. Từ đó, bà Ngọc soạn văn bản kiến nghị gửi Phó thủ tướng Thường trực giao Văn phòng Chính phủ chuyển đơn đến Thanh tra Chính phủ.\r\n\r\nSáu ngày sau, Văn phòng Chính phủ gửi văn bản đến Thanh tra Chính phủ với nội dung: \"Thực hiện ý kiến chỉ đạo của Phó Thủ tướng, chuyển đơn của Công ty Sài Gòn Đại Ninh để Thanh tra Chính phủ xem xét, giải quyết, trả lời doanh nghiệp\".\r\n\r\nDo đơn lần này chưa được giải quyết, ông Trí được ông Minh tiếp tục hướng dẫn làm đơn thêm một lần nữa, theo hướng lãnh đạo Chính phủ giao Thanh tra \"giải quyết đơn\", khi đó mới có cơ sở thực hiện.\r\n\r\nĐầu tháng 1/2021, ông Trí một lần nữa hẹn gặp ông Dũng ăn sáng ở Nhà khách 35 Hùng Vương, để trình bày. Ông Trí đề xuất ông Dũng rằng thông qua Văn phòng Chính phủ báo cáo xin ý kiến Phó thủ tướng Thường trực chỉ đạo mạnh mẽ hơn, giao Thanh tra Chính phủ kiểm tra, rà soát, giải quyết.\r\n\r\nTheo kết luận điều tra, thời điểm này, ông Dũng cũng nhận được ý kiến của cấp trên chỉ đạo phải quan tâm, giúp đỡ ông Trí nên đã bút phê hai lần vào đơn để giao bà Ngọc đề xuất. Không chỉ gặp người đứng đầu Văn phòng Chính phủ, ông còn nhiều lần gọi điện, nhắn tin, gặp bà Ngọc để nhờ làm phiếu trình xin ý kiến Phó thủ tướng.\r\n\r\nNgày 25/1/2021, Văn phòng Chính phủ chuyển đơn của ông Trí đến Thanh tra Chính phủ, truyền đạt ý kiến của Phó thủ tướng Thường trực. Sau lần chỉ đạo này, ông Minh ký quyết định thành lập tổ công tác giải quyết kiến nghị của Công ty Sài Gòn Đại Ninh không đúng quy định pháp luật. Hành vi này đã tạo tiền đề cho hàng loạt sai phạm trong việc điều chỉnh, sửa đổi kết luận thanh tra, cho dự án Đại Ninh được gia hạn, giãn tiến độ trái pháp luật.\r\n\r\nNgoài ra, ông Trí còn nhiều lần nhờ bà Ngọc tham mưu, báo cáo với lãnh đạo Chính phủ để dự án không bị thu hồi theo đúng đường hướng.\r\n\r\nC03 kết luận việc Vụ I Văn phòng Chính phủ đề xuất Phó thủ tướng Thường trực đồng thuận cho dự án Đại Ninh được tiếp tục triển khai, gia hạn sử dụng đất trong khi các vi phạm của dự án chưa được khắc phục là không có căn cứ.\r\n\r\n<img src = \"https://i1-vnexpress.vnecdn.net/2024/11/02/cao-tri-9623-1730535793.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=oI2loCOEfCqlIBVkgqGaZA\">\r\nÔng Nguyễn Cao Trí trong phiên tòa hồi tháng 3 ở TP HCM. Ảnh: Quỳnh Trần\r\n\r\nQuá trình \"dọn đường\", ông Trí đã cảm ơn ông Dũng 200 triệu đồng, bà Ngọc 50 triệu đồng.\r\n\r\nÔng Mai Tiến Dũng khai ông Trí là doanh nhân \"có mối quan hệ thân tình với lãnh đạo Chính phủ\" - cấp trên của ông. Khi đưa đơn kiến nghị lần một chỉ là nhân tiện trong lúc ông Trí đang làm việc với Văn phòng Chính phủ về việc tài trợ máy thở và vật tư y tế chống dịch.\r\n\r\nVì ông Trí nói đã đề đạt và được cấp trên ủng hộ nên ông Dũng mới hai lần bút phê vào đơn, giao bà Ngọc đề xuất. Ông Dũng khai giúp ông Trí bút phê vào đơn vì nghĩ ông ta đã nhờ lãnh đạo Chính phủ đồng ý. Ngoài việc bút phê vào đơn, ông Dũng không ký vào bất kỳ tài liệu gì khác vì không phải là người được phân công phụ trách lĩnh vực này.\r\n\r\nQuá trình điều tra, ông Dũng đã thừa nhận sai phạm, được ông Trí biếu 200 triệu đồng cảm ơn. Ngoài ra, ông Trí còn hỗ trợ 380 triệu đồng tiền mua quà lưu niệm cho lễ kỷ niệm của Văn phòng Chính phủ. Bị can Dũng đã phối hợp với gia đình nộp lại 580 triệu đồng để khắc phục.\r\n\r\nSau khi Thanh tra Chính phủ sửa kết luận, ông Trí đã đạt được mục đích là chuyển từ chấm dứt hoạt động, thu hồi đất của dự án thành không thu hồi, cho giãn tiến độ và tiếp tục thực hiện dự án. Ông Trí sau đó chuyển nhượng toàn bộ dự án Đại Ninh cho Tập đoàn Novaland, thu lợi 2.700 tỷ đồng.\r\n\r\nHồi tháng 4, trong vụ án xảy ra ở Ngân hàng SCB, ông Trí bị tuyên 8 năm tù về tội Lạm dụng tín nhiệm chiếm đoạt tài sản, với cáo buộc chiếm đoạt 1.000 tỷ đồng của bà Trương Mỹ Lan.', 'mai-du-ng-1192-1730535793.jpg', 0, 0, 0, '2024-11-02 13:34:43', '2024-11-02 13:34:43', '2'),
(3, 'Intel bị loại khỏi chỉ số Dow Jones, nhường chỗ cho Nvidia', 'Cổ phiếu Intel bị loại khỏi Chỉ số Bình quân Công nghiệp Dow Jones (DJIA) sau 25 năm, để nhường vị trí cho đối thủ Nvidia.', 'Cổ phiếu Intel bị loại khỏi Chỉ số Bình quân Công nghiệp Dow Jones (DJIA) sau 25 năm, để nhường vị trí cho đối thủ Nvidia.\r\n\r\nCông ty S&P Dow Jones Indices hôm 1/11 thông báo sẽ thay thế cổ phiếu hãng chip Intel (Mỹ) trong chỉ số DJIA. DJIA gồm 30 mã cổ phiếu có vốn hóa lớn trên thị trường chứng khoán Mỹ. Đây là một trong ba chỉ số chính, lâu đời và được theo dõi sát sao nhất tại Wall Street. Giới đầu tư coi DJIA là một trong những thước đo sức khỏe nền kinh tế Mỹ.\r\n\r\nNvidia sẽ thế chân Intel trong chỉ số này. Việc thay đổi sẽ diễn ra từ phiên giao dịch 8/11, phản ánh sự bùng nổ của AI và chuyển biến lớn trong ngành bán dẫn. Intel là một trong 2 hãng công nghệ đầu tiên tại Mỹ được đưa vào DJIA.\r\n\r\n<img src=\"https://i1-kinhdoanh.vnecdn.net/2024/11/02/logo-hang-cong-nghe-07538-7190-5312-3316-1730519861.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=HpUMRbiMMX-Bfyiq8R8lpA\">\r\nLogo Intel tại triển lãm MWC, tháng 2/2023. Ảnh: Lưu Quý\r\n\r\nĐây là tin tức kém lạc quan mới nhất mà hãng chip Mỹ phải nhận gần đây. Từng là thế lực thống trị trong mảng chip, Intel vài năm qua dần mất lợi thế sản xuất trước đối thủ TSMC (Đài Loan, Trung Quốc). Họ cũng mắc nhiều sai lầm, như chậm chân trong làn sóng AI, trong đó có việc bỏ qua khoản đầu tư vào OpenAI - công ty mẹ ChatGPT.\r\n\r\nNăm nay, cổ phiếu Intel đã giảm 54%. Đây là mã có diễn biến tệ nhất trong chỉ số DJIA. Hôm qua, Intel giảm 1% trong phiên giao dịch ngoài giờ, trong khi Nvidia tăng 1,5%.\r\n\r\nQuý trước, Intel báo lỗ ròng kỷ lục 16,6 tỷ USD do các chi phí liên quan đến cải tổ và khấu hao tài sản. Họ đang lên kế hoạch sa thải 16.500 nhân viên, đồng thời đầu tư mạnh tay vào mảng gia công chip, với mục tiêu trở thành hãng gia công chip lớn thứ hai thế giới năm 2030.\r\n\r\nTrong khi đó, trái ngược với Intel, Nvidia 2 năm qua ăn nên làm ra. Cơn sốt AI toàn cầu khiến nhu cầu chip AI của hãng tăng vọt. Cổ phiếu hãng này đã tăng gấp 7 lần trong 2 năm. Chỉ riêng năm nay, mã này đã tăng gấp đôi. Nvidia hiện là công ty giá trị thứ hai thế giới, được coi là hàn thử biểu cho thị trường AI toàn cầu.', 'logo-hang-cong-nghe-07538-7190-5312-3316-1730519861.jpg', 0, 0, 0, '2024-11-02 13:40:53', '2024-11-02 13:40:53', '3'),
(4, '\'Sinh viên IT cần biết lập trình trước khi vào đại học\'', 'Sinh viên cần biết ít nhất 1-2 ngôn ngữ lập trình trước khi vào đại học, làm nền tảng để học chuyên sâu, theo Giám đốc Công nghệ IBM Việt Nam.', 'Sinh viên cần biết ít nhất 1-2 ngôn ngữ lập trình trước khi vào đại học, làm nền tảng để học chuyên sâu, theo Giám đốc Công nghệ IBM Việt Nam.\r\n\r\nÝ kiến này được ông Ngô Thanh Hiền, Giám đốc Công nghệ IBM Việt Nam, nêu tại tọa đàm \"Giải mã nghịch lý ngành Công nghệ: Đại bàng gõ cửa nhưng nhân lực khép cửa\", ngày 1/11.\r\n\r\nÔng Hiền cho rằng việc học lập trình cần được đẩy mạnh từ bậc phổ thông để những em có đam mê hình thành ý thức nghề nghiệp từ sớm. Trước khi vào đại học, các em đã làm quen 1-2 ngôn ngữ lập trình, thậm chí biết thêm một số công cụ cần thiết.\r\n\r\nVào đại học, với nền tảng từ trước, sinh viên sẽ học thêm kiến thức rất nhanh, có thời gian để theo dõi, tìm hiểu xu thế công nghệ trên thế giới, từ đó biết phải chuẩn bị những gì.\r\n\r\n\"Đại học đào tạo cơ bản chứ không thể cung cấp hết kiến thức theo xu hướng công nghệ nên sinh viên phải chủ động\", ông Hiền nói.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/11/01/779b6e7e7cacc4f29dbd-5327-1730451187.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=CTdsb6mtiWg28NnqzflWyw\">\r\nÔng Ngô Thanh Hiền, Giám đốc Công nghệ IBM Việt Nam, chia sẻ tại tọa đàm ngày 1/11. Ảnh: D.T\r\n\r\nÔng Chu Tuấn Anh, Giám đốc hệ thống đào tạo lập trình viên quốc tế Aptech, đồng tình. Theo ông ở Việt Nam hiện nay, nhiều sinh viên vào đại học mà chưa có kiến thức về lập trình.\r\n\r\nTrong 4 năm, các em chỉ có khoảng 8 tháng đến một năm thực sự học các công nghệ lập trình thực tế để đi làm. Phần lớn thời gian còn lại được chia cho các môn đại cương, cơ sở, thực tập và làm đồ án.\r\n\r\n\"Dù các đại học đã cố gắng, sự chênh lệch giữa đào tạo và nhu cầu doanh nghiệp vẫn còn khoảng cách nhất định\", ông Tuấn Anh nói. \"Việc kỳ vọng sinh viên có thể nắm vững công nghệ, tích lũy kỹ năng và kinh nghiệm thực chiến chỉ trong thời gian đào tạo ngắn như vậy là bất khả thi\".\r\n\r\nTrong khi đó, tại các quốc gia phát triển như Mỹ, Anh, Hàn Quốc, sinh viên trước khi vào đại học đã thành thạo một số ngôn ngữ lập trình như Python, Java, giúp giảm tải cho việc đào tạo ở đại học.\r\n\r\nĐề xuất của ông Hiền và ông Tuấn Anh trong bối cảnh thị trường IT Việt Nam được dự đoán cần thêm ít nhất 500.000 lao động công nghệ từ nay đến năm 2025, theo Bộ Thông tin và Truyền thông.\r\n\r\nTuy nhiên, báo cáo năm 2023 của nền tảng tuyển dụng nhân sự công nghệ thông tin (IT) - TopDev, cho thấy trong hơn 57.000 sinh viên ngành này tốt nghiệp mỗi năm, chỉ khoảng 30% đáp ứng được yêu cầu của doanh nghiệp. Số còn lại cần được đào tạo thêm trong 3-6 tháng.\r\n\r\nTheo bà Nguyễn Thị Thu Giang, Tổng thư ký Hiệp hội phần mềm và dịch vụ công nghệ thông tin Việt Nam (VINASA), doanh nghiệp cho biết trong hàng trăm người nộp đơn, có khi chỉ nhận được 1-2 người ở mỗi đợt tuyển dụng.\r\n\r\nÔng Hiền kể năm 2002, IBM mở trung tâm nghiên cứu và phát triển (R&D) gia công phần mềm ở Việt Nam, bên cạnh mảng kinh doanh. Khi đó, doanh nghiệp kỳ vọng tuyển dụng được 1.000 lập trình viên trong thời gian ngắn. Nhưng sau hơn 10 năm, trung tâm này chỉ có 200-300 nhân sự.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/11/01/1d7408c01a12a24cfb03-3297-1730451187.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=czpuiw57lGxBsWlbDUqugw\">\r\nÔng Chu Tuấn Anh, đại diện Aptech Việt Nam, tại tọa đàm ngày 1/11. Ảnh: D.T\r\n\r\nÔng Tô Hồng Nam, Phó cục trưởng Cục Công nghệ thông tin, Bộ Giáo dục và Đào tạo, cho hay hiện Tin học đã trở thành môn bắt buộc từ lớp 3 đến lớp 9, từ lớp 10 là môn lựa chọn. Môn này có ba mạch kiến thức gồm: học vấn số hóa phổ thông, công nghệ thông tin và truyền thông, khoa học máy tính. Các nội dung không chỉ dừng lại ở mức hiểu biết mà còn yêu cầu ứng dụng và định hướng làm nghề. Học sinh được học về lập trình nhiều hơn trước.\r\n\r\nỞ bậc đại học, các trường đã kết nối với doanh nghiệp nhiều hơn, sinh viên được học theo dự án, ra trường có việc làm ngay.\r\n\r\n\"Các trường cũng chủ động nâng cao chất lượng\", ông Nam nói. \"Vấn đề là học như nào để có chất lượng\". Đại diện Bộ cho rằng ngoài kiến thức chuyên môn, người học cần có ngoại ngữ, kỹ năng mềm, được trau dồi cả ở trong và ngoài trường lớp.', '779b6e7e7cacc4f29dbd-5327-1730451187.jpg', 0, 0, 0, '2024-11-02 13:45:06', '2024-11-02 13:45:06', '4'),
(5, 'Lo mưa lũ và lở đất, Nhật Bản kêu gọi gần 200.000 người sơ tán', 'Giới chức miền tây Nhật Bản cảnh báo nguy cơ sạt lở đất và ngập lụt do hoàn lưu bão Kong-rey, khuyến cáo gần 200.000 người dân sơ tán.', 'Giới chức miền tây Nhật Bản cảnh báo nguy cơ sạt lở đất và ngập lụt do hoàn lưu bão Kong-rey, khuyến cáo gần 200.000 người dân sơ tán.\r\n\r\nCơ quan khí tượng Nhật Bản (JMA) hôm nay cho biết \"không khí ấm, ẩm đang gây mưa to kèm giông bão ở miền tây đất nước\", một phần do ảnh hưởng của hoàn lưu của Kong-rey, siêu bão vừa quét qua đảo Đài Loan và đã hạ cấp xuống áp thấp nhiệt đới.\r\n\r\nThành phố Matsuyama thuộc tỉnh Ehime đã ban hành cảnh báo cấp cao nhất, kêu gọi gần 189.552 cư dân ở 10 quận khẩn trương sơ tán để đảm bảo an toàn. Luật pháp Nhật Bản không có quy định bắt buộc người dân sơ tán, nhưng giới chức thường ban hành cảnh báo cấp cao nhất khi có nguy cơ xảy ra thiên tai và thảm họa.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/11/02/mua-lu-nhat-ban-1-2908-1730536890.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=mOHg9dsTGWIiQfQk_7Ze6g\">\r\n\r\nMột tuyến đường bị ngập do mưa lớn tại thành phố Hiroshima hồi đầu tháng 10. Ảnh: AFP\r\n\r\nShunan, thành phố thuộc tỉnh Yamaguchi, sáng nay ghi nhận lượng mưa hơn 35 mm trong một giờ. Ở thành phố Imari thuộc tỉnh Saga, lượng mưa đo được lên tới 296,5 mm trong vòng 24 giờ, gấp đôi tổng lượng mưa trung bình trong tháng 11 hàng năm.\r\n\r\n127 trạm quan trắc ở các vùng Kyushu, Chugoku và Kinki đã ghi nhận lượng mưa trong 24 giờ vào một ngày tháng 11 nhiều nhất từ trước tới nay. Chính quyền đã ban bố cảnh báo sạt lở đất tại các khu vực thuộc tỉnh Fukuoka, Shimane và Hiroshima. Mực nước tại một số sông ở ba tỉnh này đang dâng vượt mức báo động lũ.\r\n\r\nGiới chức kêu gọi người dân thận trọng trước nguy cơ sạt lở đất, ngập lụt ở vùng trũng thấp, nước sông dâng cao tràn bờ, sấm sét, mưa đá, gió giật và lốc xoáy, khuyến cáo tránh lái xe trên các tuyến đường ven sông trong thời gian này.\r\n\r\nCác chuyên gia khí tượng cảnh báo rằng sạt ngập lụt, sạt lở đất có thể xảy ra ở miền tây Nhật Bản từ chiều nay và miền đông Nhật Bản trong ngày 3/11. Do mưa lớn, tàu cao tốc Shinkansen đã ngừng hoạt động trên tuyến Tokyo - Fukuoka trong sáng 2/11, khiến nhiều chuyến bị trễ so với kế hoạch.\r\n\r\nKong-rey đổ bộ vào đảo Đài Loan ngày 31/10, là một trong những cơn bão lớn nhất quét qua khu vực trong nhiều thập kỷ. Cơn bão có sức gió 251 km/h, bán kính bão gần 320 km, gây mưa to ở nhiều khu vực, khiến ít nhất hai người chết và hàng chục nghìn hộ dân mất điện.', 'mua-lu-nhat-ban-1-2908-1730536890.jpg', 0, 0, 0, '2024-11-02 13:47:56', '2024-11-02 13:47:56', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Vũ Hoàng'),
(2, 'Phạm Dự'),
(3, 'Hà Thu'),
(4, 'Dương Tâm'),
(5, 'Hồng Hạnh'),
(6, 'Gia Minh\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
