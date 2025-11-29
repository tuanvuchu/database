/*
 Navicat Premium Dump SQL

 Source Server         : laragon_mysql
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : hotelmanagement

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 29/11/2025 13:36:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `AccountId` int NOT NULL AUTO_INCREMENT,
  `AccountName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreationDate` date NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`AccountId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'Admin', '$2a$10$2igth3bM9g493ZJ3PpYvr.vTLLWuHuFIxILEVwMLYwKUaneq/bLwa', 'Admin', 'admin@gmail.com', 'Online', '2004-06-02', 0);
INSERT INTO `account` VALUES (2, 'User', '$2a$10$2igth3bM9g493ZJ3PpYvr.vTLLWuHuFIxILEVwMLYwKUaneq/bLwa', 'User', 'user@gmail.com', 'Online', '2004-06-02', 0);
INSERT INTO `account` VALUES (3, 'Tuan Vu Chu', '$2a$10$2igth3bM9g493ZJ3PpYvr.vTLLWuHuFIxILEVwMLYwKUaneq/bLwa', 'Admin', 'chutuanvu0206@gmail.com', 'Online', '2004-06-02', 0);

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `BillId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NULL DEFAULT NULL,
  `CreationDate` date NOT NULL,
  `TotalAmount` decimal(10, 2) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`BillId`) USING BTREE,
  INDEX `UserId`(`UserId` ASC) USING BTREE,
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for bookingvotes
-- ----------------------------
DROP TABLE IF EXISTS `bookingvotes`;
CREATE TABLE `bookingvotes`  (
  `BookingVotesId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserId` int NULL DEFAULT NULL,
  `BookingDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CheckinDate` date NOT NULL,
  `CheckoutDate` date NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TotalAmount` decimal(10, 2) NOT NULL,
  `Status` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`BookingVotesId`) USING BTREE,
  INDEX `UserId`(`UserId` ASC) USING BTREE,
  CONSTRAINT `bookingvotes_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookingvotes
-- ----------------------------
INSERT INTO `bookingvotes` VALUES ('0825e4f0-e775-474f-adcb-4f434ca49c0d', 1, '2025-11-27 20:25:33', '2025-11-04', '2025-12-08', 'hihi', 80.00, 'Pending', 0);
INSERT INTO `bookingvotes` VALUES ('4874989f-9317-42ad-8104-8bb443163039', 1, '2025-11-26 23:10:27', '2025-11-04', '2025-12-08', 'd', 80.00, 'Pending', 0);
INSERT INTO `bookingvotes` VALUES ('83727f90-cc0b-4ac1-87a8-b09d0ece5b63', 1, '2025-11-26 23:07:59', '2025-11-04', '2025-12-08', 'd', 80.00, 'Pending', 0);

-- ----------------------------
-- Table structure for bookingvotesdetail
-- ----------------------------
DROP TABLE IF EXISTS `bookingvotesdetail`;
CREATE TABLE `bookingvotesdetail`  (
  `BookingVotesDetailId` int NOT NULL AUTO_INCREMENT,
  `BookingVotesId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RoomId` int NULL DEFAULT NULL,
  `RoomPrice` decimal(10, 2) NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`BookingVotesDetailId`) USING BTREE,
  INDEX `BookingVotesId`(`BookingVotesId` ASC) USING BTREE,
  INDEX `RoomId`(`RoomId` ASC) USING BTREE,
  CONSTRAINT `bookingvotesdetail_ibfk_1` FOREIGN KEY (`BookingVotesId`) REFERENCES `bookingvotes` (`BookingVotesId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookingvotesdetail_ibfk_2` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookingvotesdetail
-- ----------------------------
INSERT INTO `bookingvotesdetail` VALUES (13, '4874989f-9317-42ad-8104-8bb443163039', 1, 80.00, 'd', 0);
INSERT INTO `bookingvotesdetail` VALUES (14, '0825e4f0-e775-474f-adcb-4f434ca49c0d', 1, 80.00, 'hihi', 0);

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `DeviceId` int NOT NULL AUTO_INCREMENT,
  `DeviceName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DeviceTypeId` int NULL DEFAULT NULL,
  `RoomId` int NULL DEFAULT NULL,
  `DeviceImage` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` decimal(10, 2) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`DeviceId`) USING BTREE,
  INDEX `DeviceTypeId`(`DeviceTypeId` ASC) USING BTREE,
  INDEX `RoomId`(`RoomId` ASC) USING BTREE,
  CONSTRAINT `device_ibfk_1` FOREIGN KEY (`DeviceTypeId`) REFERENCES `devicetype` (`DeviceTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `device_ibfk_2` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES (1, 'Smart TV 55 inch', 1, 3, 'https://dienmaygiagoc.com.vn/uploads/product/07_2021/08/tivi-samsung-4k-ua55au7700kxxv.jpg', 800.00, 'Operational', 'TV phòng Deluxe.', 0);
INSERT INTO `device` VALUES (2, 'Điều hòa trung tâm', 2, 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtvEUDragPG71XQpPDpRurempuX6XBK1aYRA&s', 1200.00, 'Operational', 'Máy lạnh mới nhất.', 0);
INSERT INTO `device` VALUES (3, 'Vòi sen nhiệt độ', 3, 4, 'https://www.tdm.vn/image/cache/catalog/products/product_s563c/sen-tam-caesar-s563c-1090x1090.jpg', 50.00, 'Operational', 'Vòi sen điều chỉnh nhiệt độ.', 0);
INSERT INTO `device` VALUES (4, 'Đèn ngủ cảm ứng', 4, 1, 'https://denngu.vn/uploads/thumb/db04-254-4.jpg', 30.00, 'Operational', 'Đèn ngủ với cảm biến chạm.', 0);
INSERT INTO `device` VALUES (5, 'Ghế sofa', 5, 5, 'https://mms.img.susercontent.com/vn-11134210-7ra0g-mai8bwt41mm980@resize_bs700x700', 350.00, 'Operational', 'Sofa êm ái trong phòng Suite.', 0);
INSERT INTO `device` VALUES (6, 'Tủ quần áo gỗ sồi', 6, 6, 'https://bizweb.dktcdn.net/100/391/155/files/tu-ao-canh-kinh-tada-tdta18-2.jpg?v=1700627228445', 450.00, 'Operational', 'Tủ lưu trữ cho phòng gia đình.', 0);
INSERT INTO `device` VALUES (7, 'Hộp khóa an toàn', 7, 7, 'https://img.lazcdn.com/g/p/c68dfcd35b7929a0f448f39336f9280a.jpg_960x960q80.jpg_.webp', 150.00, 'Operational', 'Két sắt điện tử phòng President.', 0);
INSERT INTO `device` VALUES (8, 'Bếp điện từ đơn', 8, 8, 'https://cdn.tgdd.vn/Products/Images/1982/84559/bep-dien-electrolux-etd42sks-1-700x467-1.jpg', 100.00, 'Operational', 'Bếp cho phòng Studio.', 0);
INSERT INTO `device` VALUES (9, 'Nệm King Coil', 9, 1, 'https://www.everonvn.vn/images/upload/hinhanh/dem-lo-xo-king-koil-wakefield-firm.jpg', 700.00, 'Operational', 'Nệm cao cấp cho giấc ngủ.', 0);
INSERT INTO `device` VALUES (10, 'Máy sấy tóc', 10, 2, 'https://sanhangre.net/image/cache/catalog/hoanganh/may-say-toc-gap-gon-panasonic-past-eh-nd30-k645/may-say-toc-panasonic-EH-ND30-K645-1-1000x1000.png', 20.00, 'Operational', 'Máy sấy tóc phòng Standard Twin.', 0);

-- ----------------------------
-- Table structure for devicetype
-- ----------------------------
DROP TABLE IF EXISTS `devicetype`;
CREATE TABLE `devicetype`  (
  `DeviceTypeId` int NOT NULL AUTO_INCREMENT,
  `DeviceTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`DeviceTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devicetype
-- ----------------------------
INSERT INTO `devicetype` VALUES (1, 'Electronics', 'Các thiết bị điện tử, giải trí.', 0);
INSERT INTO `devicetype` VALUES (2, 'Climate Control', 'Thiết bị kiểm soát nhiệt độ.', 0);
INSERT INTO `devicetype` VALUES (3, 'Plumbing', 'Các thiết bị liên quan đến nước.', 0);
INSERT INTO `devicetype` VALUES (4, 'Lighting', 'Hệ thống đèn và chiếu sáng.', 0);
INSERT INTO `devicetype` VALUES (5, 'Seating Furniture', 'Ghế, sofa, vật dụng để ngồi.', 0);
INSERT INTO `devicetype` VALUES (6, 'Storage Furniture', 'Tủ, kệ, vật dụng để lưu trữ.', 0);
INSERT INTO `devicetype` VALUES (7, 'Safety & Security', 'Thiết bị an ninh và an toàn.', 0);
INSERT INTO `devicetype` VALUES (8, 'Kitchen Appliance', 'Thiết bị bếp (cho phòng studio).', 0);
INSERT INTO `devicetype` VALUES (9, 'Bedding', 'Các vật dụng liên quan đến giường.', 0);
INSERT INTO `devicetype` VALUES (10, 'Miscellaneous', 'Các thiết bị khác.', 0);

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation`  (
  `EvaluationId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NULL DEFAULT NULL,
  `RoomId` int NULL DEFAULT NULL,
  `Rating` int NOT NULL,
  `Comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`EvaluationId`) USING BTREE,
  INDEX `RoomId`(`RoomId` ASC) USING BTREE,
  INDEX `UserId`(`UserId` ASC) USING BTREE,
  CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `EventId` int NOT NULL AUTO_INCREMENT,
  `EventName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EventTypeId` int NULL DEFAULT NULL,
  `EventImage` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `OrganizationDay` date NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `OrganizationLocation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` decimal(10, 2) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`EventId`) USING BTREE,
  INDEX `EventTypeId`(`EventTypeId` ASC) USING BTREE,
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`EventTypeId`) REFERENCES `eventtype` (`EventTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (1, 'Tiệc Gala cuối năm', 1, 'https://www.vietnambooking.com/wp-content/uploads/2023/03/to-chuc-gala-cuoi-nam-1.jpg', '2025-12-31', '2025-12-31 19:00:00', '2025-12-31 23:00:00', 'Grand Ballroom', 80.00, 'Scheduled', 'Tiệc mừng năm mới.', 0);
INSERT INTO `event` VALUES (2, 'Hội nghị Công nghệ 4.0', 2, 'https://medlatec.vn/media/12188/content/20210124_DSC04047(1).jpg', '2025-10-20', '2025-10-20 08:30:00', '2025-10-20 17:30:00', 'Phòng Hội Thảo A', 50.00, 'Completed', 'Hội nghị thường niên.', 0);
INSERT INTO `event` VALUES (3, 'Lễ cưới Viet Anh & Duy Tuan', 3, 'https://omni.vn/wp-content/uploads/2023/08/379770189_714421584047691_58163690908684653_n.jpg', '2025-11-15', '2025-11-15 18:00:00', '2025-11-15 22:00:00', 'Khu vườn ngoài trời', 120.00, 'Completed', 'Tiệc cưới lãng mạn.', 0);
INSERT INTO `event` VALUES (4, 'Team Building Beach Game', 4, 'https://media.licdn.com/dms/image/v2/D4E12AQFfbgW5gjcaEA/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1678177516224?e=2147483647&v=beta&t=O6uuvsRyA6eFzdGfalqNYt0aCHXbIU3jJ6KT22_9Ki0', '2025-09-01', '2025-09-01 09:00:00', '2025-09-01 16:00:00', 'Bãi biển', 30.00, 'Completed', 'Trò chơi gắn kết đội nhóm.', 0);
INSERT INTO `event` VALUES (6, 'Đêm nhạc Jazz', 6, 'https://salt.tkbcdn.com/ts/ds/50/bd/e8/66c02d8ec82f544fe58f5636e5489316.png', '2025-11-26', '2025-11-26 20:00:00', '2025-11-26 23:00:00', 'Bar tầng thượng', 10.00, 'Scheduled', 'Ca sĩ khách mời nổi tiếng.', 0);
INSERT INTO `event` VALUES (7, 'Lớp học làm Bánh Mì', 7, 'https://hocmonviet.edu.vn/wp-content/uploads/2022/03/anh-bai-khoa-hoc-lam-banh-mi-va-banh-ngot-hoc-mon-viet.jpg', '2025-12-05', '2025-12-05 14:00:00', '2025-12-05 16:00:00', 'Khu bếp', 15.00, 'Scheduled', 'Lớp học làm bánh truyền thống.', 0);
INSERT INTO `event` VALUES (8, 'Khóa Yoga 5 ngày', 8, 'https://yogaanvien.vn/wp-content/uploads/2020/07/hoc-huan-luyen-vien-yoga-04.png', '2025-08-10', '2025-08-10 06:00:00', '2025-08-14 18:00:00', 'Sân thượng', 150.00, 'Completed', 'Khóa học thư giãn và chăm sóc sức khỏe.', 0);
INSERT INTO `event` VALUES (9, 'Lễ hội Halloween Kids', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8VmTdrn-OHSNKO9Zg7vjvndS4ncmjzRPHnA&s', '2025-10-31', '2025-10-31 17:00:00', '2025-10-31 20:00:00', 'Kids Club', 5.00, 'Completed', 'Sự kiện hóa trang cho trẻ.', 0);
INSERT INTO `event` VALUES (10, 'Triển lãm Gốm Sứ', 10, 'https://imagevietnam.vnanet.vn//MediaUpload/Video/2022/02/21/anh-bia-.jpg', '2026-01-15', '2026-01-15 09:00:00', '2026-01-17 21:00:00', 'Hành lang chính', 0.00, 'Scheduled', 'Trưng bày tác phẩm gốm sứ.', 0);

-- ----------------------------
-- Table structure for eventtype
-- ----------------------------
DROP TABLE IF EXISTS `eventtype`;
CREATE TABLE `eventtype`  (
  `EventTypeId` int NOT NULL AUTO_INCREMENT,
  `EventTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`EventTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eventtype
-- ----------------------------
INSERT INTO `eventtype` VALUES (1, 'Gala Dinner', 'Tiệc tối trang trọng.', 0);
INSERT INTO `eventtype` VALUES (2, 'Conference', 'Hội nghị, hội thảo kinh doanh.', 0);
INSERT INTO `eventtype` VALUES (3, 'Wedding', 'Tiệc cưới và sự kiện liên quan.', 0);
INSERT INTO `eventtype` VALUES (4, 'Team Building', 'Hoạt động gắn kết đội nhóm.', 0);
INSERT INTO `eventtype` VALUES (5, 'Product Launch', 'Sự kiện ra mắt sản phẩm mới.', 0);
INSERT INTO `eventtype` VALUES (6, 'Live Music Night', 'Đêm nhạc sống, giải trí.', 0);
INSERT INTO `eventtype` VALUES (7, 'Cooking Class', 'Lớp học nấu ăn.', 0);
INSERT INTO `eventtype` VALUES (8, 'Yoga Retreat', 'Khóa thiền và yoga.', 0);
INSERT INTO `eventtype` VALUES (9, 'Kids Festival', 'Lễ hội dành cho trẻ em.', 0);
INSERT INTO `eventtype` VALUES (10, 'Art Exhibition', 'Triển lãm nghệ thuật.', 0);

-- ----------------------------
-- Table structure for eventvotes
-- ----------------------------
DROP TABLE IF EXISTS `eventvotes`;
CREATE TABLE `eventvotes`  (
  `EventVotesId` int NOT NULL AUTO_INCREMENT,
  `EventId` int NULL DEFAULT NULL,
  `UserId` int NULL DEFAULT NULL,
  `TotalAmount` decimal(10, 2) NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`EventVotesId`) USING BTREE,
  INDEX `EventId`(`EventId` ASC) USING BTREE,
  INDEX `UserId`(`UserId` ASC) USING BTREE,
  CONSTRAINT `eventvotes_ibfk_1` FOREIGN KEY (`EventId`) REFERENCES `event` (`EventId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `eventvotes_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eventvotes
-- ----------------------------

-- ----------------------------
-- Table structure for rentroomvotes
-- ----------------------------
DROP TABLE IF EXISTS `rentroomvotes`;
CREATE TABLE `rentroomvotes`  (
  `RentRoomVotesId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NULL DEFAULT NULL,
  `ActualCheckinDate` date NOT NULL,
  `ActualCheckoutDate` date NOT NULL,
  `TotalAmount` decimal(10, 2) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`RentRoomVotesId`) USING BTREE,
  INDEX `UserId`(`UserId` ASC) USING BTREE,
  CONSTRAINT `rentroomvotes_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rentroomvotes
-- ----------------------------

-- ----------------------------
-- Table structure for rentroomvotesdetail
-- ----------------------------
DROP TABLE IF EXISTS `rentroomvotesdetail`;
CREATE TABLE `rentroomvotesdetail`  (
  `RentRoomVotesDetailId` int NOT NULL AUTO_INCREMENT,
  `RentRoomVotesId` int NULL DEFAULT NULL,
  `RoomId` int NULL DEFAULT NULL,
  `RoomPrice` decimal(10, 2) NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`RentRoomVotesDetailId`) USING BTREE,
  INDEX `RentRoomVotesId`(`RentRoomVotesId` ASC) USING BTREE,
  INDEX `RoomId`(`RoomId` ASC) USING BTREE,
  CONSTRAINT `rentroomvotesdetail_ibfk_1` FOREIGN KEY (`RentRoomVotesId`) REFERENCES `rentroomvotes` (`RentRoomVotesId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rentroomvotesdetail_ibfk_2` FOREIGN KEY (`RoomId`) REFERENCES `room` (`RoomId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rentroomvotesdetail
-- ----------------------------

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `RoomId` int NOT NULL AUTO_INCREMENT,
  `RoomTypeId` int NULL DEFAULT NULL,
  `RoomImage` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` decimal(10, 2) NOT NULL,
  `NumberOfFloor` int NOT NULL,
  `MaximumNumberOfGuests` int NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoomArea` decimal(10, 2) NOT NULL,
  `Amenities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `RoomDetail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`RoomId`) USING BTREE,
  INDEX `RoomTypeId`(`RoomTypeId` ASC) USING BTREE,
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`RoomTypeId`) REFERENCES `roomtype` (`RoomTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 1, 'https://www.travelandleisure.com/thmb/91RZmoNXJa_t0PHDEcJDGJ0DeLg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-ritz-carlton-doha-003-TOP100HOTELSWB24-46560313fdc944db85c51e2cf3248d16.jpg', 80.00, 1, 2, 'Available', 'Phòng 101 Standard King, yên tĩnh.', 30.00, 'TV, WiFi, MiniBar', 'Chi tiết phòng King A', 0);
INSERT INTO `room` VALUES (2, 2, 'https://www.travelandleisure.com/thmb/6izVkZTQCpeUCFLFS6OMWILFlZ4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-oberoi-rajvilas-001-TOP100HOTELSWB24-1549929c8d194604a81946df8f114763.jpg', 85.00, 1, 3, 'Booked', 'Phòng 102 Standard Twin, gần thang máy.', 32.50, 'TV, WiFi, Tủ lạnh', 'Chi tiết phòng Twin A', 0);
INSERT INTO `room` VALUES (3, 3, 'https://www.travelandleisure.com/thmb/FgZEmXc9s9c4mB4QihkbBeqKKTw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-la-casa-de-la-playa-002-TOP100HOTELSWB24-7ed1ec8057484ee1a1cfa3140ef82d9b.jpg', 150.00, 2, 2, 'Available', 'Phòng 201 Deluxe King, ban công hướng biển.', 40.00, 'TV, WiFi, Bồn tắm', 'Chi tiết phòng Deluxe B', 0);
INSERT INTO `room` VALUES (4, 4, 'https://www.travelandleisure.com/thmb/91RZmoNXJa_t0PHDEcJDGJ0DeLg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-ritz-carlton-doha-003-TOP100HOTELSWB24-46560313fdc944db85c51e2cf3248d16.jpg', 160.00, 2, 4, 'Booked', 'Phòng 202 Deluxe Twin, view vườn.', 42.00, 'TV, WiFi, Bàn làm việc', 'Chi tiết phòng Deluxe C', 0);
INSERT INTO `room` VALUES (5, 5, 'https://www.travelandleisure.com/thmb/Q4rzCAOuJQ52WwKkM3S6aSso5qk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-park-hyatt-siem-reap-004-TOP100HOTELSWB24-01cbcb08ccab40e7a1035b0379c05c50.jpg', 250.00, 3, 3, 'Available', 'Phòng 301 Suite, view toàn cảnh.', 60.00, 'Phòng khách, Bồn sục', 'Chi tiết phòng Suite D', 0);
INSERT INTO `room` VALUES (6, 6, 'https://www.travelandleisure.com/thmb/C9miLcmFKyzHdpHxjcLHtfwwS7g=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-selman-marrakech-005-TOP100HOTELSWB24-acfd3277b71948358cf5a73788dc3039.jpg', 180.00, 4, 5, 'Available', 'Phòng 401 Family, phù hợp gia đình.', 55.00, '2 giường, Khu vực trẻ em', 'Chi tiết phòng Family E', 0);
INSERT INTO `room` VALUES (7, 7, 'https://www.travelandleisure.com/thmb/-XQ1zwrGPodjLY7UrofhYoB84JU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-gran-hotel-mas-d-en-bruno-006-TOP100HOTELSWB24-8e96b4d9424d4eddbecda8cccd9f3b33.jpg', 1500.00, 5, 4, 'Booked', 'Phòng 501 President Suite, có quản gia riêng.', 150.00, 'Phòng họp, Quản gia', 'Chi tiết phòng President F', 0);
INSERT INTO `room` VALUES (8, 8, 'https://www.travelandleisure.com/thmb/-K-7-LSmBss4uxndpREQu7X9UQM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-regent-hong-kong-006-TOP100HOTELSWB24-98a266b4b582455cb52965f1aea0d5a7.jpg', 95.00, 1, 2, 'Available', 'Phòng 103 Studio, có bếp nhỏ.', 35.00, 'Bếp điện, Dụng cụ nấu ăn', 'Chi tiết phòng Studio G', 0);
INSERT INTO `room` VALUES (9, 9, 'https://www.travelandleisure.com/thmb/6zlUzhDBHOs2HYeb_Lmsn1_YBGk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-pendry-newport-beach-008-TOP100HOTELSWB24-19920498dafc4535a90faa9bd7aacf43.jpg', 170.00, 3, 5, 'Available', 'Phòng 302 Connecting, lý tưởng cho nhóm.', 65.00, '2 Phòng tắm', 'Chi tiết phòng Connecting H', 0);
INSERT INTO `room` VALUES (10, 10, 'https://www.travelandleisure.com/thmb/pBauS6_9UXvRvxtW3RJcQ8B0Sg0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-alma-resort-009-TOP100HOTELSWB24-398b7644bae5479187dfea58f1493e14.jpg', 75.00, 1, 2, 'Available', 'Phòng 104 Handicap, thiết kế đặc biệt.', 35.00, 'Đường dốc, Tay vịn', 'Chi tiết phòng Handicap I', 0);
INSERT INTO `room` VALUES (11, 3, 'https://www.travelandleisure.com/thmb/7U1mqw7mwbLPkAKeg6hxEiVWPZ0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/TAL-waldorf-astoria-maldives-ithaafushi-010-TOP100HOTELSWB24-45fe09accf304cb5897b51755091a90c.jpg', 4.00, 12321, 123123, 'Occupied', '231231', 5.00, '123', '123', 0);

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype`  (
  `RoomTypeId` int NOT NULL AUTO_INCREMENT,
  `RoomTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`RoomTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES (1, 'Standard King', 'Phòng tiêu chuẩn giường King, view thành phố.', 0);
INSERT INTO `roomtype` VALUES (2, 'Standard Twin', 'Phòng tiêu chuẩn 2 giường đơn, view thành phố.', 0);
INSERT INTO `roomtype` VALUES (3, 'Deluxe King', 'Phòng cao cấp giường King, có ban công.', 0);
INSERT INTO `roomtype` VALUES (4, 'Deluxe Twin', 'Phòng cao cấp 2 giường đơn, có ban công.', 0);
INSERT INTO `roomtype` VALUES (5, 'Suite View', 'Phòng Suite lớn, tầm nhìn đẹp nhất.', 0);
INSERT INTO `roomtype` VALUES (6, 'Family Room', 'Phòng gia đình, 1 giường King và 1 giường Twin.', 0);
INSERT INTO `roomtype` VALUES (7, 'President Suite', 'Phòng Tổng thống, sang trọng bậc nhất.', 0);
INSERT INTO `roomtype` VALUES (8, 'Studio', 'Phòng Studio có khu vực bếp nhỏ.', 0);
INSERT INTO `roomtype` VALUES (9, 'Connecting Room', '2 phòng Standard có cửa thông nhau.', 0);
INSERT INTO `roomtype` VALUES (10, 'Handicap Accessible', 'Phòng tiêu chuẩn dành cho người khuyết tật.', 0);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `ServiceId` int NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ServiceTypeId` int NULL DEFAULT NULL,
  `ServiceImage` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Price` decimal(10, 2) NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ServiceId`) USING BTREE,
  INDEX `ServiceTypeId`(`ServiceTypeId` ASC) USING BTREE,
  CONSTRAINT `service_ibfk_1` FOREIGN KEY (`ServiceTypeId`) REFERENCES `servicetype` (`ServiceTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 'Burger bò phô mai', 1, 'https://burgerking.vn/media/catalog/product/cache/1/image/1800x/040ec09b1e35df139433887a97daa66f/e/x/exc_whopper_2.jpg', 12.00, 'Món ăn nhanh phục vụ tại phòng.', 0);
INSERT INTO `service` VALUES (2, 'Cà phê Latte', 2, 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Latte_at_Doppio_Ristretto_Chiang_Mai_01.jpg', 5.00, 'Đồ uống cà phê.', 0);
INSERT INTO `service` VALUES (3, 'Massage Thái 60p', 3, 'https://chamspamassage.com/wp-content/uploads/2023/06/Dia-chi-massage-nam-o-Da-Nang-Whoo-Spa-Cham-Spa-Massage.jpg', 75.00, 'Liệu pháp massage truyền thống.', 0);
INSERT INTO `service` VALUES (4, 'Đưa đón sân bay khứ hồi', 4, 'https://viptrip.vn/public/upload/service/xe-dua-don-san-bay-noi-bai_24-11-2023_375814804.jpg', 90.00, 'Dịch vụ xe riêng 2 chiều.', 0);
INSERT INTO `service` VALUES (5, 'Giặt là theo kg', 5, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQah9gRcGsz-DcZdn9AfuJr-PAnTyQDUqQEuw&s', 3.00, 'Tính theo mỗi kg đồ.', 0);
INSERT INTO `service` VALUES (6, 'Thuê thuyền Kayak', 6, 'https://bizweb.dktcdn.net/100/072/558/articles/kayak-vinh-lan-ha.jpg?v=1585364283320', 20.00, 'Cho thuê theo giờ.', 0);
INSERT INTO `service` VALUES (7, 'Thuê phòng họp', 7, 'https://maisonoffice.vn/wp-content/uploads/2022/09/cho-thue-phong-hop-theo-gio-tai-tphcm.jpg', 50.00, 'Thuê phòng họp nhỏ theo giờ.', 0);
INSERT INTO `service` VALUES (8, 'Tour khám phá ẩm thực', 8, 'https://image.kkday.com/v2/image/get/c_fit%2Cq_55%2Ct_webp%2Cw_960/s1.kkday.com/product_131886/20220804030600_OVO9u/jpg', 40.00, 'Tour nửa ngày thưởng thức món ăn địa phương.', 0);
INSERT INTO `service` VALUES (9, 'Lớp vẽ cho trẻ em', 9, 'https://rosie.vn/wp-content/uploads/2023/04/lop-hoc-ve-cho-be-rosie-music-center-1.jpeg', 10.00, 'Lớp học nghệ thuật cho trẻ.', 0);
INSERT INTO `service` VALUES (10, 'Thuê xe máy 1 ngày', 10, 'https://chothuexemaysaigon59.com/uploads/6809/news/36334706805803d1aef7/thuexemaysaigonkhongcanbanglai2.jpg', 15.00, 'Cho thuê xe máy.', 0);

-- ----------------------------
-- Table structure for servicetype
-- ----------------------------
DROP TABLE IF EXISTS `servicetype`;
CREATE TABLE `servicetype`  (
  `ServiceTypeId` int NOT NULL AUTO_INCREMENT,
  `ServiceTypeName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ServiceTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servicetype
-- ----------------------------
INSERT INTO `servicetype` VALUES (1, 'Room Service', 'Dịch vụ phục vụ ăn uống tại phòng.', 0);
INSERT INTO `servicetype` VALUES (2, 'Food & Beverage', 'Đồ ăn và thức uống tại nhà hàng.', 0);
INSERT INTO `servicetype` VALUES (3, 'Wellness & Spa', 'Spa, Massage, Thể hình.', 0);
INSERT INTO `servicetype` VALUES (4, 'Transport', 'Vận chuyển, đưa đón sân bay.', 0);
INSERT INTO `servicetype` VALUES (5, 'Laundry', 'Dịch vụ giặt ủi.', 0);
INSERT INTO `servicetype` VALUES (6, 'Entertainment', 'Giải trí, thuê thiết bị.', 0);
INSERT INTO `servicetype` VALUES (7, 'Business Center', 'Dịch vụ văn phòng, in ấn.', 0);
INSERT INTO `servicetype` VALUES (8, 'Excursion', 'Tour tham quan địa phương.', 0);
INSERT INTO `servicetype` VALUES (9, 'Kids Club', 'Dịch vụ chăm sóc trẻ em.', 0);
INSERT INTO `servicetype` VALUES (10, 'Rentals', 'Cho thuê xe đạp, ô tô.', 0);

-- ----------------------------
-- Table structure for servicevotes
-- ----------------------------
DROP TABLE IF EXISTS `servicevotes`;
CREATE TABLE `servicevotes`  (
  `ServiceVotesId` int NOT NULL AUTO_INCREMENT,
  `ServiceId` int NULL DEFAULT NULL,
  `UserId` int NULL DEFAULT NULL,
  `Quantity` int NOT NULL,
  `TotalAmount` decimal(10, 2) NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ServiceVotesId`) USING BTREE,
  INDEX `ServiceId`(`ServiceId` ASC) USING BTREE,
  INDEX `UserId`(`UserId` ASC) USING BTREE,
  CONSTRAINT `servicevotes_ibfk_1` FOREIGN KEY (`ServiceId`) REFERENCES `service` (`ServiceId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicevotes_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of servicevotes
-- ----------------------------

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `StaffId` int NOT NULL,
  `StaffName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `StaffImage` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PhoneNumber` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Salary` decimal(10, 2) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `WorkStartDate` date NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`StaffId`) USING BTREE,
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `account` (`AccountId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 'Nguyễn Văn Quản Lý', 'https://lh3.googleusercontent.com/d/1zqMIdozBfhSb88dR0zNrtrdVLKiLf7qF', '1980-04-30', 'Male', '0981111111', '10 Phan Chu Trinh, HN', 'Manager', 3000.00, 'Working', '2017-12-31', 'Quản lý chung khách sạn.', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `UserId` int NOT NULL,
  `IdentificationNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserImage` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PhoneNumber` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`UserId`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `account` (`AccountId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '534534534534', 'Anh', 'https://img.freepik.com/premium-vector/person-with-blue-shirt-that-says-name-person_1029948-7040.jpg?semt=ais_hybrid&w=740&q=80', '2004-04-29', 'Male', '0234354534', 'Hải Dương', 0);
INSERT INTO `users` VALUES (2, '703423609813', 'Hoang', 'https://img.freepik.com/premium-vector/person-with-blue-shirt-that-says-name-person_1029948-7040.jpg?semt=ais_hybrid&w=740&q=80', '2020-04-26', 'Male', '0234354534', 'Hải Dương', 0);
INSERT INTO `users` VALUES (3, '214790115481', 'Test', 'https://img.freepik.com/premium-vector/person-with-blue-shirt-that-says-name-person_1029948-7040.jpg?semt=ais_hybrid&w=740&q=80', '2000-04-26', 'Male', '0234354534', 'Hải Dương', 0);

SET FOREIGN_KEY_CHECKS = 1;
