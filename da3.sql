/*
 Navicat Premium Dump SQL

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : da3

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 10/08/2025 22:55:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_categories
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `slug` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog_categories
-- ----------------------------
INSERT INTO `blog_categories` VALUES ('0c043bbf-d526-4638-811a-c4cdd1e65d1c', 'Mẹo vặt & Thủ thuật', 'meo-vat-and-thu-thuat', '2025-05-01 15:28:10', '2025-05-26 06:00:54');
INSERT INTO `blog_categories` VALUES ('1c748832-43fc-44c3-952d-a0c64e9417e9', 'Thực phẩm tốt cho sức khỏe', 'thuc-pham-tot-cho-suc-khoe', '2025-05-01 15:27:24', '2025-05-26 06:00:44');
INSERT INTO `blog_categories` VALUES ('2cc79b51-2df9-4182-b251-b8b0b0463f46', 'Tạp hóa & Thực phẩm thiết yếu', 'tap-hoa-and-thuc-pham-thiet-yeu', '2025-05-01 15:27:03', '2025-05-26 06:00:24');
INSERT INTO `blog_categories` VALUES ('378473b7-1181-4ef3-82d8-4a6276c7c5f7', 'Thực phẩm đóng gói', 'thuc-pham-dong-goi', '2025-05-01 15:27:48', '2025-05-26 06:00:29');
INSERT INTO `blog_categories` VALUES ('5555426c-3f79-4429-9bcf-7c3c06b5d8fa', 'Trang trí', 'trang-tri', '2025-05-01 15:26:12', '2025-05-26 06:00:32');
INSERT INTO `blog_categories` VALUES ('64592a88-f8eb-4087-aa27-6d36fa8847bd', 'Phong cách sống', 'phong-cach-song', '2025-05-01 15:25:50', '2025-05-26 05:56:50');
INSERT INTO `blog_categories` VALUES ('a584c02d-a7a1-4272-99d2-449069178adb', 'Trang trại sữa', 'trang-trai-sua', '2025-05-01 15:26:39', '2025-05-26 05:56:55');
INSERT INTO `blog_categories` VALUES ('cd50fb34-73f7-4fda-a1e7-80c83a80ba46', 'Chưa phân loại', 'chua-phan-loai', '2025-05-01 15:25:26', '2025-05-26 05:57:02');

-- ----------------------------
-- Table structure for blog_categories_blogs
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories_blogs`;
CREATE TABLE `blog_categories_blogs`  (
  `blog_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`blog_id`, `category_id`) USING BTREE,
  INDEX `fk_blog_categories_blogs__blog_categories`(`category_id` ASC) USING BTREE,
  CONSTRAINT `fk_blog_categories_blogs__blog_categories` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_blog_categories_blogs__blogs` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_categories_blogs
-- ----------------------------
INSERT INTO `blog_categories_blogs` VALUES ('9703bd9d-93bb-4789-8839-fb724c32d47a', '0c043bbf-d526-4638-811a-c4cdd1e65d1c');
INSERT INTO `blog_categories_blogs` VALUES ('db6d7d2f-68cf-4413-82f7-76e278cad8fc', '0c043bbf-d526-4638-811a-c4cdd1e65d1c');
INSERT INTO `blog_categories_blogs` VALUES ('61382de0-d577-42b4-8cb4-e769b96aae9e', '1c748832-43fc-44c3-952d-a0c64e9417e9');
INSERT INTO `blog_categories_blogs` VALUES ('d2d6c14f-a408-4b43-91ef-7407101dcc1d', '1c748832-43fc-44c3-952d-a0c64e9417e9');
INSERT INTO `blog_categories_blogs` VALUES ('f1906184-37fd-4ca1-8dab-f0a9b610d086', '1c748832-43fc-44c3-952d-a0c64e9417e9');
INSERT INTO `blog_categories_blogs` VALUES ('75761803-af6d-47fc-a8ac-08903fe75949', '2cc79b51-2df9-4182-b251-b8b0b0463f46');
INSERT INTO `blog_categories_blogs` VALUES ('480c8090-cb23-42b8-978a-c4182f97e31b', '378473b7-1181-4ef3-82d8-4a6276c7c5f7');
INSERT INTO `blog_categories_blogs` VALUES ('fb74fe91-5e48-40ba-9e1e-21e60ddc1628', '378473b7-1181-4ef3-82d8-4a6276c7c5f7');
INSERT INTO `blog_categories_blogs` VALUES ('0c6983af-443b-4435-9883-45bc924db96b', '5555426c-3f79-4429-9bcf-7c3c06b5d8fa');
INSERT INTO `blog_categories_blogs` VALUES ('33019c14-0235-41a9-b880-a6451f3c6e7a', '5555426c-3f79-4429-9bcf-7c3c06b5d8fa');
INSERT INTO `blog_categories_blogs` VALUES ('7182bfc8-f05e-4752-af5d-53979ebab012', '5555426c-3f79-4429-9bcf-7c3c06b5d8fa');
INSERT INTO `blog_categories_blogs` VALUES ('0b4ef457-90bf-4799-92f0-b8b73fe63e62', '64592a88-f8eb-4087-aa27-6d36fa8847bd');
INSERT INTO `blog_categories_blogs` VALUES ('cfd7124d-2695-4c79-a8c1-db5287e00516', '64592a88-f8eb-4087-aa27-6d36fa8847bd');
INSERT INTO `blog_categories_blogs` VALUES ('d2d6c14f-a408-4b43-91ef-7407101dcc1d', '64592a88-f8eb-4087-aa27-6d36fa8847bd');
INSERT INTO `blog_categories_blogs` VALUES ('0b4ef457-90bf-4799-92f0-b8b73fe63e62', 'a584c02d-a7a1-4272-99d2-449069178adb');
INSERT INTO `blog_categories_blogs` VALUES ('66e8947a-b7b4-4a9b-aced-c713dd525297', 'a584c02d-a7a1-4272-99d2-449069178adb');
INSERT INTO `blog_categories_blogs` VALUES ('d4831403-721d-4d4a-8c14-374dfb2113bd', 'a584c02d-a7a1-4272-99d2-449069178adb');
INSERT INTO `blog_categories_blogs` VALUES ('045e078e-de4c-4795-8e70-3620db09a844', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('22e80129-6886-49c6-a273-8b54c515f9cc', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('56b5a0a5-366a-48f5-9806-172fc6b19698', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('6bc29f0e-dcfe-48d1-a9b8-7d7f1a532232', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('6c395e89-d82f-42b7-a56f-85332a528526', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('75f13306-385d-4e03-9647-c36f32200d73', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('766d00ba-3c03-4e28-b93b-878c60983e07', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('91ad3bca-0f38-445f-9773-743716c8e571', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('a08de515-3288-41f8-8ad4-af2574351177', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('bef3cd86-a1e4-4686-aac2-2f313e445233', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('dd4122cc-efaa-4018-9b8c-41e43a78452a', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');
INSERT INTO `blog_categories_blogs` VALUES ('e9474620-5bf5-43b7-9bd1-dd530b4ef3f9', 'cd50fb34-73f7-4fda-a1e7-80c83a80ba46');

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` json NULL,
  `slug` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_blogs_users`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_blogs_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('045e078e-de4c-4795-8e70-3620db09a844', 'Sô-cô-la tự làm dễ dàng', 'uploads\\\\ada6d91b.jpg', 'Tự làm sô-cô-la tại nhà không hề khó, chỉ với vài nguyên liệu đơn giản, bạn có thể tạo ra những thanh sô-cô-la thơm ngon, ngọt ngào và hoàn toàn tùy chỉnh theo sở thích…', '[{\"paragraph\": \"Sô-cô-la tự làm là một cách tuyệt vời để tận hưởng món ăn yêu thích mà không lo ngại về các chất phụ gia hay đường hóa học. Với vài nguyên liệu đơn giản, bạn có thể tự tay làm sô-cô-la ngon tuyệt tại nhà. Dưới đây là công thức đơn giản để bạn thử làm sô-cô-la tự làm ngay tại nhà.\"}, {\"paragraph\": \"Để làm sô-cô-la tự làm, bạn cần chuẩn bị bơ cacao, đường tự nhiên, và một chút tinh chất vani. Đầu tiên, bạn đun chảy bơ cacao và thêm đường vào, khuấy đều cho đến khi hòa tan. Sau đó, thêm tinh chất vani và đổ hỗn hợp vào khuôn. Đặt sô-cô-la vào tủ lạnh cho đến khi đông cứng.\"}, {\"quote\": \"Sô-cô-la tự làm không chỉ thơm ngon mà còn là lựa chọn lành mạnh hơn, giúp bạn thưởng thức món ăn yêu thích mà không lo ngại về các thành phần không tốt cho sức khỏe.\"}, {\"paragraph\": \"Nếu bạn muốn sáng tạo hơn, bạn có thể thêm vào các loại hạt, trái cây khô, hoặc một ít muối biển để tạo ra những hương vị độc đáo cho sô-cô-la của mình. Đây là món quà tuyệt vời cho bạn bè và gia đình, đặc biệt là trong những dịp lễ.\"}, {\"paragraph\": \"Việc tự làm sô-cô-la giúp bạn kiểm soát được chất lượng và thành phần của món ăn. Ngoài ra, nó còn mang lại niềm vui khi tự tay chuẩn bị một món ăn yêu thích cho chính mình và những người thân yêu.\"}]', 'so-co-la-tu-lam-de-lam-de-dang', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 14:00:54', '2025-05-21 21:19:20');
INSERT INTO `blogs` VALUES ('0b4ef457-90bf-4799-92f0-b8b73fe63e62', 'Pizza với Gà, Cà Chua và Húng Quế', 'uploads\\\\31e58c80.jpg', 'Một chiếc pizza tuyệt vời, kết hợp giữa vị ngon ngọt của cà chua tươi, hương thơm đặc trưng của húng quế, và thịt gà mềm mịn, tạo nên một sự hòa quyện hoàn hảo...', '[{\"paragraph\": \"Pizza gà cà chua húng quế là một biến tấu nhẹ nhàng và tươi mát từ món pizza truyền thống của Ý, mang lại cảm giác cân bằng giữa vị béo, vị ngọt và vị thơm. Phần đế bánh giòn nhẹ được nướng vừa tới kết hợp hoàn hảo với thịt gà nướng mềm mại, cà chua tươi mọng và húng quế thơm nồng. Đây là món ăn phù hợp cho cả những người yêu thích ẩm thực phương Tây lẫn người ăn uống lành mạnh bởi sự hài hòa trong nguyên liệu và dinh dưỡng.\"}, {\"paragraph\": \"So với các loại pizza nhiều thịt nguội và phô mai, pizza gà - cà chua - húng quế mang đến lựa chọn nhẹ bụng hơn nhưng vẫn đầy đủ hương vị. Thịt gà cung cấp protein nạc, giúp no lâu mà không gây cảm giác ngấy. Cà chua là nguồn dồi dào lycopene - chất chống oxy hóa có lợi cho tim mạch. Húng quế không chỉ tạo mùi thơm đặc trưng mà còn có đặc tính kháng viêm, hỗ trợ tiêu hóa. Việc sử dụng nguyên liệu tươi còn giữ được nhiều dưỡng chất hơn so với nguyên liệu chế biến sẵn.\"}, {\"quote\": \"Tôi luôn tin rằng một chiếc pizza ngon không cần phải quá phức tạp. Chỉ cần vài nguyên liệu tươi, một chút tinh tế trong cách nêm nếm, và quan trọng nhất là sự yêu thích khi làm - thế là đủ để tạo nên điều đặc biệt.\"}, {\"paragraph\": \"Một điểm nổi bật của loại pizza này là sự linh hoạt trong cách chế biến. Người làm có thể tùy chỉnh lớp vỏ mỏng hay dày, thêm hoặc giảm lượng phô mai tùy sở thích. Gà có thể được nướng, áp chảo hoặc luộc sơ - miễn là vẫn giữ được độ ẩm và vị ngọt tự nhiên. Cà chua có thể dùng loại bi hoặc loại thường thái lát. Húng quế nên được cho vào sau cùng để giữ được mùi thơm và tránh bị đắng khi nướng quá lâu. Mỗi thành phần đều đóng vai trò rõ rệt trong tổng thể vị giác.\"}, {\"paragraph\": \"Pizza gà cà chua húng quế không chỉ dễ làm tại nhà mà còn phù hợp cho nhiều bữa ăn khác nhau - từ bữa tối ấm cúng cho đến các buổi tiệc nhỏ cùng bạn bè. Khi kết hợp với một ly nước ép trái cây hoặc rượu vang nhẹ, món ăn này trở nên tinh tế mà vẫn gần gũi. Đây là một lựa chọn tuyệt vời nếu bạn muốn trải nghiệm pizza theo hướng thanh đạm nhưng vẫn đầy lôi cuốn và đậm đà.\"}]', 'pizza-voi-ga-ca-chua-va-hung-que', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:19:49');
INSERT INTO `blogs` VALUES ('0c6983af-443b-4435-9883-45bc924db96b', 'Nấu ăn với dầu ô liu', 'uploads\\\\22e283c1.jpg', 'Dầu ô liu là lựa chọn tuyệt vời cho mọi món ăn, mang đến hương vị thơm ngon, nhẹ nhàng nhưng đầy đậm đà...', '[{\"paragraph\": \"Dầu ô liu là một trong những nguyên liệu nấu ăn phổ biến nhất trong ẩm thực Địa Trung Hải, nổi bật với hương vị dịu nhẹ và giá trị dinh dưỡng cao. Loại dầu này được ép lạnh từ quả ô liu chín, giàu axit béo không bão hòa đơn - đặc biệt là oleic acid - cùng với các chất chống oxy hóa tự nhiên. Khi được sử dụng đúng cách trong nấu ăn, dầu ô liu không chỉ tăng hương vị cho món ăn mà còn góp phần hỗ trợ sức khỏe tim mạch và giảm viêm trong cơ thể.\"}, {\"paragraph\": \"Một trong những điểm mạnh của dầu ô liu là sự linh hoạt. Nó có thể dùng để xào, trộn salad, ướp thực phẩm hay thậm chí là nướng ở nhiệt độ vừa phải. Tuy nhiên, không nên sử dụng dầu ô liu nguyên chất (extra virgin) để chiên ở nhiệt độ cao vì nó có điểm bốc khói thấp, dễ bị phân hủy và mất chất. Trong khi đó, dầu ô liu tinh luyện phù hợp hơn cho các món chiên nhẹ hoặc nướng. Với các món salad hoặc món nguội, dùng dầu ô liu nguyên chất là lựa chọn lý tưởng để giữ nguyên hương vị và dưỡng chất.\"}, {\"quote\": \"Tôi luôn xem dầu ô liu là trái tim của căn bếp - không chỉ vì giá trị dinh dưỡng mà còn vì cách nó làm cho món ăn trở nên tròn vị hơn một cách tự nhiên, tinh tế.\"}, {\"paragraph\": \"Ngoài hương vị và lợi ích sức khỏe, dầu ô liu còn có khả năng bảo quản thực phẩm một cách tự nhiên. Trong ẩm thực cổ điển, người ta từng dùng dầu ô liu để ngâm rau củ, phô mai hoặc thảo mộc, giúp kéo dài thời gian sử dụng mà vẫn giữ được hương vị đặc trưng. Với đặc tính kháng khuẩn và chống oxy hóa, dầu ô liu giúp ngăn sự phát triển của vi khuẩn và giữ cho thực phẩm không bị oxy hóa nhanh chóng. Đây là một cách bảo quản truyền thống đơn giản nhưng hiệu quả, vẫn được ưa chuộng cho đến ngày nay.\"}, {\"paragraph\": \"Dù dầu ô liu mang lại nhiều lợi ích, việc sử dụng cũng cần hợp lý. Lạm dụng dầu, dù là loại tốt, vẫn có thể làm tăng lượng calo và ảnh hưởng đến cân nặng. Vì vậy, hãy sử dụng dầu ô liu như một phần trong chế độ ăn cân bằng - kết hợp cùng rau xanh, ngũ cốc nguyên hạt và đạm nạc - để tối ưu hóa lợi ích cho sức khỏe. Sự tinh tế trong việc dùng đúng loại dầu cho đúng món ăn chính là điều khiến người đầu bếp trở nên khác biệt.\"}]', 'nau-an-voi-dau-o-liu', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:33:00');
INSERT INTO `blogs` VALUES ('22e80129-6886-49c6-a273-8b54c515f9cc', 'Nguyên liệu trái cây hàng đầu cho sinh tố', 'uploads\\\\385f23c9.jpg', 'Nếu bạn muốn ly sinh tố của mình trở thành một \"quả bom vitamin\", hãy chú ý đến những loại trái cây như chuối, dâu tây, việt quất, xoài và kiwi – chúng không chỉ thơm ngon mà còn cực kỳ giàu dưỡng chất...', '[{\"paragraph\": \"Sinh tố là một trong những cách đơn giản và hiệu quả nhất để bổ sung vitamin, chất xơ và năng lượng từ trái cây tươi. Tuy nhiên, không phải loại trái cây nào cũng phù hợp để làm sinh tố. Một số nguyên liệu nổi bật không chỉ mang lại hương vị thơm ngon mà còn tạo kết cấu mịn, sánh đặc giúp sinh tố dễ uống và hấp dẫn hơn. Việc lựa chọn đúng loại trái cây là yếu tố then chốt để có một ly sinh tố vừa ngon miệng, vừa bổ dưỡng.\"}, {\"paragraph\": \"Chuối là nguyên liệu hàng đầu khi làm sinh tố bởi vị ngọt tự nhiên và khả năng tạo độ đặc mịn hoàn hảo. Xoài cũng là lựa chọn phổ biến nhờ hương thơm đậm đà, giàu vitamin C và A. Dâu tây mang lại vị chua nhẹ, giàu chất chống oxy hóa, rất hợp với các loại sữa hạt hoặc sữa chua. Việt quất (blueberry) và mâm xôi (raspberry) cung cấp anthocyanin có lợi cho trí nhớ và tim mạch. Cuối cùng, bơ giúp tăng độ béo và bổ sung chất béo lành mạnh, lý tưởng cho người cần thêm năng lượng.\"}, {\"quote\": \"Chìa khóa để có ly sinh tố hoàn hảo không chỉ là hương vị – đó là sự cân bằng giữa chất dinh dưỡng, độ mịn và cảm giác khi uống. Trái cây tốt sẽ làm cả ba điều đó cùng lúc.\"}, {\"paragraph\": \"Một số mẹo nhỏ giúp tăng hiệu quả khi dùng trái cây làm sinh tố bao gồm việc sử dụng trái cây đông lạnh để có nhiệt độ mát lạnh tự nhiên, không cần dùng đá. Kết hợp các nhóm trái cây có vị khác nhau – ví dụ như ngọt (chuối, xoài) với chua (dứa, cam, kiwi) – sẽ tạo ra hương vị hài hòa hơn. Bên cạnh đó, nên tránh dùng quá nhiều loại trái cây trong một lần xay để tránh bị lẫn vị, khiến sinh tố mất đi đặc trưng của từng loại.\"}, {\"paragraph\": \"Ngoài việc chọn nguyên liệu chính là trái cây, bạn có thể kết hợp thêm rau xanh như cải bó xôi, cần tây hoặc bạc hà để tăng hàm lượng chất xơ và tạo điểm nhấn vị giác. Đừng quên thêm chút protein từ sữa chua, sữa hạt hoặc bột đậu nếu muốn dùng sinh tố như bữa phụ hoặc sau khi tập luyện. Với sự kết hợp hợp lý, một ly sinh tố không chỉ ngon mà còn là món bổ sung năng lượng hoàn hảo cho ngày mới.\"}]', 'nguyen-lieu-trai-cay-hang-dau-cho-sinh-to', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:28:14');
INSERT INTO `blogs` VALUES ('2f0d31e4-404b-4b32-8bc7-a991b66f9c03', 'Lên kế hoạch cho bữa ăn lành mạnh trong tuần', 'uploads\\\\11d28717.jpg', 'Lên kế hoạch cho bữa ăn trong tuần không chỉ giúp bạn tiết kiệm thời gian mà còn đảm bảo các bữa ăn luôn cân đối và dinh dưỡng. Hãy chọn những món ăn dễ làm, giàu chất xơ và protein, đồng thời giảm thiểu thực phẩm chế biến sẵn để duy trì sức khỏe tốt…', '[{\"paragraph\": \"Lên kế hoạch cho bữa ăn lành mạnh trong tuần là một cách tuyệt vời để duy trì một chế độ ăn uống hợp lý và đầy đủ dưỡng chất. Việc chuẩn bị trước các bữa ăn giúp bạn tiết kiệm thời gian, giảm thiểu việc ăn uống không lành mạnh và đảm bảo rằng bạn luôn có những món ăn bổ dưỡng trong tầm tay.\"}, {\"paragraph\": \"Một cách đơn giản để lên kế hoạch là chuẩn bị một thực đơn cho cả tuần. Bạn có thể chọn các món ăn dễ làm như salad, súp rau, hoặc món thịt nướng với rau củ. Đừng quên bổ sung vào thực đơn các loại hạt, trái cây tươi và các loại ngũ cốc nguyên hạt để đảm bảo cung cấp đủ protein, chất béo lành mạnh và chất xơ.\"}, {\"quote\": \"Lên kế hoạch cho bữa ăn giúp bạn duy trì lối sống lành mạnh, tiết kiệm thời gian và đảm bảo rằng mỗi bữa ăn đều đầy đủ dinh dưỡng.\"}, {\"paragraph\": \"Nếu bạn không có quá nhiều thời gian, bạn có thể chuẩn bị các bữa ăn trong một ngày cuối tuần. Ví dụ, bạn có thể nấu trước một nồi súp lớn, chuẩn bị salad trong các hộp đựng và nướng thịt hoặc cá để dùng trong tuần. Các món ăn này sẽ dễ dàng lưu trữ trong tủ lạnh và bạn chỉ cần hâm nóng lại khi cần.\"}, {\"paragraph\": \"Lên kế hoạch bữa ăn không chỉ giúp bạn ăn uống lành mạnh mà còn tiết kiệm chi phí, giảm bớt căng thẳng và mang lại sự tiện lợi cho cuộc sống bận rộn.\"}]', 'len-ke-hoach-cho-bua-an-lanh-manh-trong-tuan', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:27:04');
INSERT INTO `blogs` VALUES ('33019c14-0235-41a9-b880-a6451f3c6e7a', 'Thưởng thức buổi tụ họp tiếp theo của bạn', 'uploads\\\\a8be20d5.jpg', 'Mỗi buổi tụ họp là một cơ hội để kết nối, chia sẻ và tạo ra những kỷ niệm đẹp. Hãy để những món ăn tuyệt vời và không gian ấm cúng trở thành phần không thể thiếu trong những khoảnh khắc đặc biệt ấy...', '[{\"paragraph\": \"Khi tổ chức một buổi tụ họp, ẩm thực luôn là yếu tố không thể thiếu để tạo nên không khí vui vẻ và gắn kết. Thưởng thức những món ăn ngon cùng gia đình và bạn bè là một trải nghiệm tuyệt vời. Dưới đây là một số ý tưởng để bạn tổ chức một buổi tụ họp ấn tượng với món ăn ngon.\"}, {\"paragraph\": \"Đầu tiên, hãy chuẩn bị một món khai vị nhẹ nhàng như salad trộn với rau tươi, quả bơ, và hạt hạnh nhân. Tiếp theo, bạn có thể làm món chính như gà nướng tỏi hoặc bò bít tết, kết hợp với những món phụ như khoai tây chiên, bông cải xanh hấp, và một chút nước sốt chua ngọt để tăng thêm hương vị.\"}, {\"quote\": \"Một buổi tụ họp thành công không chỉ dựa vào không gian, mà còn phụ thuộc vào những món ăn ngon, dễ ăn và phù hợp với sở thích của mọi người.\"}, {\"paragraph\": \"Để kết thúc buổi tụ họp, một món tráng miệng như bánh sừng bò socola hay bánh mousse là sự lựa chọn hoàn hảo. Những món ăn này sẽ mang lại một kết thúc ngọt ngào và để lại ấn tượng khó quên.\"}, {\"paragraph\": \"Chắc chắn rằng, một buổi tụ họp với những món ăn ngon sẽ tạo ra không chỉ những kỷ niệm đẹp mà còn giúp mọi người gắn kết và tận hưởng thời gian bên nhau.\"}]', 'thuong-thuc-buoi-tu-hop-tiep-theo-cua-ban', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:32:56');
INSERT INTO `blogs` VALUES ('480c8090-cb23-42b8-978a-c4182f97e31b', 'Bánh sừng bò socola dễ làm, mềm mại và giòn', 'uploads\\\\c8fb83a8.jpg', 'Với lớp vỏ ngoài giòn tan, bên trong mềm mịn và thơm lừng, bánh sừng bò socola là lựa chọn hoàn hảo cho mọi bữa sáng hay bữa phụ...', '[{\"paragraph\": \"Bánh sừng bò socola là một món tráng miệng tuyệt vời, dễ làm và vô cùng hấp dẫn. Với lớp vỏ mềm mại, giòn tan và phần nhân socola thơm ngon, đây là món ăn lý tưởng cho những ai yêu thích bánh ngọt. Công thức dưới đây sẽ giúp bạn tạo ra những chiếc bánh sừng bò socola đơn giản mà vẫn đầy ắp hương vị.\"}, {\"paragraph\": \"Để làm bánh sừng bò socola, bạn cần chuẩn bị bột mì, bơ, đường, trứng và socola đen. Sau khi nhào bột và để bột nghỉ, bạn cán mỏng và thêm socola vào giữa, rồi gập lại thành hình bán nguyệt. Nướng trong khoảng 15-20 phút ở nhiệt độ 180 độ C, bạn sẽ có được những chiếc bánh sừng bò vàng ruộm, giòn tan và thơm lừng.\"}, {\"quote\": \"Với công thức này, bạn có thể dễ dàng tạo ra những chiếc bánh sừng bò socola mềm mại, giòn tan và đầy ắp hương vị, khiến ai cũng phải yêu thích.\"}, {\"paragraph\": \"Một mẹo nhỏ để bánh thêm phần thơm ngon là thêm một chút bột vani vào bột bánh. Điều này sẽ giúp làm nổi bật hương vị của socola và tạo ra một món ăn ngọt ngào hơn.\"}, {\"paragraph\": \"Bánh sừng bò socola là món ăn lý tưởng cho bữa sáng, bữa xế hoặc khi bạn muốn làm món tráng miệng cho gia đình. Với hương vị đặc biệt và cách làm đơn giản, bạn sẽ không thể cưỡng lại những chiếc bánh này.\"}]', 'banh-sung-bo-socola-de-lam-mem-mai-va-gion', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 15:36:32');
INSERT INTO `blogs` VALUES ('56b5a0a5-366a-48f5-9806-172fc6b19698', 'Lợi ích của Sushi: cá sống có đáng để ăn?', 'uploads\\\\9c6d4ebe.jpg', 'Sushi không chỉ là món ăn ngon mà còn có nhiều lợi ích cho sức khỏe. Tuy nhiên, ăn cá sống có thể khiến nhiều người lo ngại về vấn đề vệ sinh và an toàn. Hãy cùng tìm hiểu về các biện pháp đảm bảo để sushi luôn an toàn và bổ dưỡng…', '[{\"paragraph\": \"Sushi là một món ăn đặc trưng của ẩm thực Nhật Bản, nổi tiếng với sự kết hợp giữa cơm giấm, cá tươi và các loại rau củ. Sushi không chỉ ngon miệng mà còn mang lại nhiều lợi ích sức khỏe nhờ vào các thành phần tươi ngon và dễ tiêu hóa. Món ăn này chứa nhiều chất dinh dưỡng như protein từ cá, omega-3 từ hải sản, và các vitamin từ rau củ.\"}, {\"paragraph\": \"Sushi có thể giúp tăng cường sức khỏe tim mạch nhờ vào lượng omega-3 dồi dào có trong các loại cá như cá hồi và cá ngừ. Omega-3 giúp giảm nguy cơ mắc các bệnh tim mạch và cải thiện chức năng não bộ. Ngoài ra, sushi còn có ít calo, là lựa chọn lý tưởng cho những ai muốn duy trì cân nặng khỏe mạnh.\"}, {\"quote\": \"Không chỉ là món ăn ngon, sushi còn là sự kết hợp tuyệt vời giữa hương vị và lợi ích sức khỏe, đặc biệt là trong việc hỗ trợ sức khỏe tim mạch và duy trì năng lượng cho cơ thể.\"}, {\"paragraph\": \"Một trong những lợi ích lớn nhất của sushi là sự tươi ngon của nguyên liệu, đặc biệt là cá sống. Việc ăn cá sống giúp bạn tận dụng tối đa các chất dinh dưỡng có trong cá mà không bị mất đi qua quá trình nấu nướng. Điều này giúp cung cấp các chất béo lành mạnh và protein dễ tiêu hóa cho cơ thể.\"}, {\"paragraph\": \"Mặc dù sushi mang lại nhiều lợi ích cho sức khỏe, bạn cũng cần lưu ý khi chọn nguyên liệu và cách chế biến để đảm bảo an toàn thực phẩm. Hãy chọn các loại cá tươi ngon và các nguyên liệu hữu cơ để tận dụng tối đa giá trị dinh dưỡng của món ăn này.\"}]', 'sushi-va-loi-ich-suc-khoe', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:25:15');
INSERT INTO `blogs` VALUES ('61382de0-d577-42b4-8cb4-e769b96aae9e', 'Công thức bữa sáng lành mạnh', 'uploads\\\\5748f031.jpg', 'Bữa sáng là thời điểm quan trọng để cung cấp năng lượng cho một ngày dài. Hãy thử những công thức bữa sáng đơn giản nhưng đầy đủ dinh dưỡng, từ các loại smoothie trái cây đến các món yến mạch và trứng, giúp bạn bắt đầu ngày mới tràn đầy năng lượng…', '[{\"paragraph\": \"Bữa sáng là bữa ăn quan trọng nhất trong ngày, cung cấp năng lượng cho cơ thể và giúp bạn duy trì sự tỉnh táo suốt cả ngày dài. Một công thức bữa sáng lành mạnh nên bao gồm các nguồn protein, chất xơ và vitamin. Một trong những lựa chọn phổ biến là món yến mạch nấu với sữa hoặc nước, kết hợp với các loại trái cây tươi, hạt chia và mật ong để tạo thành một bữa sáng đầy đủ dưỡng chất.\"}, {\"paragraph\": \"Bạn cũng có thể thử món trứng chiên với rau củ như bông cải xanh, cà chua, và nấm, tạo ra một bữa sáng vừa ngon miệng vừa cung cấp đủ protein và chất xơ. Thêm vào đó, một cốc nước ép trái cây tươi hoặc sinh tố rau xanh sẽ giúp bạn bổ sung vitamin và khoáng chất cần thiết.\"}, {\"quote\": \"Một bữa sáng lành mạnh không chỉ giúp bạn bắt đầu ngày mới tràn đầy năng lượng mà còn giúp cải thiện sức khỏe lâu dài, đặc biệt khi kết hợp các thành phần dinh dưỡng cần thiết.\"}, {\"paragraph\": \"Nếu bạn là người yêu thích món ăn nhanh, một bữa sáng lành mạnh có thể là một miếng bánh mì nguyên cám với bơ hạnh nhân và trái cây tươi như chuối hoặc dâu tây. Đây là một lựa chọn dễ dàng và nhanh chóng, đồng thời cung cấp nhiều chất xơ và protein cho cơ thể.\"}, {\"paragraph\": \"Một công thức bữa sáng lành mạnh sẽ không chỉ giúp bạn duy trì sức khỏe mà còn tạo ra một thói quen ăn uống tích cực, giúp bạn cảm thấy tràn đầy năng lượng và sẵn sàng cho một ngày làm việc hiệu quả.\"}]', 'cong-thuc-bua-sang-lanh-manh', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:27:29');
INSERT INTO `blogs` VALUES ('650cc6a5-d297-4553-8bb7-b68c39ec24f2', 'Sản phẩm nên thêm vào danh sách mua sắm của bạn', 'uploads\\\\32c8c12f.jpg', 'Khi chuẩn bị danh sách mua sắm, đừng quên thêm những sản phẩm tươi ngon và bổ dưỡng như rau xanh, trái cây hữu cơ, và thực phẩm giàu protein. Đây là những món không thể thiếu để đảm bảo bữa ăn của bạn luôn đầy đủ và lành mạnh…', '[{\"paragraph\": \"Khi lập danh sách mua sắm, việc lựa chọn các sản phẩm chất lượng cao và bổ dưỡng là rất quan trọng để đảm bảo một chế độ ăn uống lành mạnh. Trong số các sản phẩm cần có trong danh sách của bạn, các loại rau củ tươi, trái cây, và các nguyên liệu tự nhiên nên được ưu tiên. Những sản phẩm này không chỉ giúp bạn tăng cường sức khỏe mà còn là nguyên liệu cho nhiều món ăn đa dạng, từ các món salad tươi ngon đến những bữa ăn dinh dưỡng.\"}, {\"paragraph\": \"Bên cạnh đó, bạn cũng không thể thiếu các loại ngũ cốc nguyên hạt như yến mạch, quinoa, hoặc gạo lứt. Những loại ngũ cốc này cung cấp nhiều chất xơ và vitamin, giúp duy trì năng lượng ổn định trong suốt ngày dài. Thêm vào đó, các loại hạt như hạt chia, hạt lanh và hạt hướng dương sẽ giúp bổ sung axit béo omega-3 cho cơ thể.\"}, {\"quote\": \"Một danh sách mua sắm thông minh không chỉ giúp bạn tiết kiệm thời gian mà còn đảm bảo rằng bạn luôn có những nguyên liệu lành mạnh, giúp duy trì một chế độ ăn uống cân bằng và đầy đủ dưỡng chất.\"}, {\"paragraph\": \"Ngoài các nguyên liệu thực phẩm, cũng đừng quên bổ sung những sản phẩm như dầu olive, mật ong nguyên chất và gia vị tự nhiên như tỏi, gừng. Những sản phẩm này không chỉ mang lại hương vị đặc biệt cho các món ăn mà còn có nhiều lợi ích sức khỏe, từ khả năng chống viêm cho đến việc cải thiện tiêu hóa.\"}, {\"paragraph\": \"Cuối cùng, hãy chắc chắn rằng bạn thêm vào danh sách những thực phẩm tươi ngon và ít chế biến sẵn. Mua sắm thông minh với các sản phẩm tự nhiên sẽ giúp bạn duy trì một chế độ ăn uống lành mạnh và hỗ trợ sức khỏe lâu dài.\"}]', 'san-pham-nen-them-vao-danh-sach-mua-sam-cua-ban', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-12 21:02:58', '2025-06-12 00:49:08');
INSERT INTO `blogs` VALUES ('66e8947a-b7b4-4a9b-aced-c713dd525297', 'Một ngày bình thường trên nông trại', 'uploads\\\\c53f8c04.jpg', 'Một ngày trên nông trại bắt đầu từ sáng sớm, khi những công việc chăm sóc cây trồng, vật nuôi và thu hoạch bắt đầu. Mỗi công việc đều mang đến sự gắn kết với thiên nhiên, mang lại cảm giác thư giãn và hài lòng…', '[{\"paragraph\": \"Một ngày bình thường trên nông trại bắt đầu từ rất sớm, khi ánh bình minh chưa kịp ló dạng, những công việc đầu tiên của nông dân đã được bắt đầu. Tiếng gà gáy báo hiệu một ngày mới, và người nông dân thức dậy chuẩn bị cho công việc chăm sóc cây cối, vật nuôi và thu hoạch những sản phẩm tươi ngon. Mỗi ngày trên nông trại đều có một nhịp điệu riêng, từ công việc chăm sóc đất đai, tưới cây cho đến việc thu hoạch, bán sản phẩm, tất cả đều đòi hỏi sự kiên nhẫn và chăm chỉ.\"}, {\"paragraph\": \"Công việc đầu tiên là cho gia súc ăn. Những con bò, dê, và gà đều cần được chăm sóc để đảm bảo chúng khỏe mạnh và sản xuất sữa, trứng hay thịt tốt. Người nông dân sẽ chuẩn bị thức ăn cho chúng và kiểm tra sức khỏe của từng con. Sau đó, họ tiếp tục với việc thu gom trứng gà, vắt sữa bò, và chăm sóc các loài vật khác như ngựa, cừu hoặc lợn. Đây là công việc đòi hỏi sự kiên nhẫn và kỹ năng.\"}, {\"quote\": \"Trên nông trại, mọi công việc đều phụ thuộc vào mùa vụ và điều kiện thời tiết. Một ngày bình thường có thể thay đổi tùy thuộc vào các yếu tố tự nhiên như mưa, nắng, hay gió, nhưng điều quan trọng là người nông dân luôn phải biết cách thích nghi và làm việc hiệu quả.\"}, {\"paragraph\": \"Sau khi xong việc với vật nuôi, người nông dân sẽ bắt tay vào công việc chăm sóc vườn tược. Từ việc gieo hạt giống, tưới nước cho cây, đến việc kiểm tra đất đai và bảo vệ mùa màng khỏi sâu bệnh, công việc trên nông trại luôn là một chuỗi liên tục các hoạt động. Mỗi ngày lại là một cơ hội để chăm sóc, bảo vệ và phát triển những sản phẩm nông sản chất lượng.\"}, {\"paragraph\": \"Cuối ngày, khi công việc đã xong xuôi, người nông dân sẽ thu dọn công cụ và kiểm tra lại mọi thứ để chuẩn bị cho ngày mai. Nông trại sẽ yên tĩnh khi hoàng hôn buông xuống, chỉ còn lại tiếng gió thổi qua những cánh đồng và tiếng động nhỏ từ các loài vật. Một ngày bình thường trên nông trại kết thúc trong sự thỏa mãn của công sức lao động và kỳ vọng vào mùa vụ sắp tới.\"}]', 'mot-ngay-binh-thuong-tren-nong-trai', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:22:10');
INSERT INTO `blogs` VALUES ('6bc29f0e-dcfe-48d1-a9b8-7d7f1a532232', 'Salad ngon nhất với phô mai Mozzarella', 'uploads\\\\d38e3cbc.jpg', 'Đầu bếp nổi tiếng Leonardo Brown chia sẻ những công thức salad Mozzarella tuyệt vời với bơ, cà chua và sốt – một sự kết hợp hoàn hảo cho bữa ăn nhẹ lành mạnh và đầy hương vị…', '[{\"paragraph\": \"Phô mai Mozzarella là một loại phô mai tươi mềm, có hương vị nhẹ nhàng, béo ngậy, và độ đàn hồi đặc trưng, rất phù hợp để kết hợp với các loại salad tươi ngon. Món salad với phô mai Mozzarella thường được yêu thích nhờ vào sự kết hợp hoàn hảo giữa các nguyên liệu tươi ngon như cà chua, húng quế và dầu olive. Món salad này không chỉ mang lại hương vị thơm ngon mà còn cung cấp nhiều dưỡng chất có lợi cho sức khỏe.\"}, {\"paragraph\": \"Một trong những món salad đơn giản nhưng tuyệt vời với phô mai Mozzarella là Salad Caprese. Để làm món salad này, bạn chỉ cần cắt cà chua và phô mai Mozzarella thành những lát mỏng, sau đó xếp chúng xen kẽ trên đĩa, thêm lá húng quế tươi và rưới lên một chút dầu olive cùng giấm balsamic. Để tăng thêm hương vị, bạn có thể thêm muối, tiêu, và một chút vỏ chanh để món salad thêm phần tươi mới.\"}, {\"quote\": \"Salad Mozzarella không chỉ là món ăn dễ làm mà còn là lựa chọn lý tưởng cho những ai yêu thích sự kết hợp giữa hương vị tươi ngon của rau củ và vị béo ngậy của phô mai Mozzarella.\"}, {\"paragraph\": \"Ngoài Salad Caprese, bạn cũng có thể thử kết hợp phô mai Mozzarella với các nguyên liệu khác để tạo nên những món salad thú vị hơn. Ví dụ, một món salad kết hợp Mozzarella với dưa leo, quả bơ, và quả óc chó sẽ mang đến sự tươi mát và giòn ngon, tạo cảm giác nhẹ nhàng mà vẫn đầy đủ dưỡng chất. Bạn cũng có thể thử thêm các loại gia vị như oregano hoặc thyme để món salad thêm phần đặc biệt.\"}, {\"paragraph\": \"Phô mai Mozzarella không chỉ làm tăng hương vị của món salad mà còn cung cấp nhiều lợi ích cho sức khỏe. Phô mai Mozzarella là nguồn cung cấp canxi và protein, giúp xương chắc khỏe và hỗ trợ cơ bắp. Ngoài ra, dầu olive và các loại thảo mộc tươi như húng quế không chỉ làm tăng hương vị mà còn có tác dụng chống viêm và bảo vệ sức khỏe tim mạch.\"}]', 'salad-ngon-nhat-voi-pho-mai-mozzarella', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:31:17');
INSERT INTO `blogs` VALUES ('6c395e89-d82f-42b7-a56f-85332a528526', 'Cười lên và nói \'Cheese\'', 'uploads\\\\1f3847f5.jpg', 'Liệu thế giới của chúng ta sẽ ra sao nếu không có “tai nạn” cách đây 4000 năm – khi pho mát lần đầu tiên được tạo ra một cách tình cờ? Một phát minh ẩm thực thay đổi cả lịch sử ăn uống của loài người…', '[{\"paragraph\": \"Liệu thế giới của chúng ta sẽ ra sao nếu không có một sự kiện tình cờ xảy ra cách đây 4000 năm, khi pho mát lần đầu tiên được tạo ra? Nếu không có món ăn tuyệt vời này, liệu chúng ta có thể tưởng tượng được một nền văn hóa ẩm thực không có pho mát? Pho mát đã trở thành một phần không thể thiếu trong chế độ ăn uống của hàng triệu người trên thế giới và đóng góp không nhỏ vào sự phát triển của ngành công nghiệp thực phẩm. Nhưng sự thật là pho mát ra đời một cách tình cờ và bất ngờ, qua một tai nạn nhỏ nhưng quan trọng.\"}, {\"paragraph\": \"Câu chuyện bắt đầu từ khi những người chăn nuôi trong khu vực Trung Đông phát hiện ra rằng sữa được giữ trong túi da động vật có thể chuyển hóa thành một chất đặc và tách ra thành hai phần: một phần chất lỏng (whey) và phần đặc dính (curd). Chính sự kết hợp giữa sữa và nhiệt độ, cộng với môi trường đặc biệt trong túi da động vật, đã vô tình tạo ra pho mát đầu tiên. Không ai biết chính xác ai là người đầu tiên phát hiện ra pho mát, nhưng chắc chắn rằng sự phát minh này đã thay đổi cả lịch sử ẩm thực.\"}, {\"quote\": \"Nếu không có tai nạn này, có thể món pho mát sẽ không bao giờ được phát minh và thế giới ẩm thực của chúng ta sẽ thiếu đi một trong những nguyên liệu quan trọng nhất, từ các món ăn nhẹ đến những bữa tiệc sang trọng.\"}, {\"paragraph\": \"Kể từ khi pho mát ra đời, nó đã trở thành món ăn đặc biệt được yêu thích trên khắp thế giới. Không chỉ là một phần không thể thiếu trong nhiều món ăn, từ pizza đến pasta, pho mát còn có giá trị dinh dưỡng cao. Được làm từ sữa, pho mát cung cấp protein, canxi, vitamin A và D, giúp duy trì xương chắc khỏe và hỗ trợ chức năng cơ bắp. Hơn nữa, pho mát còn có nhiều loại với các hương vị và kết cấu đa dạng, từ pho mát mềm như brie đến pho mát cứng như parmesan.\"}, {\"paragraph\": \"Ngày nay, pho mát không chỉ xuất hiện trong các món ăn chính mà còn được dùng trong các món tráng miệng, snack, và thậm chí là các loại nước sốt. Sự phát triển của pho mát trong lịch sử ẩm thực đã thúc đẩy ngành công nghiệp thực phẩm phát triển mạnh mẽ, với hàng nghìn loại pho mát khác nhau được sản xuất và tiêu thụ mỗi ngày. Không thể phủ nhận rằng pho mát đã trở thành một phần của nền văn hóa ẩm thực toàn cầu, mang đến sự phong phú và đa dạng cho các bữa ăn của chúng ta.\"}]', 'cuoi-len-va-noi-cheese', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:20:55');
INSERT INTO `blogs` VALUES ('7182bfc8-f05e-4752-af5d-53979ebab012', 'Công thức: Salad Caprese gia vị', 'uploads\\\\5fcc946a.jpg', 'Salad Caprese với cà chua chín mọng, phô mai mozzarella tươi ngon và lá basil thơm phức, kết hợp với dầu olive và gia vị tạo nên món ăn nhẹ tuyệt vời, thanh mát và đầy hương vị…', '[{\"paragraph\": \"Salad Caprese là món salad đơn giản nhưng cực kỳ ngon miệng, với các nguyên liệu chính gồm cà chua, mozzarella tươi và lá húng quế, kết hợp với một chút dầu olive và giấm balsamic. Món salad này không chỉ ngon mà còn mang lại nhiều lợi ích sức khỏe nhờ vào các thành phần tươi ngon, giàu vitamin và chất chống oxy hóa. Đây là món ăn lý tưởng cho những bữa ăn nhẹ hay khai vị, đặc biệt là trong những ngày hè nóng bức.\"}, {\"paragraph\": \"Công thức Salad Caprese rất dễ làm và bạn chỉ cần vài nguyên liệu cơ bản. Đầu tiên, cắt cà chua thành lát mỏng, mozzarella thành từng miếng vừa ăn. Sau đó, xếp lần lượt cà chua, mozzarella và lá húng quế lên đĩa. Cuối cùng, rưới lên salad một chút dầu olive, giấm balsamic và một ít muối, tiêu để tăng thêm hương vị. Để món salad thêm hấp dẫn, bạn có thể thêm một chút vỏ chanh hoặc dầu hạt lanh nếu thích.\"}, {\"quote\": \"Salad Caprese với gia vị đơn giản nhưng lại có sức hút mạnh mẽ nhờ vào sự kết hợp hoàn hảo giữa vị ngọt của cà chua, sự béo ngậy của mozzarella và hương thơm tươi mát của húng quế.\"}, {\"paragraph\": \"Một trong những điều làm cho Salad Caprese trở nên đặc biệt chính là sự kết hợp của gia vị tươi ngon. Dầu olive nguyên chất không chỉ giúp tăng thêm độ béo mà còn cung cấp axit béo không bão hòa có lợi cho sức khỏe tim mạch. Giấm balsamic, với vị chua nhẹ, làm cân bằng hương vị của các nguyên liệu tươi ngon, tạo nên một món salad hoàn hảo. Đừng quên thêm chút muối và tiêu để tăng cường hương vị và kích thích khẩu vị.\"}, {\"paragraph\": \"Salad Caprese không chỉ là món ăn ngon mà còn rất tốt cho sức khỏe, đặc biệt là đối với những ai đang theo chế độ ăn ít calo, giàu dưỡng chất. Với các thành phần như cà chua và húng quế, món salad này giúp tăng cường hệ miễn dịch, chống oxy hóa và giảm viêm nhiễm. Ngoài ra, mozzarella cung cấp protein và canxi, rất tốt cho xương và cơ bắp.\"}]', 'cong-thuc-salad-caprese-gia-vi', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:31:06');
INSERT INTO `blogs` VALUES ('75761803-af6d-47fc-a8ac-08903fe75949', 'Súp rau củ với thảo mộc và gia vị tươi ngon', 'uploads\\\\9b3064db.jpg', 'Súp rau củ của chúng tôi là sự kết hợp hoàn hảo giữa những nguyên liệu tươi mới và thảo mộc thơm ngát, mang đến hương vị đậm đà và bổ dưỡng...', '[{\"paragraph\": \"Súp rau củ với thảo mộc và gia vị tươi ngon là một món ăn dễ chế biến, thơm ngon và bổ dưỡng, giúp cung cấp đầy đủ vitamin, khoáng chất và chất xơ cho cơ thể. Món súp này không chỉ giúp làm dịu cơ thể vào những ngày se lạnh mà còn hỗ trợ hệ tiêu hóa và tăng cường sức khỏe tổng thể nhờ vào sự kết hợp tuyệt vời giữa rau củ tươi ngon và thảo mộc tự nhiên.\"}, {\"paragraph\": \"Để chuẩn bị món súp này, bạn cần các nguyên liệu đơn giản như cà rốt, khoai tây, hành tây, cần tây và các loại thảo mộc tươi như húng quế, thì là, hoặc ngò rí. Các gia vị như tỏi, gừng, tiêu, muối và một chút nước cốt chanh sẽ giúp món súp thêm phần đậm đà và dễ chịu. Bạn chỉ cần nấu các loại rau củ trong nồi nước dùng, sau đó thêm thảo mộc và gia vị để hoàn thiện món ăn.\"}, {\"quote\": \"Súp rau củ với thảo mộc và gia vị tươi không chỉ là món ăn dễ làm mà còn là một lựa chọn tuyệt vời cho những ai muốn ăn sạch, tăng cường sức khỏe và giữ gìn vóc dáng.\", \"author\": \"Nguyễn Hoàng Mai\"}, {\"paragraph\": \"Ngoài việc ngon miệng, súp rau củ còn mang lại nhiều lợi ích cho sức khỏe. Các loại rau củ tươi chứa nhiều vitamin và khoáng chất giúp cải thiện làn da, tăng cường hệ miễn dịch và hỗ trợ hệ tiêu hóa. Thêm vào đó, các thảo mộc tươi như húng quế, thì là không chỉ làm tăng hương vị cho món súp mà còn có khả năng chống viêm và giúp thư giãn cơ thể.\"}, {\"paragraph\": \"Bạn có thể kết hợp súp rau củ với các loại bánh mì nguyên cám để tạo thành một bữa ăn đầy đủ dinh dưỡng. Đây là món ăn lý tưởng cho những ai đang tìm kiếm một cách ăn uống lành mạnh, ít calo nhưng vẫn ngon miệng và đủ chất. Món súp này có thể dễ dàng điều chỉnh theo sở thích cá nhân, tùy thuộc vào loại rau củ và gia vị bạn yêu thích.\"}]', 'sup-rau-cu-voi-thao-moc-va-gia-vi-tuoi-ngon', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 15:46:30');
INSERT INTO `blogs` VALUES ('75f13306-385d-4e03-9647-c36f32200d73', 'Cá hồi nướng tỏi', 'uploads\\\\c3d12201.jpg', 'Cá hồi được nướng vàng thơm cùng với tỏi và gia vị, tạo nên món ăn đậm đà, dễ làm và giàu dinh dưỡng – hoàn hảo cho bữa tối nhanh gọn nhưng vẫn ngon miệng...', '[{\"paragraph\": \"Cá hồi nướng tỏi là một món ăn vừa ngon miệng lại vô cùng bổ dưỡng, được yêu thích bởi hương vị đậm đà từ tỏi kết hợp với cá hồi mềm mại. Cá hồi là một nguồn cung cấp omega-3 tuyệt vời, giúp cải thiện sức khỏe tim mạch, hỗ trợ não bộ và giữ cho làn da luôn khỏe mạnh. Khi kết hợp với tỏi, món ăn không chỉ thơm ngon mà còn mang lại nhiều lợi ích sức khỏe, nhờ tỏi có đặc tính kháng viêm và tăng cường hệ miễn dịch.\"}, {\"paragraph\": \"Để làm món cá hồi nướng tỏi, bạn cần chuẩn bị những nguyên liệu đơn giản nhưng đầy đủ dinh dưỡng: cá hồi tươi, tỏi băm nhỏ, dầu olive, chanh, muối, tiêu và các gia vị khác như mùi tây hoặc thì là. Sau khi ướp cá hồi với tỏi, dầu olive và gia vị, bạn chỉ cần nướng trong khoảng 15-20 phút là có thể thưởng thức một món ăn vừa dễ làm lại đầy đủ dưỡng chất.\"}, {\"quote\": \"Cá hồi nướng tỏi không chỉ là một món ăn ngon mà còn là một lựa chọn tuyệt vời cho những ai muốn kết hợp giữa việc duy trì sức khỏe và tận hưởng hương vị đậm đà, thơm ngon của hải sản.\"}, {\"paragraph\": \"Ngoài hương vị thơm ngon, cá hồi nướng tỏi còn rất dễ chế biến và có thể kết hợp với nhiều loại rau xanh hoặc salad để tăng thêm dinh dưỡng. Bạn có thể thử làm món ăn này trong các bữa tối nhẹ nhàng hay những dịp đặc biệt, khi bạn muốn thưởng thức một món ăn không chỉ ngon mà còn tốt cho sức khỏe. Món ăn này cũng phù hợp cho những ai đang theo chế độ ăn kiêng hoặc muốn tăng cường lượng protein trong khẩu phần ăn.\"}, {\"paragraph\": \"Cá hồi nướng tỏi không chỉ thơm ngon mà còn là một lựa chọn tuyệt vời cho sức khỏe tim mạch nhờ vào hàm lượng omega-3 cao trong cá hồi. Omega-3 giúp giảm nguy cơ bệnh tim, cải thiện sức khỏe não bộ và giảm viêm nhiễm trong cơ thể. Khi kết hợp với tỏi, món ăn này càng trở nên bổ dưỡng hơn với khả năng kháng viêm mạnh mẽ từ tỏi, hỗ trợ sức khỏe toàn diện.\"}]', 'ca-hoi-nuong-toi', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 16:10:27');
INSERT INTO `blogs` VALUES ('766d00ba-3c03-4e28-b93b-878c60983e07', 'Top 5 sự thật dinh dưỡng về đậu hà lan', 'uploads\\\\fe137540.jpg', 'Có thể bạn sẽ khó tin rằng một phần đậu hà lan nhỏ bé lại có thể thay thế một lát bánh mì một cách dễ dàng. Đậu hà lan không chỉ giàu protein mà còn cung cấp nhiều vitamin và khoáng chất quan trọng cho cơ thể…', '[{\"paragraph\": \"Đậu hà lan là một trong những loại thực phẩm giàu dinh dưỡng và có nhiều lợi ích sức khỏe. Với hương vị thơm ngon và tính linh hoạt trong chế biến, đậu hà lan không chỉ là món ăn hấp dẫn mà còn là nguồn cung cấp protein và các dưỡng chất quan trọng. Hãy cùng tìm hiểu về 5 sự thật dinh dưỡng thú vị về đậu hà lan, để biết tại sao chúng nên có mặt trong chế độ ăn uống của bạn.\"}, {\"paragraph\": \"Đậu hà lan là nguồn cung cấp protein thực vật tuyệt vời, đặc biệt phù hợp với những người ăn chay hoặc thuần chay. Mỗi 100g đậu hà lan chứa khoảng 5g protein, giúp xây dựng và duy trì cơ bắp. Điều này khiến đậu hà lan trở thành một lựa chọn lý tưởng thay thế cho các nguồn protein động vật trong các bữa ăn.\"}, {\"quote\": \"Đậu hà lan không chỉ là nguồn cung cấp protein, mà còn chứa nhiều vitamin và khoáng chất quan trọng như vitamin C, vitamin K và folate, giúp tăng cường hệ miễn dịch và cải thiện sức khỏe tổng thể.\"}, {\"paragraph\": \"Ngoài protein, đậu hà lan còn giàu chất xơ, giúp cải thiện hệ tiêu hóa và kiểm soát lượng đường trong máu. Chất xơ trong đậu hà lan giúp ngăn ngừa táo bón và duy trì cảm giác no lâu hơn, hỗ trợ quá trình giảm cân và duy trì cân nặng khỏe mạnh. Mỗi 100g đậu hà lan chứa khoảng 8g chất xơ, rất tốt cho sức khỏe tiêu hóa.\"}, {\"paragraph\": \"Đậu hà lan cũng là một nguồn tuyệt vời của nhiều vitamin và khoáng chất như vitamin A, C, K và folate, giúp hỗ trợ hệ miễn dịch, bảo vệ cơ thể khỏi các tác nhân gây hại và duy trì làn da khỏe mạnh. Thêm vào đó, đậu hà lan còn chứa các khoáng chất quan trọng như sắt, magiê và kali, giúp duy trì chức năng tim mạch và huyết áp ổn định.\"}]', 'top-5-su-that-dinh-duong-ve-dau-ha-lan', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:20:49');
INSERT INTO `blogs` VALUES ('91ad3bca-0f38-445f-9773-743716c8e571', 'Cách thức hoạt động: Cửa hàng thực phẩm trực tuyến', 'uploads\\\\a47554ac.jpg', 'Bạn đã bao giờ tự hỏi cửa hàng thực phẩm trực tuyến hoạt động như thế nào? Hãy cùng tìm hiểu cách thức hoạt động của hệ thống này, từ việc lựa chọn sản phẩm đến quá trình giao hàng nhanh chóng và tiện lợi…', '[{\"paragraph\": \"Cửa hàng thực phẩm trực tuyến đang trở thành lựa chọn phổ biến cho nhiều gia đình và cá nhân hiện nay nhờ vào sự tiện lợi và khả năng tiết kiệm thời gian. Thay vì phải đến tận cửa hàng, khách hàng có thể dễ dàng lựa chọn thực phẩm yêu thích qua các trang web hoặc ứng dụng di động, và sản phẩm sẽ được giao tận nhà. Mô hình này không chỉ đáp ứng nhu cầu của khách hàng mà còn giúp các doanh nghiệp mở rộng thị trường và tăng trưởng doanh thu một cách nhanh chóng.\"}, {\"paragraph\": \"Cửa hàng thực phẩm trực tuyến hoạt động theo một quy trình đơn giản nhưng hiệu quả. Khi khách hàng truy cập vào trang web hoặc ứng dụng, họ sẽ tìm kiếm và lựa chọn các sản phẩm thực phẩm mà mình cần. Các cửa hàng trực tuyến thường cung cấp thông tin chi tiết về sản phẩm, bao gồm xuất xứ, thành phần, hạn sử dụng, và mức giá, giúp khách hàng dễ dàng đưa ra quyết định. Sau khi chọn hàng, khách hàng sẽ thanh toán qua các phương thức như thẻ tín dụng, ví điện tử hoặc COD (thanh toán khi nhận hàng).\"}, {\"quote\": \"Cửa hàng thực phẩm trực tuyến không chỉ mang lại sự tiện lợi mà còn giúp khách hàng tiết kiệm thời gian, tránh được việc phải xếp hàng hay đi lại vất vả. Nó thực sự là một lựa chọn lý tưởng trong nhịp sống hiện đại.\"}, {\"paragraph\": \"Sau khi đơn hàng được thanh toán, cửa hàng thực phẩm trực tuyến sẽ tiến hành đóng gói và giao hàng đến địa chỉ mà khách hàng yêu cầu. Một số cửa hàng thậm chí còn cung cấp dịch vụ giao hàng nhanh trong vòng vài giờ để đáp ứng nhu cầu gấp của khách hàng. Để đảm bảo chất lượng, các cửa hàng thực phẩm trực tuyến thường có các biện pháp bảo quản chuyên biệt như bảo quản lạnh cho các sản phẩm dễ hư hỏng hoặc tươi sống.\"}, {\"paragraph\": \"Ngoài việc cung cấp các loại thực phẩm tươi sống, cửa hàng thực phẩm trực tuyến còn cung cấp nhiều dịch vụ giá trị gia tăng như gợi ý thực đơn, dịch vụ chế biến sẵn, hay các món ăn chế biến từ các nguyên liệu có sẵn trong cửa hàng. Điều này giúp khách hàng không chỉ mua được thực phẩm mà còn có thể tiết kiệm thời gian và công sức trong việc chuẩn bị bữa ăn.\"}]', 'cach-thuc-hoat-dong-cua-hang-thuc-pham-truc-tuyen', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 16:11:07');
INSERT INTO `blogs` VALUES ('9703bd9d-93bb-4789-8839-fb724c32d47a', '3 Mẹo dễ dàng giúp trẻ ăn nhiều rau hơn', 'uploads\\\\f5d275da.jpg', 'Việc khuyến khích trẻ ăn nhiều rau xanh không phải lúc nào cũng dễ dàng. Tuy nhiên, với một vài mẹo đơn giản, bạn có thể giúp trẻ thưởng thức các loại rau một cách vui vẻ và tự nguyện…', '[{\"paragraph\": \"Việc khuyến khích trẻ ăn rau quả không phải lúc nào cũng dễ dàng. Tuy nhiên, rau củ rất quan trọng đối với sự phát triển của trẻ, cung cấp vitamin, khoáng chất và chất xơ cần thiết để cơ thể khỏe mạnh. Dưới đây là ba mẹo đơn giản giúp trẻ ăn nhiều rau hơn mà không cảm thấy ép buộc hay khó chịu.\"}, {\"paragraph\": \"Một trong những cách đơn giản nhưng hiệu quả để trẻ ăn nhiều rau hơn là biến rau thành phần phụ trong các món ăn yêu thích của trẻ. Ví dụ, bạn có thể thái nhỏ rau vào trong các món súp, xào hoặc trộn vào các món mì, bánh pizza, hamburger. Khi rau được chế biến cùng với các món ăn quen thuộc, trẻ sẽ dễ dàng tiêu thụ mà không nhận ra mình đang ăn rau.\"}, {\"quote\": \"Khi bạn làm cho rau trở nên hấp dẫn và vui vẻ, trẻ sẽ tự nhiên muốn thử và ăn nhiều hơn. Sự sáng tạo trong việc trình bày và chế biến rau là chìa khóa để trẻ yêu thích chúng.\"}, {\"paragraph\": \"Mẹo thứ hai là kết hợp rau củ với các loại gia vị, sốt và thảo mộc để tạo thêm hương vị. Trẻ em thường không thích rau vì chúng có thể hơi nhạt hoặc khó ăn. Tuy nhiên, nếu bạn thử thêm một ít sốt cà chua, sốt phô mai hoặc nước chấm, rau sẽ trở nên ngon hơn. Ngoài ra, bạn cũng có thể thử các loại gia vị như tỏi, hành, hoặc thảo mộc như húng quế, ngò rí để tăng thêm hương vị mà trẻ yêu thích.\"}, {\"paragraph\": \"Cuối cùng, việc để trẻ tự chọn và tham gia vào quá trình chuẩn bị bữa ăn cũng là một mẹo rất hiệu quả. Khi trẻ có cơ hội lựa chọn rau củ mình muốn ăn và tham gia vào việc cắt, rửa rau, chúng sẽ cảm thấy hào hứng hơn và dễ dàng ăn rau hơn. Việc này cũng giúp trẻ phát triển thói quen ăn uống lành mạnh từ nhỏ.\"}]', '3-meo-de-dang-giup-tre-an-nhieu-rau-hon', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 16:07:01');
INSERT INTO `blogs` VALUES ('a08de515-3288-41f8-8ad4-af2574351177', 'Ý tưởng cho bữa trưa hữu cơ lý tưởng', 'uploads\\\\afdf6b2b.jpg', 'Bữa trưa hữu cơ không chỉ tốt cho sức khỏe mà còn giúp bạn cảm thấy tràn đầy năng lượng suốt cả ngày. Hãy thử những món ăn từ rau củ tươi ngon, ngũ cốc nguyên hạt và các nguồn protein tự nhiên – vừa ngon vừa bổ dưỡng…', '[{\"paragraph\": \"Bữa trưa là cơ hội để bạn nạp lại năng lượng và chuẩn bị cho phần còn lại của ngày. Một bữa trưa hữu cơ lý tưởng không chỉ ngon miệng mà còn đảm bảo đầy đủ dưỡng chất. Dưới đây là một số ý tưởng cho bữa trưa hữu cơ mà bạn có thể thử.\"}, {\"paragraph\": \"Một lựa chọn tuyệt vời cho bữa trưa hữu cơ là món salad quinoa kết hợp với rau củ tươi, đậu hũ, và dầu olive. Quinoa là một nguồn protein hoàn chỉnh, trong khi các loại rau củ tươi cung cấp nhiều vitamin và khoáng chất. Thêm vào đó, dầu olive sẽ cung cấp chất béo lành mạnh cho cơ thể.\"}, {\"quote\": \"Bữa trưa hữu cơ không chỉ giúp bạn duy trì sức khỏe mà còn mang lại sự tươi mới và năng lượng cho cả buổi chiều.\"}, {\"paragraph\": \"Một ý tưởng khác là món gà nướng với rau củ. Gà là nguồn protein tuyệt vời, kết hợp với khoai lang, bông cải xanh và cà rốt sẽ tạo ra một bữa ăn đầy đủ dinh dưỡng. Bạn có thể ướp gà với các gia vị tự nhiên như tỏi, tiêu, và dầu ô liu để thêm hương vị.\"}, {\"paragraph\": \"Bữa trưa hữu cơ không cần phải phức tạp. Chỉ cần một vài nguyên liệu tươi ngon và sự sáng tạo, bạn đã có thể chuẩn bị một bữa ăn đầy đủ dưỡng chất và ngon miệng.\"}]', 'y-tuong-cho-bua-trua-huu-co-ly-tuong', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:20:28');
INSERT INTO `blogs` VALUES ('bef3cd86-a1e4-4686-aac2-2f313e445233', 'Lựa chọn của chúng tôi: Đây là những gì chúng tôi yêu thích', 'uploads\\\\7d0c36a1.jpg', 'Chúng tôi luôn tìm kiếm những sản phẩm tốt nhất, từ trái cây tươi ngon đến thực phẩm hữu cơ chất lượng cao. Mỗi lựa chọn đều được chọn lọc kỹ càng để mang đến cho bạn những sản phẩm tuyệt vời và bổ dưỡng nhất…', '[{\"paragraph\": \"Chúng tôi luôn tìm kiếm những sản phẩm tuyệt vời và chất lượng để đưa vào lựa chọn yêu thích của mình. Các sản phẩm này không chỉ ngon miệng mà còn có lợi cho sức khỏe và mang lại trải nghiệm tuyệt vời. Đây là những sản phẩm mà chúng tôi yêu thích và chắc chắn bạn sẽ yêu thích chúng nếu thử.\"}, {\"paragraph\": \"Một trong những lựa chọn yêu thích của chúng tôi là các loại hạt như hạt chia, hạt lanh và hạt điều. Những loại hạt này không chỉ ngon mà còn rất giàu chất béo lành mạnh, chất xơ và protein. Hãy thử thêm chúng vào salad, smoothie hoặc ăn trực tiếp như một món ăn vặt lành mạnh.\"}, {\"quote\": \"Lựa chọn sản phẩm tươi ngon và có lợi cho sức khỏe là cách tốt nhất để duy trì chế độ ăn uống lành mạnh và đạt được mục tiêu sức khỏe của bạn.\"}, {\"paragraph\": \"Một sản phẩm khác chúng tôi yêu thích là dầu ô liu extra virgin. Đây là nguồn cung cấp axit béo omega-3 và các chất chống oxy hóa, rất tốt cho sức khỏe tim mạch và là gia vị lý tưởng cho các món salad hay món xào.\"}, {\"paragraph\": \"Ngoài ra, chúng tôi cũng yêu thích các loại trái cây tươi như quả bơ, quả mâm xôi và chuối. Những trái cây này không chỉ ngon mà còn cung cấp nhiều vitamin và khoáng chất thiết yếu cho cơ thể.\"}]', 'lua-chon-cua-chung-toi-day-la-nhung-gi-chung-toi-yeu-thich', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:20:11');
INSERT INTO `blogs` VALUES ('cfd7124d-2695-4c79-a8c1-db5287e00516', 'Cách chọn sản phẩm tươi ngon nhất', 'uplaods\\\\775162ba.jpg', 'Khi chọn mua sản phẩm, đặc biệt là rau quả hay thực phẩm tươi sống, việc nhận biết độ tươi mới là rất quan trọng. Hãy chú ý đến màu sắc, độ cứng và mùi thơm tự nhiên để đảm bảo bạn luôn mua được sản phẩm chất lượng…', '[{\"paragraph\": \"Khi đi chợ hoặc siêu thị, việc chọn lựa các sản phẩm tươi ngon là rất quan trọng để đảm bảo chất lượng bữa ăn. Một số mẹo đơn giản dưới đây sẽ giúp bạn chọn được những sản phẩm tươi nhất và giữ được độ dinh dưỡng cao nhất.\"}, {\"paragraph\": \"Đầu tiên, khi chọn rau củ, hãy tìm những sản phẩm có màu sắc tươi sáng và không có dấu hiệu héo úa. Rau quả nên còn nguyên vẹn, không có vết bầm hoặc vết cắt. Với thịt, hãy chọn thịt có màu sắc tự nhiên, không có mùi hôi và có kết cấu chắc chắn. Đối với cá, hãy kiểm tra độ tươi bằng cách ngửi và kiểm tra mắt cá, chúng phải trong suốt và không có vết đổi màu.\"}, {\"quote\": \"Chọn sản phẩm tươi ngon không chỉ giúp bạn có những bữa ăn ngon mà còn đảm bảo dinh dưỡng và sức khỏe lâu dài.\"}, {\"paragraph\": \"Khi mua thực phẩm chế biến sẵn, hãy kiểm tra ngày sản xuất và hạn sử dụng để tránh mua phải sản phẩm quá hạn. Nếu có thể, hãy chọn những sản phẩm hữu cơ, vì chúng thường không chứa hóa chất hoặc thuốc trừ sâu.\"}, {\"paragraph\": \"Việc chọn sản phẩm tươi ngon sẽ giúp bạn duy trì một chế độ ăn uống lành mạnh và bảo vệ sức khỏe của cả gia đình. Hãy nhớ rằng, việc mua sắm thông minh không chỉ giúp tiết kiệm tiền bạc mà còn đảm bảo chất lượng bữa ăn hàng ngày.\"}]', 'cach-chon-san-pham-tuoi-ngon-nhat', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 16:10:56');
INSERT INTO `blogs` VALUES ('d2d6c14f-a408-4b43-91ef-7407101dcc1d', 'Những Điều Bạn Cần Biết Về Detox', 'uploads\\\\f3972bab.jpg', 'Đỗ Đức Thụy, một chuyên gia dinh dưỡng, giải thích \"detox\" thực sự có nghĩa là gì và tại sao chúng ta cần thực hiện nó. Detox không chỉ là một xu hướng hay chế độ ăn uống tạm thời, mà là một cách để cơ thể tự làm sạch, loại bỏ độc tố tích tụ từ môi trường và thực phẩm...', '[{\"paragraph\": \"Detox, hay còn gọi là thanh lọc cơ thể, là quá trình giúp loại bỏ các chất độc hại khỏi cơ thể, giúp phục hồi sức khỏe và tăng cường năng lượng. Thực hiện detox đúng cách có thể giúp giảm cảm giác mệt mỏi, cải thiện làn da, hệ tiêu hóa và tăng cường hệ miễn dịch. Tuy nhiên, detox không phải là một phương pháp kỳ diệu để giảm cân nhanh chóng, mà là một quá trình giúp cơ thể trở nên khỏe mạnh hơn khi kết hợp với chế độ ăn uống hợp lý và lối sống lành mạnh.\"}, {\"paragraph\": \"Một trong những cách phổ biến nhất để detox là thông qua chế độ ăn uống, đặc biệt là các loại nước ép từ trái cây, rau củ. Các thực phẩm giàu chất chống oxy hóa như dưa chuột, cà chua, bưởi, táo và rau xanh có thể giúp cơ thể loại bỏ độc tố hiệu quả. Nước ép hoặc smoothie có thể bổ sung vitamin, khoáng chất và chất xơ, hỗ trợ hệ tiêu hóa, đồng thời giúp giải độc nhẹ nhàng mà không làm cơ thể cảm thấy mệt mỏi.\"}, {\"quote\": \"Detox không chỉ là về thực phẩm mà còn là cách bạn chăm sóc cơ thể và tinh thần. Một cơ thể khỏe mạnh bắt nguồn từ sự cân bằng cả về thể chất và tâm lý.\"}, {\"paragraph\": \"Một điều quan trọng cần lưu ý khi thực hiện detox là không nên quá lạm dụng các phương pháp detox cấp tốc, như nhịn ăn hay uống các loại thuốc thải độc mạnh. Những phương pháp này có thể gây hại cho cơ thể và làm mất cân bằng dinh dưỡng, ảnh hưởng đến sức khỏe lâu dài. Thay vào đó, bạn nên áp dụng các phương pháp detox tự nhiên như uống đủ nước, ăn thực phẩm lành mạnh và tập thể dục đều đặn để duy trì sự thanh lọc cơ thể một cách bền vững.\"}, {\"paragraph\": \"Cuối cùng, detox cũng không phải là giải pháp duy nhất cho sức khỏe. Việc duy trì chế độ ăn uống lành mạnh, ngủ đủ giấc và giảm căng thẳng mỗi ngày sẽ mang lại hiệu quả tốt hơn rất nhiều. Detox là một phần của quá trình chăm sóc sức khỏe tổng thể, và khi được thực hiện đúng cách, nó có thể giúp cơ thể bạn cảm thấy tươi mới, tràn đầy năng lượng và sẵn sàng đối mặt với những thử thách của cuộc sống.\"}]', 'nhung-dieu-ban-can-biet-ve-detox', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:18:07');
INSERT INTO `blogs` VALUES ('d4831403-721d-4d4a-8c14-374dfb2113bd', '5 Lý Do Bạn Cần Ăn Rau Mỗi Ngày', 'uploads\\\\9ec6668f.jpg', 'Rau xanh không chỉ là một phần quan trọng trong chế độ ăn uống lành mạnh, mà còn mang lại nhiều lợi ích sức khỏe vượt trội. Dưới đây là 5 lý do bạn nên bổ sung rau vào mỗi bữa ăn:...', '[{\"paragraph\": \"Rau củ không chỉ là một phần quan trọng trong chế độ ăn uống mà còn là nguồn cung cấp dưỡng chất thiết yếu cho cơ thể. Chúng chứa nhiều vitamin, khoáng chất và chất xơ, giúp duy trì sức khỏe và cải thiện hệ tiêu hóa. Dưới đây là 5 lý do bạn cần ăn rau mỗi ngày.\"}, {\"paragraph\": \"Thứ nhất, rau củ cung cấp nhiều vitamin và khoáng chất thiết yếu, giúp tăng cường hệ miễn dịch và bảo vệ cơ thể khỏi các bệnh tật. Thứ hai, chất xơ trong rau củ giúp cải thiện hệ tiêu hóa và ngăn ngừa táo bón. Thứ ba, rau củ giúp duy trì cân nặng khỏe mạnh, vì chúng có ít calo và giàu nước.\"}, {\"quote\": \"Ăn rau mỗi ngày không chỉ giúp cung cấp dưỡng chất cho cơ thể mà còn giúp duy trì sức khỏe lâu dài và phòng ngừa bệnh tật.\"}, {\"paragraph\": \"Thứ tư, nhiều loại rau củ còn có tác dụng chống viêm, giúp giảm nguy cơ mắc các bệnh mạn tính như bệnh tim mạch. Cuối cùng, rau củ là nguồn cung cấp chất chống oxy hóa, giúp bảo vệ tế bào khỏi sự tổn hại của các gốc tự do, làm chậm quá trình lão hóa.\"}, {\"paragraph\": \"Để có một chế độ ăn uống lành mạnh, bạn nên bổ sung nhiều loại rau củ vào bữa ăn hàng ngày, từ các món salad, canh rau cho đến những món xào hoặc luộc. Sự đa dạng trong lựa chọn rau củ sẽ giúp bạn tận dụng tối đa những lợi ích sức khỏe mà chúng mang lại.\"}]', '5-ly-do-ban-can-an-rau-moi-ngay', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 16:00:48');
INSERT INTO `blogs` VALUES ('db6d7d2f-68cf-4413-82f7-76e278cad8fc', 'Tại sao sô-cô-la là món quà hoàn hảo?', 'uploads\\\\ff09b6b3.jpg', 'Chắc hẳn bạn không biết rằng sô-cô-la không chỉ là món ăn ngon mà còn là biểu tượng của tình yêu và sự quan tâm. Đây là món quà tuyệt vời cho mọi dịp, dễ dàng làm hài lòng bất kỳ ai nhận được…', '[{\"paragraph\": \"Từ hàng trăm năm nay, sô-cô-la luôn được xem là biểu tượng của sự ngọt ngào, tinh tế và quan tâm. Với hương vị quyến rũ và khả năng kích thích cảm xúc, sô-cô-la dễ dàng chạm đến trái tim người nhận mà không cần lời giải thích dài dòng. Dù là ngày Valentine, sinh nhật hay đơn giản chỉ là một lời cảm ơn, một thanh sô-cô-la luôn truyền tải được cảm xúc chân thành và ý nghĩa.\"}, {\"paragraph\": \"Sô-cô-la có sự linh hoạt hiếm có: từ viên nhỏ ngọt ngào cho trẻ em đến các thanh đắng thanh lịch cho người trưởng thành; từ các loại có nhân hạt, caramel, rượu cho đến sô-cô-la nguyên chất tinh khiết. Mỗi loại mang một cá tính riêng, phù hợp với từng đối tượng, từng dịp tặng quà. Không chỉ là món ăn, sô-cô-la còn là một phần của văn hóa, của sự sang trọng và đẳng cấp trong cách thể hiện tình cảm.\"}, {\"quote\": \"Một món quà tốt là món quà vừa thể hiện được tấm lòng, vừa làm người nhận cảm thấy đặc biệt. Sô-cô-la làm được cả hai điều đó, chỉ trong một thanh nhỏ.\"}, {\"paragraph\": \"Không chỉ hấp dẫn về vị giác, sô-cô-la còn mang lại cảm giác tích cực về tâm trạng. Chất theobromine và serotonin trong sô-cô-la giúp cải thiện tâm trạng, giảm stress và tạo cảm giác hạnh phúc. Chính vì vậy, tặng sô-cô-la không chỉ đơn thuần là hành động vật chất, mà còn là cách bạn trao đi cảm xúc tích cực và sự an ủi tinh tế cho người khác.\"}, {\"paragraph\": \"Ngoài ra, việc sô-cô-la được đóng gói đẹp, dễ bảo quản và có thể tùy chỉnh thiết kế cũng khiến nó trở thành lựa chọn lý tưởng cho mọi dịp. Một hộp sô-cô-la nhỏ có thể sang trọng như một món đồ trang sức, nhưng vẫn gần gũi và dễ tiếp cận. Trong thế giới hiện đại, nơi con người bận rộn và ít khi thể hiện cảm xúc trực tiếp, sô-cô-la đóng vai trò như một cầu nối – ngọt ngào, đơn giản và hiệu quả.\"}]', 'tai-sao-so-co-la-la-mon-qua-hoan-hao', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:18:09');
INSERT INTO `blogs` VALUES ('dd4122cc-efaa-4018-9b8c-41e43a78452a', 'Bạn có biết?', 'uploads\\\\82167054.jpg', 'Chắc hẳn bạn chưa từng nghe rằng cà tím thực ra được xếp vào loại quả mọng. Đây là một sự thật thú vị về loại rau quả quen thuộc mà ít ai để ý đến…', '[{\"paragraph\": \"Cà tím là một loại rau củ quen thuộc trong bữa ăn của chúng ta, nhưng ít ai biết rằng thực chất cà tím lại được xếp vào nhóm quả mọng. Đây là một sự thật thú vị mà không phải ai cũng biết về loại rau quả này. Cùng khám phá những điều thú vị về cà tím mà bạn chưa từng nghe đến.\"}, {\"paragraph\": \"Cà tím thuộc họ Solanaceae, cùng họ với cà chua và khoai tây, và được xếp vào nhóm quả mọng vì cấu trúc của nó. Dù chúng ta thường sử dụng cà tím như một loại rau trong các món ăn, nhưng thực chất nó là một quả, với vỏ mềm và chứa nhiều hạt nhỏ bên trong.\"}, {\"quote\": \"Cà tím không chỉ là một nguyên liệu quen thuộc mà còn mang nhiều lợi ích sức khỏe, bao gồm việc cung cấp chất xơ và các vitamin thiết yếu cho cơ thể.\"}, {\"paragraph\": \"Cà tím rất giàu chất chống oxy hóa, giúp bảo vệ cơ thể khỏi các tác hại của các gốc tự do. Bên cạnh đó, cà tím cũng chứa nhiều kali, giúp cân bằng điện giải và duy trì sức khỏe tim mạch. Bạn có thể chế biến cà tím thành nhiều món ngon như nướng, xào hoặc làm món súp.\"}, {\"paragraph\": \"Thực tế, việc sử dụng cà tím trong chế độ ăn uống không chỉ giúp cải thiện sức khỏe mà còn mang lại sự đa dạng cho thực đơn hàng ngày. Bạn có thể thử kết hợp cà tím với các loại gia vị và nguyên liệu khác để tạo ra những món ăn đầy sáng tạo và ngon miệng.\"}]', 'ban-co-biet', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 16:09:34');
INSERT INTO `blogs` VALUES ('e9474620-5bf5-43b7-9bd1-dd530b4ef3f9', 'Công thức bánh nướng tại nhà dễ làm\n', 'uploads\\\\420d7c23.jpg', 'Những công thức bánh này ngon đến mức bạn sẽ khó lòng đọc hết bài viết mà không muốn vào bếp ngay. Dễ làm, nguyên liệu cơ bản, hương vị thơm lừng – hoàn hảo cho những buổi trà chiều hay bữa sáng cuối tuần...', '[{\"paragraph\": \"Bánh nướng tại nhà là một món ăn đơn giản nhưng lại có thể mang lại cảm giác ấm áp và hạnh phúc. Bạn có thể dễ dàng chuẩn bị những chiếc bánh mềm mại và thơm ngon ngay tại ngôi nhà của mình. Một trong những công thức đơn giản mà bạn có thể thử là công thức bánh quy bơ, chỉ cần vài nguyên liệu cơ bản là bạn đã có thể tạo ra những chiếc bánh ngọt ngào, thơm lừng.\"}, {\"paragraph\": \"Để làm bánh quy bơ, bạn cần chuẩn bị bột mì, bơ, đường, và một chút vani. Sau khi trộn đều các nguyên liệu, bạn chỉ cần tạo hình bánh và nướng trong khoảng 10-15 phút ở nhiệt độ 180 độ C. Chắc chắn rằng gia đình và bạn bè sẽ yêu thích những chiếc bánh quy thơm ngon này.\"}, {\"quote\": \"Với công thức bánh nướng đơn giản này, bạn sẽ nhanh chóng có được những chiếc bánh mềm mại, thơm ngon và đặc biệt là tràn đầy tình yêu thương.\"}, {\"paragraph\": \"Một công thức khác bạn có thể thử là bánh muffin. Để làm bánh muffin, bạn chỉ cần trộn đều bột mì, đường, trứng và sữa. Đặt bột vào khuôn bánh và nướng trong vòng 20 phút. Bánh muffin với hương vị bơ và vani sẽ là món ăn tuyệt vời cho bữa sáng hoặc bữa xế.\"}, {\"paragraph\": \"Bánh nướng tại nhà không chỉ giúp bạn tiết kiệm chi phí mà còn là cách tuyệt vời để tạo ra những món ăn yêu thích cho gia đình và bạn bè. Đặc biệt, khi bạn tự tay làm bánh, hương vị của những chiếc bánh sẽ thêm phần đặc biệt, đầy ắp tình cảm.\"}]', 'cong-thuc-banh-nuong-tai-nha-de-lam', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:17:07');
INSERT INTO `blogs` VALUES ('f1906184-37fd-4ca1-8dab-f0a9b610d086', 'Sô-cô-la và lợi ích sức khỏe', 'uploads\\\\0651e6e1.jpg', 'Sô-cô-la không chỉ là món ăn ngon mà còn mang lại nhiều lợi ích cho sức khỏe, từ việc cải thiện tâm trạng đến hỗ trợ tim mạch…', '[{\"paragraph\": \"Sô-cô-la, đặc biệt là sô-cô-la đen, từ lâu đã được biết đến không chỉ vì hương vị hấp dẫn mà còn bởi những lợi ích sức khỏe đáng chú ý. Trong sô-cô-la có chứa flavonoid - một loại chất chống oxy hóa mạnh mẽ giúp bảo vệ tế bào khỏi tổn thương do gốc tự do. Việc tiêu thụ flavonoid đều đặn đã được chứng minh là có thể làm giảm nguy cơ mắc bệnh tim mạch và các bệnh mãn tính khác. Ngoài ra, sô-cô-la đen còn hỗ trợ cải thiện chức năng mạch máu, giảm viêm và góp phần ổn định huyết áp ở mức hợp lý. Đây là lý do vì sao sô-cô-la được xem là một “siêu thực phẩm” khi dùng đúng cách và với liều lượng phù hợp.\"}, {\"paragraph\": \"Lợi ích tiếp theo đáng nhắc đến là khả năng hỗ trợ sức khỏe tim mạch của sô-cô-la. Các nghiên cứu lâm sàng đã cho thấy rằng những người ăn một lượng nhỏ sô-cô-la đen vài lần mỗi tuần có thể giảm nguy cơ mắc các bệnh về tim. Nhờ tác dụng làm giãn mạch và cải thiện lưu thông máu, sô-cô-la giúp giảm huyết áp ở những người bị tăng huyết áp nhẹ. Đồng thời, nó cũng giúp làm giảm mức cholesterol xấu (LDL) và tăng cholesterol tốt (HDL), qua đó cải thiện toàn diện hệ tim mạch. Tuy nhiên, để đạt được lợi ích này, người tiêu dùng cần lựa chọn các sản phẩm sô-cô-la có hàm lượng cacao cao, ít đường và không có phụ gia độc hại.\"}, {\"quote\": \"Sô-cô-la không chỉ là món ăn vặt; nó là một món quà của thiên nhiên với khả năng ảnh hưởng đến cả thể chất lẫn tinh thần. Tôi tin rằng nếu biết dùng đúng cách, một thanh sô-cô-la mỗi ngày có thể là liều thuốc tinh thần tuyệt vời cho bất kỳ ai.\"}, {\"paragraph\": \"Bên cạnh các lợi ích tâm lý và tim mạch, sô-cô-la cũng là một nguồn cung cấp khoáng chất thiết yếu như magie, sắt, kẽm và mangan. Những chất này đóng vai trò quan trọng trong hoạt động của hệ miễn dịch, chuyển hóa năng lượng và hỗ trợ cấu trúc xương. Ví dụ, magie giúp điều hòa hoạt động thần kinh và cơ bắp, trong khi sắt cần thiết cho quá trình tạo máu. Một thanh sô-cô-la đen chất lượng cao có thể cung cấp một lượng đáng kể các chất này, đặc biệt là khi được sản xuất từ hạt cacao nguyên chất không tinh luyện. Điều này càng khẳng định vai trò của sô-cô-la như một phần của chế độ ăn cân bằng và giàu dưỡng chất.\"}, {\"paragraph\": \"Tuy nhiên, để tận dụng tối đa các lợi ích sức khỏe của sô-cô-la, người tiêu dùng cần lưu ý đến chất lượng và liều lượng. Việc lạm dụng sô-cô-la, đặc biệt là các loại chứa nhiều đường, sữa và chất béo bão hòa, có thể gây tăng cân, tăng đường huyết và tăng nguy cơ mắc các bệnh chuyển hóa. Vì vậy, nên ưu tiên chọn sô-cô-la đen với hàm lượng cacao từ 70% trở lên, dùng không quá 30 - 40g mỗi ngày. Kết hợp sô-cô-la với chế độ ăn uống lành mạnh, giàu rau củ và vận động thường xuyên sẽ giúp tối ưu hóa lợi ích và hạn chế rủi ro cho sức khỏe lâu dài.\"}]', 'so-co-la-va-loi-ich-suc-khoe', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-05-01 21:02:58', '2025-05-21 21:16:58');
INSERT INTO `blogs` VALUES ('fb74fe91-5e48-40ba-9e1e-21e60ddc1628', 'Vì tình yêu với ẩm thực', 'uploads\\\\3e2d8e5a.jpg', 'Mỗi món ăn là một hành trình, một câu chuyện được kể qua từng nguyên liệu tươi ngon và kỹ thuật chế biến tinh tế...', '[{\"paragraph\": \"Ẩm thực không chỉ là việc nấu ăn mà là sự kết nối với cảm xúc, văn hóa và niềm đam mê. Mỗi món ăn không chỉ mang lại hương vị mà còn là câu chuyện, là tình yêu mà người đầu bếp gửi gắm vào đó. Từ những bữa cơm gia đình ấm cúng đến những món ăn độc đáo tại nhà hàng, ẩm thực luôn có sức mạnh kết nối mọi người lại với nhau.\"}, {\"paragraph\": \"Với tình yêu dành cho ẩm thực, mỗi món ăn đều trở thành một tác phẩm nghệ thuật, nơi mà các nguyên liệu đơn giản được kết hợp một cách tinh tế để tạo ra những hương vị đặc biệt. Chính niềm đam mê này khiến việc nấu ăn trở thành một niềm vui bất tận. Dù là món ăn đơn giản hay cầu kỳ, sự sáng tạo luôn có thể mang lại những bất ngờ thú vị.\"}, {\"quote\": \"Ẩm thực là một hành trình của cảm xúc, một cách thể hiện tình yêu, sự sáng tạo và những kỷ niệm tuyệt vời.\"}, {\"paragraph\": \"Chắc chắn rằng ai cũng có những món ăn yêu thích, những hương vị gắn liền với kỷ niệm hay những bữa ăn đặc biệt. Đó chính là lý do tại sao ẩm thực không chỉ là một nhu cầu mà còn là một phần không thể thiếu trong cuộc sống, mang lại niềm vui và sự thoải mái cho mỗi chúng ta.\"}, {\"paragraph\": \"Với tình yêu đối với ẩm thực, bạn sẽ luôn tìm thấy niềm vui trong việc tạo ra những món ăn mới, thử nghiệm những công thức khác nhau và chia sẻ chúng với những người thân yêu.\"}]', 'vi-tinh-yeu-voi-am-thuc', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-13 21:02:58', '2025-06-12 00:55:10');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `cart_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`, `product_id`) USING BTREE,
  INDEX `fk_cart_items_products`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_cart_items_carts` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cart_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_carts_users`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_carts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `blog_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_comments_blogs`(`blog_id` ASC) USING BTREE,
  INDEX `fk_comments_comments`(`parent_id` ASC) USING BTREE,
  INDEX `fk_comments_users`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_comments_blogs` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comments_comments` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1607f0aa-2b41-49cf-adeb-81c879ce096b', '650cc6a5-d297-4553-8bb7-b68c39ec24f2', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'Chuẩn luôn! Mấy món này đúng là không thể thiếu', NULL, '2025-06-12 01:12:09');
INSERT INTO `comments` VALUES ('b8d6c133-7d6d-43e0-8531-d6d05fc2cd28', '045e078e-de4c-4795-8e70-3620db09a844', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'Ai làm rồi cho mình xin ít kinh nghiệm với, có cần dùng khuôn không nhỉ\n\n', NULL, '2025-06-12 11:56:14');
INSERT INTO `comments` VALUES ('bbef2518-3251-4d58-8e86-fd01805988b5', '0b4ef457-90bf-4799-92f0-b8b73fe63e62', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'Nghe nguyên liệu thôi đã thấy thơm rồi, chắc chắn phải thử\n\n', NULL, '2025-06-12 12:02:02');
INSERT INTO `comments` VALUES ('ec039822-a8fe-4d4f-bbc0-f6f16ca5960c', '0b4ef457-90bf-4799-92f0-b8b73fe63e62', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'Món này mà ăn nóng với lớp phô mai kéo sợi thì hết sảy\n\n', NULL, '2025-06-12 12:02:09');
INSERT INTO `comments` VALUES ('f2a4a32c-8faa-40ed-8e65-f913573447f7', '045e078e-de4c-4795-8e70-3620db09a844', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'Trời ơi nhìn hấp dẫn quá, tự làm mà trông ngon như tiệm luôn\n\n', NULL, '2025-06-12 11:56:05');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NULL DEFAULT NULL,
  `unit_price` decimal(10, 0) NULL DEFAULT NULL,
  `total_price` decimal(10, 0) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`, `product_id`) USING BTREE,
  INDEX `fk_order_items_products`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('08e4feeb-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e4feeb-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e4feeb-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e4feeb-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5064e-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5064e-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5064e-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5064e-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5089c-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5089c-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5089c-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5089c-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50ae8-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50ae8-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50ae8-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50ae8-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50cc8-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50cc8-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50cc8-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50cc8-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50f5b-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50f5b-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50f5b-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e50f5b-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52304-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52304-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52304-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52304-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52544-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52544-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52544-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52544-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52782-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52782-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52782-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52782-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e529ca-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e529ca-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e529ca-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e529ca-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52bee-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52bee-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52bee-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52bee-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52e2f-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52e2f-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52e2f-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e52e2f-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5304f-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5304f-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5304f-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5304f-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53298-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53298-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53298-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53298-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53aa1-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53aa1-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53aa1-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e53aa1-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e542a7-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e542a7-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e542a7-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e542a7-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e546a2-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e546a2-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e546a2-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e546a2-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e548a9-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e548a9-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e548a9-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e548a9-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e549d2-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e549d2-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e549d2-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e549d2-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54af2-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54af2-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54af2-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54af2-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54c14-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54c14-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54c14-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54c14-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54d33-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54d33-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54d33-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54d33-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54e3d-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54e3d-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54e3d-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54e3d-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54f55-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54f55-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54f55-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e54f55-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55070-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55070-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55070-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55070-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e551fa-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e551fa-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e551fa-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e551fa-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5530f-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5530f-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5530f-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5530f-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55430-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55430-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55430-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55430-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55544-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55544-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55544-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55544-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5565a-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5565a-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5565a-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5565a-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55794-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55794-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55794-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55794-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e558ac-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e558ac-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e558ac-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e558ac-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e559c2-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e559c2-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e559c2-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e559c2-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55ad1-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55ad1-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55ad1-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55ad1-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55be8-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55be8-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55be8-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55be8-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55d0a-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55d0a-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55d0a-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55d0a-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55e2b-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55e2b-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55e2b-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55e2b-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55f53-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55f53-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55f53-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e55f53-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e560de-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e560de-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e560de-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e560de-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5622c-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5622c-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5622c-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5622c-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e564e3-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e564e3-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e564e3-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e564e3-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56b2b-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56b2b-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56b2b-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56b2b-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56f33-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56f33-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56f33-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e56f33-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57179-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57179-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57179-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57179-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57392-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57392-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57392-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57392-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5757f-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5757f-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5757f-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5757f-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e576d5-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e576d5-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e576d5-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e576d5-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5784e-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5784e-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5784e-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5784e-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e579af-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e579af-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e579af-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e579af-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57b31-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57b31-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57b31-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57b31-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57c8e-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57c8e-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57c8e-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57c8e-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57dfe-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57dfe-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57dfe-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57dfe-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57f21-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57f21-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57f21-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e57f21-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5802c-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5802c-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5802c-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5802c-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e581b9-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e581b9-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e581b9-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e581b9-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e582f1-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e582f1-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e582f1-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e582f1-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e584cb-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e584cb-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e584cb-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e584cb-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5875b-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5875b-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5875b-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5875b-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e589f4-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e589f4-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e589f4-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e589f4-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58c47-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58c47-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58c47-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58c47-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58ece-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58ece-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58ece-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e58ece-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59041-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59041-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59041-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59041-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59162-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59162-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59162-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59162-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59285-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59285-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59285-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59285-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e593e1-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e593e1-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e593e1-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e593e1-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e594ed-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e594ed-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e594ed-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e594ed-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5979a-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5979a-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5979a-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5979a-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59a38-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59a38-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59a38-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59a38-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59c74-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59c74-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59c74-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59c74-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59e10-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59e10-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59e10-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59e10-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59f36-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59f36-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59f36-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e59f36-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a061-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a061-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a061-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a061-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a18c-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a18c-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a18c-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a18c-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a295-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a295-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a295-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a295-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a3a3-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a3a3-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a3a3-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a3a3-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a4d2-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a4d2-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a4d2-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a4d2-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a5f7-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a5f7-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a5f7-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a5f7-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a727-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a727-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a727-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a727-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a83e-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a83e-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a83e-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5a83e-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5aa15-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5aa15-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5aa15-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5aa15-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ab20-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ab20-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ab20-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ab20-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ac01-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ac01-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ac01-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ac01-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ae02-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ae02-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ae02-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ae02-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b083-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b083-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b083-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b083-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 45000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b229-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b229-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b229-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b229-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b356-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b356-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b356-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 140000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b356-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b47e-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b47e-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b47e-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b47e-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b5a8-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b5a8-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b5a8-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b5a8-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b6d7-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b6d7-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b6d7-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b6d7-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b7e8-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b7e8-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b7e8-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b7e8-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b903-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b903-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 4, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b903-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5b903-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ba43-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ba43-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ba43-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5ba43-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bb64-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bb64-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 3, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bb64-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bb64-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bcc3-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 2, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bcc3-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bcc3-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 4, 35000, 35000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bcc3-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 4, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5be0c-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5be0c-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 120000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5be0c-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5be0c-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 3, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bf33-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 240000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bf33-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bf33-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 1, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5bf33-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 180000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c039-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 320000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c039-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 1, 30000, 60000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c039-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 105000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c039-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 1, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c13c-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 160000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c13c-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c13c-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 3, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c13c-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 90000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c2d8-48ca-11f0-b488-ecf4bb46813a', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 3, 80000, 80000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c2d8-48ca-11f0-b488-ecf4bb46813a', '07196629-3573-45e6-8692-cfeaf3d92dd3', 2, 30000, 30000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c2d8-48ca-11f0-b488-ecf4bb46813a', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 2, 35000, 70000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('08e5c2d8-48ca-11f0-b488-ecf4bb46813a', '2295e66b-b46a-4eec-9e6e-99e08555e392', 2, 45000, 135000, '2025-06-14 09:48:21');
INSERT INTO `order_items` VALUES ('0a50220a-db38-46f6-bf1a-128036968635', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 1, 80000, 80000, '2025-06-16 00:48:14');
INSERT INTO `order_items` VALUES ('0eabc512-da00-4ff1-84dc-2ce4384b25e0', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 4, 80000, 320000, '2025-06-16 03:08:05');
INSERT INTO `order_items` VALUES ('0eabc512-da00-4ff1-84dc-2ce4384b25e0', '452dcfbe-3d57-45a2-80f3-be95a17fd77e', 1, 120000, 120000, '2025-06-16 03:08:05');
INSERT INTO `order_items` VALUES ('0eabc512-da00-4ff1-84dc-2ce4384b25e0', '487949b1-1a4f-4409-8a9f-1d74789dc0c9', 1, 25000, 25000, '2025-06-16 03:08:05');
INSERT INTO `order_items` VALUES ('9a26abfd-9cd9-4d3e-b35c-3b4e097f6bd2', '41038e49-db66-4178-99f0-d11204a356fb', 3, 35000, 105000, '2025-06-16 07:11:00');
INSERT INTO `order_items` VALUES ('f20349eb-7eac-4ce6-ae94-afe15eb82bae', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 8, 80000, 640000, '2025-06-15 10:08:05');
INSERT INTO `order_items` VALUES ('f20349eb-7eac-4ce6-ae94-afe15eb82bae', '338cd454-d329-4ffa-9821-97c282a6eae6', 4, 75000, 300000, '2025-06-15 10:08:05');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` int NULL DEFAULT NULL,
  `status` enum('pending','confirmed','shipping','delivered','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'pending',
  `payment_method` enum('cod','vnpay') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'cod',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_orders_users`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('08e4feeb-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 320000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5064e-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 490000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:00');
INSERT INTO `orders` VALUES ('08e5089c-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 360000, 'pending', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:02');
INSERT INTO `orders` VALUES ('08e50ae8-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 405000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e50cc8-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 595000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:03');
INSERT INTO `orders` VALUES ('08e50f5b-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 760000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:04');
INSERT INTO `orders` VALUES ('08e52304-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 650000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e52544-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 440000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e52782-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 470000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:09');
INSERT INTO `orders` VALUES ('08e529ca-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 530000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:07');
INSERT INTO `orders` VALUES ('08e52bee-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 510000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:11');
INSERT INTO `orders` VALUES ('08e52e2f-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 425000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5304f-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 625000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e53298-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 510000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:14');
INSERT INTO `orders` VALUES ('08e53aa1-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 475000, 'confirmed', 'cod', NULL, '2025-06-15 09:48:21', '2025-06-15 10:27:48');
INSERT INTO `orders` VALUES ('08e542a7-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 340000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e546a2-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 530000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:18');
INSERT INTO `orders` VALUES ('08e548a9-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 370000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:19');
INSERT INTO `orders` VALUES ('08e549d2-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 295000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e54af2-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 525000, 'pending', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e54c14-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 460000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:22');
INSERT INTO `orders` VALUES ('08e54d33-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 305000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e54e3d-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 535000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:24');
INSERT INTO `orders` VALUES ('08e54f55-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 590000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e55070-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 505000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:26');
INSERT INTO `orders` VALUES ('08e551fa-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 565000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5530f-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 645000, 'pending', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e55430-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 250000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:27');
INSERT INTO `orders` VALUES ('08e55544-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 340000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:32');
INSERT INTO `orders` VALUES ('08e5565a-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 500000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:29');
INSERT INTO `orders` VALUES ('08e55794-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 400000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:31');
INSERT INTO `orders` VALUES ('08e558ac-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 565000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:34');
INSERT INTO `orders` VALUES ('08e559c2-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 575000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:35');
INSERT INTO `orders` VALUES ('08e55ad1-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 560000, 'pending', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e55be8-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 505000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:37');
INSERT INTO `orders` VALUES ('08e55d0a-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 370000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e55e2b-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 625000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:39');
INSERT INTO `orders` VALUES ('08e55f53-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 490000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:41');
INSERT INTO `orders` VALUES ('08e560de-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 640000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:43');
INSERT INTO `orders` VALUES ('08e5622c-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 475000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:46');
INSERT INTO `orders` VALUES ('08e564e3-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 465000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:49:44');
INSERT INTO `orders` VALUES ('08e56b2b-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 700000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e56f33-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 615000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e57179-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 530000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e57392-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 350000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5757f-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 515000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e576d5-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 250000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5784e-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 590000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e579af-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 440000, 'pending', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e57b31-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 630000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e57c8e-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 445000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e57dfe-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 565000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e57f21-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 365000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5802c-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 440000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e581b9-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 405000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e582f1-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 510000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e584cb-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 605000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5875b-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 485000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e589f4-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 430000, 'pending', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e58c47-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 280000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e58ece-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 530000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e59041-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 335000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e59162-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 555000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e59285-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 360000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e593e1-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 500000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e594ed-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 555000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5979a-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 390000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e59a38-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 700000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e59c74-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 225000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e59e10-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 280000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e59f36-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 320000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5a061-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 670000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5a18c-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 465000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5a295-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 575000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5a3a3-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 380000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5a4d2-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 500000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5a5f7-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 485000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5a727-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 465000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5a83e-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 460000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5aa15-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 345000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-15 10:18:11');
INSERT INTO `orders` VALUES ('08e5ab20-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 395000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5ac01-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 690000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5ae02-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 375000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5b083-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 475000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5b229-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 535000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5b356-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 500000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5b47e-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 395000, 'pending', 'cod', NULL, '2025-05-14 09:48:21', '2025-06-15 10:21:44');
INSERT INTO `orders` VALUES ('08e5b5a8-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 725000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5b6d7-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 445000, 'delivered', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5b7e8-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 485000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5b903-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 525000, 'shipping', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5ba43-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 470000, 'confirmed', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5bb64-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 550000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5bcc3-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 455000, 'canceled', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5be0c-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 690000, 'delivered', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5bf33-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 585000, 'confirmed', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5c039-48ca-11f0-b488-ecf4bb46813a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 620000, 'pending', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('08e5c13c-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 350000, 'canceled', 'cod', NULL, '2025-06-14 09:48:21', '2025-06-14 09:48:21');
INSERT INTO `orders` VALUES ('08e5c2d8-48ca-11f0-b488-ecf4bb46813a', 'fb1c66bb-1c7f-4334-9590-04cf87994bc6', 315000, 'shipping', 'vnpay', NULL, '2025-06-14 09:48:21', '2025-06-14 09:51:20');
INSERT INTO `orders` VALUES ('0a50220a-db38-46f6-bf1a-128036968635', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 80000, 'pending', 'cod', 'Thanh toan don hang 2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-16 00:48:14', '2025-06-16 00:48:14');
INSERT INTO `orders` VALUES ('0eabc512-da00-4ff1-84dc-2ce4384b25e0', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 465000, 'delivered', 'cod', 'Thanh toan don hang 2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-16 03:08:05', '2025-06-16 10:08:40');
INSERT INTO `orders` VALUES ('9a26abfd-9cd9-4d3e-b35c-3b4e097f6bd2', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 105000, 'pending', 'cod', 'Thanh toan don hang 2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-16 07:11:00', '2025-06-16 07:11:00');
INSERT INTO `orders` VALUES ('f20349eb-7eac-4ce6-ae94-afe15eb82bae', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 940000, 'pending', 'cod', 'Thanh toan don hang 2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-15 10:08:05', '2025-06-15 10:08:05');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `slug` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES ('29fdb6f0-271e-4fe1-8c28-b28ca0760592', 'Sữa, Bánh mì & Trứng', 'sua-banh-mi-and-trung', '2025-06-08 01:04:49', '2025-06-12 22:46:41');
INSERT INTO `product_categories` VALUES ('4a8f7ae6-a99f-4580-97a1-7de2b7b2e448', 'Rau lá xanh', 'rau-la-xanh', '2025-06-08 01:05:59', '2025-06-12 22:46:48');
INSERT INTO `product_categories` VALUES ('4da701d3-2152-4978-95c2-342a53f0b5f1', 'Tạp hóa & Lương thực', 'tap-hoa-and-luong-thuc', '2025-06-08 01:04:56', '2025-06-12 22:46:57');
INSERT INTO `product_categories` VALUES ('6ec08e3f-6f07-4991-ad44-eeed0b40c410', 'Thực phẩm đóng gói', 'thuc-pham-dong-goi', '2025-06-08 01:06:23', '2025-06-12 22:47:01');
INSERT INTO `product_categories` VALUES ('782db175-3ac0-43cb-84e9-4bbfd2e5a8c3', 'Chưa phân loại', 'chua-phan-loai', '2025-06-08 01:06:13', '2025-06-12 22:47:06');
INSERT INTO `product_categories` VALUES ('7ede01d0-8f67-4e53-834a-2fed0a49e0e8', 'Đồ uống', 'do-uong', '2025-06-08 01:04:45', '2025-06-12 22:47:09');
INSERT INTO `product_categories` VALUES ('be76b1af-41e1-4496-bb29-141e59dc0799', 'Trái cây & Rau củ', 'trai-cay-and-rau-cu', '2025-06-08 01:04:52', '2025-06-12 22:47:16');
INSERT INTO `product_categories` VALUES ('bec6abde-3c26-4e99-a6c7-314185ea5d92', 'Họ Hành', 'ho-hanh', '2025-06-08 01:04:41', '2025-06-12 22:47:18');
INSERT INTO `product_categories` VALUES ('f2ff9502-a0c8-426d-bf7d-05463c901503', 'Sức khỏe & Làm đẹp', 'suc-khoe-and-lam-dep', '2025-06-08 01:05:35', '2025-06-12 22:47:29');

-- ----------------------------
-- Table structure for product_categories_products
-- ----------------------------
DROP TABLE IF EXISTS `product_categories_products`;
CREATE TABLE `product_categories_products`  (
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`product_id`, `category_id`) USING BTREE,
  INDEX `fk_product_categories_products__product_categories`(`category_id` ASC) USING BTREE,
  CONSTRAINT `fk_product_categories_products__product_categories` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_categories_products__products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories_products
-- ----------------------------
INSERT INTO `product_categories_products` VALUES ('04700c7b-7e2b-4aca-ac5d-1326b4cc98be', '4da701d3-2152-4978-95c2-342a53f0b5f1');
INSERT INTO `product_categories_products` VALUES ('04700c7b-7e2b-4aca-ac5d-1326b4cc98be', '6ec08e3f-6f07-4991-ad44-eeed0b40c410');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `additional_information` json NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sku` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `slug` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('04700c7b-7e2b-4aca-ac5d-1326b4cc98be', 'Thịt Chay Mít', 'Thịt chay mít hữu cơ từ thương hiệu Biona, được chế biến với hương vị ngọt và khói, là lựa chọn thay thế thịt hoàn hảo cho người ăn chay. Mít có kết cấu mềm, dễ thấm gia vị, rất phù hợp để làm các món xào, kho, hoặc làm nhân bánh, mang đến trải nghiệm ẩm thực độc đáo. Sản phẩm 100% hữu cơ, không chứa gluten, giàu chất xơ, hỗ trợ tiêu hóa và sức khỏe tim mạch. Được đóng hộp tiện lợi, đảm bảo an toàn vệ sinh thực phẩm.', '{\"weight\": \"400 g\"}', 80000, 'lon', 35, 'uploads/c6460786.jpg', 'THIT-CHAY-MIT-001', 'thit-chay-mit', '2025-05-25 10:25:51', '2025-06-15 01:00:39');
INSERT INTO `products` VALUES ('07196629-3573-45e6-8692-cfeaf3d92dd3', 'Hành Tím', 'Hành tím tươi ngon, được trồng tại các nông trại uy tín, đảm bảo chất lượng cao. Hành có màu tím đậm đặc trưng, vị cay nhẹ, thơm nồng, là nguyên liệu không thể thiếu trong các món ăn Việt Nam như salad, nước mắm, xào, hoặc nướng. Sản phẩm giàu chất chống oxy hóa, giúp hỗ trợ hệ miễn dịch và sức khỏe tim mạch. Hành tím hoàn toàn tự nhiên, không sử dụng hóa chất độc hại, phù hợp cho mọi bữa ăn gia đình.', '{\"weight\": \"1 kg\"}', 30000, 'kg', 20, 'uploads/2a09a363.jpg', 'HANH-TIM-001', 'hanh-tim', '2025-05-25 09:41:19', '2025-05-25 09:41:19');
INSERT INTO `products` VALUES ('09ab9fcb-b8a7-40f9-b8c8-12490d33931d', 'Nước Ép Cà Rốt', 'Nước ép cà rốt tươi nguyên chất, được ép từ cà rốt tươi, mang đến hương vị ngọt thanh, tươi mát và giàu dinh dưỡng. Sản phẩm không chứa đường, giàu beta-carotene, vitamin A và chất xơ, giúp cải thiện thị lực, tăng cường hệ miễn dịch và hỗ trợ tiêu hóa. Nước ép cà rốt là thức uống lý tưởng cho bữa sáng, sau khi tập luyện hoặc bất kỳ thời điểm nào trong ngày. Được đóng chai tiện lợi, đảm bảo giữ trọn vị ngon và chất lượng của cà rốt tươi.', '{\"weight\": \"500 ml\"}', 35000, 'chai', 50, 'uploads/f016a233.jpg', 'NUOC-EP-CA-ROT-001', 'nuoc-ep-ca-rot', '2025-05-25 10:26:35', '2025-05-25 17:29:02');
INSERT INTO `products` VALUES ('2295e66b-b46a-4eec-9e6e-99e08555e392', 'Sữa Dừa', 'Sữa dừa hữu cơ từ thương hiệu Biona, được chiết xuất từ cơm dừa tươi, mang đến hương vị béo ngậy, thơm ngon tự nhiên. Sản phẩm không chứa phụ gia, không đường, là nguồn cung cấp chất béo lành mạnh và khoáng chất, phù hợp để nấu các món cà ri, làm sinh tố, hoặc thêm vào cà phê, trà. Sữa dừa giúp tăng cường sức khỏe tim mạch và hỗ trợ hệ miễn dịch. Được đóng hộp tiện lợi, đảm bảo chất lượng và an toàn vệ sinh thực phẩm, phù hợp cho cả gia đình.', '{\"weight\": \"400 ml\"}', 45000, 'lon', 40, 'uploads/a51a594b.jpg', 'SUA-DUA-001', 'sua-dua', '2025-05-25 09:57:09', '2025-05-25 17:28:30');
INSERT INTO `products` VALUES ('24cedb15-98e7-4665-8f99-f874fd72e107', 'Nước Ép Đào và Táo', 'Nước ép đào và táo hữu cơ từ thương hiệu Biona, được ép tươi từ đào và táo tự nhiên, mang đến hương vị ngọt thanh, thơm mát. Sản phẩm không chứa đường tinh luyện, không cô đặc, giữ trọn vị tươi ngon và dinh dưỡng của trái cây. Nước ép giàu vitamin C, chất xơ và chất chống oxy hóa, giúp tăng cường hệ miễn dịch, hỗ trợ tiêu hóa và làm đẹp da. Được đóng chai tiện lợi, là thức uống lý tưởng cho mọi thời điểm trong ngày, đặc biệt phù hợp cho trẻ em và người lớn.', '{\"weight\": \"1 l\"}', 75000, 'chai', 50, 'uploads/514b4e60.jpg', 'NUOC-EP-DAO-TAO-001', 'nuoc-ep-dao-va-tao', '2025-05-25 09:53:27', '2025-05-25 17:29:02');
INSERT INTO `products` VALUES ('292d07c9-e65b-406c-85bb-a543483d30ab', 'Cà Chua Bi', 'Cà chua bi tươi ngon, được thu hoạch từ các nông trại uy tín, với màu đỏ rực rỡ, vị ngọt thanh và mọng nước. Cà chua bi là nguồn cung cấp vitamin C, lycopene và chất chống oxy hóa dồi dào, giúp tăng cường hệ miễn dịch, hỗ trợ sức khỏe tim mạch và làm đẹp da. Sản phẩm rất phù hợp để ăn sống, làm salad, hoặc trang trí món ăn. Cà chua bi hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo độ tươi ngon và an toàn cho sức khỏe cả gia đình.', '{\"weight\": \"250 g\"}', 25000, 'gói', 50, 'uploads/ebd1c946.jpg', 'CA-CHUA-BI-001', 'ca-chua-bi', '2025-05-25 10:25:01', '2025-05-25 17:29:14');
INSERT INTO `products` VALUES ('331cc8bb-90c0-42b6-ada5-e56115c2f100', 'Dưa Hấu', 'Dưa hấu tươi ngon, được thu hoạch từ các vườn trái cây chất lượng cao, với vỏ xanh sọc, thịt đỏ mọng nước và vị ngọt thanh mát. Dưa hấu là nguồn cung cấp vitamin A, C và lycopene dồi dào, giúp cấp nước cho cơ thể, tăng cường hệ miễn dịch và hỗ trợ sức khỏe tim mạch. Sản phẩm rất phù hợp để ăn trực tiếp, ép nước, hoặc làm sinh tố, là lựa chọn lý tưởng cho những ngày hè nóng bức. Dưa hấu hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo an toàn.', '{\"weight\": \"3 kg\"}', 30000, 'kg', 20, 'uploads/a2f9f857.jpg', 'DUA-HAU-001', 'dua-hau', '2025-05-25 09:59:33', '2025-05-25 09:59:33');
INSERT INTO `products` VALUES ('338cd454-d329-4ffa-9821-97c282a6eae6', 'Thịt Chay Chuối Bắp', 'Thịt chay chuối bắp hữu cơ từ thương hiệu Biona, được ngâm nước muối, là lựa chọn hoàn hảo để thay thế thịt trong các món ăn chay. Chuối bắp có kết cấu mềm, dễ thấm gia vị, phù hợp để chế biến các món xào, kho, hoặc làm nhân bánh. Sản phẩm 100% hữu cơ, không chứa gluten, giàu chất xơ và khoáng chất, hỗ trợ tiêu hóa và sức khỏe tim mạch. Được đóng hộp tiện lợi, đảm bảo an toàn vệ sinh thực phẩm, phù hợp cho người ăn chay và yêu thích ẩm thực lành mạnh.', '{\"weight\": \"400 g\"}', 75000, 'lon', 0, 'uploads/76019431.jpg', 'THIT-CHAY-CB-001', 'thit-chay-chuoi-bap', '2025-05-25 09:56:48', '2025-06-08 11:53:25');
INSERT INTO `products` VALUES ('345c8ed1-6431-46a1-945c-ef9c29609244', 'Đậu Trắng Khổng Lồ Sốt Cà Chua', 'Đậu trắng khổng lồ hữu cơ từ thương hiệu Biona, được chế biến trong sốt cà chua đậm đà, thơm ngon, mang đến hương vị Địa Trung Hải đích thực. Sản phẩm sử dụng nguyên liệu 100% hữu cơ, không chứa chất bảo quản hay phụ gia nhân tạo, phù hợp cho người ăn chay và những ai yêu thích ẩm thực lành mạnh. Đậu trắng mềm, béo bùi, hòa quyện với sốt cà chua ngọt tự nhiên, là lựa chọn lý tưởng cho các món antipasti, salad, hoặc ăn kèm bánh mì. Sản phẩm giàu protein và chất xơ, hỗ trợ sức khỏe tiêu hóa và cung cấp năng lượng bền vững. Được đóng hộp tiện lợi, đảm bảo an toàn vệ sinh thực phẩm, phù hợp cho mọi bữa ăn gia đình.', '{\"weight\": \"230 g\"}', 65000, 'lon', 50, 'uploads/03cf2d39.jpg', 'DAU-TRANG-SOT-001', 'dau-trang-khong-lo-sot-ca-chua', '2025-05-25 09:44:43', '2025-05-25 17:28:30');
INSERT INTO `products` VALUES ('37dc3424-c123-4037-b486-5014bacbafa0', 'Khoai Tây', 'Khoai tây tươi ngon, được thu hoạch từ các nông trại uy tín, đảm bảo chất lượng cao và an toàn. Khoai tây có vỏ mỏng, ruột vàng, vị ngọt tự nhiên, rất thích hợp để chế biến nhiều món ăn như khoai tây chiên, luộc, nghiền, hoặc làm súp. Sản phẩm giàu carbohydrate, kali và vitamin C, cung cấp năng lượng dồi dào và hỗ trợ sức khỏe tim mạch. Khoai tây được bảo quản tự nhiên, không sử dụng hóa chất, đảm bảo độ tươi ngon và an toàn cho mọi bữa ăn gia đình.', '{\"weight\": \"1 kg\"}', 20000, 'kg', 50, 'uploads/62a36cb6.jpg', 'KHOAI-TAY-001', 'khoai-tay', '2025-05-25 09:49:21', '2025-05-25 09:49:21');
INSERT INTO `products` VALUES ('37ea027a-1012-4531-8e84-4a11cc022ca9', 'Sườn Cừu', 'Sườn cừu tươi ngon, được chọn lọc từ những con cừu được nuôi tự nhiên, đảm bảo chất lượng thịt mềm, ngọt và ít mỡ. Thịt cừu giàu protein, sắt và vitamin B12, giúp tăng cường sức khỏe cơ bắp và hỗ trợ hệ miễn dịch. Sườn cừu rất phù hợp để nướng, áp chảo hoặc hầm, mang đến hương vị đậm đà cho bữa ăn gia đình. Sản phẩm được bảo quản đúng tiêu chuẩn, không chứa chất bảo quản, đảm bảo độ tươi ngon và an toàn vệ sinh thực phẩm.', '{\"weight\": \"500 g\"}', 250000, 'kg', 15, 'uploads/65111be5.jpg', 'SUON-CUU-001', 'suon-cuu', '2025-05-25 09:51:02', '2025-05-25 09:51:02');
INSERT INTO `products` VALUES ('3fe852c8-9fe1-4d4b-88a7-3e792a2f2c58', 'Táo Đỏ', 'Táo đỏ tươi ngon, được thu hoạch từ những vườn táo chất lượng cao, đảm bảo độ giòn, ngọt tự nhiên và hương thơm đặc trưng. Loại táo này có màu đỏ rực rỡ, thịt táo trắng, mọng nước, rất thích hợp để ăn trực tiếp, làm sinh tố, salad hoặc dùng trong các món bánh nướng như bánh táo. Táo đỏ không chỉ là lựa chọn tuyệt vời cho bữa ăn nhẹ lành mạnh mà còn cung cấp nhiều vitamin và chất xơ, tốt cho sức khỏe tim mạch và hệ tiêu hóa. Sản phẩm hoàn toàn không sử dụng hóa chất, đảm bảo an toàn cho mọi thành viên trong gia đình bạn.', '{\"weight\": \"1 kg\"}', 45000, 'kg', 15, 'uploads/1bf1a760.jpg', 'TAO-DO-002', 'tao-do', '2025-05-25 09:40:17', '2025-05-25 09:40:17');
INSERT INTO `products` VALUES ('41038e49-db66-4178-99f0-d11204a356fb', 'Nước Ép Detox', 'Nước ép detox tự nhiên, được pha chế từ các loại trái cây và rau củ tươi như dưa leo, dâu tây, việt quất, chanh và rau thơm, mang đến hương vị thanh mát, dễ chịu. Sản phẩm không chứa đường, giúp thanh lọc cơ thể, hỗ trợ giảm cân và tăng cường sức khỏe làn da. Nước ép detox là lựa chọn lý tưởng cho những ai muốn duy trì lối sống lành mạnh, có thể uống trực tiếp hoặc mang theo khi đi làm, tập luyện. Được đóng chai tiện lợi, đảm bảo vệ sinh và giữ trọn vị tươi ngon.', '{\"weight\": \"500 ml\"}', 35000, 'chai', 60, 'uploads/8167a107.jpg', 'NUOC-EP-DETOX-001', 'nuoc-ep-detox', '2025-05-25 09:52:10', '2025-05-25 17:29:02');
INSERT INTO `products` VALUES ('426a6784-3566-4f01-999c-1e611b315787', 'Phô Mai Các Loại', 'Bộ sưu tập phô mai cao cấp, bao gồm các loại phô mai cứng, mềm, và phô mai xanh, được làm từ sữa bò và dê chất lượng cao. Mỗi loại phô mai mang một hương vị đặc trưng: từ vị béo ngậy của phô mai cheddar, vị mặn nhẹ của phô mai xanh, đến vị thơm nồng của phô mai lâu năm. Phô mai là nguồn cung cấp protein và canxi dồi dào, rất thích hợp để ăn kèm bánh mì, trái cây, hoặc dùng trong các món salad, pizza. Sản phẩm được bảo quản đúng tiêu chuẩn, đảm bảo độ tươi ngon và an toàn.', '{\"weight\": \"500 g\"}', 150000, 'gói', 25, 'uploads/17aade29.jpg', 'PHO-MAI-001', 'pho-mai-cac-loai', '2025-05-25 09:48:57', '2025-05-25 17:29:14');
INSERT INTO `products` VALUES ('43ed3ae4-3a5d-41d1-817b-af7aaaad8563', 'Hạt Lanh', 'Hạt lanh hữu cơ từ thương hiệu Biona, giàu axit béo omega-3, chất xơ và lignan, mang lại nhiều lợi ích cho sức khỏe tim mạch, hệ tiêu hóa và làn da. Hạt lanh có vị bùi nhẹ, rất phù hợp để rắc lên sữa chua, salad, sinh tố, hoặc thêm vào các món bánh nướng. Sản phẩm 100% hữu cơ, không chứa gluten, là lựa chọn tuyệt vời cho người ăn chay và những ai theo đuổi chế độ ăn lành mạnh. Hạt lanh được đóng gói tiện lợi, đảm bảo độ tươi và chất lượng.', '{\"weight\": \"500 g\"}', 55000, 'gói', 40, 'uploads/1854927b.jpg', 'HAT-LANH-001', 'hat-lanh', '2025-05-25 09:52:33', '2025-05-25 17:29:14');
INSERT INTO `products` VALUES ('452dcfbe-3d57-45a2-80f3-be95a17fd77e', 'Thịt Heo Sườn', 'Thịt heo sườn tươi ngon, được chọn lọc từ những con heo được nuôi tự nhiên, đảm bảo thịt mềm, ngọt và ít mỡ. Thịt heo sườn giàu protein, vitamin B và khoáng chất, giúp tăng cường sức khỏe cơ bắp và cung cấp năng lượng cho cơ thể. Sản phẩm rất phù hợp để nướng, áp chảo hoặc hầm, mang đến hương vị đậm đà cho bữa ăn gia đình. Thịt được bảo quản đúng tiêu chuẩn, không chứa chất bảo quản, đảm bảo độ tươi ngon và an toàn vệ sinh thực phẩm.', '{\"weight\": \"500 g\"}', 120000, 'kg', 20, 'uploads/de1dea44.jpg', 'THIT-HEO-SUON-001', 'thit-heo-suon', '2025-05-25 10:24:46', '2025-05-25 10:24:46');
INSERT INTO `products` VALUES ('487949b1-1a4f-4409-8a9f-1d74789dc0c9', 'Chuối', 'Chuối tươi ngon, được thu hoạch từ các vườn trái cây chất lượng cao, với vỏ vàng ươm, ruột ngọt mềm và hương thơm tự nhiên. Chuối là nguồn cung cấp kali, vitamin B6 và C dồi dào, giúp tăng cường năng lượng, hỗ trợ tiêu hóa và tốt cho tim mạch. Sản phẩm lý tưởng để ăn trực tiếp, làm sinh tố, hoặc thêm vào các món bánh, sữa chua. Chuối hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo an toàn và tốt cho sức khỏe của mọi thành viên trong gia đình.', '{\"weight\": \"1 kg\"}', 25000, 'kg', 40, 'uploads/13880d00.jpg', 'CHUOI-001', 'chuoi', '2025-05-25 09:50:45', '2025-05-25 09:50:45');
INSERT INTO `products` VALUES ('5276d8e5-7f10-4930-963e-fb54bff8e41c', 'Mứt Táo Đại Hoàng', 'Mứt táo đại hoàng hữu cơ từ thương hiệu Biona, được làm từ táo và đại hoàng tươi, mang đến hương vị chua ngọt tự nhiên, thơm ngon. Sản phẩm không chứa đường tinh luyện, giàu vitamin C và chất xơ, giúp hỗ trợ tiêu hóa và tăng cường hệ miễn dịch. Mứt rất phù hợp để ăn kèm bánh mì, sữa chua, hoặc làm nhân bánh. Được đóng lọ tiện lợi, đảm bảo giữ trọn vị tươi ngon và chất lượng, là lựa chọn lý tưởng cho mọi bữa ăn nhẹ.', '{\"weight\": \"360 g\"}', 60000, 'lọ', 40, 'uploads/3021570e.jpg', 'MUT-TAO-DH-001', 'mut-tao-dai-hoang', '2025-05-25 09:58:30', '2025-05-25 17:29:33');
INSERT INTO `products` VALUES ('5f685b2a-3563-4af6-8fd2-d41fbf54c13e', 'Cà Rốt', 'Cà rốt tươi ngon, được trồng tại các nông trại uy tín, với màu cam rực rỡ, vị ngọt tự nhiên và kết cấu giòn rụm. Cà rốt là nguồn cung cấp beta-carotene, vitamin A và chất xơ dồi dào, giúp cải thiện thị lực, tăng cường hệ miễn dịch và hỗ trợ tiêu hóa. Sản phẩm rất phù hợp để ăn sống, làm salad, ép nước, hoặc nấu các món súp, hầm. Cà rốt hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo độ tươi ngon và an toàn cho sức khỏe cả gia đình.', '{\"weight\": \"1 kg\"}', 20000, 'kg', 50, 'uploads/885854d2.jpg', 'CA-ROT-001', 'ca-rot', '2025-05-25 09:51:44', '2025-05-25 09:51:44');
INSERT INTO `products` VALUES ('616ef6ee-317d-4763-b85a-802be1c98588', 'Bột Protein SunWarrior', 'Bột protein từ thương hiệu SunWarrior, được chiết xuất từ thực vật (28g protein mỗi khẩu phần), giàu MCTs và dinh dưỡng tự nhiên, hỗ trợ xây dựng cơ bắp và phục hồi sau tập luyện. Sản phẩm hoàn toàn hữu cơ, không chứa gluten hay GMO, phù hợp cho người ăn chay và những ai theo đuổi lối sống lành mạnh. Hương vị tự nhiên, dễ hòa tan, có thể dùng để pha shake, thêm vào sinh tố hoặc làm bánh. Bột protein SunWarrior là lựa chọn lý tưởng cho người tập gym, yoga hoặc cần bổ sung protein hàng ngày.', '{\"weight\": \"750 g\"}', 950000, 'lọ', 20, 'uploads/74fedc2e.jpg', 'BOT-PROTEIN-SW-001', 'bot-protein-sunwarrior', '2025-05-25 09:48:41', '2025-05-25 17:29:33');
INSERT INTO `products` VALUES ('6786c0c2-c9e1-4213-bce4-6fe2628a952e', 'Bánh Mì Nguyên Cám', 'Bánh mì nguyên cám thơm ngon, được làm từ bột mì nguyên cám 100%, kết hợp với các loại hạt dinh dưỡng như hạt lanh, hạt hướng dương, mang đến hương vị đậm đà và kết cấu mềm xốp. Sản phẩm không chứa chất bảo quản, giàu chất xơ, protein và các loại vitamin, hỗ trợ hệ tiêu hóa và cung cấp năng lượng bền vững cho cả ngày dài. Bánh mì nguyên cám là lựa chọn lý tưởng cho bữa sáng lành mạnh, có thể dùng kèm bơ, mứt hoặc làm sandwich. Đảm bảo an toàn vệ sinh thực phẩm, phù hợp cho mọi lứa tuổi.', '{\"weight\": \"500 g\"}', 35000, 'cái', 10, 'uploads/2fbd514c.jpg', 'BANH-MI-NC-001', 'banh-mi-nguyen-cam', '2025-05-25 09:41:45', '2025-05-25 16:45:48');
INSERT INTO `products` VALUES ('67f65599-d455-461e-b93d-d90acbcbcb9a', 'Sốt Đậu Phụ Cà Chua', 'Sốt đậu phụ cà chua hữu cơ từ thương hiệu Biona, được chế biến từ cà chua tươi và đậu phụ, mang đến hương vị đậm đà, thơm ngon, phù hợp cho người ăn chay. Sản phẩm không chứa đường, giàu protein và lycopene, giúp hỗ trợ sức khỏe tim mạch và tăng cường hệ miễn dịch. Sốt rất lý tưởng để dùng với mì Ý, lasagna, hoặc làm sốt bánh mì. Được đóng lọ tiện lợi, đảm bảo vệ sinh an toàn thực phẩm, là lựa chọn tuyệt vời cho các bữa ăn nhanh.', '{\"weight\": \"340 g\"}', 70000, 'lọ', 35, 'uploads/a03e58ea.jpg', 'SOT-DAU-PHU-001', 'sot-dau-phu-ca-chua', '2025-05-25 09:57:43', '2025-05-25 17:29:33');
INSERT INTO `products` VALUES ('6838fd60-d21a-456d-9c32-aad933204750', 'Dưa Chuột Muối', 'Dưa chuột muối hữu cơ từ thương hiệu Biona, được ngâm với thì là và hạt mù tạt, mang đến hương vị chua giòn, thơm nồng đặc trưng. Sản phẩm sử dụng nguyên liệu 100% hữu cơ, không chứa chất bảo quản, phù hợp cho người ăn chay và những ai yêu thích món ăn kèm. Dưa chuột muối là lựa chọn tuyệt vời để ăn kèm bánh mì, sandwich, hoặc thêm vào các món salad, burger. Sản phẩm giúp kích thích vị giác, hỗ trợ tiêu hóa, và được đóng lọ tiện lợi, đảm bảo vệ sinh an toàn thực phẩm.', '{\"weight\": \"330 g\"}', 65000, 'lọ', 30, 'uploads/507d9dc5.jpg', 'DUA-CHUOT-MUOI-001', 'dua-chuot-muoi', '2025-05-25 09:51:27', '2025-05-25 17:29:33');
INSERT INTO `products` VALUES ('73cf53e8-7ee9-43d2-b21b-c7b33df81295', 'Bánh Mì Lúa Mạch Đen và Dừa', 'Bánh mì lúa mạch đen hữu cơ từ thương hiệu Biona, kết hợp với nam việt quất và dừa, mang đến hương vị ngọt nhẹ, thơm ngon và kết cấu mềm mại. Sản phẩm không chứa men, giàu chất xơ và chất chống oxy hóa, hỗ trợ tiêu hóa và sức khỏe tim mạch. Bánh mì rất phù hợp để ăn sáng, ăn kèm bơ, mứt, hoặc làm sandwich. Được làm từ nguyên liệu 100% hữu cơ, không chất bảo quản, đảm bảo an toàn và tươi ngon cho mọi bữa ăn gia đình.', '{\"weight\": \"500 g\"}', 65000, 'ổ', 25, 'uploads/a8e4ad97.jpg', 'BANH-MI-LMD-DUA-001', 'banh-mi-lua-mach-den-va-dua', '2025-05-25 09:57:31', '2025-05-25 17:29:40');
INSERT INTO `products` VALUES ('77f320b7-5a41-4375-9543-7c5a4a00dd3f', 'Bông Cải Xanh', 'Bông cải xanh tươi ngon, được trồng tại các nông trại uy tín, với màu xanh đậm, bông chắc và vị ngọt tự nhiên. Bông cải xanh là nguồn cung cấp vitamin C, K và chất xơ dồi dào, giúp tăng cường hệ miễn dịch, hỗ trợ sức khỏe xương và tiêu hóa. Sản phẩm rất phù hợp để luộc, hấp, xào, hoặc làm salad, là lựa chọn lý tưởng cho chế độ ăn uống lành mạnh. Bông cải xanh hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo độ tươi ngon và an toàn.', '{\"weight\": \"500 g\"}', 30000, 'kg', 40, 'uploads/a4b57a96.jpg', 'BONG-CAI-XANH-001', 'bong-cai-xanh', '2025-05-25 09:58:57', '2025-05-25 09:58:57');
INSERT INTO `products` VALUES ('7d9a92ab-1173-4ba7-b475-a681fdc1829f', 'Đùi Gà', 'Đùi gà tươi ngon, được chọn lọc từ những con gà nuôi tự nhiên, đảm bảo thịt săn chắc, ngọt và ít mỡ. Đùi gà là nguồn protein, vitamin B và khoáng chất dồi dào, giúp tăng cường sức khỏe cơ bắp và cung cấp năng lượng cho cơ thể. Sản phẩm rất phù hợp để nướng, chiên, hoặc hầm, mang đến hương vị thơm ngon cho bữa ăn gia đình. Đùi gà được bảo quản đúng tiêu chuẩn, không chứa chất bảo quản, đảm bảo độ tươi ngon và an toàn vệ sinh thực phẩm.', '{\"weight\": \"500 g\"}', 80000, 'kg', 30, 'uploads/dd0f1732.jpg', 'DUI-GA-001', 'dui-ga', '2025-05-25 10:25:31', '2025-05-25 10:25:31');
INSERT INTO `products` VALUES ('8728dd7a-38af-4ff8-b941-220fb1b79e6a', 'Mận Ngâm Siro', 'Mận ngâm siro hữu cơ từ thương hiệu Biona, được làm từ mận tươi ngâm trong siro gạo, mang đến hương vị chua ngọt tự nhiên, thơm ngon. Sản phẩm không chứa đường tinh luyện, giàu chất xơ và chất chống oxy hóa, giúp hỗ trợ tiêu hóa và tăng cường hệ miễn dịch. Mận ngâm rất phù hợp để ăn trực tiếp, thêm vào sữa chua, hoặc làm topping cho món tráng miệng. Được đóng lọ tiện lợi, đảm bảo giữ trọn vị ngon và chất lượng.', '{\"weight\": \"570 g\"}', 85000, 'lọ', 30, 'uploads/b1525d05.jpg', 'MAN-NGAM-SIRO-001', 'man-ngam-siro', '2025-05-25 10:26:06', '2025-05-25 17:29:33');
INSERT INTO `products` VALUES ('8a483080-a261-4587-ac8d-dd681cddfd07', 'Gạo Trắng', 'Gạo trắng cao cấp, được xay xát từ những hạt lúa chất lượng cao, mang đến hạt gạo trắng ngần, dẻo thơm khi nấu. Gạo trắng là nguồn cung cấp carbohydrate chính, cung cấp năng lượng dồi dào cho cơ thể, phù hợp cho mọi bữa ăn gia đình. Sản phẩm có thể dùng để nấu cơm, cháo, hoặc làm các món bánh truyền thống. Gạo được bảo quản tự nhiên, không sử dụng hóa chất, đảm bảo an toàn và giữ trọn hương vị tự nhiên của từng hạt gạo.', '{\"weight\": \"5 kg\"}', 75000, 'túi', 50, 'uploads/91604ab1.jpg', 'GAO-TRANG-001', 'gao-trang', '2025-05-25 09:51:13', '2025-05-25 17:29:50');
INSERT INTO `products` VALUES ('99ad8f54-f443-4982-95ea-8bdd8cecdf4e', 'Đậu Lupin', 'Đậu lupin hữu cơ từ thương hiệu Biona, được ngâm trong nước, là nguồn protein thực vật dồi dào, phù hợp cho người ăn chay. Đậu lupin có vị bùi nhẹ, giàu chất xơ và khoáng chất, giúp hỗ trợ tiêu hóa, kiểm soát đường huyết và tăng cường sức khỏe tim mạch. Sản phẩm rất lý tưởng để thêm vào salad, súp, hoặc làm món ăn kèm. Được đóng lọ tiện lợi, không chứa chất bảo quản, đảm bảo độ tươi ngon và an toàn vệ sinh thực phẩm.', '{\"weight\": \"340 g\"}', 55000, 'lọ', 35, 'uploads/3021570e.jpg', 'DAU-LUPIN-001', 'dau-lupin', '2025-05-25 09:59:16', '2025-05-25 17:29:33');
INSERT INTO `products` VALUES ('9cbf71ca-c1bb-4525-af82-b86dd7b7e12a', 'Nước Ép Cam', 'Nước ép cam tươi nguyên chất, được ép từ cam tươi, mang đến hương vị ngọt thanh, tươi mát và giàu dinh dưỡng. Sản phẩm không chứa đường, giàu vitamin C và chất chống oxy hóa, giúp tăng cường hệ miễn dịch, cải thiện làn da và hỗ trợ tiêu hóa. Nước ép cam là thức uống lý tưởng cho bữa sáng, sau khi tập luyện hoặc bất kỳ thời điểm nào trong ngày. Được đóng chai tiện lợi, đảm bảo giữ trọn vị ngon và chất lượng của cam tươi.', '{\"weight\": \"500 ml\"}', 35000, 'chai', 50, 'uploads/a95a5de5.jpg', 'NUOC-EP-CAM-001', 'nuoc-ep-cam', '2025-05-25 09:58:43', '2025-05-25 17:29:02');
INSERT INTO `products` VALUES ('af0dccb4-964c-4875-af8a-b084d669ffd6', 'Hạt Gai Dầu', 'Hạt gai dầu hữu cơ từ thương hiệu Biona, là nguồn cung cấp protein thực vật, axit béo omega-3 và khoáng chất dồi dào, hỗ trợ sức khỏe tim mạch, làn da và hệ miễn dịch. Hạt gai dầu có vị bùi nhẹ, rất phù hợp để rắc lên salad, sữa chua, sinh tố, hoặc thêm vào các món bánh nướng. Sản phẩm 100% hữu cơ, không chứa gluten, là lựa chọn lý tưởng cho người ăn chay và chế độ ăn lành mạnh. Được đóng gói tiện lợi, đảm bảo độ tươi và chất lượng.', '{\"weight\": \"250 g\"}', 60000, 'gói', 40, 'uploads/af6ba3cc.jpg', 'HAT-GAI-DAU-001', 'hat-gai-dau', '2025-05-25 10:26:25', '2025-05-25 17:29:14');
INSERT INTO `products` VALUES ('b18c50c1-1b49-4f12-9085-6456ac68f4b9', 'Bánh Mì Lên Men Tự Nhiên', 'Bánh mì lên men tự nhiên được làm từ bột mì cao cấp, lên men bằng men tự nhiên, mang đến hương vị thơm ngon, chua nhẹ đặc trưng. Vỏ bánh giòn rụm, ruột bánh mềm xốp với kết cấu lỗ khí lớn, lý tưởng để ăn kèm bơ, mứt, hoặc làm sandwich. Sản phẩm không chứa chất bảo quản, giàu dinh dưỡng, hỗ trợ hệ tiêu hóa nhờ quá trình lên men tự nhiên. Bánh mì được nướng tươi mỗi ngày, đảm bảo chất lượng và an toàn vệ sinh thực phẩm, phù hợp cho mọi bữa ăn gia đình.', '{\"weight\": \"400 g\"}', 30000, 'ổ', 15, 'uploads/04eb7231.jpg', 'BANH-MI-LM-001', 'banh-mi-len-men-tu-nhien', '2025-05-25 09:46:30', '2025-05-25 17:29:40');
INSERT INTO `products` VALUES ('b3b7ca91-aa79-4470-8a29-04e8027e49cb', 'Thịt Bò', 'Thịt bò tươi ngon, được chọn lọc từ những con bò được nuôi tự nhiên, đảm bảo thịt mềm, ngọt và giàu dinh dưỡng. Thịt bò là nguồn protein, sắt và vitamin B12 dồi dào, giúp tăng cường cơ bắp, hỗ trợ tạo máu và cung cấp năng lượng cho cơ thể. Phù hợp để nướng, áp chảo hoặc nấu các món phở, bò kho, mang đến bữa ăn đậm đà hương vị. Sản phẩm được bảo quản đúng tiêu chuẩn, không chứa chất bảo quản, đảm bảo độ tươi ngon và an toàn.', '{\"weight\": \"500 g\"}', 200000, 'kg', 20, 'uploads/21630ca5.jpg', 'THIT-BO-001', 'thit-bo', '2025-05-25 09:53:12', '2025-05-25 09:53:12');
INSERT INTO `products` VALUES ('c1945cdc-02d8-4ab6-a332-c5ee02212000', 'Quả Lựu', 'Quả lựu tươi ngon, được thu hoạch từ những vườn trái cây chất lượng cao, với vỏ ngoài đỏ rực rỡ và hạt lựu bên trong mọng nước, ngọt thanh. Lựu là loại trái cây giàu chất chống oxy hóa, vitamin C và K, giúp tăng cường hệ miễn dịch, làm đẹp da và hỗ trợ sức khỏe tim mạch. Hạt lựu có thể ăn trực tiếp, ép nước, hoặc thêm vào salad, sữa chua để tăng hương vị. Sản phẩm hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo an toàn và tốt cho sức khỏe của mọi thành viên trong gia đình.', '{\"weight\": \"500 g\"}', 60000, 'kg', 25, 'uploads/4d16ba08.jpg', 'QUA-LUU-001', 'qua-luu', '2025-05-25 09:47:21', '2025-05-25 09:47:21');
INSERT INTO `products` VALUES ('c6b78d48-7ac9-40ae-bfd4-0c4d655cf252', 'Gạo Lứt', 'Gạo lứt nguyên cám, được trồng hoàn toàn tự nhiên, giữ nguyên lớp cám giàu dinh dưỡng bao quanh hạt gạo, mang đến hương vị thơm ngon và dẻo tự nhiên. Sản phẩm là nguồn cung cấp chất xơ, vitamin B, và khoáng chất dồi dào, giúp hỗ trợ giảm cân, kiểm soát đường huyết và tăng cường sức khỏe tim mạch. Gạo lứt rất phù hợp để nấu cơm, cháo, hoặc làm sữa gạo, là lựa chọn lý tưởng cho chế độ ăn uống lành mạnh. Sản phẩm không chứa chất bảo quản, đảm bảo an toàn cho sức khỏe cả gia đình.', '{\"weight\": \"1 kg\"}', 35000, 'kg', 30, 'uploads/8d60d017.jpg', 'GAO-LUT-001', 'gao-lut', '2025-05-25 09:47:02', '2025-05-25 09:47:02');
INSERT INTO `products` VALUES ('e2f53939-cd37-42c4-8101-d2cabaa5d9d3', 'Bánh Quy Việt Quất', 'Bánh quy hữu cơ từ thương hiệu Biona, với nhân mứt việt quất thơm ngon, mang đến hương vị ngọt ngào và giòn tan. Được làm từ các nguyên liệu hữu cơ 100%, không chứa chất bảo quản hay phụ gia nhân tạo, bánh quy này là lựa chọn hoàn hảo cho bữa ăn nhẹ lành mạnh. Việt quất giàu chất chống oxy hóa, kết hợp với lớp vỏ bánh giòn, tạo nên trải nghiệm ẩm thực tuyệt vời. Sản phẩm phù hợp cho mọi lứa tuổi, đặc biệt là những ai yêu thích đồ ngọt tự nhiên.', '{\"weight\": \"175 g\"}', 85000, 'gói', 40, 'uploads/15eb9d96.jpg', 'BANH-QUY-VQ-001', 'banh-quy-viet-quat', '2025-05-25 09:48:24', '2025-05-25 17:29:14');
INSERT INTO `products` VALUES ('ecf3ce2a-97fb-40b1-8f5f-b3aac23f4bc0', 'Bánh Mì Kẹp Phô Mai Nướng', 'Bánh mì kẹp phô mai nướng thơm ngon, được làm từ bánh mì tươi với lớp phô mai cheddar tan chảy, nướng vàng giòn ở cả hai mặt. Hương vị béo ngậy của phô mai kết hợp với lớp bánh mì giòn rụm tạo nên một món ăn nhanh tiện lợi nhưng đầy đủ dinh dưỡng. Sản phẩm giàu protein và năng lượng, rất phù hợp cho bữa sáng, bữa ăn nhẹ hoặc mang theo khi đi làm. Được chế biến tươi mới mỗi ngày, đảm bảo an toàn vệ sinh thực phẩm, phù hợp cho cả trẻ em và người lớn.', '{\"weight\": \"150 g\"}', 25000, 'miếng', 30, 'uploads/75e8fabd.jpg', 'BANH-MI-PHO-MAI-001', 'banh-mi-kep-pho-mai-nuong', '2025-05-25 09:49:10', '2025-05-25 17:30:02');
INSERT INTO `products` VALUES ('ef9a657a-fc8e-4919-8b5d-7c98282055ba', 'Cam', 'Cam tươi ngon, được thu hoạch từ các vườn trái cây chất lượng cao, với vỏ cam sáng bóng, múi mọng nước và vị ngọt thanh tự nhiên. Cam là nguồn cung cấp vitamin C, chất xơ và chất chống oxy hóa dồi dào, giúp tăng cường hệ miễn dịch, cải thiện làn da và hỗ trợ tiêu hóa. Sản phẩm rất phù hợp để ăn trực tiếp, ép nước, hoặc làm sinh tố, là lựa chọn lý tưởng cho mọi thời điểm trong ngày. Cam hoàn toàn tự nhiên, không sử dụng hóa chất, đảm bảo an toàn.', '{\"weight\": \"1 kg\"}', 35000, 'kg', 40, 'uploads/faa0cd0b.jpg', 'CAM-001', 'cam', '2025-05-25 10:25:15', '2025-05-25 10:25:15');
INSERT INTO `products` VALUES ('f21e9a74-e2d9-49d7-847a-57169ee3617d', 'Sinh Tố Xanh', 'Sinh tố xanh tươi mát, được xay từ rau bina, bông cải xanh, táo xanh, kiwi và dưa leo, mang đến hương vị thanh mát và đầy dinh dưỡng. Sản phẩm giàu vitamin C, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, hỗ trợ giảm cân và tăng cường sức khỏe làn da. Sinh tố xanh là lựa chọn lý tưởng cho bữa sáng hoặc bữa ăn nhẹ, giúp bạn khởi đầu ngày mới tràn đầy năng lượng. Được đóng chai tiện lợi, không chứa đường, đảm bảo giữ trọn vị tươi ngon của rau củ.', '{\"weight\": \"500 ml\"}', 40000, 'chai', 50, 'uploads/abe18dfe.jpg', 'SINH-TO-XANH-001', 'sinh-to-xanh', '2025-05-25 09:56:31', '2025-05-25 17:29:02');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('2315fe24-8f85-42df-a41e-fa5119f9fb0e', 'admin', '2025-05-08 21:23:22', '2025-05-08 23:18:36');
INSERT INTO `roles` VALUES ('50dcc135-f324-4ffb-8aff-b3fc6f7221e4', 'sales_staff', '2025-05-23 00:32:41', '2025-05-23 00:32:44');
INSERT INTO `roles` VALUES ('6b3af5f4-19c4-4623-a116-bdea182e904d', 'customer', '2025-05-23 00:30:41', '2025-06-15 08:38:27');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', 'Đánh giá cao', '2025-05-25 17:41:05', '2025-05-25 17:41:08');
INSERT INTO `tags` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', 'Giảm giá', '2025-05-24 21:55:46', '2025-05-24 21:55:49');
INSERT INTO `tags` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'Phổ biến', '2025-05-25 17:40:24', '2025-05-25 17:40:28');
INSERT INTO `tags` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', 'Mới', '2025-05-24 21:55:26', '2025-05-24 21:55:29');

-- ----------------------------
-- Table structure for tags_products
-- ----------------------------
DROP TABLE IF EXISTS `tags_products`;
CREATE TABLE `tags_products`  (
  `tag_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`tag_id`, `product_id`) USING BTREE,
  INDEX `fk_tags_products_products`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_tags_products_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tags_products_tags` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags_products
-- ----------------------------
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '04700c7b-7e2b-4aca-ac5d-1326b4cc98be');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '07196629-3573-45e6-8692-cfeaf3d92dd3');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '09ab9fcb-b8a7-40f9-b8c8-12490d33931d');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '2295e66b-b46a-4eec-9e6e-99e08555e392');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '2295e66b-b46a-4eec-9e6e-99e08555e392');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '2295e66b-b46a-4eec-9e6e-99e08555e392');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '24cedb15-98e7-4665-8f99-f874fd72e107');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '24cedb15-98e7-4665-8f99-f874fd72e107');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '292d07c9-e65b-406c-85bb-a543483d30ab');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '292d07c9-e65b-406c-85bb-a543483d30ab');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '331cc8bb-90c0-42b6-ada5-e56115c2f100');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '338cd454-d329-4ffa-9821-97c282a6eae6');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '338cd454-d329-4ffa-9821-97c282a6eae6');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '338cd454-d329-4ffa-9821-97c282a6eae6');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '345c8ed1-6431-46a1-945c-ef9c29609244');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '37dc3424-c123-4037-b486-5014bacbafa0');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '37dc3424-c123-4037-b486-5014bacbafa0');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '37ea027a-1012-4531-8e84-4a11cc022ca9');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '37ea027a-1012-4531-8e84-4a11cc022ca9');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '37ea027a-1012-4531-8e84-4a11cc022ca9');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '37ea027a-1012-4531-8e84-4a11cc022ca9');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '3fe852c8-9fe1-4d4b-88a7-3e792a2f2c58');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '41038e49-db66-4178-99f0-d11204a356fb');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '41038e49-db66-4178-99f0-d11204a356fb');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '426a6784-3566-4f01-999c-1e611b315787');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '426a6784-3566-4f01-999c-1e611b315787');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '43ed3ae4-3a5d-41d1-817b-af7aaaad8563');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '452dcfbe-3d57-45a2-80f3-be95a17fd77e');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '452dcfbe-3d57-45a2-80f3-be95a17fd77e');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '487949b1-1a4f-4409-8a9f-1d74789dc0c9');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '487949b1-1a4f-4409-8a9f-1d74789dc0c9');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '487949b1-1a4f-4409-8a9f-1d74789dc0c9');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '5276d8e5-7f10-4930-963e-fb54bff8e41c');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '5f685b2a-3563-4af6-8fd2-d41fbf54c13e');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '5f685b2a-3563-4af6-8fd2-d41fbf54c13e');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '616ef6ee-317d-4763-b85a-802be1c98588');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '616ef6ee-317d-4763-b85a-802be1c98588');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '616ef6ee-317d-4763-b85a-802be1c98588');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '6786c0c2-c9e1-4213-bce4-6fe2628a952e');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '6786c0c2-c9e1-4213-bce4-6fe2628a952e');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '67f65599-d455-461e-b93d-d90acbcbcb9a');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '6838fd60-d21a-456d-9c32-aad933204750');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '6838fd60-d21a-456d-9c32-aad933204750');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '73cf53e8-7ee9-43d2-b21b-c7b33df81295');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '73cf53e8-7ee9-43d2-b21b-c7b33df81295');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '73cf53e8-7ee9-43d2-b21b-c7b33df81295');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '77f320b7-5a41-4375-9543-7c5a4a00dd3f');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '7d9a92ab-1173-4ba7-b475-a681fdc1829f');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '7d9a92ab-1173-4ba7-b475-a681fdc1829f');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '8728dd7a-38af-4ff8-b941-220fb1b79e6a');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '8728dd7a-38af-4ff8-b941-220fb1b79e6a');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '8a483080-a261-4587-ac8d-dd681cddfd07');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', '8a483080-a261-4587-ac8d-dd681cddfd07');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '8a483080-a261-4587-ac8d-dd681cddfd07');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', '99ad8f54-f443-4982-95ea-8bdd8cecdf4e');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', '9cbf71ca-c1bb-4525-af82-b86dd7b7e12a');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', '9cbf71ca-c1bb-4525-af82-b86dd7b7e12a');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', 'af0dccb4-964c-4875-af8a-b084d669ffd6');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', 'af0dccb4-964c-4875-af8a-b084d669ffd6');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', 'b18c50c1-1b49-4f12-9085-6456ac68f4b9');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'b18c50c1-1b49-4f12-9085-6456ac68f4b9');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', 'b18c50c1-1b49-4f12-9085-6456ac68f4b9');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', 'b3b7ca91-aa79-4470-8a29-04e8027e49cb');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'b3b7ca91-aa79-4470-8a29-04e8027e49cb');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', 'c1945cdc-02d8-4ab6-a332-c5ee02212000');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', 'c1945cdc-02d8-4ab6-a332-c5ee02212000');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'c6b78d48-7ac9-40ae-bfd4-0c4d655cf252');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', 'e2f53939-cd37-42c4-8101-d2cabaa5d9d3');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'e2f53939-cd37-42c4-8101-d2cabaa5d9d3');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', 'e2f53939-cd37-42c4-8101-d2cabaa5d9d3');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', 'ecf3ce2a-97fb-40b1-8f5f-b3aac23f4bc0');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'ecf3ce2a-97fb-40b1-8f5f-b3aac23f4bc0');
INSERT INTO `tags_products` VALUES ('2a0f0b06-1c9d-4eb4-8f4c-5f0127eb8b69', 'ef9a657a-fc8e-4919-8b5d-7c98282055ba');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'ef9a657a-fc8e-4919-8b5d-7c98282055ba');
INSERT INTO `tags_products` VALUES ('c6b188d3-1de9-48ac-8a5b-537cbb37dd95', 'ef9a657a-fc8e-4919-8b5d-7c98282055ba');
INSERT INTO `tags_products` VALUES ('5c0aae07-7c02-4d32-9960-6bc8f10446d7', 'f21e9a74-e2d9-49d7-847a-57169ee3617d');
INSERT INTO `tags_products` VALUES ('a9e93337-dc74-4081-aafd-9151d5b1729b', 'f21e9a74-e2d9-49d7-847a-57169ee3617d');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `fk_user_roles_roles`(`role_id` ASC) USING BTREE,
  CONSTRAINT `fk_user_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_roles_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('2477ea11-b9b9-450f-b1e3-53bc32008b10', '2315fe24-8f85-42df-a41e-fa5119f9fb0e');
INSERT INTO `user_roles` VALUES ('fde99052-1f3f-4789-a2da-cfeaf1e9b5f4', '2315fe24-8f85-42df-a41e-fa5119f9fb0e');
INSERT INTO `user_roles` VALUES ('4a2194f0-97db-45b2-b35b-457fc590b4c0', '6b3af5f4-19c4-4623-a116-bdea182e904d');
INSERT INTO `user_roles` VALUES ('7f365aed-b82f-48cf-bf43-664c1e67c747', '6b3af5f4-19c4-4623-a116-bdea182e904d');
INSERT INTO `user_roles` VALUES ('d376b7be-ef14-43c8-a9b9-e4134879bff9', '6b3af5f4-19c4-4623-a116-bdea182e904d');
INSERT INTO `user_roles` VALUES ('ecc1a429-67c5-43e5-8b32-0ef82122e010', '6b3af5f4-19c4-4623-a116-bdea182e904d');
INSERT INTO `user_roles` VALUES ('f32d99a7-2f92-4f94-800d-21f1871a1e15', '6b3af5f4-19c4-4623-a116-bdea182e904d');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `account_type` enum('local','google') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_actived` tinyint NULL DEFAULT NULL,
  `code_id` int NULL DEFAULT NULL,
  `code_expired` datetime NULL DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2477ea11-b9b9-450f-b1e3-53bc32008b10', 'admin', 'admin@gmail.com', '$2b$16$GF4DAClatadjmyxaq9aDY.5o4m0FCCMU6XImy05dRzdMTOILh2ciu', '0987654321', 'olodo', 'uploads\\\\192c7b10.png', 'local', 1, 638459, '2025-05-04 02:03:41', '2025-05-04 01:33:40', '2025-06-15 00:17:47');
INSERT INTO `users` VALUES ('4a2194f0-97db-45b2-b35b-457fc590b4c0', 'Tuấn', 'tuan@gmail.com', '$2b$16$CA2ea4nG6OnHH9C2.2gTaOoIz2sZVgQdH6IdiPJcXxxAD6QscyDs2', '0987654322', 'Khoái Châu, Hưng Yên', 'uploads\\\\7e19bd44.jpg', 'local', 1, 413016, '2025-06-14 17:12:02', '2025-06-14 17:07:02', '2025-06-15 00:20:39');
INSERT INTO `users` VALUES ('7f365aed-b82f-48cf-bf43-664c1e67c747', 'Qanh', 'qanh@gmail.com', '$2b$16$P30T7CqwZmz4xMVW5qCTVep9P9pT2UGrrnkC9t4SPIIyC41hDWcdS', '0987654323', 'Văn Giang, Hưng Yên', 'uploads\\\\a87cb257.jpg', 'local', 1, 726612, '2025-06-14 17:12:24', '2025-06-14 17:07:24', '2025-06-15 00:16:59');
INSERT INTO `users` VALUES ('d376b7be-ef14-43c8-a9b9-e4134879bff9', 'Vanh', 'vanh@gmail.com', '$2b$16$rNWcL.t51ZBHSjvuI4F2Ze0xFxoEzab0pI6njpYq1MDdWAxXNlW1i', '0987654324', 'Cẩm Giàng, Hải Dương', 'uploads\\\\d15cd40e.jpg', 'local', 1, 682336, '2025-06-14 17:12:50', '2025-06-14 17:07:50', '2025-06-15 00:17:28');
INSERT INTO `users` VALUES ('ecc1a429-67c5-43e5-8b32-0ef82122e010', 'Thụy', 'thuy@gmail.com', '$2b$16$r/CIUgzn61iGiZoMkJwSuule4ae.Zi6G1VtvbHPPlg0obLIdI26aa', '0987654325', 'Văn Giang, Hưng Yên', 'uploads\\\\1a9e5ac7.jpg', 'local', 1, 905067, '2025-06-14 17:11:30', '2025-06-14 17:06:30', '2025-06-15 00:20:51');
INSERT INTO `users` VALUES ('f32d99a7-2f92-4f94-800d-21f1871a1e15', 'Huy', 'huy@gmail.com', '$2b$16$3xBvaRx2GaJmeuTkQEjXrO.Hhuw7SYh3VRiFcq4TD4mt1TVjLkFhi', '0987654326', 'Phù Cừ -Hưng Yên', 'uploads\\\\34c31bfe.jpg', 'local', 1, 891992, '2025-06-14 17:11:47', '2025-06-14 17:06:47', '2025-06-15 00:20:13');
INSERT INTO `users` VALUES ('fb1c66bb-1c7f-4334-9590-04cf87994bc6', 'user', 'user@gmail.com', '$2b$16$YqUhAFwv8cLxrLFJ3JKhhe8hc6sQJIDw57K0mTc52a536X0NO9SNu', '0987654327', 'olodo', 'uploads\\\\192c7b10.png', 'local', 1, 925052, '2025-05-31 08:04:29', '2025-05-31 07:59:29', '2025-06-15 00:17:49');
INSERT INTO `users` VALUES ('fde99052-1f3f-4789-a2da-cfeaf1e9b5f4', 'Kẻ thống trị loài bò', 'thanh@gmail.com', '$2b$16$TbedqbbdHxHUS9H.7zZiRuH.lE1nILtX.EocPmFmuMffe7Eeeq8De', '0987654323', 'Văn Giang, Hưng Yên', 'uploads\\\\b5180336.jpeg', 'local', 0, 404790, '2025-06-14 17:10:58', '2025-06-14 17:05:58', '2025-06-15 09:07:50');

-- ----------------------------
-- Table structure for wishlist_items
-- ----------------------------
DROP TABLE IF EXISTS `wishlist_items`;
CREATE TABLE `wishlist_items`  (
  `wishlist_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`wishlist_id`, `product_id`) USING BTREE,
  INDEX `fk_wishlist_items_products`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_wishlist_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_wishlist_items_wishlists` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlist_items
-- ----------------------------
INSERT INTO `wishlist_items` VALUES ('b0326655-0ba3-4c93-ae7f-269158042181', '41038e49-db66-4178-99f0-d11204a356fb');

-- ----------------------------
-- Table structure for wishlists
-- ----------------------------
DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_wishlists_users`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_wishlists_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlists
-- ----------------------------
INSERT INTO `wishlists` VALUES ('b0326655-0ba3-4c93-ae7f-269158042181', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2025-06-13 00:25:35', '2025-06-13 00:25:35');

-- ----------------------------
-- Procedure structure for GetBlogBySlug
-- ----------------------------
DROP PROCEDURE IF EXISTS `GetBlogBySlug`;
delimiter ;;
CREATE PROCEDURE `GetBlogBySlug`(IN blog_slug VARCHAR (255))
BEGIN
  SELECT
    JSON_OBJECT(
      'image',
      b.image,
      'category_name',
      JSON_ARRAYAGG(JSON_OBJECT('name', t.NAME)),
      'created_at',
      b.created_at,
      'user_name',
      u.NAME,
      'comment_count',
      (SELECT COUNT(*) FROM comments c WHERE c.blog_id = b.id),
      'title',
      b.title,
      'description',
      b.description,
      'slug',
      b.slug,
      'content',
      b.content
    ) AS DATA
  FROM
    blogs b
    LEFT JOIN blogs_blog_categories bc ON b.id = bc.blog_id
    LEFT JOIN blog_categories t ON bc.category_id = t.id
    LEFT JOIN users u ON b.user_id = u.id
  WHERE
    b.slug = blog_slug COLLATE utf8mb4_general_ci
  GROUP BY
    b.id,
    b.image,
    b.created_at,
    u.NAME,
    b.title,
    b.description,
    b.slug,
    b.content
    LIMIT 1;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
