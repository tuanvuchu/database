/*
 Navicat Premium Dump SQL

 Source Server         : docker_postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 180000 (180000)
 Source Host           : localhost:5432
 Source Catalog        : hapas
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 180000 (180000)
 File Encoding         : 65001

 Date: 29/11/2025 13:41:49
*/


-- ----------------------------
-- Table structure for Admin
-- ----------------------------
DROP TABLE IF EXISTS "public"."Admin";
CREATE TABLE "public"."Admin" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "email" text COLLATE "pg_catalog"."default" NOT NULL,
  "password_hash" text COLLATE "pg_catalog"."default" NOT NULL,
  "full_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "role" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'staff'::text,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Admin
-- ----------------------------
INSERT INTO "public"."Admin" VALUES ('4ff74bdc-62f8-44d1-b3a4-7e6fc90fcfb8', 'manager@hapas.com', '$2a$10$f7muqBiyq50YY0J12WH0ee1l0HLVPv82MUsD1Q3PYlxF.JtGkKwvq', 'Quản Lý', 'manager', '2025-10-17 18:05:13.308', '2025-10-17 18:05:13.308');
INSERT INTO "public"."Admin" VALUES ('b99b1e80-d81c-4c30-b1b7-84cd11c9a3fd', 'staff@hapas.com', '$2a$10$ekT.kc6JlkVZYmUvqzFMDOU/2oIB5waqIi9L0maJvzl0glYJp.r7m', 'Nhân Viên', 'staff', '2025-10-17 18:05:13.308', '2025-10-17 18:05:13.308');
INSERT INTO "public"."Admin" VALUES ('828d44ec-14e2-4ffd-99ed-2bc741ef1e5c', 'admin@hapas.com', '$2a$10$xD40u5/q2p4CJ2qxebWxd.3ZS68E7OynCCrm.rq06v/KAnF5b02yi', 'Quản Trị Viên', 'super_admin', '2025-10-17 18:05:13.308', '2025-10-17 18:05:13.308');

-- ----------------------------
-- Table structure for Category
-- ----------------------------
DROP TABLE IF EXISTS "public"."Category";
CREATE TABLE "public"."Category" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "image_url" text COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Category
-- ----------------------------
INSERT INTO "public"."Category" VALUES ('398a2925-584e-43c0-97df-16e61c406146', 'Túi Xách Công Sở', 'Những chiếc túi xách thanh lịch phù hợp cho môi trường công sở chuyên nghiệp. Thiết kế tinh tế, chất liệu cao cấp, nhiều ngăn tiện ích giúp bạn tổ chức đồ dùng một cách gọn gàng và chuyên nghiệp.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('46bc7db3-0038-4804-8f19-b9fe86e13caa', 'Túi Xách Thời Trang', 'Túi xách thiết kế thời trang cho các dịp đi chơi, dạo phố. Với nhiều kiểu dáng và màu sắc đa dạng, các sản phẩm này sẽ giúp bạn nổi bật và thể hiện phong cách cá nhân.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('dc740ac2-1518-46e4-b81a-8138a436cd21', 'Ba Lô', 'Ba lô thời trang và tiện dụng cho công việc và du lịch. Với thiết kế ergonomic, đệm lưng thoáng khí và nhiều ngăn chứa, ba lô của chúng tôi là lựa chọn lý tưởng cho sinh viên, nhân viên văn phòng và những người yêu thích du lịch.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('0399519b-d6b6-4aca-9ed9-a2185eb9df1f', 'Ví', 'Các loại ví da cao cấp cho nam và nữ. Từ ví cầm tay sang trọng đến ví dài cá tính, tất cả đều được làm từ chất liệu da thật hoặc da cao cấp, đảm bảo độ bền và tính thẩm mỹ cao.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('d9bc5a9f-213e-46b9-a3e0-255189a5e245', 'Túi Đeo Chéo', 'Túi đeo chéo nhỏ gọn, tiện lợi cho các hoạt động hàng ngày. Thiết kế trẻ trung, năng động với nhiều ngăn chứa phù hợp để mang theo điện thoại, ví, chìa khóa và các vật dụng cá nhân khác.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('53648faa-e25a-4170-a4de-9eddd1079777', 'Vali Du Lịch', 'Vali chất lượng cao cho các chuyến du lịch dài ngày. Với chất liệu bền bỉ, bánh xe xoay 360 độ mượt mà và tay kéo chắc chắn, vali của chúng tôi sẽ đồng hành cùng bạn trong mọi hành trình.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('2e520a2f-9331-4fe9-97fd-2f43a0a671ec', 'Túi Tote', 'Túi tote rộng rãi, phù hợp để mang theo nhiều vật dụng. Với thiết kế đơn giản nhưng tinh tế, túi tote là lựa chọn hoàn hảo cho việc đi chợ, đi làm hoặc đi chơi cuối tuần.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('885e5e6b-2ad4-44be-828e-50e2b696ae80', 'Phụ Kiện', 'Những phụ kiện thời trang cao cấp để bổ sung cho phong cách của bạn. Từ khăn lụa mềm mại đến móc khóa độc đáo, mỗi phụ kiện đều được thiết kế tỉ mỉ để tôn vinh vẻ đẹp của bạn.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('a94d6d04-e4fe-433e-af4f-dac7c671072a', 'Túi Đựng Laptop', 'Túi đựng laptop chuyên dụng với ngăn đệm bảo vệ thiết bị công nghệ. Thiết kế hiện đại với nhiều ngăn phụ để tổ chức các phụ kiện như sạc, chuột, tài liệu một cách gọn gàng.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');
INSERT INTO "public"."Category" VALUES ('c9255a07-4257-421b-98db-8b46b72f117c', 'Túi Du Lịch', 'Túi du lịch đa năng với nhiều kích thước phù hợp cho các chuyến đi ngắn hoặc dài ngày. Chất liệu chống thấm nước, khóa kéo bền bỉ và nhiều ngăn chứa giúp bạn sắp xếp hành lý một cách hiệu quả.', NULL, 't', '2025-10-17 18:05:13.329', '2025-10-17 18:05:13.329');

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."Customer";
CREATE TABLE "public"."Customer" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "email" text COLLATE "pg_catalog"."default" NOT NULL,
  "password_hash" text COLLATE "pg_catalog"."default" NOT NULL,
  "full_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "phone" text COLLATE "pg_catalog"."default",
  "address" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Customer
-- ----------------------------
INSERT INTO "public"."Customer" VALUES ('50850326-555d-4d61-92be-ada9b9dc25a4', 'customer@hapas.com', '$2a$10$SdUyDTUwI6YoVe8ACpvpUuWvDzdMGeAJaysuVRo.saFBq5GSJnrpq', 'Nguyễn Văn A', '0901234567', '123 Đường ABC, Phường XYZ, Quận 1, TP. HCM', '2025-10-17 18:05:14.251', '2025-10-17 18:05:14.251');
INSERT INTO "public"."Customer" VALUES ('4564de21-40f8-4b6f-821f-a158b4576209', 'customer2@hapas.com', '$2a$10$6x96BEQsCn7pKBekKr94N.judXtgqdz4CsqUT52NKXU1BhEWQxZIi', 'Trần Thị B', '0907654321', '456 Đường DEF, Phường GHI, Quận 3, TP. HCM', '2025-10-17 18:05:14.251', '2025-10-17 18:05:14.251');
INSERT INTO "public"."Customer" VALUES ('a37bd695-55ec-400f-93f6-2c465a347931', 'customer3@hapas.com', '$2a$10$MOnkNX4LvSjzEjFKq.gyIujrr3ciqIZurb.AJ0jAViagzwP4.LxmC', 'Lê Văn C', '0909876543', '789 Đường JKL, Phường MNO, Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:14.251', '2025-10-17 18:05:14.251');
INSERT INTO "public"."Customer" VALUES ('28ddd85f-4889-46db-a58d-908ce3a24559', 'nguyenvana@gmail.com', '$2a$10$OXXMMxM2hhgzZwFK5qwmZeP7wsql62zauxckbsIOgUzZqzz376YNS', 'Nguyễn Văn An', '0912345678', '234 Đường Nguyễn Trãi, Phường Bến Thành, Quận 1, TP. HCM', '2025-10-17 18:05:14.251', '2025-10-17 18:05:14.251');
INSERT INTO "public"."Customer" VALUES ('f176f7d4-3ac5-4a95-ad5b-4c0dfd8a4b1e', 'tranthib@gmail.com', '$2a$10$JPKMxpNb5zjI8leBuXwemuBRY7lwePCQHqL9y2oNkqEnQt80L7jmi', 'Trần Thị Bình', '0987654321', '567 Đường Lê Duẩn, Phường Hải Châu 1, Quận Hải Châu, Đà Nẵng', '2025-10-17 18:05:14.251', '2025-10-17 18:05:14.251');
INSERT INTO "public"."Customer" VALUES ('26a1a7b4-ef5f-441b-b498-e629cad396fd', 'chutuanvu0206@gmail.com', '$2a$10$xD40u5/q2p4CJ2qxebWxd.3ZS68E7OynCCrm.rq06v/KAnF5b02yi', 'Chu Tuấn Vũ', '0967785311', 'Test', '2025-10-17 18:42:01.087', '2025-10-17 18:42:01.087');

-- ----------------------------
-- Table structure for Inventory
-- ----------------------------
DROP TABLE IF EXISTS "public"."Inventory";
CREATE TABLE "public"."Inventory" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "quantity" int4 NOT NULL,
  "reserved_quantity" int4 NOT NULL DEFAULT 0,
  "location" text COLLATE "pg_catalog"."default",
  "last_updated" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of Inventory
-- ----------------------------
INSERT INTO "public"."Inventory" VALUES ('14def9d1-24f0-4f2a-9ef0-bbaf29d03a48', 'fb6db925-df1a-41e2-8e99-274b0b36c0bc', 118, 13, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.45');
INSERT INTO "public"."Inventory" VALUES ('81bb98c1-d3fa-4ac9-9778-a2b1299e369b', 'fb6db925-df1a-41e2-8e99-274b0b36c0bc', 172, 9, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.455');
INSERT INTO "public"."Inventory" VALUES ('68834aef-2d72-4d1e-862d-ced2b219340f', 'fb6db925-df1a-41e2-8e99-274b0b36c0bc', 126, 11, 'Kho Chính - Quận 1, TP. HCM', '2025-10-17 18:05:13.459');
INSERT INTO "public"."Inventory" VALUES ('516aa76f-c6c9-4ad5-b5ab-52147fff1021', '1fc6fcf2-22c5-4c43-8829-8bb5d9f62948', 129, 9, 'Cửa Hàng - Quận Phú Nhuận, TP. HCM', '2025-10-17 18:05:13.462');
INSERT INTO "public"."Inventory" VALUES ('5c3556e7-2d54-489a-9c29-66ac81e22129', 'f016542b-615b-438d-9b95-04f6624c015a', 115, 15, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.468');
INSERT INTO "public"."Inventory" VALUES ('6a774f84-4c8c-4e7a-ac62-d08b8e434534', '6637cf95-aa37-450c-ae49-9cd1188055f3', 159, 3, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.471');
INSERT INTO "public"."Inventory" VALUES ('8e00baaa-fa43-412e-9636-c1a09489b1f1', '6637cf95-aa37-450c-ae49-9cd1188055f3', 152, 0, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.475');
INSERT INTO "public"."Inventory" VALUES ('0d91fcd4-57ab-4c48-8c2e-84498b789062', '4b25f37f-b5e1-4778-aed7-e8727ea0dcdd', 163, 5, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.478');
INSERT INTO "public"."Inventory" VALUES ('92b0e3da-e59a-4b1a-9289-c72015c2647b', '4b25f37f-b5e1-4778-aed7-e8727ea0dcdd', 78, 2, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.482');
INSERT INTO "public"."Inventory" VALUES ('7a01f419-a03f-4459-90c2-5c83882e51ae', '4b25f37f-b5e1-4778-aed7-e8727ea0dcdd', 117, 8, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.486');
INSERT INTO "public"."Inventory" VALUES ('baa604bd-a325-4114-a882-74e8bb1d9e6b', '4ec6f8c2-923e-48af-85a1-76e1c9354fcd', 96, 7, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.494');
INSERT INTO "public"."Inventory" VALUES ('dfc7f2f6-b642-4cec-a9ba-fd8454e9f460', '4ec6f8c2-923e-48af-85a1-76e1c9354fcd', 129, 17, 'Cửa Hàng - Quận Phú Nhuận, TP. HCM', '2025-10-17 18:05:13.499');
INSERT INTO "public"."Inventory" VALUES ('de0abc93-c59f-4a60-937f-2719f31eca08', '4ec6f8c2-923e-48af-85a1-76e1c9354fcd', 56, 7, 'Cửa Hàng - Quận 3, TP. HCM', '2025-10-17 18:05:13.503');
INSERT INTO "public"."Inventory" VALUES ('3aa3dba5-3239-445e-93b5-c66c394a2e7e', 'de56a642-9833-4af7-bf94-577ab4982f1a', 48, 5, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.507');
INSERT INTO "public"."Inventory" VALUES ('44fa549e-1ca3-4b44-8ab1-e5130c80dfdd', 'f983bb2b-2b9b-410b-8222-8472710bc2e1', 129, 1, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.51');
INSERT INTO "public"."Inventory" VALUES ('9a67505c-8574-4c8a-82db-e2b8be27e348', 'f983bb2b-2b9b-410b-8222-8472710bc2e1', 131, 0, 'Cửa Hàng - Quận 3, TP. HCM', '2025-10-17 18:05:13.513');
INSERT INTO "public"."Inventory" VALUES ('2def33e4-bc1c-4486-ac02-4734551d4c6e', '7dbc1ffd-0583-4e92-a5a4-558697457eda', 139, 17, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.522');
INSERT INTO "public"."Inventory" VALUES ('727614de-2e09-404a-aa42-e2d9eb37aae0', 'd8c6bac2-cbf9-454e-be80-521df83025d8', 171, 13, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.525');
INSERT INTO "public"."Inventory" VALUES ('ee27a72b-0c9a-44a7-a54c-47c8cbf370de', 'b89d986b-f896-48b5-a31b-17d5fed53881', 55, 2, 'Kho Chính - Quận 1, TP. HCM', '2025-10-17 18:05:13.529');
INSERT INTO "public"."Inventory" VALUES ('93ea1c2a-a71b-44d6-8b05-e108546c1e97', 'b89d986b-f896-48b5-a31b-17d5fed53881', 66, 14, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.533');
INSERT INTO "public"."Inventory" VALUES ('0313d1d7-c5cb-4b8e-b603-801f67afefae', 'b89d986b-f896-48b5-a31b-17d5fed53881', 85, 3, 'Cửa Hàng - Quận 3, TP. HCM', '2025-10-17 18:05:13.536');
INSERT INTO "public"."Inventory" VALUES ('fc8391c8-1dd7-401f-b5d7-3f465b517abb', '76fa378f-d1ee-45d2-b6ff-231bc2bb3b3f', 146, 17, 'Cửa Hàng - Quận 3, TP. HCM', '2025-10-17 18:05:13.539');
INSERT INTO "public"."Inventory" VALUES ('53a810b9-eeb8-4f04-a14d-b73be073aaae', '76fa378f-d1ee-45d2-b6ff-231bc2bb3b3f', 49, 2, 'Kho Chính - Quận 1, TP. HCM', '2025-10-17 18:05:13.543');
INSERT INTO "public"."Inventory" VALUES ('58f39cff-7fc9-4592-81d1-172dc8fbf176', '7a6b5090-6a33-4541-9221-519f630a90fa', 136, 16, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.547');
INSERT INTO "public"."Inventory" VALUES ('f13d2822-d87a-4fb2-91b1-6dc1e89f9948', '7a6b5090-6a33-4541-9221-519f630a90fa', 130, 17, 'Cửa Hàng - Quận Phú Nhuận, TP. HCM', '2025-10-17 18:05:13.55');
INSERT INTO "public"."Inventory" VALUES ('8af7ec9b-436f-4187-b885-562c3c30d1cd', '7a6b5090-6a33-4541-9221-519f630a90fa', 75, 0, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.554');
INSERT INTO "public"."Inventory" VALUES ('959aa9a9-9624-42fe-8ac3-f4931218d170', 'ceb64e90-54f9-4dea-8428-42192868fbb4', 30, 15, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.557');
INSERT INTO "public"."Inventory" VALUES ('6ceb64ba-5594-4140-9cd4-f96099f6b07e', 'dd4d5d3b-50a6-4f5a-96bf-4b442df0664d', 36, 16, 'Cửa Hàng - Quận Phú Nhuận, TP. HCM', '2025-10-17 18:05:13.572');
INSERT INTO "public"."Inventory" VALUES ('2e991e95-70a8-4aa4-9115-2f47ccc30a08', 'ecae34ff-cf47-4a43-960e-713170d6e427', 146, 17, 'Cửa Hàng - Quận Phú Nhuận, TP. HCM', '2025-10-17 18:05:13.575');
INSERT INTO "public"."Inventory" VALUES ('3539cbfb-4dde-45f0-a416-a4cda2e9b3c9', 'ecae34ff-cf47-4a43-960e-713170d6e427', 100, 19, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.578');
INSERT INTO "public"."Inventory" VALUES ('a86e9282-6034-4a42-82b0-b224b8138be8', 'ecae34ff-cf47-4a43-960e-713170d6e427', 119, 13, 'Cửa Hàng - Quận 3, TP. HCM', '2025-10-17 18:05:13.582');
INSERT INTO "public"."Inventory" VALUES ('d97d4ab0-9f7a-42c9-b832-efa0bb8c6de4', 'c421c851-349e-4b46-a0d3-10dc70edcda3', 88, 7, 'Kho Phụ - Quận Bình Thạnh, TP. HCM', '2025-10-17 18:05:13.56');
INSERT INTO "public"."Inventory" VALUES ('18a10abb-2ba3-430b-887c-287bc2843e3b', 'c421c851-349e-4b46-a0d3-10dc70edcda3', 132, 1, 'Kho Miền Bắc - Hà Nội', '2025-10-17 18:05:13.564');
INSERT INTO "public"."Inventory" VALUES ('31b54c82-fa40-4424-876c-29f7d7164995', 'c421c851-349e-4b46-a0d3-10dc70edcda3', 87, 20, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.568');
INSERT INTO "public"."Inventory" VALUES ('46271d9a-7cac-4480-8936-423c13d8195f', '1f046793-c23d-4324-8f76-887a108f15a7', 123, 11, 'Kho Miền Trung - Đà Nẵng', '2025-10-17 18:05:13.519');

-- ----------------------------
-- Table structure for Order
-- ----------------------------
DROP TABLE IF EXISTS "public"."Order";
CREATE TABLE "public"."Order" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "status" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'pending'::text,
  "total_amount" numeric(65,30) NOT NULL,
  "shipping_address" text COLLATE "pg_catalog"."default",
  "billing_address" text COLLATE "pg_catalog"."default",
  "order_date" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "shipped_date" timestamp(3),
  "delivered_date" timestamp(3),
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Order
-- ----------------------------
INSERT INTO "public"."Order" VALUES ('752d2726-cc69-4681-b2f2-e29444c537fd', '26a1a7b4-ef5f-441b-b498-e629cad396fd', 'pending', 129.990000000000000000000000000000, 'test, test, test, Hà Nội, Quận Ba Đình, Phường Phúc Xá, test', NULL, '2025-10-21 13:44:50.358', NULL, NULL, '2025-10-21 13:44:50.358', '2025-10-21 13:44:50.358');
INSERT INTO "public"."Order" VALUES ('06fc052a-6357-43f5-8865-5c6152c823e4', '26a1a7b4-ef5f-441b-b498-e629cad396fd', 'pending', 129.990000000000000000000000000000, 'test, test, ts, Hà Nội, Quận Ba Đình, Phường Phúc Xá, test', NULL, '2025-10-21 13:48:13.811', NULL, NULL, '2025-10-21 13:48:13.811', '2025-10-21 13:48:13.811');
INSERT INTO "public"."Order" VALUES ('56e1a8c5-a2b7-40c4-bd9f-6e7c5ceda08c', '26a1a7b4-ef5f-441b-b498-e629cad396fd', 'pending', 129.990000000000000000000000000000, 'test, test, ets, Hà Giang, Huyện Mèo Vạc, Xã Giàng Chu Phìn, tet', NULL, '2025-10-21 13:51:37.125', NULL, NULL, '2025-10-21 13:51:37.125', '2025-10-21 13:51:37.125');
INSERT INTO "public"."Order" VALUES ('816e935d-e6b4-4c3b-bc11-d4d66d75672b', '26a1a7b4-ef5f-441b-b498-e629cad396fd', 'pending', 39.990000000000000000000000000000, 'a, a, a, Đà Nẵng, Quận Thanh Khê, Phường Tân Chính, ', NULL, '2025-10-21 14:22:24.648', NULL, NULL, '2025-10-21 14:22:24.648', '2025-10-21 14:22:24.648');

-- ----------------------------
-- Table structure for OrderItem
-- ----------------------------
DROP TABLE IF EXISTS "public"."OrderItem";
CREATE TABLE "public"."OrderItem" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "quantity" int4 NOT NULL,
  "unit_price" numeric(65,30) NOT NULL,
  "total_price" numeric(65,30) NOT NULL
)
;

-- ----------------------------
-- Records of OrderItem
-- ----------------------------
INSERT INTO "public"."OrderItem" VALUES ('eb68c620-fdcd-4fd4-894b-d484326f8c22', '752d2726-cc69-4681-b2f2-e29444c537fd', 'ecae34ff-cf47-4a43-960e-713170d6e427', 1, 129.990000000000000000000000000000, 129.990000000000000000000000000000);
INSERT INTO "public"."OrderItem" VALUES ('1334b102-32be-4f29-a3e2-bae136594e13', '06fc052a-6357-43f5-8865-5c6152c823e4', 'ecae34ff-cf47-4a43-960e-713170d6e427', 1, 129.990000000000000000000000000000, 129.990000000000000000000000000000);
INSERT INTO "public"."OrderItem" VALUES ('12ea0c4e-85d6-400b-ba81-2e7c973abeea', '56e1a8c5-a2b7-40c4-bd9f-6e7c5ceda08c', 'c421c851-349e-4b46-a0d3-10dc70edcda3', 1, 129.990000000000000000000000000000, 129.990000000000000000000000000000);
INSERT INTO "public"."OrderItem" VALUES ('41329054-94f0-49f2-82e8-bf810f793725', '816e935d-e6b4-4c3b-bc11-d4d66d75672b', '1f046793-c23d-4324-8f76-887a108f15a7', 1, 39.990000000000000000000000000000, 39.990000000000000000000000000000);

-- ----------------------------
-- Table structure for Payment
-- ----------------------------
DROP TABLE IF EXISTS "public"."Payment";
CREATE TABLE "public"."Payment" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "payment_method" text COLLATE "pg_catalog"."default" NOT NULL,
  "transaction_id" text COLLATE "pg_catalog"."default",
  "status" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'pending'::text,
  "amount" numeric(65,30) NOT NULL,
  "payment_date" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of Payment
-- ----------------------------

-- ----------------------------
-- Table structure for Product
-- ----------------------------
DROP TABLE IF EXISTS "public"."Product";
CREATE TABLE "public"."Product" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "price" numeric(65,30) NOT NULL,
  "category_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "brand" text COLLATE "pg_catalog"."default",
  "material" text COLLATE "pg_catalog"."default",
  "color" text COLLATE "pg_catalog"."default",
  "size" text COLLATE "pg_catalog"."default",
  "image_urls" text COLLATE "pg_catalog"."default",
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Product
-- ----------------------------
INSERT INTO "public"."Product" VALUES ('fb6db925-df1a-41e2-8e99-274b0b36c0bc', 'Túi Xách Da Thật Cổ Điển Sang Trọng', 'Chiếc túi xách da thật cao cấp với thiết kế cổ điển, hoàn hảo cho công việc văn phòng. Được làm từ da bò thật 100%, bên trong có nhiều ngăn tiện lợi bao gồm ngăn laptop riêng biệt, ngăn điện thoại, ngăn thẻ và ngăn chính rộng rãi. Khóa kéo cao cấp, quai đeo có thể điều chỉnh độ dài và tay cầm chắc chắn tạo nên sự tiện nghi và sang trọng.', 199.990000000000000000000000000000, '398a2925-584e-43c0-97df-16e61c406146', 'Hapas Luxury', 'Da Bò Thật Ý 100%', 'Đen Bóng', '32x26x14 cm', NULL, 't', '2025-10-17 18:05:13.348', '2025-10-17 18:05:13.348');
INSERT INTO "public"."Product" VALUES ('1fc6fcf2-22c5-4c43-8829-8bb5d9f62948', 'Túi Xách Da Pu Sang Trọng Cao Cấp', 'Túi xách với thiết kế hiện đại, phù hợp cho cả công sở và các dịp đặc biệt. Chất liệu da PU cao cấp, bền đẹp theo thời gian với khả năng chống thấm nước tốt. Thiết kế tối giản với các đường nét tinh tế, khóa nam châm tiện lợi và tay cầm mềm mại. Bên trong có ngăn laptop 15 inch và nhiều ngăn phụ để tổ chức đồ dùng.', 149.990000000000000000000000000000, '398a2925-584e-43c0-97df-16e61c406146', 'Hapas Executive', 'Da PU Cao Cấp', 'Nâu Socola', '30x24x12 cm', NULL, 't', '2025-10-17 18:05:13.363', '2025-10-17 18:05:13.363');
INSERT INTO "public"."Product" VALUES ('f016542b-615b-438d-9b95-04f6624c015a', 'Túi Xách Da Lộn Thời Trang Năng Động', 'Túi xách da lộn với thiết kế trẻ trung, phù hợp cho các bạn trẻ năng động. Nhiều ngăn chứa tiện lợi và khóa kéo chắc chắn. Thiết kế hiện đại với các đường chỉ may tỉ mỉ, khóa kéo chống gỉ sét và quai đeo có thể tháo rời. Bên trong có ngăn laptop 13 inch, ngăn điện thoại và nhiều ngăn nhỏ để thẻ.', 129.990000000000000000000000000000, '46bc7db3-0038-4804-8f19-b9fe86e13caa', 'Hapas Urban', 'Da Lộn Cao Cấp', 'Đỏ Tía Sẫm', '28x22x10 cm', NULL, 't', '2025-10-17 18:05:13.37', '2025-10-17 18:05:13.37');
INSERT INTO "public"."Product" VALUES ('6637cf95-aa37-450c-ae49-9cd1188055f3', 'Túi Xách Da Cá Sấu Độc Đáo Sang Trọng', 'Túi xách với họa tiết da cá sấu độc đáo, mang lại vẻ sang trọng và đẳng cấp cho người sở hữu. Chất liệu da tổng hợp cao cấp với họa tiết da cá sấu 3D nổi bật. Thiết kế với khóa vàng hồng sang trọng, tay cầm da thật mềm mại và đáy túi có chân đệm chắc chắn. Bên trong có ngăn laptop 14 inch và nhiều ngăn phụ tiện ích.', 299.990000000000000000000000000000, '46bc7db3-0038-4804-8f19-b9fe86e13caa', 'Hapas Exotic', 'Da Cá Sấu Nhân Tạo Cao Cấp', 'Đen Nhám', '35x28x16 cm', NULL, 't', '2025-10-17 18:05:13.374', '2025-10-17 18:05:13.374');
INSERT INTO "public"."Product" VALUES ('4b25f37f-b5e1-4778-aed7-e8727ea0dcdd', 'Ba Lô Laptop Chuyên Nghiệp Cao Cấp', 'Chiếc ba lô chuyên nghiệp với ngăn đệm laptop riêng biệt, phù hợp cho dân văn phòng và sinh viên. Chất liệu vải chống thấm nước cao cấp với lớp lót chống sốc cho laptop. Thiết kế ergonomic với đệm lưng thoáng khí, dây đeo có thể điều chỉnh và tay cầm trên đỉnh. Có nhiều ngăn chứa bao gồm ngăn chính rộng rãi, ngăn laptop 17 inch, ngăn phụ và ngăn phía trước tiện lợi.', 129.990000000000000000000000000000, 'dc740ac2-1518-46e4-b81a-8138a436cd21', 'Hapas Professional', 'Vải Polyester Chống Thấm Cao Cấp', 'Xanh Navy Sang Trọng', '48x32x22 cm', NULL, 't', '2025-10-17 18:05:13.379', '2025-10-17 18:05:13.379');
INSERT INTO "public"."Product" VALUES ('4ec6f8c2-923e-48af-85a1-76e1c9354fcd', 'Ba Lô Du Lịch Nhỏ Gọn Tiện Lợi', 'Ba lô nhỏ gọn lý tưởng cho các chuyến đi ngắn ngày. Thiết kế gọn nhẹ với nhiều ngăn chứa tiện lợi. Chất liệu vải oxford bền bỉ với khả năng chống thấm nước tốt. Có ngăn chính rộng rãi, ngăn laptop 15 inch, ngăn phụ và ngăn phía trước. Dây đeo có đệm êm ái và tay cầm chắc chắn giúp mang vác thoải mái.', 89.989999999999990000000000000000, 'dc740ac2-1518-46e4-b81a-8138a436cd21', 'Hapas Traveler', 'Vải Oxford 600D', 'Xám Than', '42x28x18 cm', NULL, 't', '2025-10-17 18:05:13.386', '2025-10-17 18:05:13.386');
INSERT INTO "public"."Product" VALUES ('de56a642-9833-4af7-bf94-577ab4982f1a', 'Ví Da Gấp Đôi Cao Cấp Sang Trọng', 'Chiếc ví gấp đôi cổ điển với nhiều ngăn thẻ và ngăn tiền. Được làm từ da bò thật mềm mại, bền đẹp theo thời gian. Thiết kế với 6 ngăn thẻ trong suốt, 2 ngăn tiền giấy rộng rãi và ngăn xu riêng biệt. Đường chỉ may tỉ mỉ, khóa kéo mượt mà và logo in chìm sang trọng. Kích thước vừa vặn cho nam và nữ.', 59.990000000000000000000000000000, '0399519b-d6b6-4aca-9ed9-a2185eb9df1f', 'Hapas Classic', 'Da Bò Thật Ý', 'Nâu Socola Sang Trọng', '20x11x3.5 cm', NULL, 't', '2025-10-17 18:05:13.394', '2025-10-17 18:05:13.394');
INSERT INTO "public"."Product" VALUES ('f983bb2b-2b9b-410b-8222-8472710bc2e1', 'Ví Nam Dài Cá Tính Thời Trang', 'Ví nam dài với thiết kế sang trọng, nhiều ngăn chứa phù hợp cho các quý ông hiện đại. Chất liệu da pu cao cấp với khả năng chống thấm nước tốt. Thiết kế với 8 ngăn thẻ trong suốt, 2 ngăn tiền giấy rộng rãi, ngăn chứng minh thư riêng biệt và ngăn tiền xu. Đường chỉ may chắc chắn, khóa kéo bền bỉ và logo in nổi tinh tế.', 45.990000000000000000000000000000, '0399519b-d6b6-4aca-9ed9-a2185eb9df1f', 'Hapas Executive', 'Da PU Cao Cấp', 'Đen Bóng', '22x12x2.5 cm', NULL, 't', '2025-10-17 18:05:13.4', '2025-10-17 18:05:13.4');
INSERT INTO "public"."Product" VALUES ('1f046793-c23d-4324-8f76-887a108f15a7', 'Túi Đeo Chéo Mini Thời Trang Trẻ Trung', 'Túi đeo chéo mini nhỏ gọn, phù hợp cho các hoạt động hàng ngày như đi chơi, đi làm. Thiết kế trẻ trung, nhiều màu sắc lựa chọn. Chất liệu vải canvas bền bỉ với khả năng chống bám bụi tốt. Thiết kế với ngăn chính rộng rãi, ngăn điện thoại riêng biệt và ngăn khóa kéo phía trước. Dây đeo có thể điều chỉnh độ dài và khóa cài chắc chắn.', 39.990000000000000000000000000000, 'd9bc5a9f-213e-46b9-a3e0-255189a5e245', 'Hapas Urban', 'Vải Canvas Cao Cấp', 'Hồng Pastel', '22x16x7 cm', NULL, 't', '2025-10-17 18:05:13.406', '2025-10-17 18:05:13.406');
INSERT INTO "public"."Product" VALUES ('7dbc1ffd-0583-4e92-a5a4-558697457eda', 'Túi Đeo Chéo Unisex Năng Động Phong Cách', 'Túi đeo chéo phong cách unisex phù hợp cho cả nam và nữ. Thiết kế đơn giản nhưng tinh tế. Chất liệu vải kaki bền bỉ với khả năng chống thấm nước nhẹ. Thiết kế với ngăn chính rộng rãi, ngăn điện thoại riêng biệt và ngăn phía trước. Dây đeo có đệm êm ái và khóa cài chắc chắn giúp mang vác thoải mái.', 49.990000000000000000000000000000, 'd9bc5a9f-213e-46b9-a3e0-255189a5e245', 'Hapas Active', 'Vải Kaki Cao Cấp', 'Xanh Navy', '24x18x8 cm', NULL, 't', '2025-10-17 18:05:13.41', '2025-10-17 18:05:13.41');
INSERT INTO "public"."Product" VALUES ('d8c6bac2-cbf9-454e-be80-521df83025d8', 'Vali Kéo Nhôm Cao Cấp Sang Trọng', 'Vali kéo nhôm cao cấp với độ bền vượt trội, khóa TSA tiêu chuẩn quốc tế. Bánh xe xoay 360 độ mượt mà. Chất liệu hợp kim nhôm cao cấp với khả năng chống va đập tốt. Thiết kế với nhiều ngăn chứa bao gồm ngăn chính rộng rãi, ngăn quần áo có dây buộc, ngăn phụ và ngăn phía trước. Tay kéo đa tầng chắc chắn và khóa TSA an toàn cho du lịch quốc tế.', 249.990000000000000000000000000000, '53648faa-e25a-4170-a4de-9eddd1079777', 'Hapas Premium', 'Hợp Kim Nhôm Cao Cấp', 'Bạc Sang Trọng', '75x50x28 cm', NULL, 't', '2025-10-17 18:05:13.413', '2025-10-17 18:05:13.413');
INSERT INTO "public"."Product" VALUES ('b89d986b-f896-48b5-a31b-17d5fed53881', 'Vali Kéo Nhựa PC Siêu Nhẹ Thời Trang', 'Vali nhựa PC siêu nhẹ với khả năng chống va đập tốt. Thiết kế thời trang với nhiều màu sắc lựa chọn. Chất liệu nhựa PC siêu nhẹ với khả năng chống va đập tốt và chịu nhiệt tốt. Thiết kế với nhiều ngăn chứa bao gồm ngăn chính rộng rãi, ngăn quần áo có dây buộc, ngăn phụ và ngăn phía trước. Bánh xe xoay 360 độ mượt mà và tay kéo nhôm chắc chắn.', 179.990000000000000000000000000000, '53648faa-e25a-4170-a4de-9eddd1079777', 'Hapas Lite', 'Nhựa PC Cao Cấp', 'Tím Lavender', '68x45x25 cm', NULL, 't', '2025-10-17 18:05:13.419', '2025-10-17 18:05:13.419');
INSERT INTO "public"."Product" VALUES ('76fa378f-d1ee-45d2-b6ff-231bc2bb3b3f', 'Túi Tote Vải Cotton Thân Thiện Môi Trường', 'Túi tote làm từ vải cotton thân thiện với môi trường. Thiết kế rộng rãi, phù hợp để đi chợ, đi chơi hoặc đi làm. Chất liệu vải cotton 100% thân thiện với môi trường và da. Thiết kế với quai đeo rộng rãi giúp phân bố trọng lượng đều, ngăn chính rộng rãi và đáy túi có lớp lót chống rách. Có thể in ấn hoặc thêu theo yêu cầu.', 29.990000000000000000000000000000, '2e520a2f-9331-4fe9-97fd-2f43a0a671ec', 'Hapas Eco', 'Vải Cotton 100% Hữu Cơ', 'Trắng Tinh Khiết', '42x38x16 cm', NULL, 't', '2025-10-17 18:05:13.423', '2025-10-17 18:05:13.423');
INSERT INTO "public"."Product" VALUES ('7a6b5090-6a33-4541-9221-519f630a90fa', 'Túi Tote Da Lộn Sang Trọng Cao Cấp', 'Túi tote sang trọng làm từ da lộn cao cấp. Thiết kế tối giản nhưng vẫn giữ được sự thời trang. Chất liệu da lộn cao cấp với khả năng chống thấm nước tốt. Thiết kế với quai đeo da thật mềm mại, ngăn chính rộng rãi và đáy túi có chân đệm chắc chắn. Có thể sử dụng như túi xách tay hoặc túi đeo vai.', 89.989999999999990000000000000000, '2e520a2f-9331-4fe9-97fd-2f43a0a671ec', 'Hapas Luxe', 'Da Lộn Cao Cấp', 'Nâu Socola', '40x35x14 cm', NULL, 't', '2025-10-17 18:05:13.428', '2025-10-17 18:05:13.428');
INSERT INTO "public"."Product" VALUES ('ceb64e90-54f9-4dea-8428-42192868fbb4', 'Khăn Lụa Sang Trọng Tinh Tế', 'Chiếc khăn lụa sang trọng với họa tiết hoa tinh tế. Chất liệu lụa 100% mềm mại, mang lại vẻ đẹp quyến rũ cho người sở hữu. Chất liệu lụa 100% cao cấp với khả năng thấm hút tốt và không gây kích ứng da. Thiết kế với các họa tiết hoa tinh tế được in bằng công nghệ cao cấp. Có thể sử dụng như khăn choàng, khăn trang trí hoặc khăn gói quà.', 45.990000000000000000000000000000, '885e5e6b-2ad4-44be-828e-50e2b696ae80', 'Hapas Silk', '100% Lụa Tự Nhiên', 'Đa Màu Hoa Văn', '72x72 cm', NULL, 't', '2025-10-17 18:05:13.433', '2025-10-17 18:05:13.433');
INSERT INTO "public"."Product" VALUES ('c421c851-349e-4b46-a0d3-10dc70edcda3', 'Móc Khóa Thời Trang Độc Đáo', 'Bộ móc khóa thời trang với nhiều thiết kế độc đáo. Chất liệu hợp kim bền đẹp, chống gỉ sét. Chất liệu hợp kim cao cấp với khả năng chống gỉ sét và phai màu. Thiết kế với nhiều hình dạng độc đáo như trái tim, ngôi sao, hình học... Có thể sử dụng như móc khóa túi xách, móc khóa balo hoặc trang sức thời trang.', 15.990000000000000000000000000000, '885e5e6b-2ad4-44be-828e-50e2b696ae80', 'Hapas Charm', 'Hợp Kim Cao Cấp Mạ Vàng Hồng', 'Vàng Hồng Sang Trọng', '6x4x1.5 cm', NULL, 't', '2025-10-17 18:05:13.437', '2025-10-17 18:05:13.437');
INSERT INTO "public"."Product" VALUES ('dd4d5d3b-50a6-4f5a-96bf-4b442df0664d', 'Túi Đựng Laptop Chống Sốc Cao Cấp', 'Túi đựng laptop chuyên dụng với ngăn đệm bảo vệ thiết bị công nghệ. Thiết kế hiện đại với nhiều ngăn chứa. Chất liệu vải polyester chống thấm nước cao cấp với lớp lót chống sốc EVA dày dặn. Thiết kế với ngăn laptop 17 inch có đệm chống sốc, ngăn phụ cho sạc, chuột và tài liệu, ngăn điện thoại riêng biệt. Khóa kéo bền bỉ và tay cầm chắc chắn.', 59.990000000000000000000000000000, 'a94d6d04-e4fe-433e-af4f-dac7c671072a', 'Hapas Tech', 'Vải Polyester Chống Thấm + Lót EVA', 'Đen Carbon', '42x32x6 cm', NULL, 't', '2025-10-17 18:05:13.441', '2025-10-17 18:05:13.441');
INSERT INTO "public"."Product" VALUES ('ecae34ff-cf47-4a43-960e-713170d6e427', 'Túi Du Lịch Đa Năng Nhỏ Gọn', 'Túi du lịch đa năng với nhiều kích thước phù hợp cho các chuyến đi ngắn hoặc dài ngày. Thiết kế thông minh với nhiều ngăn chứa. Chất liệu vải oxford 600D bền bỉ với khả năng chống thấm nước tốt. Thiết kế với ngăn chính rộng rãi, ngăn quần áo có dây buộc, ngăn giày riêng biệt, ngăn phụ và ngăn phía trước. Có tay cầm chắc chắn và dây đeo vai tiện lợi.', 79.989999999999990000000000000000, 'c9255a07-4257-421b-98db-8b46b72f117c', 'Hapas Journey', 'Vải Oxford 600D', 'Xanh Dương', '50x30x25 cm', NULL, 't', '2025-10-17 18:05:13.444', '2025-10-17 18:05:13.444');

-- ----------------------------
-- Table structure for Promotion
-- ----------------------------
DROP TABLE IF EXISTS "public"."Promotion";
CREATE TABLE "public"."Promotion" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "discount_type" text COLLATE "pg_catalog"."default" NOT NULL,
  "discount_value" numeric(65,30) NOT NULL,
  "start_date" timestamp(3) NOT NULL,
  "end_date" timestamp(3) NOT NULL,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Promotion
-- ----------------------------

-- ----------------------------
-- Table structure for Review
-- ----------------------------
DROP TABLE IF EXISTS "public"."Review";
CREATE TABLE "public"."Review" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "rating" int4 NOT NULL,
  "comment" text COLLATE "pg_catalog"."default",
  "is_verified_purchase" bool NOT NULL DEFAULT false,
  "created_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(3) NOT NULL
)
;

-- ----------------------------
-- Records of Review
-- ----------------------------

-- ----------------------------
-- Table structure for Wishlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."Wishlist";
CREATE TABLE "public"."Wishlist" (
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "added_at" timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of Wishlist
-- ----------------------------

-- ----------------------------
-- Indexes structure for table Admin
-- ----------------------------
CREATE UNIQUE INDEX "Admin_email_key" ON "public"."Admin" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table Admin
-- ----------------------------
ALTER TABLE "public"."Admin" ADD CONSTRAINT "Admin_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table Category
-- ----------------------------
CREATE UNIQUE INDEX "Category_name_key" ON "public"."Category" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE "public"."Category" ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table Customer
-- ----------------------------
CREATE UNIQUE INDEX "Customer_email_key" ON "public"."Customer" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Inventory
-- ----------------------------
ALTER TABLE "public"."Inventory" ADD CONSTRAINT "Inventory_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Order
-- ----------------------------
ALTER TABLE "public"."Order" ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table OrderItem
-- ----------------------------
ALTER TABLE "public"."OrderItem" ADD CONSTRAINT "OrderItem_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table Payment
-- ----------------------------
CREATE UNIQUE INDEX "Payment_order_id_key" ON "public"."Payment" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table Payment
-- ----------------------------
ALTER TABLE "public"."Payment" ADD CONSTRAINT "Payment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Product
-- ----------------------------
ALTER TABLE "public"."Product" ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Promotion
-- ----------------------------
ALTER TABLE "public"."Promotion" ADD CONSTRAINT "Promotion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Review
-- ----------------------------
ALTER TABLE "public"."Review" ADD CONSTRAINT "Review_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table Wishlist
-- ----------------------------
ALTER TABLE "public"."Wishlist" ADD CONSTRAINT "Wishlist_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table Inventory
-- ----------------------------
ALTER TABLE "public"."Inventory" ADD CONSTRAINT "Inventory_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Order
-- ----------------------------
ALTER TABLE "public"."Order" ADD CONSTRAINT "Order_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."Customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table OrderItem
-- ----------------------------
ALTER TABLE "public"."OrderItem" ADD CONSTRAINT "OrderItem_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."Order" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."OrderItem" ADD CONSTRAINT "OrderItem_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Payment
-- ----------------------------
ALTER TABLE "public"."Payment" ADD CONSTRAINT "Payment_order_id_fkey" FOREIGN KEY ("order_id") REFERENCES "public"."Order" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Product
-- ----------------------------
ALTER TABLE "public"."Product" ADD CONSTRAINT "Product_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."Category" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Review
-- ----------------------------
ALTER TABLE "public"."Review" ADD CONSTRAINT "Review_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."Customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."Review" ADD CONSTRAINT "Review_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table Wishlist
-- ----------------------------
ALTER TABLE "public"."Wishlist" ADD CONSTRAINT "Wishlist_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "public"."Customer" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "public"."Wishlist" ADD CONSTRAINT "Wishlist_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "public"."Product" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;
