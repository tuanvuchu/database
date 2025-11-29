/*
 Navicat Premium Dump SQL

 Source Server         : laragon_mysql
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : da4

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 29/11/2025 13:36:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rating` int NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `image` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `aa`(`product_id` ASC) USING BTREE,
  INDEX `aaa`(`user_id` ASC) USING BTREE,
  CONSTRAINT `aa` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('00339402-4500-c582-77b3-d0e6194997bf', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Sốt phô mai béo ngậy, hòa quyện với topping rất hợp.', NULL, '2023-08-11 22:54:36');
INSERT INTO `comments` VALUES ('01158a54-24f0-af48-e2d2-530fb3a499ea', '8e1f85a3-a918-4174-8fb4-35f57f516e6c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2015-11-24 17:22:40');
INSERT INTO `comments` VALUES ('018f91be-5c72-48d6-ca31-519d9d1cc801', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2000-12-04 17:26:56');
INSERT INTO `comments` VALUES ('02ffc60c-c9d7-acfa-a33b-e7341f23cac4', 'e106e63f-9243-4367-8414-d2e0d4c7c61e', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2005-06-12 00:23:39');
INSERT INTO `comments` VALUES ('038389ef-22e0-e8d1-79bc-6ebbed396198', 'd88662d9-05a0-4a8a-b33e-86e0fa7bde45', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Nước chấm rất ngon, vừa vị, làm món ăn thêm đậm đà.', NULL, '2025-08-11 18:08:18');
INSERT INTO `comments` VALUES ('04634943-59d3-4b6a-636f-86f8d9a72160', '9c5294a8-2e56-49fe-8bef-864e44e693ae', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Món ăn nhìn đơn giản nhưng hương vị rất tinh tế.', NULL, '2022-11-16 20:03:05');
INSERT INTO `comments` VALUES ('053ede16-734a-7ad0-b8c5-2d6462fc22b8', '805cdcdb-2c4a-45cd-bd07-c72aa4b98f1b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2010-09-29 07:31:35');
INSERT INTO `comments` VALUES ('07190460-0900-0702-9113-d97313db78a9', '9c7ab691-5e8b-4c98-8681-52f97dad57a8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2011-05-09 07:41:43');
INSERT INTO `comments` VALUES ('0774818b-6a8f-b95a-5055-20ff7024e62e', 'f76d781e-21ed-4aa1-9b7b-1227dfbca1b3', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2002-11-26 23:14:32');
INSERT INTO `comments` VALUES ('08ea05cb-8c69-1676-c633-845b0fa9c663', '931b137b-1f66-49a2-80c6-7147cc5f976a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Phần nước dùng rất ngon, nhưng rau hơi ít.', NULL, '2001-05-01 15:59:27');
INSERT INTO `comments` VALUES ('09c98d76-585c-b35a-a56b-34633bdd6a33', 'd5f903d4-ca25-49db-b7c6-245e451a98ed', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2017-08-09 03:42:46');
INSERT INTO `comments` VALUES ('0cab2426-0f77-40c7-9729-60ea90ff46d3', '7c364133-e27a-447e-9cae-883344c2563b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Quán làm nhanh, gói kỹ, giao hàng vẫn còn nóng.', NULL, '2015-03-15 21:58:33');
INSERT INTO `comments` VALUES ('0d4467ed-7b6b-693d-0386-bb4f5eb672cb', '73b36a1e-694a-410d-9a91-d34610d6403a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2008-12-27 02:17:46');
INSERT INTO `comments` VALUES ('0da73480-d689-48f5-dbeb-c6c760de8e6b', '5d64a036-c88b-482a-9ac1-c93451fc3503', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Giao hàng nhanh, đồ ăn vẫn còn nóng hổi, rất hài lòng.', NULL, '2018-01-29 08:16:46');
INSERT INTO `comments` VALUES ('0dda04fd-76b6-3b50-39a3-24318e8b4d15', '77c25481-6886-4b80-9156-7992692952bf', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2019-04-10 17:20:10');
INSERT INTO `comments` VALUES ('0f614c10-5e35-6f3d-f53b-82515512bc1c', '604b962a-8453-45b6-a4ff-9d3dfd841a33', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Món chiên giòn rụm, không bị dầu mỡ, rất vừa miệng.', NULL, '2015-08-04 16:33:25');
INSERT INTO `comments` VALUES ('10461b94-e1de-e880-cfc3-3fcbc122c304', 'ee0e8afe-94b7-4153-8d51-2c6523ad05e2', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2010-08-09 21:17:10');
INSERT INTO `comments` VALUES ('106be36c-d400-1c15-05ea-b3bc336d97ac', '6852a714-543d-4c1b-96df-5ed96f9c94e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Ăn một lần là ghiền, vị vừa miệng và rất thơm.', NULL, '2003-07-14 12:41:27');
INSERT INTO `comments` VALUES ('115422e4-d285-e298-1766-38740581e2a1', '2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Thịt mềm, nước sốt thơm, đúng vị mình thích.', NULL, '2010-11-16 16:39:42');
INSERT INTO `comments` VALUES ('11fa8dfb-66dd-cf8e-157d-1e827ea5b43a', '805cdcdb-2c4a-45cd-bd07-c72aa4b98f1b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2024-04-23 03:00:09');
INSERT INTO `comments` VALUES ('13b8d0ec-007d-617f-5e6e-8a57f9394e7c', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Thịt mềm, nước sốt thơm, đúng vị mình thích.', NULL, '2003-03-13 01:53:04');
INSERT INTO `comments` VALUES ('14cd151a-1c07-0509-288f-325cb2ea0284', '321a3b2b-a4b9-4858-93ce-b2e5f31eef60', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Phần nước dùng rất ngon, nhưng rau hơi ít.', NULL, '2005-05-26 03:01:22');
INSERT INTO `comments` VALUES ('14f74df8-77e0-d561-d36b-376699e6e8b8', '81649444-d186-43c1-84e9-ea184f8f44aa', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Món ăn nhìn đơn giản nhưng hương vị rất tinh tế.', NULL, '2003-07-14 03:34:36');
INSERT INTO `comments` VALUES ('15067300-5333-69c9-a72b-641d4387892f', '3e5f4078-fc52-42d8-a416-c6cde9176cfd', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2007-07-22 10:06:11');
INSERT INTO `comments` VALUES ('161390f6-ee35-04d5-837f-d524c2a6e1f4', '411326c0-7132-4f34-9f87-bb32a3a31932', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2022-06-12 09:27:19');
INSERT INTO `comments` VALUES ('1bfcbb35-1b09-59cc-9996-c7dc45180e56', 'd8801598-2b44-41cb-84c7-f8e6372e789d', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Không ngờ quán làm phần ăn đầy đặn như vậy, giá lại hợp lý.', NULL, '2010-02-07 04:00:15');
INSERT INTO `comments` VALUES ('1c99482b-06d4-5e22-5583-38aa1e5c3b91', '45c4ab68-8ecf-4962-936e-132c2ac50b63', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Hương thơm hấp dẫn, ăn là thấy đói liền.', NULL, '2019-02-23 08:44:31');
INSERT INTO `comments` VALUES ('1cba6eb4-02ba-1dfc-c20b-72740deefcbd', '0ec5769f-1d1e-4e7d-85b1-1066d44130ec', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Cơm hơi khô một chút nhưng đồ ăn kèm ngon tuyệt.', NULL, '2011-06-04 10:12:11');
INSERT INTO `comments` VALUES ('1f0a25de-d938-3351-2dfb-fe4e7022ffad', 'e106e63f-9243-4367-8414-d2e0d4c7c61e', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Món ăn nhìn đơn giản nhưng hương vị rất tinh tế.', NULL, '2006-01-08 11:17:49');
INSERT INTO `comments` VALUES ('1f107a50-d93a-5a8e-ff34-97875dca7e5a', 'e9069fc6-f4af-4572-96fb-27b5dccc21d5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Không ngờ quán làm phần ăn đầy đặn như vậy, giá lại hợp lý.', NULL, '2006-12-03 23:20:52');
INSERT INTO `comments` VALUES ('1f5e7755-ba50-01bc-9eaf-1e5cff6fe511', '065ad2ab-12ab-4819-bceb-8a453bfd847b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2023-03-21 13:58:46');
INSERT INTO `comments` VALUES ('216bd779-1a83-1a98-6459-66a85640cab8', 'ed018c14-6d3e-4ff2-babb-2f7b3f0dc7e5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Đồ ăn ngon, nhân viên thân thiện, phục vụ nhanh.', NULL, '2014-04-05 00:23:49');
INSERT INTO `comments` VALUES ('243d440a-3107-99da-a9b7-dba6bef39451', 'ed018c14-6d3e-4ff2-babb-2f7b3f0dc7e5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2005-06-05 23:08:49');
INSERT INTO `comments` VALUES ('266cd6a6-bcae-6c40-bd4d-df053148a48d', '9b15a51a-dbea-40bb-bbaf-7279de87db3f', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Lần sau sẽ thử thêm món khác vì ấn tượng quá tốt.', NULL, '2012-03-22 14:14:18');
INSERT INTO `comments` VALUES ('28ef97cf-ef12-25aa-6c08-18ec97614422', '10893169-adfe-49e9-9e5e-9a2314d6bbd7', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2002-04-17 11:46:16');
INSERT INTO `comments` VALUES ('2bb26f41-4f4e-6470-65d5-baf896562b13', '9c5294a8-2e56-49fe-8bef-864e44e693ae', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2005-02-12 18:34:53');
INSERT INTO `comments` VALUES ('2bd4d1a9-beca-6dcb-36da-10907e5f6845', '0ebc0608-2f64-4a16-9746-095de98298b4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Khẩu phần lớn hơn mong đợi, ăn hai người vẫn đủ.', NULL, '2009-06-21 11:07:25');
INSERT INTO `comments` VALUES ('2d5b83ea-e6ad-4667-b214-fb397feabe86', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2008-02-29 20:56:51');
INSERT INTO `comments` VALUES ('2e77f1e5-8b2e-58b3-a486-8665e199833a', '6128e7f9-457f-405b-bbc8-792e0683e59b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Phần nước dùng rất ngon, nhưng rau hơi ít.', NULL, '2007-07-13 14:47:42');
INSERT INTO `comments` VALUES ('2fe06438-c7d5-f5fd-238a-ddd7ef9a218e', '2777979f-a126-4f01-b768-0c0c85402f11', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2000-01-11 12:38:18');
INSERT INTO `comments` VALUES ('3045f485-dbfc-7256-102e-3f6c27c97ec3', '2777979f-a126-4f01-b768-0c0c85402f11', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Không ngờ quán làm phần ăn đầy đặn như vậy, giá lại hợp lý.', NULL, '2011-09-12 11:32:53');
INSERT INTO `comments` VALUES ('310e6d84-b9bf-527d-9ccc-63a32b23e8dc', 'a2d429a3-fe95-4c25-be6c-adfc7e9e30c6', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Thịt nướng thơm lừng, không bị khô, ăn cực đã.', NULL, '2013-12-21 03:08:29');
INSERT INTO `comments` VALUES ('31644ead-25fc-b8b8-397b-b15d8d900228', 'ed018c14-6d3e-4ff2-babb-2f7b3f0dc7e5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Món ăn ngon, nhưng phần ăn hơi nhỏ so với giá.', NULL, '2000-06-27 12:32:58');
INSERT INTO `comments` VALUES ('3235fe1e-bec0-6a52-7eae-d06e5da766dd', '9c5294a8-2e56-49fe-8bef-864e44e693ae', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Đồ ăn ngon, nhân viên thân thiện, phục vụ nhanh.', NULL, '2010-08-17 00:12:20');
INSERT INTO `comments` VALUES ('3376a2c5-e8f2-54e0-5ee9-85c36d6e0a7f', '27e01867-c975-4730-af77-8e523a367b5e', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Quán làm nhanh, gói kỹ, giao hàng vẫn còn nóng.', NULL, '2004-07-05 06:55:22');
INSERT INTO `comments` VALUES ('34561935-c313-71cf-0cbb-69b8a859331b', '0ebc0608-2f64-4a16-9746-095de98298b4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Quán làm nhanh, gói kỹ, giao hàng vẫn còn nóng.', NULL, '2009-12-23 04:56:44');
INSERT INTO `comments` VALUES ('37303002-3da3-c28c-7242-aa7116842e89', '17f638d3-489e-414c-9dfe-ce35831d7e95', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2010-08-30 07:42:48');
INSERT INTO `comments` VALUES ('37bf7713-30db-8917-f9d3-2c802f44cb06', '7c364133-e27a-447e-9cae-883344c2563b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2018-08-17 10:54:22');
INSERT INTO `comments` VALUES ('37dff8a4-b340-d3f6-509c-d9640ad0f900', 'fb4935be-f480-4253-8079-2e24b2a1d67b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Khẩu phần lớn hơn mong đợi, ăn hai người vẫn đủ.', NULL, '2020-04-28 00:28:23');
INSERT INTO `comments` VALUES ('38b0d519-debd-e972-2430-5878f9a23806', 'f76d781e-21ed-4aa1-9b7b-1227dfbca1b3', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2019-07-17 04:38:40');
INSERT INTO `comments` VALUES ('395e7d8e-5061-d8bf-36a3-c9873e750c9d', '065ad2ab-12ab-4819-bceb-8a453bfd847b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2012-10-22 09:51:29');
INSERT INTO `comments` VALUES ('3b823828-c61b-dcd1-f9b4-1bef7828e51c', '54ac77b0-17ad-4f53-a1e9-fbd9460d0908', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Đóng gói cẩn thận, trình bày đẹp, ăn như nhà hàng 5 sao.', NULL, '2003-06-28 21:10:14');
INSERT INTO `comments` VALUES ('3bbc4bb4-81e1-2d00-5e6a-478456eee0b1', '71134976-c442-47ab-afff-602158571454', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2017-08-20 20:57:54');
INSERT INTO `comments` VALUES ('3bd4ada1-2ed7-1fd8-d02a-0fbc898f7b4d', '065ad2ab-12ab-4819-bceb-8a453bfd847b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Món chiên giòn rụm, không bị dầu mỡ, rất vừa miệng.', NULL, '2002-10-15 13:52:09');
INSERT INTO `comments` VALUES ('3e257774-1e84-7a36-28e3-e3d84017c26e', '81649444-d186-43c1-84e9-ea184f8f44aa', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món ăn ngon, nhưng phần ăn hơi nhỏ so với giá.', NULL, '2010-12-04 22:17:06');
INSERT INTO `comments` VALUES ('40044a2f-5543-663e-b421-baad6ea3da0b', '0cd2e975-ed9a-479b-86fb-8a6164b418c8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2019-11-23 20:59:16');
INSERT INTO `comments` VALUES ('4080346d-2c10-5041-7f63-f160cc44bc91', '321a3b2b-a4b9-4858-93ce-b2e5f31eef60', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Đặt nhiều lần rồi, lần nào cũng giữ phong độ như cũ.', NULL, '2014-07-18 21:19:24');
INSERT INTO `comments` VALUES ('40a695bb-601d-0f11-ae42-50331bc5a572', '2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Hơi cay hơn mình tưởng, nhưng rất ngon, hợp với người thích vị đậm.', NULL, '2010-12-14 21:51:52');
INSERT INTO `comments` VALUES ('420db04d-16dd-bea9-bdcb-267ef5519002', '0ad59a81-de78-4632-92d3-982b054b2bc9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Giá hơi cao nhưng chất lượng thì quá xứng đáng.', NULL, '2020-05-29 18:12:31');
INSERT INTO `comments` VALUES ('42a96d77-fc0a-d8a7-4aa9-ef18c7160113', '0ebc0608-2f64-4a16-9746-095de98298b4', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Hơi cay hơn mình tưởng, nhưng rất ngon, hợp với người thích vị đậm.', NULL, '2000-04-26 13:30:35');
INSERT INTO `comments` VALUES ('44835d62-17b7-0945-7e12-e430b6837bd2', '8e820694-f6fb-4380-bfe5-5dc91d2e908a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Món ăn ngon, nhưng phần ăn hơi nhỏ so với giá.', NULL, '2006-04-11 01:53:16');
INSERT INTO `comments` VALUES ('47f6b01c-c1ab-64cf-581f-ad40737a6f4a', '54ac77b0-17ad-4f53-a1e9-fbd9460d0908', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2007-02-19 06:49:50');
INSERT INTO `comments` VALUES ('49bff1f1-2553-78dd-a0dd-34027ee6dfe1', '0cd2e975-ed9a-479b-86fb-8a6164b418c8', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2001-08-28 08:07:54');
INSERT INTO `comments` VALUES ('4a6f39e1-ee8b-1a5e-0026-9af60b4eef25', 'f76d781e-21ed-4aa1-9b7b-1227dfbca1b3', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2020-01-10 08:18:58');
INSERT INTO `comments` VALUES ('4a95334c-e8c4-cdc4-b845-be8e950f7d00', 'cc1d7473-cc95-40fc-abf3-500c6b4403d8', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Không ngờ quán làm phần ăn đầy đặn như vậy, giá lại hợp lý.', NULL, '2005-04-08 14:05:33');
INSERT INTO `comments` VALUES ('4c82e6b8-7a9a-4592-5613-174ce8a31f3a', '0a072243-704d-4389-bd5f-c97f7ceffec5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Đóng gói cẩn thận, trình bày đẹp, ăn như nhà hàng 5 sao.', NULL, '2016-03-22 05:17:00');
INSERT INTO `comments` VALUES ('4d0f26ea-aaba-02f6-2cd9-a9f41099a7b6', '7d6252eb-c6f9-4578-9304-a5337a1c631b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Hương thơm hấp dẫn, ăn là thấy đói liền.', NULL, '2015-09-02 02:44:55');
INSERT INTO `comments` VALUES ('4d33e87f-7468-b32f-958e-ee22785dd770', '411326c0-7132-4f34-9f87-bb32a3a31932', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2000-08-03 02:10:17');
INSERT INTO `comments` VALUES ('4d4591ef-8124-ee2a-8c84-3086eb482309', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Cơm dẻo, topping nhiều, ăn xong rất no luôn.', NULL, '2000-07-28 22:35:00');
INSERT INTO `comments` VALUES ('4d83860b-f003-23c6-0e4c-d3df539c8e0c', 'd64a988b-f5f2-41d8-8262-1175e8c96d7e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Món ăn có vị đặc trưng, không bị ngán như những nơi khác.', NULL, '2020-04-27 07:33:33');
INSERT INTO `comments` VALUES ('4e71b2ca-45a0-a1e1-1458-b6551707e7b5', '931b137b-1f66-49a2-80c6-7147cc5f976a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Khẩu phần lớn hơn mong đợi, ăn hai người vẫn đủ.', NULL, '2003-05-20 09:09:03');
INSERT INTO `comments` VALUES ('4e954fb6-5981-79bf-2fab-72f0b4cf3986', 'a2ae6ed2-6ffa-406b-b948-a11ad9b2ad50', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Món ăn ngon ngoài mong đợi, đáng để thử lần nữa.', NULL, '2010-02-10 21:43:51');
INSERT INTO `comments` VALUES ('4ec03589-aa18-4171-194a-b94e63ec5653', '7c071d7e-5b0b-4135-93b5-cb2d03d10530', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Phần ăn ngon, vừa miệng, nêm nếm đậm đà. Sẽ quay lại lần nữa!', NULL, '2002-05-01 12:51:25');
INSERT INTO `comments` VALUES ('509a11ce-6e18-73cd-893f-1c491572dbe0', '45c4ab68-8ecf-4962-936e-132c2ac50b63', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Nước chấm rất ngon, vừa vị, làm món ăn thêm đậm đà.', NULL, '2020-02-18 22:19:55');
INSERT INTO `comments` VALUES ('5191ed13-f9a8-295f-7052-d41df3656c33', 'bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Cơm dẻo, topping nhiều, ăn xong rất no luôn.', NULL, '2006-05-31 08:56:28');
INSERT INTO `comments` VALUES ('519cf7f3-9b7e-2664-b167-6867b956a769', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Lần sau sẽ thử thêm món khác vì ấn tượng quá tốt.', NULL, '2011-04-01 01:48:01');
INSERT INTO `comments` VALUES ('53a6056f-6a8e-c2a9-adc6-7691ceabdaff', '1a071ddf-615c-4301-bad6-4b6e9afbe115', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Không ngờ quán làm phần ăn đầy đặn như vậy, giá lại hợp lý.', NULL, '2024-07-16 09:03:32');
INSERT INTO `comments` VALUES ('54c8c548-18ca-728e-1a56-8a4abbb7da5a', '7d6252eb-c6f9-4578-9304-a5337a1c631b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2021-01-20 18:12:00');
INSERT INTO `comments` VALUES ('56d68dd1-a5e8-4df5-e379-b210bda5888d', '8dbe899f-3798-44fe-8559-74098942c067', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Thịt mềm, nước sốt thơm, đúng vị mình thích.', NULL, '2012-05-16 15:47:10');
INSERT INTO `comments` VALUES ('5722fa12-fb38-97eb-45ca-5a3cdb80d4b4', '604b962a-8453-45b6-a4ff-9d3dfd841a33', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Phần nước dùng rất ngon, nhưng rau hơi ít.', NULL, '2008-10-05 19:06:29');
INSERT INTO `comments` VALUES ('590dea70-ee12-25e6-fd71-03a3c87cf1b9', 'eaf92f89-3028-4287-9a46-6a4b157098e9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Phần nước dùng rất ngon, nhưng rau hơi ít.', NULL, '2008-03-09 08:54:04');
INSERT INTO `comments` VALUES ('593a38bf-f6fb-a266-def4-3f99772f9f87', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Giao hàng hơi lâu một chút nhưng món vẫn ngon.', NULL, '2011-03-18 06:36:16');
INSERT INTO `comments` VALUES ('5974bb43-f751-5a8d-78c5-841c0e862e0a', '73b36a1e-694a-410d-9a91-d34610d6403a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Món ăn ngon, nhưng phần ăn hơi nhỏ so với giá.', NULL, '2024-10-27 03:44:14');
INSERT INTO `comments` VALUES ('59adf605-d115-5388-a914-f83094fb75e1', '9c5294a8-2e56-49fe-8bef-864e44e693ae', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Phần ăn ngon, vừa miệng, nêm nếm đậm đà. Sẽ quay lại lần nữa!', NULL, '2000-03-22 11:03:40');
INSERT INTO `comments` VALUES ('5b411ea8-9028-8ee6-098c-caaeb7fda29d', '2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2024-07-04 16:40:18');
INSERT INTO `comments` VALUES ('5bd31d4f-8ac6-d911-8c79-5da80291cd6c', 'd5f903d4-ca25-49db-b7c6-245e451a98ed', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2005-10-05 14:53:18');
INSERT INTO `comments` VALUES ('5dbb9641-2f95-8050-9d30-1c0f9d1e238f', '7c071d7e-5b0b-4135-93b5-cb2d03d10530', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2023-05-03 02:40:09');
INSERT INTO `comments` VALUES ('5f4e4bdd-7917-2d72-8d1f-577bd7eec953', 'ce175d34-26b6-49cf-8322-f0491b7f65ce', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Món ăn nhìn đơn giản nhưng hương vị rất tinh tế.', NULL, '2006-11-07 20:04:35');
INSERT INTO `comments` VALUES ('6006a1b8-0623-750c-0ec6-cca68218af5c', '38cd83b2-183d-41a6-af91-7b2b0c18d69b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2006-12-15 16:36:31');
INSERT INTO `comments` VALUES ('6184e1a6-60f6-1600-0ee0-7e056afd71d6', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2007-01-30 09:41:38');
INSERT INTO `comments` VALUES ('61d1aa1f-0763-2177-9c5b-b0f47f1a93f2', '7c364133-e27a-447e-9cae-883344c2563b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món ăn có vị đặc trưng, không bị ngán như những nơi khác.', NULL, '2014-04-09 12:48:53');
INSERT INTO `comments` VALUES ('622e87e5-639d-b0dd-80b4-3655f7f04f37', '805cdcdb-2c4a-45cd-bd07-c72aa4b98f1b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Mình đặt lần đầu mà mê luôn, chắc chắn sẽ đặt lại.', NULL, '2013-08-24 19:01:16');
INSERT INTO `comments` VALUES ('63c592bb-705b-7b65-6074-8404cb0d86c0', '931b137b-1f66-49a2-80c6-7147cc5f976a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Mình đặt lần đầu mà mê luôn, chắc chắn sẽ đặt lại.', NULL, '2004-10-27 02:45:53');
INSERT INTO `comments` VALUES ('64cd8517-319f-c66f-64b7-c0947735c237', '805cdcdb-2c4a-45cd-bd07-c72aa4b98f1b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2017-04-30 09:34:05');
INSERT INTO `comments` VALUES ('67b33e96-fc86-804e-e9e9-2695737b6b3a', '71134976-c442-47ab-afff-602158571454', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2006-04-06 09:01:28');
INSERT INTO `comments` VALUES ('68369c21-a8d5-e7a1-e9da-c89e6e13bebf', '321a3b2b-a4b9-4858-93ce-b2e5f31eef60', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Không ngờ quán làm phần ăn đầy đặn như vậy, giá lại hợp lý.', NULL, '2000-12-04 21:22:52');
INSERT INTO `comments` VALUES ('68a3ecd0-8127-d080-1748-7c9f54df7e3d', 'd8801598-2b44-41cb-84c7-f8e6372e789d', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2023-10-21 07:36:14');
INSERT INTO `comments` VALUES ('6995b9e4-539d-4176-7cad-0ae56a996e76', '10893169-adfe-49e9-9e5e-9a2314d6bbd7', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2018-09-13 03:51:35');
INSERT INTO `comments` VALUES ('6ba82dd1-b24a-f62c-9b81-9fb8bceabfda', 'eaf92f89-3028-4287-9a46-6a4b157098e9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2005-07-04 21:12:49');
INSERT INTO `comments` VALUES ('6c3ca6d2-898f-64bc-be74-8b6872b472f2', '7c364133-e27a-447e-9cae-883344c2563b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2006-11-16 06:03:04');
INSERT INTO `comments` VALUES ('6c84033d-92d1-ed89-04a0-a7d76ce8c181', 'bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2004-06-28 10:20:58');
INSERT INTO `comments` VALUES ('6ef02a60-a14d-a03b-451a-91715e2b13f0', '9c7ab691-5e8b-4c98-8681-52f97dad57a8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Nước chấm rất ngon, vừa vị, làm món ăn thêm đậm đà.', NULL, '2021-11-10 00:54:19');
INSERT INTO `comments` VALUES ('6f6be2e0-d7f3-6d9b-5d91-208a7d415ecb', '7024e436-0219-4235-883f-87a6ff9cb32b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2005-11-04 21:51:13');
INSERT INTO `comments` VALUES ('702bf989-ff9e-1851-9916-2951dfef547d', '6200862a-18f7-44b5-83e2-5f32ecabdc07', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2017-07-15 02:46:25');
INSERT INTO `comments` VALUES ('705019c5-77c8-a64a-1384-75a507afdb0b', 'bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Phần ăn ngon, vừa miệng, nêm nếm đậm đà. Sẽ quay lại lần nữa!', NULL, '2018-07-19 13:43:48');
INSERT INTO `comments` VALUES ('706c8630-b0b3-21bc-8cd3-c67028ee130d', '9633e61f-c11c-445f-b8fb-b4224c9c2ac9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Cơm dẻo, topping nhiều, ăn xong rất no luôn.', NULL, '2014-02-26 07:10:37');
INSERT INTO `comments` VALUES ('707b3308-01d1-7754-f41e-860457fd8e25', '2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Giao hàng nhanh, đồ ăn vẫn còn nóng hổi, rất hài lòng.', NULL, '2006-10-22 21:17:20');
INSERT INTO `comments` VALUES ('7550aae6-c1fa-5ef7-5efc-f82f17e930bf', '29933f97-c512-4f2b-8cad-d17976695713', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Thịt nướng thơm lừng, không bị khô, ăn cực đã.', NULL, '2003-09-16 05:31:44');
INSERT INTO `comments` VALUES ('7555629c-a8b5-cbab-163e-46732a8d5fb2', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Món ăn nhìn đơn giản nhưng hương vị rất tinh tế.', NULL, '2018-11-16 10:09:25');
INSERT INTO `comments` VALUES ('75621de0-b9cc-082d-0ae0-f298489fadea', 'd64a988b-f5f2-41d8-8262-1175e8c96d7e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2007-04-13 17:44:23');
INSERT INTO `comments` VALUES ('7617049a-c569-1756-b9de-4426ddc14a63', 'f02356a2-7d54-4fc1-aeb1-d73270f7a86d', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2020-09-04 22:01:57');
INSERT INTO `comments` VALUES ('77a79865-2c89-0833-222c-8cedf07b8a0d', 'e106e63f-9243-4367-8414-d2e0d4c7c61e', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Đồ ăn ngon, nhân viên thân thiện, phục vụ nhanh.', NULL, '2009-10-24 16:02:37');
INSERT INTO `comments` VALUES ('79a2b61e-73c9-6694-29a3-8043259fe143', '54ac77b0-17ad-4f53-a1e9-fbd9460d0908', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Đóng gói cẩn thận, trình bày đẹp, ăn như nhà hàng 5 sao.', NULL, '2019-12-15 11:58:09');
INSERT INTO `comments` VALUES ('7a313e16-6613-3b5a-f0ba-5d0fd29694db', 'eaf92f89-3028-4287-9a46-6a4b157098e9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2020-01-25 15:40:11');
INSERT INTO `comments` VALUES ('7b7fc2f2-a30d-f1e2-8369-e32680f585f2', '73b36a1e-694a-410d-9a91-d34610d6403a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2018-08-14 06:49:03');
INSERT INTO `comments` VALUES ('7c472b24-d223-1b41-81b9-4916c66748db', '71134976-c442-47ab-afff-602158571454', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Phần nước dùng rất ngon, nhưng rau hơi ít.', NULL, '2007-12-17 17:04:39');
INSERT INTO `comments` VALUES ('7d1e3e2d-f034-9aad-e55a-4a8a89c29d4b', '416513f5-7e44-4421-9482-bb1884d1d812', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Món ăn ngon ngoài mong đợi, đáng để thử lần nữa.', NULL, '2014-05-30 04:17:22');
INSERT INTO `comments` VALUES ('7d9a7c5f-3afe-c532-35e8-10457633264e', 'eaf92f89-3028-4287-9a46-6a4b157098e9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Lần sau sẽ thử thêm món khác vì ấn tượng quá tốt.', NULL, '2016-07-08 06:06:38');
INSERT INTO `comments` VALUES ('7f47ec7e-bae9-363f-6e0e-7fe64ba3a200', 'bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Thịt nướng thơm lừng, không bị khô, ăn cực đã.', NULL, '2025-05-02 16:44:44');
INSERT INTO `comments` VALUES ('81d8c9ea-e16c-5c4b-eeef-0461c7938522', '8e820694-f6fb-4380-bfe5-5dc91d2e908a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2013-07-15 03:37:05');
INSERT INTO `comments` VALUES ('836b526f-5be6-962d-eb61-48528497f6d7', 'a2d429a3-fe95-4c25-be6c-adfc7e9e30c6', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Thịt nướng thơm lừng, không bị khô, ăn cực đã.', NULL, '2020-07-27 04:12:58');
INSERT INTO `comments` VALUES ('83dda4b5-0381-c524-a13c-69bef34e1c53', '77c25481-6886-4b80-9156-7992692952bf', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2008-08-19 22:01:40');
INSERT INTO `comments` VALUES ('8468a925-1ff7-dc88-356c-cfbcb6a56b3c', '29933f97-c512-4f2b-8cad-d17976695713', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Cơm dẻo, topping nhiều, ăn xong rất no luôn.', NULL, '2021-08-14 07:12:46');
INSERT INTO `comments` VALUES ('86988089-b8e4-0954-480c-56606465807a', '73b36a1e-694a-410d-9a91-d34610d6403a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2007-11-10 16:06:39');
INSERT INTO `comments` VALUES ('882bcba6-219c-c3c9-7048-82efae0a6e34', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Ăn một lần là ghiền, vị vừa miệng và rất thơm.', NULL, '2020-05-23 02:40:03');
INSERT INTO `comments` VALUES ('892002fd-0f55-a66a-1902-622a32ee1a89', '2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Giao hàng nhanh, đồ ăn vẫn còn nóng hổi, rất hài lòng.', NULL, '2007-05-31 08:24:49');
INSERT INTO `comments` VALUES ('8bfb69b1-5d56-aab1-15e0-c0778b883b7c', '173ed4db-b5b3-4bb3-bf25-8a1707927024', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Món ăn có vị đặc trưng, không bị ngán như những nơi khác.', NULL, '2006-04-17 06:06:46');
INSERT INTO `comments` VALUES ('8c2f23ec-6cd3-46c9-eb24-c14304a92bc9', 'd5f903d4-ca25-49db-b7c6-245e451a98ed', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Giá hơi cao nhưng chất lượng thì quá xứng đáng.', NULL, '2013-09-01 05:43:03');
INSERT INTO `comments` VALUES ('8ca0f9be-0355-fe56-186b-8d7c3f4041de', 'e73824fd-951a-4b35-b397-a1eb69c74514', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Hơi cay hơn mình tưởng, nhưng rất ngon, hợp với người thích vị đậm.', NULL, '2006-07-07 03:32:33');
INSERT INTO `comments` VALUES ('8cf9e45f-6d1f-4c9c-9fe4-04300045398c', '0ec5769f-1d1e-4e7d-85b1-1066d44130ec', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2021-06-19 10:30:04');
INSERT INTO `comments` VALUES ('8dbce922-ebc8-50d2-d199-a5da94a0e5cf', 'd687b7b5-46f4-40d8-9442-803bf5bd39c6', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2018-01-01 05:18:49');
INSERT INTO `comments` VALUES ('91d641e8-4758-d06c-fdf1-b2e581376483', '955ca580-99ad-4172-a04a-705c07081dd5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món chiên giòn rụm, không bị dầu mỡ, rất vừa miệng.', NULL, '2022-11-21 01:56:05');
INSERT INTO `comments` VALUES ('9257277d-f9fa-b0c9-80ff-aac92714ea76', 'c373ad62-446d-4af8-85cf-dc4aff5495e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2006-02-18 21:47:37');
INSERT INTO `comments` VALUES ('92df8a03-6e4a-f5e2-47b5-dbb73dd71d6f', 'eaf92f89-3028-4287-9a46-6a4b157098e9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món ăn ngon, nhưng phần ăn hơi nhỏ so với giá.', NULL, '2021-07-15 10:25:22');
INSERT INTO `comments` VALUES ('933919d7-1660-4d68-2d67-bdf3541cbb8d', '955ca580-99ad-4172-a04a-705c07081dd5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2000-04-09 15:00:15');
INSERT INTO `comments` VALUES ('95f73066-6f39-cdd8-4c13-bd8f92d141ff', 'bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Món ăn ngon ngoài mong đợi, đáng để thử lần nữa.', NULL, '2021-04-03 00:46:40');
INSERT INTO `comments` VALUES ('9c20f595-f0c5-9c4e-5184-6ea336e8970e', 'a2d429a3-fe95-4c25-be6c-adfc7e9e30c6', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Lần sau sẽ thử thêm món khác vì ấn tượng quá tốt.', NULL, '2021-12-07 16:01:58');
INSERT INTO `comments` VALUES ('9c98c99c-d0d1-b414-f28b-745edfb68c08', 'cd071d43-7ea1-480f-8aa1-3590dac1f749', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2013-02-08 11:16:52');
INSERT INTO `comments` VALUES ('9f04762c-bb7c-50a7-eac2-db16b118bde6', '81649444-d186-43c1-84e9-ea184f8f44aa', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Khẩu phần lớn hơn mong đợi, ăn hai người vẫn đủ.', NULL, '2008-12-07 05:47:35');
INSERT INTO `comments` VALUES ('9f4ee3df-89f0-c82b-acd2-0cc3c04b2d61', 'e9069fc6-f4af-4572-96fb-27b5dccc21d5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Hương thơm hấp dẫn, ăn là thấy đói liền.', NULL, '2015-05-02 04:43:36');
INSERT INTO `comments` VALUES ('9ff1e698-c914-6464-c38b-3ec9ec196702', '8e820694-f6fb-4380-bfe5-5dc91d2e908a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2007-05-16 00:27:21');
INSERT INTO `comments` VALUES ('a0a84515-fce6-72e2-62fc-e684492b555e', 'cc1d7473-cc95-40fc-abf3-500c6b4403d8', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2014-02-02 15:19:42');
INSERT INTO `comments` VALUES ('a1d91c99-e59d-096f-b01d-9bc97ea94595', '604b962a-8453-45b6-a4ff-9d3dfd841a33', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2013-04-10 08:43:00');
INSERT INTO `comments` VALUES ('a21e2bd9-a9be-da3a-760c-f9da542f6b2f', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Đồ ăn tươi, trình bày gọn gàng, rất chuyên nghiệp.', NULL, '2008-03-13 00:19:46');
INSERT INTO `comments` VALUES ('a23dcf7a-7b99-e151-c7df-a4054d4a86d1', '5d64a036-c88b-482a-9ac1-c93451fc3503', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Giao hàng hơi lâu một chút nhưng món vẫn ngon.', NULL, '2025-06-23 15:52:27');
INSERT INTO `comments` VALUES ('a2411ff3-f333-4396-de64-31ba634f2a0a', '9c7ab691-5e8b-4c98-8681-52f97dad57a8', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2005-05-11 10:32:08');
INSERT INTO `comments` VALUES ('a35c20ad-601b-086c-e60d-74aeb32b314f', '649bfb5f-0741-4211-936a-f0375442926e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2022-10-13 13:55:49');
INSERT INTO `comments` VALUES ('a3cf7523-844c-2df9-c9ee-9834e70edfae', 'a2d429a3-fe95-4c25-be6c-adfc7e9e30c6', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Mình đặt lần đầu mà mê luôn, chắc chắn sẽ đặt lại.', NULL, '2012-04-24 09:54:50');
INSERT INTO `comments` VALUES ('a3d8775d-81f9-ea2b-e8fe-2e1d018dfaa6', '987ab72f-c0a0-4bf4-a3db-69a148022fdf', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Giao hàng hơi lâu một chút nhưng món vẫn ngon.', NULL, '2019-07-08 14:03:06');
INSERT INTO `comments` VALUES ('a3e63592-c6b0-2e6c-bdba-c1a184e9c155', '955ca580-99ad-4172-a04a-705c07081dd5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Đặt nhiều lần rồi, lần nào cũng giữ phong độ như cũ.', NULL, '2007-04-01 21:53:26');
INSERT INTO `comments` VALUES ('a71dd688-e19d-2ee3-585e-f9c2235fb61e', '9633e61f-c11c-445f-b8fb-b4224c9c2ac9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2016-10-18 19:49:43');
INSERT INTO `comments` VALUES ('a7e01dda-f9f1-9c90-0ffe-8ff715790ee7', '7c59e56f-aeed-44e3-84af-3164a80bd78a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2004-07-01 20:24:13');
INSERT INTO `comments` VALUES ('aa5425fd-f80b-9b53-4f0a-2933b3d98c8a', 'a2ae6ed2-6ffa-406b-b948-a11ad9b2ad50', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2005-07-13 15:51:21');
INSERT INTO `comments` VALUES ('aa7df8e0-509a-0bb4-a14d-83d90c10fa43', '649bfb5f-0741-4211-936a-f0375442926e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Nước chấm rất ngon, vừa vị, làm món ăn thêm đậm đà.', NULL, '2007-12-27 08:46:27');
INSERT INTO `comments` VALUES ('aae0b355-0e44-e967-8e84-0b1eaac90f86', '9f7b842e-41dc-4afa-ac61-05a2d81989d9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Ăn một lần là ghiền, vị vừa miệng và rất thơm.', NULL, '2023-07-17 17:57:12');
INSERT INTO `comments` VALUES ('ab46fd36-cf76-0cfc-7328-41194c957dc6', '0cd2e975-ed9a-479b-86fb-8a6164b418c8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2011-03-12 00:26:31');
INSERT INTO `comments` VALUES ('ae1ddfd2-f737-4043-96dc-ee1a4191292e', '6fd73884-dcf3-4fb3-b3d1-336b8c79b272', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Đặt nhiều lần rồi, lần nào cũng giữ phong độ như cũ.', NULL, '2001-05-20 04:34:14');
INSERT INTO `comments` VALUES ('afc26bc2-c304-f10a-410a-c9285b985f05', '2777979f-a126-4f01-b768-0c0c85402f11', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2000-05-20 02:12:56');
INSERT INTO `comments` VALUES ('b3e326d5-3c36-7af3-337c-a2190048adab', '54ac77b0-17ad-4f53-a1e9-fbd9460d0908', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2013-01-20 18:00:13');
INSERT INTO `comments` VALUES ('b4a33171-4867-133f-b891-34f3795b73f2', '2777979f-a126-4f01-b768-0c0c85402f11', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2012-11-03 04:10:45');
INSERT INTO `comments` VALUES ('b57441f1-b218-8c65-a9fd-b2911029d0af', 'cd43724e-fb4b-4210-b90d-5cf7cc837c92', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Món ăn ngon ngoài mong đợi, đáng để thử lần nữa.', NULL, '2025-06-02 19:27:09');
INSERT INTO `comments` VALUES ('b8b975c1-d92a-2d26-8e4f-8ef5c0b2b17c', '7c364133-e27a-447e-9cae-883344c2563b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Sốt phô mai béo ngậy, hòa quyện với topping rất hợp.', NULL, '2017-02-05 09:51:07');
INSERT INTO `comments` VALUES ('b9377a33-e32d-9851-5656-8a4de736cd05', '9f7b842e-41dc-4afa-ac61-05a2d81989d9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Lần sau sẽ thử thêm món khác vì ấn tượng quá tốt.', NULL, '2019-11-24 08:28:56');
INSERT INTO `comments` VALUES ('ba714a01-1a5d-b565-77df-1e24a6fc148c', '5d64a036-c88b-482a-9ac1-c93451fc3503', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Cơm dẻo, topping nhiều, ăn xong rất no luôn.', NULL, '2014-11-17 06:46:47');
INSERT INTO `comments` VALUES ('baf4b767-96a0-b5a1-95f3-01b3ab5da41e', 'e9abdb59-ce77-4552-ac73-acb994d9180c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2008-01-15 13:20:23');
INSERT INTO `comments` VALUES ('bbc2dca0-fc92-b26a-9e6f-28b0bf6e7f94', '0ebc0608-2f64-4a16-9746-095de98298b4', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Thịt nướng thơm lừng, không bị khô, ăn cực đã.', NULL, '2008-09-29 23:39:22');
INSERT INTO `comments` VALUES ('bc4d9c27-63f0-8b84-0371-4be8dfe7891a', '5d64a036-c88b-482a-9ac1-c93451fc3503', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 5, 'Lần sau sẽ thử thêm món khác vì ấn tượng quá tốt.', NULL, '2020-10-10 14:36:00');
INSERT INTO `comments` VALUES ('bdd465f6-7fd4-13d6-c471-bfac6492284f', '7024e436-0219-4235-883f-87a6ff9cb32b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Cơm hơi khô một chút nhưng đồ ăn kèm ngon tuyệt.', NULL, '2004-05-21 11:24:39');
INSERT INTO `comments` VALUES ('bf20a485-dd80-1336-454c-1ff32deb848d', 'cd071d43-7ea1-480f-8aa1-3590dac1f749', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2000-04-18 22:03:56');
INSERT INTO `comments` VALUES ('c2f8ec89-53d7-e74f-f731-fb4460e4b582', '71134976-c442-47ab-afff-602158571454', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2000-09-09 02:29:40');
INSERT INTO `comments` VALUES ('c31c557a-3b9b-8bfb-57d6-c583391206c2', '73501faa-1be6-4925-99d3-2e1034420e27', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Mình đặt lần đầu mà mê luôn, chắc chắn sẽ đặt lại.', NULL, '2012-02-04 22:50:37');
INSERT INTO `comments` VALUES ('c43b00a8-b880-4a64-8abb-d03b240ff565', '8dbe899f-3798-44fe-8559-74098942c067', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Đồ ăn ngon, nhân viên thân thiện, phục vụ nhanh.', NULL, '2022-01-20 07:51:49');
INSERT INTO `comments` VALUES ('c84ee84a-adf9-dc10-369f-d1f84407704e', 'e73824fd-951a-4b35-b397-a1eb69c74514', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2012-06-25 10:14:01');
INSERT INTO `comments` VALUES ('c8d14a62-66e5-6c04-911c-303a09006ba5', 'd5f903d4-ca25-49db-b7c6-245e451a98ed', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Lần đầu thử món này, khá bất ngờ vì ngon ngoài mong đợi.', NULL, '2023-05-18 14:27:30');
INSERT INTO `comments` VALUES ('c9849d0d-3238-3e51-2fc5-47f6e11fb23b', '8dbe899f-3798-44fe-8559-74098942c067', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2005-09-19 13:48:26');
INSERT INTO `comments` VALUES ('cad0f5c8-a250-01b2-319b-96dfb584e29d', 'd88662d9-05a0-4a8a-b33e-86e0fa7bde45', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Hộp cơm được chia phần hợp lý, nhìn là thấy hấp dẫn.', NULL, '2013-05-28 08:34:53');
INSERT INTO `comments` VALUES ('cdb32ba2-4558-34fc-078a-0a750152583c', 'e8abbed1-9aea-43c4-9de2-307606bf00b7', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Hơi cay hơn mình tưởng, nhưng rất ngon, hợp với người thích vị đậm.', NULL, '2005-06-19 17:29:05');
INSERT INTO `comments` VALUES ('ce8ff709-e689-6328-8217-4334657ce0cc', '7d6252eb-c6f9-4578-9304-a5337a1c631b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2005-10-30 13:28:11');
INSERT INTO `comments` VALUES ('d096e9ae-4d6e-7253-da94-e4b83ca3d361', '6128e7f9-457f-405b-bbc8-792e0683e59b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Đặt nhiều lần rồi, lần nào cũng giữ phong độ như cũ.', NULL, '2002-12-05 10:49:34');
INSERT INTO `comments` VALUES ('d0cc538a-b45e-d354-90b4-7e1dabfe34b3', 'cd071d43-7ea1-480f-8aa1-3590dac1f749', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2022-10-13 08:22:40');
INSERT INTO `comments` VALUES ('d0da551b-4d19-6a82-0f13-7f5b41b30a82', '411326c0-7132-4f34-9f87-bb32a3a31932', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món ăn nhìn đơn giản nhưng hương vị rất tinh tế.', NULL, '2006-09-10 00:17:15');
INSERT INTO `comments` VALUES ('d1a1ca92-3ac8-5f02-ddcb-5d23aef40c09', 'e9abdb59-ce77-4552-ac73-acb994d9180c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Sốt phô mai béo ngậy, hòa quyện với topping rất hợp.', NULL, '2015-05-26 19:09:42');
INSERT INTO `comments` VALUES ('d1d91226-99bf-453c-1025-4d1fd409ed64', '1a071ddf-615c-4301-bad6-4b6e9afbe115', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Món chiên giòn rụm, không bị dầu mỡ, rất vừa miệng.', NULL, '2017-03-23 06:59:23');
INSERT INTO `comments` VALUES ('d1ffceee-b8b6-aa52-1033-73a4c9c48ff2', 'a2d429a3-fe95-4c25-be6c-adfc7e9e30c6', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2024-07-09 00:37:35');
INSERT INTO `comments` VALUES ('d2324609-71b9-b002-28af-1976d5c722c5', '81649444-d186-43c1-84e9-ea184f8f44aa', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2012-09-12 07:52:03');
INSERT INTO `comments` VALUES ('d298880f-b6ef-d7c7-07a6-b3173da7972f', '416513f5-7e44-4421-9482-bb1884d1d812', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Hộp được dán nhãn rõ ràng, dễ nhận biết món ăn.', NULL, '2022-06-03 22:53:42');
INSERT INTO `comments` VALUES ('d46a27e6-2678-0a2f-6ae7-bf4df87ba5d1', '7c364133-e27a-447e-9cae-883344c2563b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Đồ ăn ngon, nhân viên thân thiện, phục vụ nhanh.', NULL, '2014-01-15 15:15:20');
INSERT INTO `comments` VALUES ('d729b3fd-c58e-c89f-f2d0-f458f3f05f3c', '61c68423-f74e-49da-b6cd-f3c5f7b6c50b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Mình đặt lần đầu mà mê luôn, chắc chắn sẽ đặt lại.', NULL, '2018-11-01 12:13:55');
INSERT INTO `comments` VALUES ('d7e8bd97-349c-b069-0e70-ed47c6b8973b', '9c7ab691-5e8b-4c98-8681-52f97dad57a8', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Quán làm nhanh, gói kỹ, giao hàng vẫn còn nóng.', NULL, '2025-07-16 04:38:53');
INSERT INTO `comments` VALUES ('d8056e46-2fae-b1c2-4ea6-4fbb61201ff0', 'd7c37a17-b8cf-4e0d-9964-427772abf428', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Ăn một lần là ghiền, vị vừa miệng và rất thơm.', NULL, '2012-03-17 16:30:54');
INSERT INTO `comments` VALUES ('d8d84f3e-e873-732a-b510-e68ec1791b4f', 'e106e63f-9243-4367-8414-d2e0d4c7c61e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Khẩu phần lớn hơn mong đợi, ăn hai người vẫn đủ.', NULL, '2000-09-25 17:56:11');
INSERT INTO `comments` VALUES ('d97b6205-ec8e-57bb-d80d-dc245d802314', 'ce175d34-26b6-49cf-8322-f0491b7f65ce', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Sốt phô mai béo ngậy, hòa quyện với topping rất hợp.', NULL, '2018-03-06 23:22:22');
INSERT INTO `comments` VALUES ('d9d9804c-b2cd-edb2-5d0c-7f2c0c7fb1ea', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Đồ ăn hợp khẩu vị gia đình mình, ai cũng khen ngon.', NULL, '2000-07-30 17:05:09');
INSERT INTO `comments` VALUES ('dd69c2b6-4ec4-7a3a-8632-b4ae213b1c93', '416513f5-7e44-4421-9482-bb1884d1d812', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Đồ ăn tươi, trình bày gọn gàng, rất chuyên nghiệp.', NULL, '2006-10-07 23:46:52');
INSERT INTO `comments` VALUES ('de1f6afc-ad4d-9909-d316-8ad02ded5363', '987ab72f-c0a0-4bf4-a3db-69a148022fdf', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Mùi vị đậm đà, ăn kèm cơm nóng thì ngon tuyệt.', NULL, '2010-09-06 09:23:22');
INSERT INTO `comments` VALUES ('dfe9f03d-8dd5-aafd-af14-eb2d4207aca1', 'c997d541-d9c7-4946-a88f-5c1eb78d396b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Khẩu phần lớn hơn mong đợi, ăn hai người vẫn đủ.', NULL, '2024-12-06 01:41:54');
INSERT INTO `comments` VALUES ('e060ee8f-74ef-d9a6-0d83-1f0ccf9ce768', 'c0c7346d-4e62-4f01-b896-c369569c3eb1', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2023-05-02 00:14:08');
INSERT INTO `comments` VALUES ('e4adecd6-a361-a87b-240f-078dd1228385', '6852a714-543d-4c1b-96df-5ed96f9c94e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Giá hơi cao nhưng chất lượng thì quá xứng đáng.', NULL, '2008-02-06 15:43:36');
INSERT INTO `comments` VALUES ('e550d1c0-7d27-4205-ff33-2268eecb2d2b', 'e8abbed1-9aea-43c4-9de2-307606bf00b7', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Hương vị rất truyền thống, giống như món mẹ nấu.', NULL, '2004-02-25 04:55:15');
INSERT INTO `comments` VALUES ('e81a82c0-a6ce-5b29-818b-025aa011d26f', '9f7b842e-41dc-4afa-ac61-05a2d81989d9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Đồ ăn đến nhanh, còn nóng và không bị đổ.', NULL, '2008-02-27 07:43:11');
INSERT INTO `comments` VALUES ('e824689d-2a7c-615c-ea1f-b44102745282', 'c0c7346d-4e62-4f01-b896-c369569c3eb1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2019-05-15 04:19:47');
INSERT INTO `comments` VALUES ('e8c2f46f-3099-6fac-f863-3e89017f9481', '1a071ddf-615c-4301-bad6-4b6e9afbe115', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 4, 'Hơi cay hơn mình tưởng, nhưng rất ngon, hợp với người thích vị đậm.', NULL, '2017-11-05 18:01:54');
INSERT INTO `comments` VALUES ('eab02bf1-f5bc-37ef-8ebf-df34fcc90f24', '6200862a-18f7-44b5-83e2-5f32ecabdc07', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Đồ ăn tươi, trình bày gọn gàng, rất chuyên nghiệp.', NULL, '2010-04-19 08:47:16');
INSERT INTO `comments` VALUES ('ec065520-421c-c777-52ea-3fe482b375f1', '10893169-adfe-49e9-9e5e-9a2314d6bbd7', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Phần ăn ngon, vừa miệng, nêm nếm đậm đà. Sẽ quay lại lần nữa!', NULL, '2016-08-24 04:30:31');
INSERT INTO `comments` VALUES ('edcafd38-fd00-0973-570a-7ee7fe1c0481', 'e73824fd-951a-4b35-b397-a1eb69c74514', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Giao hàng nhanh, đồ ăn vẫn còn nóng hổi, rất hài lòng.', NULL, '2010-11-10 04:26:40');
INSERT INTO `comments` VALUES ('efdf0414-9f8f-c29e-de8e-31b9b6948e26', 'e423a0fb-f86d-4f53-b7cd-7a06e1e59f0c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2003-03-05 21:24:13');
INSERT INTO `comments` VALUES ('f18d3c74-545e-3759-296e-93f448c42785', '0a072243-704d-4389-bd5f-c97f7ceffec5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 1, 'Cơm hơi khô một chút nhưng đồ ăn kèm ngon tuyệt.', NULL, '2019-09-05 22:40:39');
INSERT INTO `comments` VALUES ('f411019a-62f8-162d-1bac-fbd83a01eb05', '2777979f-a126-4f01-b768-0c0c85402f11', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 1, 'Tuy quán đông nhưng vẫn phục vụ nhanh, đồ ăn chất lượng.', NULL, '2009-03-13 02:38:00');
INSERT INTO `comments` VALUES ('f4cf1ea5-c0de-96ee-546e-8d8cd56902b1', 'c997d541-d9c7-4946-a88f-5c1eb78d396b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 2, 'Món này hơi mặn một chút nhưng tổng thể vẫn ngon.', NULL, '2024-04-15 08:50:29');
INSERT INTO `comments` VALUES ('f77ce01d-1f6d-c015-69b3-b924e67aa272', '604b962a-8453-45b6-a4ff-9d3dfd841a33', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 5, 'Giá hợp lý, chất lượng vượt mong đợi.', NULL, '2005-03-17 21:03:35');
INSERT INTO `comments` VALUES ('f8087c7f-2ca1-744e-dab5-19f06b8573c9', 'e423a0fb-f86d-4f53-b7cd-7a06e1e59f0c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Món ăn ngon, nhưng phần ăn hơi nhỏ so với giá.', NULL, '2014-10-17 07:55:45');
INSERT INTO `comments` VALUES ('fa358dd4-ba59-e7a7-0342-4957508e93a3', 'bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 3, 'Món này mà thêm chút rau sống nữa thì hoàn hảo.', NULL, '2018-02-11 23:50:11');
INSERT INTO `comments` VALUES ('fa8ad310-806f-052c-8a11-d6f2d69548cb', 'ee0e8afe-94b7-4153-8d51-2c6523ad05e2', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 4, 'Hương thơm hấp dẫn, ăn là thấy đói liền.', NULL, '2011-02-04 00:36:31');
INSERT INTO `comments` VALUES ('fab690c6-10d4-ec4f-1e49-80294891c9e6', '6852a714-543d-4c1b-96df-5ed96f9c94e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 3, 'Phần ăn cân đối, không bị ngấy, rất hài lòng.', NULL, '2023-08-19 13:42:48');
INSERT INTO `comments` VALUES ('fc0d282a-9973-eba7-a332-c96ee049fd50', '649bfb5f-0741-4211-936a-f0375442926e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 2, 'Đặt nhiều lần rồi, lần nào cũng giữ phong độ như cũ.', NULL, '2022-02-03 11:29:02');

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `restaurant_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_wishlists_users`(`user_id` ASC) USING BTREE,
  INDEX `fk_favorites_restaurants`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `fk_favorites_restaurants` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_favorites_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES ('568ff8b7-b4e5-42f4-a820-e244c2648a8a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', '2025-10-17 14:46:53', '2025-10-17 14:46:53');
INSERT INTO `favorites` VALUES ('8fa2e2aa-2bae-42a7-8767-8c38af41cefa', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', '2025-10-17 14:20:47', '2025-10-17 14:20:47');
INSERT INTO `favorites` VALUES ('e76b24c6-2c5a-4afd-a467-ce438b928d47', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', '2025-10-17 14:20:38', '2025-10-17 14:20:38');

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
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('32d1f8be-73e9-4539-ae91-3439bf7679e4', '9b15a51a-dbea-40bb-bbaf-7279de87db3f', 2, 15000, 30000, '2025-10-17 16:00:34');
INSERT INTO `order_items` VALUES ('3f3d6b9e-952a-4a5d-b9f2-500d9bb6380b', '065ad2ab-12ab-4819-bceb-8a453bfd847b', 1, 45000, 45000, '2025-10-17 15:26:00');
INSERT INTO `order_items` VALUES ('3f3d6b9e-952a-4a5d-b9f2-500d9bb6380b', '416513f5-7e44-4421-9482-bb1884d1d812', 1, 55000, 55000, '2025-10-17 15:26:00');
INSERT INTO `order_items` VALUES ('3f3d6b9e-952a-4a5d-b9f2-500d9bb6380b', '77c25481-6886-4b80-9156-7992692952bf', 1, 60000, 60000, '2025-10-17 15:26:00');
INSERT INTO `order_items` VALUES ('745d282f-7c86-4220-8574-846783437a90', '0ec5769f-1d1e-4e7d-85b1-1066d44130ec', 1, 180000, 180000, '2025-10-17 16:06:40');
INSERT INTO `order_items` VALUES ('83ddffc3-91c2-4ac4-8209-4494ebe8a843', '54ac77b0-17ad-4f53-a1e9-fbd9460d0908', 1, 250000, 250000, '2025-10-18 16:22:36');
INSERT INTO `order_items` VALUES ('83ddffc3-91c2-4ac4-8209-4494ebe8a843', 'd2108ab6-e300-4d3b-91b1-b53a564b53e4', 1, 220000, 220000, '2025-10-18 16:22:36');
INSERT INTO `order_items` VALUES ('a04a00b0-948e-4d22-87df-b9049e756f95', '7c364133-e27a-447e-9cae-883344c2563b', 1, 45000, 45000, '2025-10-22 02:13:32');
INSERT INTO `order_items` VALUES ('a09577cc-3526-484e-925e-d083afa29446', 'cc1d7473-cc95-40fc-abf3-500c6b4403d8', 1, 30000, 30000, '2025-10-17 16:11:56');
INSERT INTO `order_items` VALUES ('d863ab29-c6c4-45d0-927b-12fefa781486', '29933f97-c512-4f2b-8cad-d17976695713', 1, 40000, 40000, '2025-10-17 16:04:56');
INSERT INTO `order_items` VALUES ('e8543b76-12a7-4c16-b922-9cb29d94f733', 'ed018c14-6d3e-4ff2-babb-2f7b3f0dc7e5', 1, 60000, 60000, '2025-10-17 16:13:40');
INSERT INTO `order_items` VALUES ('e981e98b-1f3d-42de-8fb7-f1918a08104e', '28db70ac-2e36-4049-9ffd-dd0fed7c589c', 1, 45000, 45000, '2025-10-22 03:57:38');
INSERT INTO `order_items` VALUES ('e981e98b-1f3d-42de-8fb7-f1918a08104e', '931b137b-1f66-49a2-80c6-7147cc5f976a', 1, 45000, 45000, '2025-10-22 03:57:38');
INSERT INTO `order_items` VALUES ('f5c1698f-7b6e-402b-a680-2f47a7eb2c3a', '10893169-adfe-49e9-9e5e-9a2314d6bbd7', 1, 120000, 120000, '2025-10-17 16:03:31');
INSERT INTO `order_items` VALUES ('fbdb9c94-35b1-4baf-867e-f88e84cecae7', '0cd2e975-ed9a-479b-86fb-8a6164b418c8', 1, 35000, 35000, '2025-10-21 13:11:58');
INSERT INTO `order_items` VALUES ('fbdb9c94-35b1-4baf-867e-f88e84cecae7', '2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', 1, 45000, 45000, '2025-10-21 13:11:58');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total` int NULL DEFAULT NULL,
  `status` enum('shipping','delivered','canceled') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'shipping',
  `payment_method` enum('cod','vnpay') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'cod',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_orders_users`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('32d1f8be-73e9-4539-ae91-3439bf7679e4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 30000, 'delivered', 'cod', '', '2025-10-17 16:00:34', '2025-10-18 22:00:44');
INSERT INTO `orders` VALUES ('3f3d6b9e-952a-4a5d-b9f2-500d9bb6380b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 160000, 'canceled', 'cod', 'test1', '2025-10-17 15:26:00', '2025-10-18 22:14:05');
INSERT INTO `orders` VALUES ('745d282f-7c86-4220-8574-846783437a90', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 180000, 'shipping', 'cod', '', '2025-10-17 16:06:40', '2025-10-17 16:06:40');
INSERT INTO `orders` VALUES ('83ddffc3-91c2-4ac4-8209-4494ebe8a843', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 470000, 'shipping', 'cod', '', '2025-10-18 16:22:36', '2025-10-18 16:22:36');
INSERT INTO `orders` VALUES ('a04a00b0-948e-4d22-87df-b9049e756f95', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 45000, 'shipping', 'cod', '', '2025-10-22 02:13:32', '2025-10-22 02:13:32');
INSERT INTO `orders` VALUES ('a09577cc-3526-484e-925e-d083afa29446', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 30000, 'shipping', 'cod', '', '2025-10-17 16:11:56', '2025-10-17 16:11:56');
INSERT INTO `orders` VALUES ('d863ab29-c6c4-45d0-927b-12fefa781486', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 40000, 'shipping', 'cod', '', '2025-10-17 16:04:56', '2025-10-17 16:04:56');
INSERT INTO `orders` VALUES ('e8543b76-12a7-4c16-b922-9cb29d94f733', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 60000, 'shipping', 'cod', '', '2025-10-17 16:13:40', '2025-10-17 16:13:40');
INSERT INTO `orders` VALUES ('e981e98b-1f3d-42de-8fb7-f1918a08104e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 90000, 'delivered', 'cod', '', '2025-10-22 03:57:38', '2025-10-22 10:58:37');
INSERT INTO `orders` VALUES ('f5c1698f-7b6e-402b-a680-2f47a7eb2c3a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 120000, 'shipping', 'cod', '', '2025-10-17 16:03:31', '2025-10-17 16:03:31');
INSERT INTO `orders` VALUES ('fbdb9c94-35b1-4baf-867e-f88e84cecae7', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 80000, 'delivered', 'cod', '', '2025-10-21 13:11:58', '2025-10-21 20:14:33');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `restaurant_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ingredients` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  `sale_price` decimal(10, 0) NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discount_start` date NULL DEFAULT NULL,
  `discount_end` date NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `c`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `c` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('065ad2ab-12ab-4819-bceb-8a453bfd847b', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở cuốn bò', 'Món phở cuốn truyền thống với thịt bò xào thơm lừng.', 'Bánh phở, thịt bò, rau sống, bún, nước chấm chua ngọt.', 45000, 40000, 'ba96ed45.png', NULL, NULL, '2025-10-01 21:20:03', '2025-10-17 16:36:58');
INSERT INTO `products` VALUES ('0a072243-704d-4389-bd5f-c97f7ceffec5', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì bơ tỏi', 'Bánh mì nướng giòn rụm cùng bơ và tỏi phi thơm lừng.', 'Bánh mì, bơ lạt, tỏi, rau mùi tây.', 25000, 20000, '11c7bc63.png', NULL, NULL, '2025-10-01 21:53:08', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('0ad59a81-de78-4632-92d3-982b054b2bc9', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Mochi Trà Xanh', 'Bánh mochi dẻo thơm với nhân kem trà xanh mát lạnh.', 'Bột nếp, đường, trà xanh, kem tươi.', 30000, 25000, 'dd47e971.png', NULL, NULL, '2025-10-01 21:55:26', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('0cd2e975-ed9a-479b-86fb-8a6164b418c8', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Nước Ép Cam Tươi', 'Cam tươi nguyên chất, giàu vitamin C.', 'Cam tươi, đá viên.', 35000, 30000, '0b4d0ce2.png', NULL, NULL, '2025-10-01 22:00:14', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('0e70422a-c631-4714-b6d1-752c5b27b958', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Lẩu Thái Tom Yum', 'Lẩu Thái chua cay chuẩn vị, đầy đủ hải sản và rau.', 'Nước dùng lẩu Thái, tôm, mực, nấm, rau.', 280000, 275000, '2cd30905.png', NULL, NULL, '2025-10-01 21:59:02', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('0ebc0608-2f64-4a16-9746-095de98298b4', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì trứng phô mai', 'Bánh mì kẹp trứng chiên và phô mai tan chảy.', 'Bánh mì, trứng gà, phô mai lát, sốt.', 35000, 30000, 'e951f4e2.png', NULL, NULL, '2025-10-01 21:53:26', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('0ec5769f-1d1e-4e7d-85b1-1066d44130ec', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Lẩu Nấm Chay', 'Lẩu thanh đạm với các loại nấm tươi ngon.', 'Nước dùng chay, các loại nấm, đậu hũ, rau củ.', 180000, 175000, '497df6e5.png', NULL, NULL, '2025-10-01 21:58:52', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('10893169-adfe-49e9-9e5e-9a2314d6bbd7', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Thịt Ba Chỉ Cuộn Nấm', 'Thịt ba chỉ cuộn nấm kim châm nướng mỡ hành.', 'Thịt ba chỉ, nấm kim châm, hành lá, gia vị.', 120000, 115000, 'bd2931ab.png', '2025-10-01', '2025-10-31', '2025-10-01 21:59:06', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('173ed4db-b5b3-4bb3-bf25-8a1707927024', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Tiramisu', 'Bánh Tiramisu Ý cổ điển, vị cà phê và kem mascarpone.', 'Bánh ladyfinger, cà phê, rượu rum, kem mascarpone.', 65000, 60000, 'd607ca4f.png', NULL, NULL, '2025-10-01 21:56:06', '2025-10-17 10:28:56');
INSERT INTO `products` VALUES ('17f638d3-489e-414c-9dfe-ce35831d7e95', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Red Velvet', 'Bánh Red Velvet với lớp kem phô mai béo ngậy.', 'Bột mì, cacao, bơ, kem phô mai.', 55000, 50000, 'd35e43b0.png', NULL, NULL, '2025-10-01 21:55:30', '2025-10-17 10:28:59');
INSERT INTO `products` VALUES ('1a071ddf-615c-4301-bad6-4b6e9afbe115', '66e52cd0-3867-418e-b111-dc1162c772de', 'Cà phê trứng', 'Cà phê được đánh cùng lòng đỏ trứng, béo và thơm.', 'Cà phê đen, trứng gà, đường.', 40000, 35000, '6e38bce6.png', NULL, NULL, '2025-10-01 21:54:31', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('22f5d895-f5c3-41d5-9d5f-70f698c1722d', '66e52cd0-3867-418e-b111-dc1162c772de', 'Cà phê muối', 'Sự kết hợp độc đáo giữa cà phê đậm đà và vị muối mặn nhẹ.', 'Cà phê, sữa đặc, kem muối.', 35000, 30000, 'c538b2ca.png', NULL, NULL, '2025-10-01 21:54:13', '2025-10-17 10:29:08');
INSERT INTO `products` VALUES ('2777979f-a126-4f01-b768-0c0c85402f11', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Pizza Hải Sản Thập Cẩm', 'Pizza với tôm, mực, và phô mai mozzarella hảo hạng.', 'Bột mì, sốt cà chua, phô mai, tôm, mực, ớt chuông.', 180000, 175000, '45c99b1e.png', NULL, NULL, '2025-10-01 22:01:04', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('27e01867-c975-4730-af77-8e523a367b5e', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì thập cẩm đặc biệt', 'Bánh mì đầy đủ chả lụa, thịt nguội, pate.', 'Bánh mì, chả lụa, thịt nguội, pate, dưa leo, ngò rí.', 50000, 45000, 'f649c9f0.png', '2025-10-01', '2025-10-15', '2025-10-01 21:52:52', '2025-10-01 23:13:17');
INSERT INTO `products` VALUES ('28db70ac-2e36-4049-9ffd-dd0fed7c589c', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Trà Dâu Tằm', 'Trà dâu tằm tươi, thơm mát, giải nhiệt.', 'Trà, dâu tằm, đường, đá.', 45000, 40000, '8e3af860.png', NULL, NULL, '2025-10-01 21:09:31', '2025-10-17 10:29:18');
INSERT INTO `products` VALUES ('29933f97-c512-4f2b-8cad-d17976695713', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Hồng Trà Sữa', 'Hồng trà đậm vị kết hợp với sữa béo ngậy.', 'Hồng trà, sữa, trân châu.', 40000, 35000, '0477d669.png', NULL, NULL, '2025-10-01 21:09:39', '2025-10-17 10:29:20');
INSERT INTO `products` VALUES ('2c5d5708-59a0-4d6f-a3ea-d21aaec68d21', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Trà Đào Cam Sả', 'Thức uống chua ngọt, thơm mùi sả và cam.', 'Trà, đào miếng, cam, sả, mật ong.', 45000, 40000, '100a389d.png', '2025-10-01', '2025-10-10', '2025-10-01 21:59:44', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('321a3b2b-a4b9-4858-93ce-b2e5f31eef60', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sủi Cảo Hấp', 'Sủi cảo nhân thịt tôm hấp chín mềm, ngọt nước.', 'Bột mì, thịt heo xay, tôm, hẹ, gia vị.', 65000, 60000, 'ab458105.png', NULL, NULL, '2025-10-01 21:37:08', '2025-10-17 10:29:25');
INSERT INTO `products` VALUES ('38cd83b2-183d-41a6-af91-7b2b0c18d69b', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì pate trứng', 'Bánh mì nóng giòn với pate gan và trứng chiên.', 'Bánh mì, pate, trứng gà, dưa leo, ngò rí.', 40000, 35000, 'd400e6dc.png', NULL, NULL, '2025-10-01 21:53:12', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('3e5f4078-fc52-42d8-a416-c6cde9176cfd', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà sữa Ô Long', 'Trà sữa đậm vị Ô Long thơm nồng, ít ngọt.', 'Trà Ô Long, sữa, đường đen.', 45000, 40000, 'cbb9c232.png', NULL, NULL, '2025-10-01 21:54:17', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('411326c0-7132-4f34-9f87-bb32a3a31932', '66e52cd0-3867-418e-b111-dc1162c772de', 'Cà phê đen đá', 'Cà phê đen truyền thống, đậm đà và mát lạnh.', 'Cà phê, đường, đá.', 25000, 20000, '4329eb66.png', NULL, NULL, '2025-10-01 21:54:28', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('416513f5-7e44-4421-9482-bb1884d1d812', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở chiên giòn', 'Phở chiên giòn tan, ăn kèm thịt bò sốt chua ngọt.', 'Bánh phở, thịt bò, rau cải, nước sốt.', 55000, 50000, 'bd5e3ca9.png', NULL, NULL, '2025-10-01 21:20:37', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('45c4ab68-8ecf-4962-936e-132c2ac50b63', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà sữa socola', 'Trà sữa vị socola ngọt ngào, thơm béo.', 'Trà đen, sữa, bột socola, đường.', 45000, 40000, '6eff68c9.png', NULL, NULL, '2025-10-01 21:54:38', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('54ac77b0-17ad-4f53-a1e9-fbd9460d0908', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Lẩu Ếch Măng Cay', 'Món lẩu ếch với măng tươi và vị cay đặc trưng.', 'Thịt ếch, măng, ớt, lá lốt, nước dùng.', 250000, 245000, 'e762010d.png', '2025-10-10', '2025-10-31', '2025-10-01 21:58:48', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('5d64a036-c88b-482a-9ac1-c93451fc3503', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Pizza Gà Nấm', 'Pizza với lớp topping gà xé và nấm hương.', 'Bột mì, sốt kem, phô mai, thịt gà, nấm.', 170000, 165000, '90798de6.png', NULL, NULL, '2025-10-01 22:01:11', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('604b962a-8453-45b6-a4ff-9d3dfd841a33', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Mỳ Ý Sốt Kem Nấm', 'Mỳ Ý dai ngon với sốt kem nấm béo ngậy.', 'Mỳ Ý, kem tươi, nấm, thịt xông khói.', 110000, 105000, 'aa29275b.png', NULL, NULL, '2025-10-01 22:01:36', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('6128e7f9-457f-405b-bbc8-792e0683e59b', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà sữa truyền thống', 'Vị trà sữa nguyên bản, dễ uống, khó quên.', 'Trà đen, sữa đặc, đường, trân châu.', 30000, 25000, 'ccba08c8.png', NULL, NULL, '2025-10-01 21:54:05', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('61c68423-f74e-49da-b6cd-f3c5f7b6c50b', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Trà Vải Lục Trà', 'Trà lục trà thơm nhẹ, kết hợp với vải tươi mọng nước.', 'Lục trà, vải tươi, đường, đá.', 50000, 45000, 'c97e6eec.png', NULL, NULL, '2025-10-01 21:59:40', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('6200862a-18f7-44b5-83e2-5f32ecabdc07', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Trà Dâu Tằm Big size', 'Trà dâu tằm tươi size lớn, sảng khoái tối đa.', 'Trà, dâu tằm, đường, đá (Big size).', 55000, 50000, '07e37587.png', NULL, NULL, '2025-10-01 21:09:19', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('649bfb5f-0741-4211-936a-f0375442926e', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Nước Chanh Tuyết', 'Chanh tươi xay đá, ngọt nhẹ và mát lạnh.', 'Chanh tươi, đường, đá bào.', 30000, 25000, 'f1d65dbc.png', NULL, NULL, '2025-10-01 21:59:51', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('6852a714-543d-4c1b-96df-5ed96f9c94e4', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Phô Mai Nướng', 'Bánh phô mai nướng thơm béo, tan chảy trong miệng.', 'Phô mai kem, trứng, đường, đế bánh quy.', 60000, 55000, 'b04db6d3.png', NULL, NULL, '2025-10-01 21:56:02', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('6fd73884-dcf3-4fb3-b3d1-336b8c79b272', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Bánh Bao Hấp', 'Bánh bao nhân thịt, trứng cút hấp nóng hổi.', 'Bột mì, thịt heo xay, trứng cút, nấm mèo.', 20000, 15000, '44419d94.png', NULL, NULL, '2025-10-01 21:37:03', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('7024e436-0219-4235-883f-87a6ff9cb32b', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Sữa kem lắc Dâu Tằm', 'Sữa kem béo ngậy lắc cùng dâu tằm chua ngọt.', 'Sữa tươi, kem béo, dâu tằm, đá.', 50000, 45000, 'ee4e5147.png', NULL, NULL, '2025-10-01 21:09:06', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('71134976-c442-47ab-afff-602158571454', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà chanh tươi', 'Trà chanh truyền thống, vị chua ngọt hài hòa.', 'Trà đen, chanh tươi, đường, đá.', 25000, 20000, '0fe8db1a.png', NULL, NULL, '2025-10-01 21:54:24', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('73501faa-1be6-4925-99d3-2e1034420e27', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sủi Cảo Canh', 'Sủi cảo luộc ăn kèm nước dùng xương hầm thơm ngon.', 'Sủi cảo, nước hầm xương, rau cải, hành.', 70000, 65000, '36d99349.png', NULL, NULL, '2025-10-01 21:36:22', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('73b36a1e-694a-410d-9a91-d34610d6403a', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Sinh Tố Dâu', 'Sinh tố dâu tươi mát lạnh, thơm ngon.', 'Dâu tây, sữa tươi, đá bào, đường.', 55000, 50000, 'af2490cc.png', NULL, NULL, '2025-10-01 21:59:48', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('74074c28-5455-495c-9d67-e6a8873021a7', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Mỳ Ý Sốt Cà Chua Thịt Bò', 'Mỳ Ý cổ điển với sốt cà chua đậm đà và thịt bò băm.', 'Mỳ Ý, sốt cà chua, thịt bò băm, hành tây.', 100000, 95000, '20a82db8.png', NULL, NULL, '2025-10-01 22:01:26', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('77c25481-6886-4b80-9156-7992692952bf', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Mỳ xào bò', 'Mỳ trứng xào cùng thịt bò, rau cải và nước sốt đặc biệt.', 'Mỳ trứng, thịt bò, rau cải, cà rốt, gia vị.', 60000, 55000, '01325779.png', NULL, NULL, '2025-10-01 21:21:01', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('7c071d7e-5b0b-4135-93b5-cb2d03d10530', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Socola Lava', 'Bánh socola nóng chảy, ăn kèm kem vani.', 'Socola đen, bơ, trứng, bột mì, kem vani.', 70000, 65000, '0cccba80.png', NULL, NULL, '2025-10-01 21:56:09', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('7c364133-e27a-447e-9cae-883344c2563b', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Trà Kim Quất Nha Đam', 'Trà tươi kết hợp kim quất và nha đam giòn sần sật.', 'Trà, kim quất, nha đam, mật ong, đá.', 45000, 40000, '38a29dfe.png', NULL, NULL, '2025-10-01 21:59:55', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('7c59e56f-aeed-44e3-84af-3164a80bd78a', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Flan Caramen', 'Bánh flan mềm mịn, thơm mùi trứng sữa, sốt caramen.', 'Trứng gà, sữa tươi, đường caramen.', 25000, 20000, '8242ad0e.png', NULL, NULL, '2025-10-01 21:55:58', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('7c7c6626-5dbf-4d83-8754-3ffd7c14dc14', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở cuốn trứng', 'Phở cuốn thanh mát, nhân trứng chiên và rau thơm.', 'Bánh phở, trứng chiên, rau sống, bún, nước chấm.', 40000, 35000, 'a1d4e3ca.png', NULL, NULL, '2025-10-01 21:20:16', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('7d6252eb-c6f9-4578-9304-a5337a1c631b', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà sữa Matcha', 'Trà sữa vị Matcha Nhật Bản, béo nhẹ và thanh.', 'Trà Matcha, sữa tươi, đường, trân châu.', 50000, 45000, 'c6b0bf4e.png', NULL, NULL, '2025-10-01 21:54:46', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('805cdcdb-2c4a-45cd-bd07-c72aa4b98f1b', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở xào bò', 'Phở xào lửa lớn, thịt bò mềm và rau cải giòn.', 'Bánh phở, thịt bò, rau cải, nước tương.', 65000, 60000, '8fc8e547.png', NULL, NULL, '2025-10-01 21:20:57', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('81649444-d186-43c1-84e9-ea184f8f44aa', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Pizza Hawaii', 'Pizza với dứa, thịt nguội và sốt cà chua.', 'Bột mì, sốt cà chua, phô mai, thịt nguội, dứa.', 160000, 155000, '3fa0a641.png', NULL, NULL, '2025-10-01 22:01:00', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('8dbe899f-3798-44fe-8559-74098942c067', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Sundae Matcha Dâu Tằm', 'Kem Sundae mát lạnh, vị trà xanh và dâu tằm.', 'Kem vani, sốt matcha, dâu tằm tươi.', 55000, 50000, '7fda3f12.png', NULL, NULL, '2025-10-01 21:10:10', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('8e1f85a3-a918-4174-8fb4-35f57f516e6c', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Brownie Socola', 'Bánh brownie đậm đà vị socola, ẩm và mềm.', 'Bột mì, bơ, trứng, socola đen, đường.', 45000, 40000, '2f95d4fd.png', NULL, NULL, '2025-10-01 21:55:33', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('8e820694-f6fb-4380-bfe5-5dc91d2e908a', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Lẩu Cháo Cá Chép', 'Lẩu cháo cá chép nấu cùng nấm và đậu xanh.', 'Cá chép, gạo nếp, gạo tẻ, nấm hương, đậu xanh.', 190000, 185000, 'a198caf1.png', NULL, NULL, '2025-10-01 21:59:09', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('931b137b-1f66-49a2-80c6-7147cc5f976a', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Trà sữa trân châu đường đen', 'Trà sữa truyền thống với trân châu đường đen dẻo dai.', 'Trà, sữa, trân châu, đường đen.', 45000, 40000, '269c7954.png', NULL, NULL, '2025-10-01 21:10:04', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('955ca580-99ad-4172-a04a-705c07081dd5', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Cà Phê Sữa Đá', 'Cà phê phin truyền thống Việt Nam.', 'Cà phê, sữa đặc, đá viên.', 30000, 25000, '1727238f.png', NULL, NULL, '2025-10-01 21:59:59', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('9633e61f-c11c-445f-b8fb-b4224c9c2ac9', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sủi cảo chiên', 'Sủi cảo chiên giòn rụm, nhân thịt đậm đà.', 'Sủi cảo, dầu ăn, tương ớt.', 80000, 75000, '4a9921b3.png', NULL, NULL, '2025-09-25 02:34:17', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('987ab72f-c0a0-4bf4-a3db-69a148022fdf', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Phở cuốn bò trứng', 'Phở cuốn đầy đủ bò xào và trứng chiên béo.', 'Bánh phở, thịt bò, trứng chiên, rau sống, nước chấm.', 50000, 45000, 'b9eee1f4.png', NULL, NULL, '2025-10-01 21:20:11', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('9b15a51a-dbea-40bb-bbaf-7279de87db3f', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sữa Đậu', 'Sữa đậu nành nguyên chất, không đường.', 'Đậu nành, nước.', 15000, 10000, '0c805e25.png', NULL, NULL, '2025-10-01 21:36:50', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('9c5294a8-2e56-49fe-8bef-864e44e693ae', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Sundae Vani Dâu Tằm', 'Kem Sundae vani truyền thống, sốt dâu tằm.', 'Kem vani, sốt dâu tằm, topping.', 50000, 45000, 'ba2b702c.png', NULL, NULL, '2025-10-01 21:09:45', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('9c7ab691-5e8b-4c98-8681-52f97dad57a8', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở chiên phồng', 'Phở chiên phồng xốp, ăn kèm bò sốt thơm ngon.', 'Bánh phở, thịt bò, rau cải, nước sốt.', 55000, 50000, 'e216188b.png', NULL, NULL, '2025-10-01 21:20:23', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('9f7b842e-41dc-4afa-ac61-05a2d81989d9', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Trà Sữa Big Size Full Topping', 'Trà sữa size lớn, đầy đủ các loại topping.', 'Trà, sữa, trân châu, thạch, pudding (Big size).', 60000, 55000, '8a8099a7.png', '2025-10-01', '2025-10-07', '2025-10-01 21:09:55', '2025-10-01 21:15:17');
INSERT INTO `products` VALUES ('a2ae6ed2-6ffa-406b-b948-a11ad9b2ad50', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sủi cào mỳ thập cẩm', 'Mỳ ăn liền với sủi cảo và các loại topping thập cẩm.', 'Mỳ, sủi cảo, thịt, tôm, rau củ.', 85000, 80000, '2e975c18.png', NULL, NULL, '2025-09-25 02:34:57', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('a2d429a3-fe95-4c25-be6c-adfc7e9e30c6', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở trộn', 'Phở trộn đậm đà cùng thịt bò, lạc rang và rau thơm.', 'Bánh phở, thịt bò, giá đỗ, lạc rang, nước sốt trộn.', 60000, 55000, '324ccf22.png', NULL, NULL, '2025-10-01 21:20:49', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('ab3a847a-db7b-4580-ba82-001882231793', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Canh Trứng Tảo Biển', 'Canh trứng nấu cùng tảo biển, thanh mát và bổ dưỡng.', 'Trứng gà, tảo biển, nước dùng, hành lá.', 30000, 25000, '25177e3e.png', NULL, NULL, '2025-10-01 21:36:58', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('bb8b41e0-e0d9-4d57-bb77-dfe09a61c85c', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Bánh Bao Rán', 'Bánh bao chiên giòn bên ngoài, nhân thịt ngọt bên trong.', 'Bánh bao hấp, dầu ăn, tương ớt.', 25000, 20000, '28acc057.png', NULL, NULL, '2025-10-01 21:37:23', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('c0c7346d-4e62-4f01-b896-c369569c3eb1', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Trà Dâu Đào Đầy Ly', 'Trà dâu đào mát lạnh, đầy ắp dâu và đào tươi.', 'Trà, dâu tây, đào, đường, đá.', 50000, 45000, '4a21d180.png', NULL, NULL, '2025-10-01 21:09:26', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('c373ad62-446d-4af8-85cf-dc4aff5495e4', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì xúc xích', 'Bánh mì kẹp xúc xích chiên, sốt cà chua và mù tạt.', 'Bánh mì, xúc xích, sốt cà chua, mù tạt, hành tây.', 45000, 40000, '1fd086c1.png', NULL, NULL, '2025-10-01 21:53:22', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('c997d541-d9c7-4946-a88f-5c1eb78d396b', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì gà xé', 'Bánh mì nhân gà xé, cay nhẹ, đậm vị.', 'Bánh mì, thịt gà xé, sốt cay, rau thơm.', 40000, 35000, '11eb9767.png', NULL, NULL, '2025-10-01 21:53:01', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('cc1d7473-cc95-40fc-abf3-500c6b4403d8', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì chả lụa', 'Bánh mì kẹp chả lụa truyền thống Việt Nam.', 'Bánh mì, chả lụa, dưa leo, đồ chua.', 30000, 25000, '4c47eb4b.png', NULL, NULL, '2025-10-01 21:52:30', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('cd071d43-7ea1-480f-8aa1-3590dac1f749', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Sừng Bò', 'Bánh sừng bò Pháp, giòn rụm bên ngoài, mềm bên trong.', 'Bột mì, bơ, sữa, trứng.', 35000, 30000, 'fce997ac.png', NULL, NULL, '2025-10-01 21:55:54', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('cd43724e-fb4b-4210-b90d-5cf7cc837c92', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Nước Ép Dứa Thơm', 'Nước ép dứa tươi, vị chua ngọt tự nhiên.', 'Dứa tươi, đá viên.', 35000, 30000, 'd0bf673b.png', NULL, NULL, '2025-10-01 22:00:03', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('ce175d34-26b6-49cf-8322-f0491b7f65ce', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Salad Cá Ngừ', 'Salad tươi mát với cá ngừ và sốt dầu giấm.', 'Rau xà lách, cà chua bi, cá ngừ đóng hộp, dầu giấm.', 90000, 85000, '27398f71.png', NULL, NULL, '2025-10-01 22:01:30', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d2108ab6-e300-4d3b-91b1-b53a564b53e4', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Lẩu Cá Kèo Lá Giang', 'Lẩu cá kèo miền Tây, nước dùng chua thanh vị lá giang.', 'Cá kèo, lá giang, bún, rau thơm.', 220000, 215000, 'dcbd0980.png', NULL, NULL, '2025-10-01 21:58:59', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d5f903d4-ca25-49db-b7c6-245e451a98ed', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Nước Ép Dưa Hấu', 'Dưa hấu tươi ép, giải khát tuyệt vời.', 'Dưa hấu, đá viên.', 30000, 25000, '003e5e8c.png', NULL, NULL, '2025-10-01 22:00:06', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d64a988b-f5f2-41d8-8262-1175e8c96d7e', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Mỳ Ý Carbonara', 'Mỳ Ý sốt kem trứng béo ngậy, thịt xông khói.', 'Mỳ Ý, kem tươi, trứng, thịt xông khói, phô mai.', 120000, 115000, 'd2928849.png', '2025-10-01', '2025-10-15', '2025-10-01 22:01:15', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d687b7b5-46f4-40d8-9442-803bf5bd39c6', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Tart Trứng', 'Bánh tart trứng Bồ Đào Nha, vỏ giòn, nhân kem trứng.', 'Bột mì, kem trứng, bơ.', 20000, 15000, '431565dd.png', NULL, NULL, '2025-10-01 21:55:47', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d7c37a17-b8cf-4e0d-9964-427772abf428', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sủi cảo da heo', 'Sủi cảo nhân thịt truyền thống, nước dùng ngọt đậm.', 'Sủi cảo, thịt heo, tôm, nước dùng xương hầm.', 80000, 75000, 'bdb8657b.png', NULL, NULL, '2025-09-25 02:35:36', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d8801598-2b44-41cb-84c7-f8e6372e789d', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà sữa khoai môn', 'Trà sữa vị khoai môn bùi béo, màu tím tự nhiên.', 'Trà, sữa, bột khoai môn, trân châu.', 45000, 40000, '12b03e8f.png', NULL, NULL, '2025-10-01 21:54:35', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('d88662d9-05a0-4a8a-b33e-86e0fa7bde45', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Nước Ép Táo', 'Nước ép táo xanh nguyên chất, giải khát.', 'Táo xanh, đá viên.', 40000, 35000, '4d0c2cf3.png', NULL, NULL, '2025-10-01 22:00:11', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('e106e63f-9243-4367-8414-d2e0d4c7c61e', '66e52cd0-3867-418e-b111-dc1162c772de', 'Trà sữa kem cheese', 'Trà sữa truyền thống, lớp kem cheese mặn béo.', 'Trà sữa, kem cheese, đá.', 55000, 50000, '90378f3d.png', NULL, NULL, '2025-10-01 21:54:42', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('e423a0fb-f86d-4f53-b7cd-7a06e1e59f0c', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Bánh Mỳ Bơ Tỏi', 'Bánh mì bơ tỏi nướng thơm lừng, giòn tan.', 'Bánh mì, bơ lạt, tỏi băm, rau mùi.', 50000, 45000, '47b41b9a.png', NULL, NULL, '2025-10-01 22:01:34', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('e73824fd-951a-4b35-b397-a1eb69c74514', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở chiên lẫn trứng phồng', 'Phở chiên đặc biệt với cả phồng xốp và trứng chiên.', 'Bánh phở, trứng chiên, thịt bò, rau cải.', 60000, 55000, 'a6b9de50.png', NULL, NULL, '2025-10-01 21:20:32', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('e8abbed1-9aea-43c4-9de2-307606bf00b7', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì xíu mại', 'Bánh mì ăn kèm xíu mại sốt cà chua đậm đà.', 'Bánh mì, xíu mại, sốt cà chua, rau thơm.', 45000, 40000, 'b16fb518.png', NULL, NULL, '2025-10-01 21:53:04', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('e9069fc6-f4af-4572-96fb-27b5dccc21d5', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Pizza Margherita', 'Pizza truyền thống với sốt cà chua, phô mai và húng quế.', 'Bột mì, sốt cà chua, phô mai mozzarella, lá húng quế.', 150000, 145000, 'b1c3dcb8.png', NULL, NULL, '2025-10-01 22:01:18', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('e9abdb59-ce77-4552-ac73-acb994d9180c', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì thịt nướng', 'Bánh mì kẹp thịt nướng than hoa, sốt ướp đậm đà.', 'Bánh mì, thịt nướng, dưa leo, hành ngò, sốt.', 50000, 45000, 'a15c25f2.png', NULL, NULL, '2025-10-01 21:52:55', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('eaf92f89-3028-4287-9a46-6a4b157098e9', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Bánh mì cá hộp', 'Bánh mì kẹp cá hộp sốt cà chua, tiện lợi và ngon miệng.', 'Bánh mì, cá hộp, sốt cà chua, hành tây.', 35000, 30000, '816d1b22.png', NULL, NULL, '2025-10-01 21:53:31', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('ed018c14-6d3e-4ff2-babb-2f7b3f0dc7e5', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Trà sữa Ngưu ma vương', 'Trà sữa đặc biệt với lớp kem muối và trân châu sợi.', 'Trà, sữa, kem muối, trân châu sợi.', 60000, 55000, 'f3281146.png', NULL, NULL, '2025-10-01 21:10:14', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('ee0e8afe-94b7-4153-8d51-2c6523ad05e2', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Sủi cảo nhân hấp hẹ', 'Sủi cảo nhân thịt hẹ, hấp mềm, thơm mùi hẹ.', 'Sủi cảo, thịt heo xay, hẹ, gia vị.', 65000, 60000, 'db82c869.png', NULL, NULL, '2025-10-01 21:37:13', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('f02356a2-7d54-4fc1-aeb1-d73270f7a86d', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở chiên trứng', 'Phở chiên giòn, phủ lớp trứng chiên vàng ươm.', 'Bánh phở, trứng gà, dầu ăn, nước chấm.', 50000, 45000, '1e4f2e9a.png', NULL, NULL, '2025-10-01 21:20:42', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('f76d781e-21ed-4aa1-9b7b-1227dfbca1b3', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Pizza Rau Củ', 'Pizza dành cho người ăn chay với nhiều loại rau củ.', 'Bột mì, sốt cà chua, phô mai, rau củ (ớt chuông, nấm, hành tây).', 150000, 145000, '5ab0b630.png', NULL, NULL, '2025-10-01 22:01:08', '2025-10-17 10:32:15');
INSERT INTO `products` VALUES ('fb4935be-f480-4253-8079-2e24b2a1d67b', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Bánh Cheesecake Phúc Bồn Tử', 'Bánh cheesecake New York, kem phô mai và sốt phúc bồn tử.', 'Kem phô mai, bánh quy, bơ, phúc bồn tử.', 75000, 70000, '9ac66fec.png', NULL, NULL, '2025-10-01 21:55:37', '2025-10-17 10:32:15');

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `restaurant_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rating` int NULL DEFAULT NULL,
  `image` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `a`(`user_id` ASC) USING BTREE,
  INDEX `b`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ratings
-- ----------------------------
INSERT INTO `ratings` VALUES ('017fc01a-e274-b672-1f9a-f3eb197619a3', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6bbde-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2009-09-30 15:33:07');
INSERT INTO `ratings` VALUES ('01b754b9-99d4-3ef3-dc6b-9a1863109d71', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 4, NULL, '2024-12-31 20:41:35');
INSERT INTO `ratings` VALUES ('026519d8-106a-f0aa-6bf3-92c5bc403eda', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2002-10-01 01:12:49');
INSERT INTO `ratings` VALUES ('0336b2c7-9df7-a37c-2d30-79f25a2c1475', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2006-01-10 07:27:06');
INSERT INTO `ratings` VALUES ('04e17a2b-de10-e25c-68aa-1af425895fd1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2019-02-12 03:30:23');
INSERT INTO `ratings` VALUES ('05c9e064-1428-f6c9-190e-7e194c5f6cb2', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2003-11-18 22:53:15');
INSERT INTO `ratings` VALUES ('06f6c3e2-aabc-5c84-78d0-d4cfe1c67222', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2021-11-18 02:31:22');
INSERT INTO `ratings` VALUES ('0a594ce5-4ad5-da57-49c5-66e38d89f322', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2018-07-24 23:54:45');
INSERT INTO `ratings` VALUES ('0a68737b-2fdf-00e9-00ef-d82bbc13adb0', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '66e52cd0-3867-418e-b111-dc1162c772de', 1, NULL, '2025-08-11 05:42:40');
INSERT INTO `ratings` VALUES ('0a81e872-6465-d6e7-3f67-6fee64cc2582', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2010-03-16 21:06:45');
INSERT INTO `ratings` VALUES ('0a9bc729-a196-b21d-177f-36210a8a9399', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2025-05-12 01:39:33');
INSERT INTO `ratings` VALUES ('0b22ee21-88f2-cbf4-91b4-9fde468402a4', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2008-02-26 20:14:52');
INSERT INTO `ratings` VALUES ('0db7b7bb-1783-c015-45e8-f965d339f2ea', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2005-10-27 20:04:41');
INSERT INTO `ratings` VALUES ('0dd8b954-0fbc-4f05-e068-11b0075a1480', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 2, NULL, '2016-04-02 08:58:41');
INSERT INTO `ratings` VALUES ('0e57b763-6d61-788a-6030-959466884fb9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2020-11-07 19:32:22');
INSERT INTO `ratings` VALUES ('0f64e8a2-a41f-2bc0-b363-4c59c20823de', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2013-11-08 07:49:21');
INSERT INTO `ratings` VALUES ('10ccd01e-1c75-4ee6-5ad3-289c232c781b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'e8578ccf-0382-4672-85b3-0e0e91168534', 4, NULL, '2015-09-10 10:29:37');
INSERT INTO `ratings` VALUES ('10f8945f-9700-2f2e-0b2b-248f220ddc4a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2022-03-16 18:59:11');
INSERT INTO `ratings` VALUES ('11d8cbe8-ae75-5f7e-ef77-37efc9f0f518', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2022-02-19 08:20:07');
INSERT INTO `ratings` VALUES ('15543220-8790-511d-cf10-c33223e66442', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2018-08-15 03:58:50');
INSERT INTO `ratings` VALUES ('155ec4bc-b04c-8bae-3a4f-d3d9c78bdb4a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 5, NULL, '2011-11-21 22:59:43');
INSERT INTO `ratings` VALUES ('16613ac4-6628-cb01-9dd0-b006458a4592', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 2, NULL, '2006-03-31 01:17:54');
INSERT INTO `ratings` VALUES ('166d37b4-d900-7448-bf79-44a4a59843df', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 1, NULL, '2024-02-07 08:37:28');
INSERT INTO `ratings` VALUES ('181661cb-b454-01ce-21b8-7ed18528b65a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'e8578ccf-0382-4672-85b3-0e0e91168534', 2, NULL, '2008-10-25 18:32:15');
INSERT INTO `ratings` VALUES ('18292bb2-2f8b-d55b-7742-857a5b6573aa', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 1, NULL, '2025-08-11 00:10:02');
INSERT INTO `ratings` VALUES ('1a39db0a-a4d2-ab16-3558-f47679aa3f9b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2025-06-01 04:14:06');
INSERT INTO `ratings` VALUES ('1ae0274e-ec6e-5d85-c28c-218227476554', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2021-03-12 22:43:44');
INSERT INTO `ratings` VALUES ('1c5aab21-3ba3-424e-c5c5-366a0379a5da', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2010-12-29 19:10:40');
INSERT INTO `ratings` VALUES ('1cdb54ff-2c95-28a1-90e1-7f5ecf7e6987', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 2, NULL, '2021-01-11 05:16:53');
INSERT INTO `ratings` VALUES ('1d65d354-10e5-2a23-8612-45276611981f', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'bc70a198-c9a3-4418-b73e-e4843346caed', 5, NULL, '2004-08-23 13:57:34');
INSERT INTO `ratings` VALUES ('1d94a733-8394-060a-e23f-9e26d8368229', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2001-04-25 04:26:48');
INSERT INTO `ratings` VALUES ('1f824a6d-4f59-b776-5a98-550a30578f78', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2000-04-25 09:02:19');
INSERT INTO `ratings` VALUES ('234b2029-a364-717f-0e93-1250bd03eb3d', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2017-05-06 18:12:20');
INSERT INTO `ratings` VALUES ('24e30b86-2ef2-a590-fd0f-7851b54b1f86', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2009-09-24 05:13:20');
INSERT INTO `ratings` VALUES ('27595ecd-69e9-c509-e9a3-8036d1835636', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '66e52cd0-3867-418e-b111-dc1162c772de', 4, NULL, '2013-12-25 10:22:53');
INSERT INTO `ratings` VALUES ('29c6dec8-890e-3a86-23d5-021090e0e7a9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2009-06-22 02:20:32');
INSERT INTO `ratings` VALUES ('2c5f682b-56fb-f133-6815-5cc13dd21007', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 5, NULL, '2014-04-16 18:44:09');
INSERT INTO `ratings` VALUES ('2e3e6efc-b380-585c-fd4a-f61b740c60d1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2015-04-28 21:59:31');
INSERT INTO `ratings` VALUES ('2e9baacc-b890-ba66-a294-7dd58ed24822', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 5, NULL, '2016-05-27 04:41:02');
INSERT INTO `ratings` VALUES ('2ee96ade-e459-f6aa-13ea-69e56419b0ad', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2006-03-14 21:17:01');
INSERT INTO `ratings` VALUES ('2f713ab0-da6e-0d28-b111-499f8bedec76', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2024-04-06 07:03:50');
INSERT INTO `ratings` VALUES ('3119f705-b5d0-0673-d9c2-e7d34c7dcb7a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2005-07-31 20:08:56');
INSERT INTO `ratings` VALUES ('31319e92-ca58-1f7e-d03e-fdbe152ff53b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2007-07-05 04:53:47');
INSERT INTO `ratings` VALUES ('31e5e34e-5c83-8cbd-6cfb-5836db33ff82', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 2, NULL, '2008-11-11 05:55:30');
INSERT INTO `ratings` VALUES ('34ba0e6e-6b50-2187-dfbc-fddda9597833', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '66e52cd0-3867-418e-b111-dc1162c772de', 5, NULL, '2005-02-24 09:29:39');
INSERT INTO `ratings` VALUES ('359afd6c-e049-ef3f-88b2-86f3875d15df', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2008-03-15 13:32:03');
INSERT INTO `ratings` VALUES ('36247d67-06d2-134c-03ff-c923df080df3', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2016-07-03 12:49:03');
INSERT INTO `ratings` VALUES ('36493183-8235-8c09-c84d-2619b0b88aa0', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2003-07-02 09:29:20');
INSERT INTO `ratings` VALUES ('367cd276-ed00-edc3-1cc2-90668e9377cc', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2015-02-22 19:46:27');
INSERT INTO `ratings` VALUES ('36e36040-a122-a8d2-e067-35e85674582d', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2008-01-14 02:18:17');
INSERT INTO `ratings` VALUES ('3beff935-de62-479c-5725-02a1bacd1c75', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 3, NULL, '2010-04-10 19:43:15');
INSERT INTO `ratings` VALUES ('3d599543-b429-1041-411d-82f72962d7ff', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2005-06-21 11:03:23');
INSERT INTO `ratings` VALUES ('3e1dccaf-1378-05f8-a257-85dbc28b0715', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'bc70a198-c9a3-4418-b73e-e4843346caed', 4, NULL, '2006-12-21 05:10:53');
INSERT INTO `ratings` VALUES ('4079bf81-dc1e-abe6-79af-a39bfdf65678', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2020-12-01 21:52:39');
INSERT INTO `ratings` VALUES ('41444766-a2da-c8ba-e8c1-d788149bae97', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2020-04-18 18:18:40');
INSERT INTO `ratings` VALUES ('41909254-39b2-9d56-b3d6-97733516a2b2', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6bbde-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2012-04-23 20:09:13');
INSERT INTO `ratings` VALUES ('428111a6-3acb-6f69-9800-5e2eef291aba', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2022-10-28 21:44:42');
INSERT INTO `ratings` VALUES ('45b0101f-5350-692b-2c70-d824452b900f', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 1, NULL, '2010-08-21 22:57:21');
INSERT INTO `ratings` VALUES ('479087f3-e8af-b12b-f5f3-ff549459e457', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2016-04-23 09:04:08');
INSERT INTO `ratings` VALUES ('47ff83f4-92de-665d-fcec-b9ffed0dd7a9', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2024-02-14 16:25:22');
INSERT INTO `ratings` VALUES ('48361394-65d5-7aed-7345-49fe27e2b07e', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2017-12-28 14:22:32');
INSERT INTO `ratings` VALUES ('48a7365f-1912-c8a8-d560-1f278d119685', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2004-05-26 21:44:39');
INSERT INTO `ratings` VALUES ('4a012598-e094-f57a-712d-62f406384b25', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2023-05-07 18:39:46');
INSERT INTO `ratings` VALUES ('4b4b81cb-0ac3-cf59-b6b0-5bd9822a5217', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2006-11-28 21:07:27');
INSERT INTO `ratings` VALUES ('4d5da0d2-2fce-fd87-9531-51a4d9b8b4c0', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '66e52cd0-3867-418e-b111-dc1162c772de', 3, NULL, '2010-08-14 13:40:23');
INSERT INTO `ratings` VALUES ('4f339dd7-e692-d761-ce91-a0f89415e132', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2015-07-14 16:29:03');
INSERT INTO `ratings` VALUES ('4ff7e233-6430-e262-8eed-b1ef7059f04b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2018-03-05 02:00:59');
INSERT INTO `ratings` VALUES ('50f60fb4-d39d-480f-2ca2-976f4fa38e06', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2006-10-31 16:13:49');
INSERT INTO `ratings` VALUES ('51c74219-50b8-fcee-7ce5-8b91b3f2d724', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2022-03-12 00:10:49');
INSERT INTO `ratings` VALUES ('51ee9742-bd28-16c1-03d5-74c08967cec8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2019-03-02 15:59:06');
INSERT INTO `ratings` VALUES ('51f965cc-d772-35fc-a07a-5427e09d9d85', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2023-08-16 11:37:31');
INSERT INTO `ratings` VALUES ('53e20eac-8868-a0fa-cf5f-4f850ba03c57', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2025-02-09 08:09:51');
INSERT INTO `ratings` VALUES ('540f7e0a-c7b1-962d-8b45-6a52fa481ccc', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2015-02-05 00:10:18');
INSERT INTO `ratings` VALUES ('549accb1-8f5c-b542-d8b0-4085763e4295', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2006-06-16 22:41:50');
INSERT INTO `ratings` VALUES ('56b098ae-28c2-ab7d-c324-418404de1fdb', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2016-12-02 05:46:29');
INSERT INTO `ratings` VALUES ('57857124-1866-b9f8-a8d5-0e814de7ba92', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2004-01-29 15:35:23');
INSERT INTO `ratings` VALUES ('5eeaef7c-f17b-db83-3e8a-96401fcd3883', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2001-05-01 01:40:41');
INSERT INTO `ratings` VALUES ('5eebce04-be0a-3926-f7a9-43c0219275cf', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2009-05-13 06:13:57');
INSERT INTO `ratings` VALUES ('60123ab3-ac3f-c346-323b-6b6fd35524b0', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2004-12-31 10:12:20');
INSERT INTO `ratings` VALUES ('622729e3-dc7e-7c64-0b19-7ed3df0e4226', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2000-07-07 14:27:32');
INSERT INTO `ratings` VALUES ('63f1a397-3a1b-5c63-263a-1f00fb47010e', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2020-02-03 09:43:52');
INSERT INTO `ratings` VALUES ('66e6cf81-990e-d940-5d24-b344f53a71a4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2002-07-15 02:04:33');
INSERT INTO `ratings` VALUES ('67ecaef2-6723-e0ae-d655-4b1e634ec324', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2011-08-29 13:35:57');
INSERT INTO `ratings` VALUES ('6a2f8e26-a2ab-6deb-9cd9-2b11ccc62e15', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2019-05-16 03:05:02');
INSERT INTO `ratings` VALUES ('6ebff8ff-216c-4c1f-a9d1-f20cfda1820a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2023-07-07 14:52:52');
INSERT INTO `ratings` VALUES ('6fab222e-3d1d-240d-28c6-37ba8ddcca84', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 3, NULL, '2004-05-06 12:12:15');
INSERT INTO `ratings` VALUES ('707bb41c-4a14-4f7a-8c4c-0edcf8fccdea', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2015-03-28 09:09:37');
INSERT INTO `ratings` VALUES ('70f15d7b-add8-4427-493d-ea1c8baf26f8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2017-12-20 16:46:12');
INSERT INTO `ratings` VALUES ('70f5a2f3-9d5f-c042-3e03-964dfa423596', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2003-07-15 11:40:53');
INSERT INTO `ratings` VALUES ('71920ba4-2afb-7c1f-e96d-6444de2b8056', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2009-06-14 13:04:08');
INSERT INTO `ratings` VALUES ('73be23d9-cbce-d280-762a-d837173540ce', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2008-02-07 05:52:30');
INSERT INTO `ratings` VALUES ('73dfaf46-0dac-bfe4-5372-4001f6f56706', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2015-10-17 00:03:26');
INSERT INTO `ratings` VALUES ('74816ed8-adea-ecc2-0dad-7971e08812b5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2003-06-17 04:11:39');
INSERT INTO `ratings` VALUES ('74e7f22a-e9ed-e37e-4f49-0ed7bb999714', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2002-06-15 20:20:38');
INSERT INTO `ratings` VALUES ('769cb3aa-da24-54b0-e36d-69d43e73888d', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2022-01-19 22:23:34');
INSERT INTO `ratings` VALUES ('76fe33f8-106a-5b14-b0e5-7210ec81d8a1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2020-10-10 09:31:47');
INSERT INTO `ratings` VALUES ('778ecba5-9194-075a-3792-74add9077e52', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2017-04-19 17:19:39');
INSERT INTO `ratings` VALUES ('7931d71e-7f90-9272-a833-948e188b48e8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2001-01-09 19:06:50');
INSERT INTO `ratings` VALUES ('7c03767d-5d32-50c6-ed81-f6eb11b3c2ac', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '66e52cd0-3867-418e-b111-dc1162c772de', 2, NULL, '2001-04-27 00:54:20');
INSERT INTO `ratings` VALUES ('7ef6e4cf-9be2-7a0f-f3b1-278446f27318', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2000-11-08 19:30:06');
INSERT INTO `ratings` VALUES ('8187484d-dd20-dad4-32d3-2840f21e5ebd', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2018-08-13 07:05:44');
INSERT INTO `ratings` VALUES ('81bc67f4-b2ba-e89c-79e8-77bc3568ad12', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2001-11-13 11:28:56');
INSERT INTO `ratings` VALUES ('852d5c8f-8a94-ba8b-14f9-f5d1c670ec4b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 1, NULL, '2022-04-30 23:08:24');
INSERT INTO `ratings` VALUES ('857bd911-5afe-1d3c-4454-8449a053f8ed', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 3, NULL, '2000-11-29 13:27:44');
INSERT INTO `ratings` VALUES ('899ae9c5-6765-3828-2b89-b374fd732bdb', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'bc70a198-c9a3-4418-b73e-e4843346caed', 3, NULL, '2012-03-25 12:22:00');
INSERT INTO `ratings` VALUES ('89b08cfd-b5cd-6942-8150-b63c304f28d4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'e8578ccf-0382-4672-85b3-0e0e91168534', 3, NULL, '2024-09-11 01:41:29');
INSERT INTO `ratings` VALUES ('8b4d0163-0820-6ad1-9d66-b4a665994c4a', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2003-10-22 02:52:56');
INSERT INTO `ratings` VALUES ('9130980c-49e8-4b55-8afc-c9bdd28c5b15', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'e8578ccf-0382-4672-85b3-0e0e91168534', 4, NULL, '2013-01-04 07:42:55');
INSERT INTO `ratings` VALUES ('93826dd8-aa56-32c2-93cb-704b315d5a85', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2025-06-02 09:56:25');
INSERT INTO `ratings` VALUES ('944019e9-31fb-9de9-337e-36d01cb389c5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2019-09-29 21:06:34');
INSERT INTO `ratings` VALUES ('96ce0259-62b7-ecd8-3435-7dd40857154b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 2, NULL, '2002-10-05 03:54:30');
INSERT INTO `ratings` VALUES ('976aa6f7-006d-9ca9-69c9-9c673135fbdc', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2003-11-26 17:38:03');
INSERT INTO `ratings` VALUES ('98a149c9-7dc7-4498-a601-e88fb96534c1', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2019-12-10 05:32:11');
INSERT INTO `ratings` VALUES ('98fc9673-f3b4-79f2-48ce-59316606d2c8', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2011-11-10 16:51:41');
INSERT INTO `ratings` VALUES ('99662af4-7c5e-2c38-d47d-8f63bdf58fac', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'e8578ccf-0382-4672-85b3-0e0e91168534', 5, NULL, '2015-03-17 09:41:10');
INSERT INTO `ratings` VALUES ('9a21da62-109c-eccf-197e-89d2db0a3067', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2005-08-09 20:11:56');
INSERT INTO `ratings` VALUES ('9ae7e7d0-ee1f-c982-bc76-5826d0fa69d5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'bc70a198-c9a3-4418-b73e-e4843346caed', 1, NULL, '2011-08-23 16:17:09');
INSERT INTO `ratings` VALUES ('9e76e395-20e4-d319-7d16-9d4d8a29320b', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 1, NULL, '2020-12-24 03:00:10');
INSERT INTO `ratings` VALUES ('9ec53a2e-b182-835d-b0f6-456e49e1c451', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2025-06-23 10:55:36');
INSERT INTO `ratings` VALUES ('9f293e29-9cce-0430-2fa5-5377143c4019', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2008-06-27 21:55:32');
INSERT INTO `ratings` VALUES ('a08c3a9a-44d5-ebcf-40bb-7bde0301fe15', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2017-04-27 13:46:38');
INSERT INTO `ratings` VALUES ('a2ffd03a-85ac-7d9f-309a-91a3b33d1ffd', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2025-01-08 07:31:03');
INSERT INTO `ratings` VALUES ('a65f58ac-753a-1434-8f56-ddbea6908809', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2010-01-10 14:40:50');
INSERT INTO `ratings` VALUES ('a86469be-3b54-9a30-d27b-4f7aea270cb2', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 3, NULL, '2003-02-21 18:49:39');
INSERT INTO `ratings` VALUES ('a9618d62-2218-06cf-0749-19159e1474b4', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2010-10-01 04:39:10');
INSERT INTO `ratings` VALUES ('a9d7877e-61d7-065e-c046-ffd07e60b8cb', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2023-01-07 16:51:55');
INSERT INTO `ratings` VALUES ('aa05bd90-70f1-1677-962b-79fd3614b54e', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '66e52cd0-3867-418e-b111-dc1162c772de', 2, NULL, '2016-03-05 02:32:09');
INSERT INTO `ratings` VALUES ('ab8e9d92-9577-b8b0-e250-2954353fbf6f', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2021-02-22 19:29:52');
INSERT INTO `ratings` VALUES ('af907ef4-22d6-770c-f039-94f932cf7862', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2004-03-23 04:56:22');
INSERT INTO `ratings` VALUES ('b42de623-ecdd-b04e-4fd8-3b612a31bfa9', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'e8578ccf-0382-4672-85b3-0e0e91168534', 3, NULL, '2005-06-02 05:37:15');
INSERT INTO `ratings` VALUES ('b48fde73-c25c-0eef-5a07-e7698972c886', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2008-09-27 20:33:20');
INSERT INTO `ratings` VALUES ('b685c226-44dd-4ae5-a197-29a6bd2caa2f', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2013-05-30 08:02:22');
INSERT INTO `ratings` VALUES ('b7a31d7a-2322-0e80-ab59-557e045069c5', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 5, NULL, '2024-03-19 23:47:55');
INSERT INTO `ratings` VALUES ('b8f6225f-be82-872e-e831-c4f4f316931a', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 2, NULL, '2009-07-24 02:50:39');
INSERT INTO `ratings` VALUES ('ba339348-b2c4-9326-b7a0-59f369340a3c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 1, NULL, '2007-12-19 23:29:25');
INSERT INTO `ratings` VALUES ('bc143bcf-5cf0-0c6f-0095-35269246c862', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2021-01-26 06:54:25');
INSERT INTO `ratings` VALUES ('bc6ac7cc-232d-d53e-9688-7e33e08b2975', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2010-07-10 08:33:25');
INSERT INTO `ratings` VALUES ('be17a743-d703-f7b9-cab0-5452c014d780', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 2, NULL, '2020-01-24 23:29:42');
INSERT INTO `ratings` VALUES ('bf549c09-540a-3900-7898-4e740f2db0e3', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2004-02-25 01:57:56');
INSERT INTO `ratings` VALUES ('c05ae78c-7045-82b7-5feb-a4b1d2c0b353', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2007-10-20 21:26:48');
INSERT INTO `ratings` VALUES ('c37a193b-4162-6ed6-821d-39e0038cdfe1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 5, NULL, '2016-11-06 07:02:12');
INSERT INTO `ratings` VALUES ('c97014cd-7224-07b5-eed1-77d901612605', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 4, NULL, '2010-11-02 01:10:52');
INSERT INTO `ratings` VALUES ('ca5546ed-61ff-82b8-dc21-f45c47ede663', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2001-03-30 23:16:47');
INSERT INTO `ratings` VALUES ('cbd7fbd5-e8a2-c04c-00d5-5dba1e8e2adb', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2005-12-14 19:21:43');
INSERT INTO `ratings` VALUES ('cbe9dc12-aef0-ee3e-e46b-5c05380863ea', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2019-09-04 16:15:09');
INSERT INTO `ratings` VALUES ('cc34d350-5293-5504-77d9-1668ae82e85c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2010-11-22 05:21:58');
INSERT INTO `ratings` VALUES ('ccd3234e-c147-beee-4a1b-0e5950defdd4', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6bbde-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2003-12-22 08:45:17');
INSERT INTO `ratings` VALUES ('cd54bce7-45c7-18ce-f84e-50cf90ce356c', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2024-04-28 12:43:04');
INSERT INTO `ratings` VALUES ('ce8e1521-dd46-afa3-46e5-0b4a2420cba5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'bc70a198-c9a3-4418-b73e-e4843346caed', 4, NULL, '2025-04-15 07:00:01');
INSERT INTO `ratings` VALUES ('d0d76963-1868-1fa6-8ffc-b2c18a9fd813', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2001-04-26 00:00:48');
INSERT INTO `ratings` VALUES ('d14ca912-1bf8-200a-b81e-71d9eedd6adb', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2015-04-13 18:01:03');
INSERT INTO `ratings` VALUES ('d4eb001a-e048-a5da-ae01-e9a236e88a47', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 5, NULL, '2019-12-05 18:22:01');
INSERT INTO `ratings` VALUES ('d52cf3c3-b35e-9581-99a0-a96da8aca068', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2021-08-25 00:44:18');
INSERT INTO `ratings` VALUES ('dafb9217-d790-272b-4a0b-e0df412345d3', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2020-06-04 16:42:27');
INSERT INTO `ratings` VALUES ('df1e34df-77ad-0b4f-08d3-10b8be85108b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 3, NULL, '2002-03-14 13:43:52');
INSERT INTO `ratings` VALUES ('dfc31a18-4952-8340-7a52-9088d2584adb', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2005-07-27 16:07:41');
INSERT INTO `ratings` VALUES ('e15cf3af-7e53-93bc-9fe0-6e7f9c4a5e69', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 2, NULL, '2001-11-14 21:03:28');
INSERT INTO `ratings` VALUES ('e2df6908-9c40-e8bf-8317-75bacf073c98', '2477ea11-b9b9-450f-b1e3-53bc32008b10', 'bc70a198-c9a3-4418-b73e-e4843346caed', 3, NULL, '2000-11-03 09:58:28');
INSERT INTO `ratings` VALUES ('e304ae61-3c2c-008c-551b-51eec3388818', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2015-06-14 05:42:45');
INSERT INTO `ratings` VALUES ('e52beaae-91fc-5b83-b456-792e34632cc7', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2020-10-28 04:21:38');
INSERT INTO `ratings` VALUES ('eba984ce-5f1d-c5a2-de32-5139b28c455d', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 5, NULL, '2018-12-19 12:01:30');
INSERT INTO `ratings` VALUES ('edac05e3-6c37-a751-472b-eb875186cb16', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2000-12-02 12:03:37');
INSERT INTO `ratings` VALUES ('edc8fa45-735a-f8e1-8e49-cccf63e94244', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2022-10-23 06:19:46');
INSERT INTO `ratings` VALUES ('eecbf59a-d6ce-682b-4b5d-076bb5543bfd', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2005-07-04 17:22:39');
INSERT INTO `ratings` VALUES ('eeee0b92-b7c5-6f7c-43cf-a9e79e6c16c5', '4a2194f0-97db-45b2-b35b-457fc590b4c0', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 4, NULL, '2020-07-19 01:35:39');
INSERT INTO `ratings` VALUES ('ef14d4b4-0ec9-30dc-eb70-dc4c52ba1551', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2010-07-17 12:45:30');
INSERT INTO `ratings` VALUES ('f13864ae-ed55-9cf4-dc4a-dda9a1e5873f', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 5, NULL, '2016-08-22 07:06:53');
INSERT INTO `ratings` VALUES ('f14ba168-d532-e6b5-6cb7-8902b50010b4', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2015-09-30 23:02:15');
INSERT INTO `ratings` VALUES ('f240aee5-fa6a-2bc0-222b-564e0c801481', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2007-08-08 07:59:47');
INSERT INTO `ratings` VALUES ('f45f0e0c-8214-71ee-7f72-12061de37966', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '66e52cd0-3867-418e-b111-dc1162c772de', 4, NULL, '2004-07-10 06:58:53');
INSERT INTO `ratings` VALUES ('f94ddb7d-5dd3-ffc1-0917-8bfdb3fb308f', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 1, NULL, '2001-01-04 07:14:33');
INSERT INTO `ratings` VALUES ('f999a444-086a-172d-bd24-78a9d0cef44b', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2009-04-14 05:45:31');
INSERT INTO `ratings` VALUES ('fb8b2c78-e60d-ff19-b06e-e16bdc1c96a3', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2011-07-27 14:14:10');
INSERT INTO `ratings` VALUES ('fc15fdc0-77db-35eb-4fe9-7334db440485', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 5, NULL, '2005-12-01 20:32:57');
INSERT INTO `ratings` VALUES ('fc2acb55-014f-de02-803d-9382d4bc50db', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 3, NULL, '2013-09-11 17:16:18');
INSERT INTO `ratings` VALUES ('fc8e4312-81e1-bdf5-8d98-259ab0551772', '4a2194f0-97db-45b2-b35b-457fc590b4c0', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 4, NULL, '2001-07-12 15:59:22');
INSERT INTO `ratings` VALUES ('fdc26f7f-5023-5386-97de-4431978c7bd1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '007f4f05-49a1-4b85-a729-62a2fee1617b', 5, NULL, '2023-06-10 20:32:17');
INSERT INTO `ratings` VALUES ('ff8e63a1-4a9e-edc1-4da7-bbc02ebbc7d1', '2477ea11-b9b9-450f-b1e3-53bc32008b10', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 2, NULL, '2016-06-20 22:59:43');

-- ----------------------------
-- Table structure for restaurant_opening_hours
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_opening_hours`;
CREATE TABLE `restaurant_opening_hours`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `restaurant_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `open_time` time NULL DEFAULT NULL,
  `close_time` time NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `d`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `d` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of restaurant_opening_hours
-- ----------------------------
INSERT INTO `restaurant_opening_hours` VALUES ('0e634e38-a063-11f0-be5d-ecf4bb46813a', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e635e71-a063-11f0-be5d-ecf4bb46813a', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6361ce-a063-11f0-be5d-ecf4bb46813a', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6363e7-a063-11f0-be5d-ecf4bb46813a', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e63656f-a063-11f0-be5d-ecf4bb46813a', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6366e8-a063-11f0-be5d-ecf4bb46813a', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e636b0d-a063-11f0-be5d-ecf4bb46813a', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e636f58-a063-11f0-be5d-ecf4bb46813a', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6371af-a063-11f0-be5d-ecf4bb46813a', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e637359-a063-11f0-be5d-ecf4bb46813a', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6374e3-a063-11f0-be5d-ecf4bb46813a', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e63767a-a063-11f0-be5d-ecf4bb46813a', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e63789e-a063-11f0-be5d-ecf4bb46813a', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e637a58-a063-11f0-be5d-ecf4bb46813a', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e637bbf-a063-11f0-be5d-ecf4bb46813a', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e637e97-a063-11f0-be5d-ecf4bb46813a', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e638020-a063-11f0-be5d-ecf4bb46813a', '63c6bbde-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e63819e-a063-11f0-be5d-ecf4bb46813a', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e638308-a063-11f0-be5d-ecf4bb46813a', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e638467-a063-11f0-be5d-ecf4bb46813a', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6385d3-a063-11f0-be5d-ecf4bb46813a', '66e52cd0-3867-418e-b111-dc1162c772de', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e63875b-a063-11f0-be5d-ecf4bb46813a', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e6388d0-a063-11f0-be5d-ecf4bb46813a', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e638a38-a063-11f0-be5d-ecf4bb46813a', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('0e638e38-a063-11f0-be5d-ecf4bb46813a', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Thứ 2-Thứ 6', '10:00:00', '19:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b79a1-a063-11f0-be5d-ecf4bb46813a', '007f4f05-49a1-4b85-a729-62a2fee1617b', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b81d9-a063-11f0-be5d-ecf4bb46813a', '07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b8406-a063-11f0-be5d-ecf4bb46813a', '2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b8749-a063-11f0-be5d-ecf4bb46813a', '63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b893c-a063-11f0-be5d-ecf4bb46813a', '63c66237-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b8b8b-a063-11f0-be5d-ecf4bb46813a', '63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b8e9d-a063-11f0-be5d-ecf4bb46813a', '63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b91d1-a063-11f0-be5d-ecf4bb46813a', '63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9382-a063-11f0-be5d-ecf4bb46813a', '63c68220-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b946e-a063-11f0-be5d-ecf4bb46813a', '63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9533-a063-11f0-be5d-ecf4bb46813a', '63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b96b8-a063-11f0-be5d-ecf4bb46813a', '63c68931-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9815-a063-11f0-be5d-ecf4bb46813a', '63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b98f3-a063-11f0-be5d-ecf4bb46813a', '63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b99b6-a063-11f0-be5d-ecf4bb46813a', '63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9b3a-a063-11f0-be5d-ecf4bb46813a', '63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9c08-a063-11f0-be5d-ecf4bb46813a', '63c6bbde-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9d22-a063-11f0-be5d-ecf4bb46813a', '63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9df4-a063-11f0-be5d-ecf4bb46813a', '63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9eb9-a063-11f0-be5d-ecf4bb46813a', '648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191b9f7b-a063-11f0-be5d-ecf4bb46813a', '66e52cd0-3867-418e-b111-dc1162c772de', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191ba03a-a063-11f0-be5d-ecf4bb46813a', '67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191ba0fa-a063-11f0-be5d-ecf4bb46813a', 'ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191ba1bf-a063-11f0-be5d-ecf4bb46813a', 'bc70a198-c9a3-4418-b73e-e4843346caed', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');
INSERT INTO `restaurant_opening_hours` VALUES ('191ba27f-a063-11f0-be5d-ecf4bb46813a', 'e8578ccf-0382-4672-85b3-0e0e91168534', 'Thứ 7-Chủ nhật', '10:00:00', '23:00:00');

-- ----------------------------
-- Table structure for restaurants
-- ----------------------------
DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of restaurants
-- ----------------------------
INSERT INTO `restaurants` VALUES ('007f4f05-49a1-4b85-a729-62a2fee1617b', 'TRÀ SỮA BINGXUE', 'Café/Dessert', 'Kiot 18 HH2B Bán Đảo Linh Đàm, P.Hoàng Liệt, Hoàng Mai, Hà Nội', '05c2d843.png', '2025-09-25 09:11:39', '2025-10-03 20:57:13');
INSERT INTO `restaurants` VALUES ('07bebcf4-a4f5-427a-80e3-621202ae5da0', 'Phở Roll - Phở Cuống & Phở Chiên Phồng', 'Quán ăn', 'SH2A SP 0519 - San Hô 5 Vinhome Ocean Park 1, X. Đa Tốn, Gia Lâm, Hà Nội', 'b8089247.png', '2024-09-03 02:09:11', '2025-10-03 20:57:30');
INSERT INTO `restaurants` VALUES ('2a188c7c-a8fe-458f-bfa9-0c84d24bd876', 'Anh Béo - Bánh Bao & Sủi Cảo', 'Quán ăn', '131 Nguyễn Ngọc Vũ, P. Trung Hoà, Cầu Giấy, Hà Nội', '3c3c8b98.png', '2025-09-30 19:49:08', '2025-10-03 20:58:00');
INSERT INTO `restaurants` VALUES ('63c5674c-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Phố Việt', 'Nhà hàng', '123 Đường Lê Lợi, Quận 1, TP.HCM', '2556c0b6.jpg', '2025-10-02 14:06:59', '2025-10-21 19:41:38');
INSERT INTO `restaurants` VALUES ('63c66237-9f5e-11f0-9db1-ecf4bb46813a', 'Quán Ăn Ngon', 'Quán ăn', '45 Trần Hưng Đạo, Hà Nội', 'ed3f43cb.jpg', '2025-10-02 14:06:59', '2025-10-21 19:41:56');
INSERT INTO `restaurants` VALUES ('63c668c8-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Hải Sản Biển Đông', 'Nhà hàng', '12 Nguyễn Huệ, Đà Nẵng', '93794d79.jpg', '2025-10-02 14:06:59', '2025-10-21 19:42:05');
INSERT INTO `restaurants` VALUES ('63c675e8-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Hoa Mai', 'Nhà hàng', '88 Nguyễn Văn Cừ, TP.HCM', 'b474e39a.jpg', '2025-10-02 14:06:59', '2025-10-21 19:42:15');
INSERT INTO `restaurants` VALUES ('63c67faa-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Lẩu Nướng 68', 'Nhà hàng', '68 Trường Chinh, Hà Nội', '42c5ee10.jpg', '2025-10-02 14:06:59', '2025-10-21 19:41:55');
INSERT INTO `restaurants` VALUES ('63c68220-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Kim Sơn', 'Nhà hàng', '10 Lê Duẩn, Đà Nẵng', 'd4e7b7fa.jpg', '2025-10-02 14:06:59', '2025-10-21 18:44:55');
INSERT INTO `restaurants` VALUES ('63c6849f-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Tokyo', 'Nhà hàng', '33 Nguyễn Trãi, TP.HCM', '15253a47.jpg', '2025-10-02 14:06:59', '2025-10-21 18:46:01');
INSERT INTO `restaurants` VALUES ('63c686f1-9f5e-11f0-9db1-ecf4bb46813a', 'Quán Nướng 79', 'Quán ăn', '79 Hai Bà Trưng, Hà Nội', '74a7f291.jpg', '2025-10-02 14:06:59', '2025-10-21 18:45:54');
INSERT INTO `restaurants` VALUES ('63c68931-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Gió Biển', 'Nhà hàng', '5 Lê Thánh Tôn, Vũng Tàu', 'e8973a52.jpg', '2025-10-02 14:06:59', '2025-10-21 18:45:36');
INSERT INTO `restaurants` VALUES ('63c68b78-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Hương Việt', 'Nhà hàng', '120 Bạch Đằng, Đà Nẵng', '1bb7ff0f.jpg', '2025-10-02 14:06:59', '2025-10-21 18:45:24');
INSERT INTO `restaurants` VALUES ('63c68fd1-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Cây Xanh', 'Nhà hàng', '17 Lý Thường Kiệt, TP.HCM', 'e4891917.png', '2025-10-02 14:06:59', '2025-10-21 18:46:03');
INSERT INTO `restaurants` VALUES ('63c692a9-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Golden Lotus', 'Nhà hàng', '50 Pasteur, Hà Nội', '1c20cfc6.jpg', '2025-10-02 14:06:59', '2025-10-21 18:45:12');
INSERT INTO `restaurants` VALUES ('63c6b82b-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Chay An Lạc', 'Nhà hàng', '19 Nguyễn Đình Chiểu, Hà Nội', 'd93be0ca.jpg', '2025-10-02 14:06:59', '2025-10-21 18:45:04');
INSERT INTO `restaurants` VALUES ('63c6bbde-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Ngọc Lan', 'Nhà hàng', '8 Trần Phú, Nha Trang', '0a2803c6.jpg', '2025-10-02 14:06:59', '2025-10-21 18:36:33');
INSERT INTO `restaurants` VALUES ('63c6c00c-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Phở Gia Truyền', 'Nhà hàng', '200 Bùi Viện, TP.HCM', '3c9fe2b0.jpeg', '2025-10-02 14:06:59', '2025-10-21 18:36:35');
INSERT INTO `restaurants` VALUES ('63c6c28a-9f5e-11f0-9db1-ecf4bb46813a', 'Nhà hàng Hương Biển', 'Nhà hàng', '66 Hoàng Hoa Thám, Vũng Tàu', '6eb90401.jpg', '2025-10-02 14:06:59', '2025-10-21 18:34:31');
INSERT INTO `restaurants` VALUES ('648a2f32-bbc9-432e-bf7d-ec3c9d88436a', 'Quán Quê ( Lẩu, Nhậu Mang Về )', 'Quán ăn', 'Số 11 ngõ 195 Quang Trung, P. Quang Trung, Hà Đông, Hà Nội', '8ea801c7.png', '2025-09-25 09:16:19', '2025-10-03 20:59:18');
INSERT INTO `restaurants` VALUES ('66e52cd0-3867-418e-b111-dc1162c772de', 'Gà Ủ Muối, Xôi Chim & Mực Nướng', 'Quán ăn', '51 Ngõ 192 Lê Trọng Tấn, P. Định Công, Thanh Xuân, Hà Nội', 'fb4d9ed1.png', '2025-09-25 09:15:20', '2025-10-03 20:59:19');
INSERT INTO `restaurants` VALUES ('67196cf3-2bbc-499b-9d1f-65b531a2f7de', 'Ngọc Food - Sushi, Bánh Tart Hồng Kong & Hoa Quả Dầm', 'Quán ăn', 'Số 82 Lacasta, Khu Đô Thị Văn Phú, P. Kiến Hưng, Hà Đông, Hà Nội', '2adbd16f.png', '2025-09-25 09:26:26', '2025-10-03 20:59:20');
INSERT INTO `restaurants` VALUES ('ad14bf33-ef2a-492b-a443-bec1d5550f0b', 'Mochi Hoa Trà - Bánh Ngọt Nhật Bản Thanh Khiết', 'Quán ăn', '8 Ngõ 408 Xuân Đỉnh, Ngách 18, P. Xuân Đỉnh, Bắc Từ Liêm, Hà Nội', '138632cc.png', '2025-09-25 09:22:18', '2025-10-03 20:59:21');
INSERT INTO `restaurants` VALUES ('bc70a198-c9a3-4418-b73e-e4843346caed', 'Ăn Vặt 4T', 'Quán ăn', 'Số 1, Ngõ 63/30/11 Phú Mỹ, P. Mỹ Đình 2, Nam Từ Liêm, Hà Nội', '961d321f.png', '2025-09-25 09:14:26', '2025-10-03 20:59:22');
INSERT INTO `restaurants` VALUES ('e8578ccf-0382-4672-85b3-0e0e91168534', 'Trung Nguyên Legend', 'Café/Dessert', '17T2 - 17T3 Hoàng Đạo Thúy, P. Trung Hòa, Cầu Giấy, Hà Nội', '9c2925bf.png', '2025-09-25 09:10:08', '2025-10-03 20:59:05');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2477ea11-b9b9-450f-b1e3-53bc32008b10', 'admin', 'admin@gmail.com', '$2b$16$DaOBHxA8DKrr1Zdfua96Z.43NxWaWCnlcRj2hKqND0G5hEO./Bj8m', '0987654321', 'Mễ Sở, Hưng Yên', '192c7b10.png', 'local', 1, 638459, '2025-05-04 02:03:41', '2025-05-04 01:33:40', '2025-10-17 21:18:24');
INSERT INTO `users` VALUES ('4a2194f0-97db-45b2-b35b-457fc590b4c0', 'user', 'user@gmail.com', '$2b$16$DaOBHxA8DKrr1Zdfua96Z.43NxWaWCnlcRj2hKqND0G5hEO./Bj8m', '0987654322', 'Mễ Sở, Hưng Yên', '192c7b10.png', 'local', 1, 413016, '2025-06-14 17:12:02', '2025-06-14 17:07:02', '2025-10-21 18:29:56');

-- ----------------------------
-- Table structure for voucher
-- ----------------------------
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category` enum('product','shipping') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `min_order_value` decimal(10, 0) NULL DEFAULT NULL,
  `max_discount_value` decimal(10, 0) NULL DEFAULT NULL,
  `discount_type` enum('percent','fixed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discount_value` decimal(10, 0) NULL DEFAULT NULL,
  `usage_limit` int NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of voucher
-- ----------------------------
INSERT INTO `voucher` VALUES ('d02b2671-ae70-11f0-b148-ecf4bb46813a', 'SAVE10', 'product', 'Giảm 10% cho đơn hàng từ 200K', 200000, 50000, 'percent', 10, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b2ed2-ae70-11f0-b148-ecf4bb46813a', 'NEWUSER15', 'product', 'Ưu đãi 15% cho khách hàng mới', 100000, 60000, 'percent', 15, 100, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b3128-ae70-11f0-b148-ecf4bb46813a', 'WEEKEND20', 'product', 'Giảm 20% khi mua sắm cuối tuần', 300000, 80000, 'percent', 20, 150, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b337f-ae70-11f0-b148-ecf4bb46813a', 'SUMMER50K', 'product', 'Giảm 50K cho đơn hàng mùa hè', 250000, 50000, 'fixed', 50000, 200, '2025-04-01', '2025-09-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b354a-ae70-11f0-b148-ecf4bb46813a', 'BUYMORE25', 'product', 'Giảm 25% cho đơn hàng từ 500K', 500000, 120000, 'percent', 25, 80, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b3749-ae70-11f0-b148-ecf4bb46813a', 'DISCOUNT30', 'product', 'Giảm 30% cho sản phẩm chọn lọc', 150000, 70000, 'percent', 30, 100, '2025-02-01', '2025-11-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b3918-ae70-11f0-b148-ecf4bb46813a', 'WELCOME50', 'product', 'Tặng 50K cho lần mua đầu tiên', 200000, 50000, 'fixed', 50000, 200, '2025-01-15', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b3adf-ae70-11f0-b148-ecf4bb46813a', 'FESTIVE10', 'product', 'Giảm 10% mùa lễ hội', 150000, 40000, 'percent', 10, 150, '2025-12-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b3cf2-ae70-11f0-b148-ecf4bb46813a', 'HOTDEAL40', 'product', 'Giảm 40% đơn hàng trên 800K', 800000, 200000, 'percent', 40, 50, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b3f04-ae70-11f0-b148-ecf4bb46813a', 'SHOPPING75K', 'product', 'Giảm 75K cho đơn hàng từ 400K', 400000, 75000, 'fixed', 75000, 120, '2025-02-15', '2025-10-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b40a3-ae70-11f0-b148-ecf4bb46813a', 'FLASHSALE25', 'product', 'Flash Sale giảm 25%', 100000, 40000, 'percent', 25, 300, '2025-05-01', '2025-06-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4360-ae70-11f0-b148-ecf4bb46813a', 'VIPMEMBER15', 'product', 'Ưu đãi 15% cho thành viên VIP', 200000, 60000, 'percent', 15, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4555-ae70-11f0-b148-ecf4bb46813a', 'WEEKLY30K', 'product', 'Giảm 30K mỗi tuần', 150000, 30000, 'fixed', 30000, 1000, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b46b2-ae70-11f0-b148-ecf4bb46813a', 'AUTUMN25', 'product', 'Giảm 25% mùa thu', 300000, 70000, 'percent', 25, 200, '2025-09-01', '2025-11-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4797-ae70-11f0-b148-ecf4bb46813a', 'SPRING15', 'product', 'Giảm 15% mùa xuân', 200000, 50000, 'percent', 15, 200, '2025-02-01', '2025-04-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4871-ae70-11f0-b148-ecf4bb46813a', 'FAV10', 'product', 'Giảm 10% cho sản phẩm yêu thích', 100000, 30000, 'percent', 10, 150, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b494a-ae70-11f0-b148-ecf4bb46813a', 'BIGSALE2025', 'product', 'Giảm 35% toàn bộ cửa hàng', 500000, 150000, 'percent', 35, 100, '2025-11-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4a35-ae70-11f0-b148-ecf4bb46813a', 'DISCOUNT80K', 'product', 'Giảm 80K cho đơn hàng từ 600K', 600000, 80000, 'fixed', 80000, 120, '2025-03-01', '2025-09-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4b0e-ae70-11f0-b148-ecf4bb46813a', 'EASYBUY10', 'product', 'Giảm 10% đơn hàng dễ mua', 100000, 30000, 'percent', 10, 300, '2025-04-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4c83-ae70-11f0-b148-ecf4bb46813a', 'LOYAL20', 'product', 'Ưu đãi 20% cho khách hàng thân thiết', 300000, 80000, 'percent', 20, 150, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4d90-ae70-11f0-b148-ecf4bb46813a', 'SHOPSMART', 'product', 'Giảm 60K khi mua thông minh', 300000, 60000, 'fixed', 60000, 200, '2025-05-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4e64-ae70-11f0-b148-ecf4bb46813a', 'DEALOFMONTH', 'product', 'Giảm 25% đơn hàng tháng này', 200000, 60000, 'percent', 25, 100, '2025-06-01', '2025-06-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b4f38-ae70-11f0-b148-ecf4bb46813a', 'SUPER15', 'product', 'Giảm 15% mọi sản phẩm', 100000, 45000, 'percent', 15, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b500d-ae70-11f0-b148-ecf4bb46813a', 'GIFTFORU', 'product', 'Quà tặng 40K cho đơn hàng trên 200K', 200000, 40000, 'fixed', 40000, 500, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b50e5-ae70-11f0-b148-ecf4bb46813a', 'HELLO25', 'product', 'Giảm 25% cho đơn đầu tiên', 150000, 60000, 'percent', 25, 100, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b51b9-ae70-11f0-b148-ecf4bb46813a', 'OFFLINE30', 'product', 'Giảm 30% khi nhận hàng tại shop', 300000, 70000, 'percent', 30, 80, '2025-03-01', '2025-09-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b529f-ae70-11f0-b148-ecf4bb46813a', 'MAYDAY15', 'product', 'Giảm 15% ngày lễ 1/5', 100000, 40000, 'percent', 15, 100, '2025-04-25', '2025-05-05', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b53fa-ae70-11f0-b148-ecf4bb46813a', 'LUCKY888', 'product', 'Giảm 88K cho đơn hàng từ 400K', 400000, 88000, 'fixed', 88000, 88, '2025-08-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5502-ae70-11f0-b148-ecf4bb46813a', 'FASHION20', 'product', 'Giảm 20% cho sản phẩm thời trang', 200000, 60000, 'percent', 20, 150, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b55d9-ae70-11f0-b148-ecf4bb46813a', 'BEAUTY50', 'product', 'Giảm 50K cho sản phẩm làm đẹp', 300000, 50000, 'fixed', 50000, 200, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b56af-ae70-11f0-b148-ecf4bb46813a', 'FLASH10', 'product', 'Giảm 10% trong khung giờ Flash Sale', 100000, 30000, 'percent', 10, 400, '2025-05-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5781-ae70-11f0-b148-ecf4bb46813a', 'NIGHTSALE20', 'product', 'Giảm 20% khi đặt hàng ban đêm', 200000, 60000, 'percent', 20, 120, '2025-06-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5989-ae70-11f0-b148-ecf4bb46813a', 'STUDENT15', 'product', 'Giảm 15% cho học sinh, sinh viên', 100000, 40000, 'percent', 15, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5a84-ae70-11f0-b148-ecf4bb46813a', 'FREEDOM30', 'product', 'Giảm 30% mừng Quốc khánh', 300000, 90000, 'percent', 30, 90, '2025-08-25', '2025-09-05', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5b6d-ae70-11f0-b148-ecf4bb46813a', 'ECOBUY10', 'product', 'Giảm 10% khi mua sản phẩm xanh', 150000, 40000, 'percent', 10, 150, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5ce2-ae70-11f0-b148-ecf4bb46813a', 'DAILY20', 'product', 'Giảm 20% mỗi ngày', 100000, 40000, 'percent', 20, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5dee-ae70-11f0-b148-ecf4bb46813a', 'BUNDLE50', 'product', 'Giảm 50K khi mua combo sản phẩm', 250000, 50000, 'fixed', 50000, 250, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5ec5-ae70-11f0-b148-ecf4bb46813a', 'TETSALE30', 'product', 'Giảm 30% mừng Tết Nguyên Đán', 400000, 120000, 'percent', 30, 100, '2025-01-15', '2025-02-15', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b5f9a-ae70-11f0-b148-ecf4bb46813a', 'FREESHIP50', 'shipping', 'Giảm 50% phí vận chuyển', 0, 30000, 'percent', 50, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6071-ae70-11f0-b148-ecf4bb46813a', 'SHIPFAST', 'shipping', 'Miễn phí vận chuyển đơn từ 200K', 200000, 25000, 'fixed', 25000, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b66ed-ae70-11f0-b148-ecf4bb46813a', 'SHIPNEW20', 'shipping', 'Giảm 20K phí ship cho khách mới', 0, 20000, 'fixed', 20000, 200, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b683a-ae70-11f0-b148-ecf4bb46813a', 'SHIPTET', 'shipping', 'Miễn phí ship dịp Tết', 0, 40000, 'fixed', 40000, 100, '2025-01-25', '2025-02-10', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b692c-ae70-11f0-b148-ecf4bb46813a', 'SHIPSALE30', 'shipping', 'Giảm 30% phí vận chuyển', 0, 20000, 'percent', 30, 150, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6a1d-ae70-11f0-b148-ecf4bb46813a', 'FREESHIP100K', 'shipping', 'Miễn phí ship cho đơn trên 100K', 100000, 30000, 'fixed', 30000, 1000, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6b87-ae70-11f0-b148-ecf4bb46813a', 'FASTSHIP10', 'shipping', 'Giảm 10% phí giao hàng nhanh', 0, 15000, 'percent', 10, 300, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6c93-ae70-11f0-b148-ecf4bb46813a', 'SHIPJULY', 'shipping', 'Giảm 20K phí ship trong tháng 7', 0, 20000, 'fixed', 20000, 100, '2025-07-01', '2025-07-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6d6e-ae70-11f0-b148-ecf4bb46813a', 'SHIP4U', 'shipping', 'Tặng phí ship cho đơn hàng bất kỳ', 0, 25000, 'fixed', 25000, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6e48-ae70-11f0-b148-ecf4bb46813a', 'FREESHIPMAX', 'shipping', 'Miễn phí ship toàn quốc', 0, 40000, 'fixed', 40000, 200, '2025-05-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6f22-ae70-11f0-b148-ecf4bb46813a', 'SHIPNOW15', 'shipping', 'Giảm 15% phí vận chuyển hôm nay', 0, 15000, 'percent', 15, 300, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b6ffe-ae70-11f0-b148-ecf4bb46813a', 'FREESHIP200K', 'shipping', 'Miễn phí ship cho đơn từ 200K', 200000, 30000, 'fixed', 30000, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b70d7-ae70-11f0-b148-ecf4bb46813a', 'SHIP50OFF', 'shipping', 'Giảm 50% phí vận chuyển toàn quốc', 0, 40000, 'percent', 50, 150, '2025-05-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b71c4-ae70-11f0-b148-ecf4bb46813a', 'SHIPTIKTOK', 'shipping', 'Giảm 25K phí ship khi mua qua TikTok', 0, 25000, 'fixed', 25000, 100, '2025-04-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b72a2-ae70-11f0-b148-ecf4bb46813a', 'SHIP30DAY', 'shipping', 'Giảm 30% phí ship trong 30 ngày đầu', 0, 20000, 'percent', 30, 200, '2025-01-01', '2025-01-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b73fd-ae70-11f0-b148-ecf4bb46813a', 'SHIPNEWYEAR', 'shipping', 'Miễn phí ship mừng năm mới', 0, 40000, 'fixed', 40000, 120, '2025-01-01', '2025-01-15', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b750f-ae70-11f0-b148-ecf4bb46813a', 'FASTSHIP25', 'shipping', 'Giảm 25% phí ship nhanh', 0, 25000, 'percent', 25, 150, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b75ed-ae70-11f0-b148-ecf4bb46813a', 'SHIPVOUCHER', 'shipping', 'Giảm 20K phí ship cho mọi đơn', 0, 20000, 'fixed', 20000, 400, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b76c7-ae70-11f0-b148-ecf4bb46813a', 'SHIPMOMDAY', 'shipping', 'Miễn phí ship nhân ngày của mẹ', 0, 30000, 'fixed', 30000, 80, '2025-05-10', '2025-05-12', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b77a1-ae70-11f0-b148-ecf4bb46813a', 'SHIPFATHER', 'shipping', 'Giảm 15K phí ship ngày của cha', 0, 15000, 'fixed', 15000, 80, '2025-06-15', '2025-06-16', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b787a-ae70-11f0-b148-ecf4bb46813a', 'SHIPBLACKFRI', 'shipping', 'Giảm 50% phí ship Black Friday', 0, 35000, 'percent', 50, 200, '2025-11-20', '2025-11-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b8d31-ae70-11f0-b148-ecf4bb46813a', 'SHIPCYBER', 'shipping', 'Miễn phí ship Cyber Monday', 0, 40000, 'fixed', 40000, 100, '2025-12-01', '2025-12-02', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b9028-ae70-11f0-b148-ecf4bb46813a', 'SHIPVIP', 'shipping', 'Miễn phí ship cho thành viên VIP', 0, 40000, 'fixed', 40000, 1000, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b932b-ae70-11f0-b148-ecf4bb46813a', 'FREESHIPDAILY', 'shipping', 'Miễn phí ship mỗi ngày cho đơn trên 150K', 150000, 25000, 'fixed', 25000, 1000, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b952f-ae70-11f0-b148-ecf4bb46813a', 'SHIP50KBACK', 'shipping', 'Hoàn 50K phí ship cho đơn từ 300K', 300000, 50000, 'fixed', 50000, 150, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b96e6-ae70-11f0-b148-ecf4bb46813a', 'SHIPDISCOUNT25', 'shipping', 'Giảm 25% phí ship mọi đơn hàng', 0, 25000, 'percent', 25, 200, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b988c-ae70-11f0-b148-ecf4bb46813a', 'SHIPMONTHLY', 'shipping', 'Miễn phí ship mỗi tháng 1 lần', 0, 30000, 'fixed', 30000, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b9a15-ae70-11f0-b148-ecf4bb46813a', 'SHIPSTUDENT', 'shipping', 'Giảm 20K phí ship cho sinh viên', 0, 20000, 'fixed', 20000, 400, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b9bbb-ae70-11f0-b148-ecf4bb46813a', 'SHIPAFTERNOON', 'shipping', 'Giảm 10% phí ship khung giờ chiều', 0, 15000, 'percent', 10, 200, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02b9f48-ae70-11f0-b148-ecf4bb46813a', 'SHIPRAINY', 'shipping', 'Miễn phí ship ngày mưa', 0, 30000, 'fixed', 30000, 100, '2025-06-01', '2025-09-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02ba16a-ae70-11f0-b148-ecf4bb46813a', 'SHIPAPPONLY', 'shipping', 'Giảm 20K phí ship khi đặt qua app', 0, 20000, 'fixed', 20000, 200, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02ba4c1-ae70-11f0-b148-ecf4bb46813a', 'SHIPFLASH', 'shipping', 'Giảm 30% phí ship trong Flash Sale', 0, 25000, 'percent', 30, 300, '2025-05-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02ba6d1-ae70-11f0-b148-ecf4bb46813a', 'SHIPWEEKEND', 'shipping', 'Miễn phí ship cuối tuần', 0, 25000, 'fixed', 25000, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02ba85f-ae70-11f0-b148-ecf4bb46813a', 'SHIPTIKTOK20', 'shipping', 'Giảm 20% phí ship đơn TikTok', 0, 20000, 'percent', 20, 150, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02baa1a-ae70-11f0-b148-ecf4bb46813a', 'SHIP100PERCENT', 'shipping', 'Miễn phí ship 100% cho đơn từ 500K', 500000, 40000, 'percent', 100, 80, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bac18-ae70-11f0-b148-ecf4bb46813a', 'SHIPDISCOUNT50', 'shipping', 'Giảm 50% phí ship đơn hàng đầu tiên', 0, 30000, 'percent', 50, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bade1-ae70-11f0-b148-ecf4bb46813a', 'SHIPHOLIDAY', 'shipping', 'Giảm 30% phí ship ngày lễ', 0, 25000, 'percent', 30, 200, '2025-04-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02baf96-ae70-11f0-b148-ecf4bb46813a', 'SHIPBIRTHDAY', 'shipping', 'Miễn phí ship trong tháng sinh nhật', 0, 30000, 'fixed', 30000, 500, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bb137-ae70-11f0-b148-ecf4bb46813a', 'SHIPMORNING', 'shipping', 'Giảm 15% phí ship buổi sáng', 0, 15000, 'percent', 15, 200, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bb3a3-ae70-11f0-b148-ecf4bb46813a', 'SHIPLOYAL', 'shipping', 'Giảm 20K phí ship cho khách hàng thân thiết', 0, 20000, 'fixed', 20000, 300, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bb5bc-ae70-11f0-b148-ecf4bb46813a', 'SHIPNIGHT', 'shipping', 'Giảm 10% phí ship ban đêm', 0, 15000, 'percent', 10, 100, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bb778-ae70-11f0-b148-ecf4bb46813a', 'SHIPGOLD', 'shipping', 'Miễn phí ship cho thành viên Gold', 0, 40000, 'fixed', 40000, 1000, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bb908-ae70-11f0-b148-ecf4bb46813a', 'SHIPTET25', 'shipping', 'Giảm 25K phí ship dịp Tết', 0, 25000, 'fixed', 25000, 120, '2025-01-15', '2025-02-15', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bba93-ae70-11f0-b148-ecf4bb46813a', 'SHIPWOMEN', 'shipping', 'Miễn phí ship ngày 8/3', 0, 30000, 'fixed', 30000, 80, '2025-03-08', '2025-03-09', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bbc32-ae70-11f0-b148-ecf4bb46813a', 'SHIPSALE20', 'shipping', 'Giảm 20% phí ship trong sự kiện Sale', 0, 20000, 'percent', 20, 300, '2025-03-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bbe03-ae70-11f0-b148-ecf4bb46813a', 'SHIPDAILY', 'shipping', 'Giảm 10% phí ship mỗi ngày', 0, 15000, 'percent', 10, 1000, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bbfa0-ae70-11f0-b148-ecf4bb46813a', 'SHIPRETURN', 'shipping', 'Giảm 30% phí ship khi đổi trả', 0, 20000, 'percent', 30, 150, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bc29a-ae70-11f0-b148-ecf4bb46813a', 'SHIPCOUPLE', 'shipping', 'Miễn phí ship khi đặt cùng người thân', 0, 30000, 'fixed', 30000, 120, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bc4cb-ae70-11f0-b148-ecf4bb46813a', 'SHIPAPP15', 'shipping', 'Giảm 15% phí ship khi đặt trên app', 0, 15000, 'percent', 15, 200, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bc6c9-ae70-11f0-b148-ecf4bb46813a', 'SHIP50BONUS', 'shipping', 'Tặng 50K phí ship cho đơn trên 400K', 400000, 50000, 'fixed', 50000, 150, '2025-02-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bc8ad-ae70-11f0-b148-ecf4bb46813a', 'SHIPFRIENDS', 'shipping', 'Giảm 20% phí ship khi giới thiệu bạn bè', 0, 20000, 'percent', 20, 200, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bccf6-ae70-11f0-b148-ecf4bb46813a', 'SHIPMONTH25', 'shipping', 'Giảm 25% phí ship tháng này', 0, 25000, 'percent', 25, 100, '2025-03-01', '2025-03-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bd07a-ae70-11f0-b148-ecf4bb46813a', 'SHIPSALEJUNE', 'shipping', 'Giảm 30K phí ship tháng 6', 0, 30000, 'fixed', 30000, 100, '2025-06-01', '2025-06-30', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bd392-ae70-11f0-b148-ecf4bb46813a', 'SHIPDISCOUNT40', 'shipping', 'Giảm 40% phí ship tối đa 25K', 0, 25000, 'percent', 40, 200, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bd545-ae70-11f0-b148-ecf4bb46813a', 'SHIPFREEWEEK', 'shipping', 'Miễn phí ship tuần này', 0, 30000, 'fixed', 30000, 300, '2025-10-01', '2025-10-07', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bd803-ae70-11f0-b148-ecf4bb46813a', 'SHIPSHOP20', 'shipping', 'Giảm 20% phí ship khi mua trên 2 sản phẩm', 200000, 20000, 'percent', 20, 150, '2025-01-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bd9ed-ae70-11f0-b148-ecf4bb46813a', 'SHIPDAY25', 'shipping', 'Giảm 25K phí ship trong ngày', 0, 25000, 'fixed', 25000, 200, '2025-07-01', '2025-07-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');
INSERT INTO `voucher` VALUES ('d02bdb95-ae70-11f0-b148-ecf4bb46813a', 'SHIPYEAREND', 'shipping', 'Miễn phí ship dịp cuối năm', 0, 40000, 'fixed', 40000, 200, '2025-12-01', '2025-12-31', '2025-10-21 18:26:40', '2025-10-21 18:26:40');

SET FOREIGN_KEY_CHECKS = 1;
