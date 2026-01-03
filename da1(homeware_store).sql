/*
 Navicat Premium Dump SQL

 Source Server         : docker_mssql
 Source Server Type    : SQL Server
 Source Server Version : 16004195 (16.00.4195)
 Source Host           : localhost:1433
 Source Catalog        : m_da1
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004195 (16.00.4195)
 File Encoding         : 65001

 Date: 03/07/2025 18:15:56
*/


-- ----------------------------
-- Table structure for carts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[carts]') AND type IN ('U'))
	DROP TABLE [dbo].[carts]
GO

CREATE TABLE [dbo].[carts] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT newid() NOT NULL,
  [user_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [product_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [price] float(53)  NOT NULL,
  [quantity] int  NOT NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[carts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of carts
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type IN ('U'))
	DROP TABLE [dbo].[categories]
GO

CREATE TABLE [dbo].[categories] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[categories] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[products]') AND type IN ('U'))
	DROP TABLE [dbo].[products]
GO

CREATE TABLE [dbo].[products] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [price] float(53)  NOT NULL,
  [image] varbinary(max)  NULL,
  [quantity] int  NULL,
  [category_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [suppliers_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[products] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_invoice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[purchase_invoice]') AND type IN ('U'))
	DROP TABLE [dbo].[purchase_invoice]
GO

CREATE TABLE [dbo].[purchase_invoice] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [product_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [staff_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [supplier_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [quantity] int  NULL,
  [price] float(53)  NULL,
  [total] float(53)  NULL,
  [created_at] datetime  NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[purchase_invoice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of purchase_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[roles]') AND type IN ('U'))
	DROP TABLE [dbo].[roles]
GO

CREATE TABLE [dbo].[roles] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT newid() NOT NULL,
  [name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[roles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO [dbo].[roles] ([id], [name], [created_at], [updated_at]) VALUES (N'35A3E537-002A-4053-9BF2-6E', N'user', N'2025-06-20 16:55:28.497', NULL)
GO

INSERT INTO [dbo].[roles] ([id], [name], [created_at], [updated_at]) VALUES (N'A0DBC55D-8DF9-49AF-882A-', N'admin', N'2025-06-20 16:55:38.950', NULL)
GO


-- ----------------------------
-- Table structure for sales_invoice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sales_invoice]') AND type IN ('U'))
	DROP TABLE [dbo].[sales_invoice]
GO

CREATE TABLE [dbo].[sales_invoice] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT newid() NOT NULL,
  [product_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [staff_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [quantity] int  NULL,
  [price] float(53)  NULL,
  [total] float(53)  NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [user_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[sales_invoice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sales_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for staffs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[staffs]') AND type IN ('U'))
	DROP TABLE [dbo].[staffs]
GO

CREATE TABLE [dbo].[staffs] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT newid() NOT NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [email] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[staffs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of staffs
-- ----------------------------

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[suppliers]') AND type IN ('U'))
	DROP TABLE [dbo].[suppliers]
GO

CREATE TABLE [dbo].[suppliers] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT newid() NOT NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [update_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[suppliers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT newid() NOT NULL,
  [user_name] varchar(24) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [password] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [role_id] varchar(36) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] varchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [phone] varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [birth_day] datetime  NULL,
  [created_at] datetime DEFAULT getdate() NULL,
  [updated_at] datetime  NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table carts
-- ----------------------------
ALTER TABLE [dbo].[carts] ADD CONSTRAINT [PK_giohangs] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE [dbo].[categories] ADD CONSTRAINT [PK_danhmucs] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table products
-- ----------------------------
ALTER TABLE [dbo].[products] ADD CONSTRAINT [PK_sanphams] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table purchase_invoice
-- ----------------------------
ALTER TABLE [dbo].[purchase_invoice] ADD CONSTRAINT [PK_hoadonnhaps] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table roles
-- ----------------------------
ALTER TABLE [dbo].[roles] ADD CONSTRAINT [PK__roles__3213E83FF149BEB1] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sales_invoice
-- ----------------------------
ALTER TABLE [dbo].[sales_invoice] ADD CONSTRAINT [PK_hoadonxuats] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table staffs
-- ----------------------------
ALTER TABLE [dbo].[staffs] ADD CONSTRAINT [PK_nhanviens] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table suppliers
-- ----------------------------
ALTER TABLE [dbo].[suppliers] ADD CONSTRAINT [PK_nhacungcaps] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK_taikhoans] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table carts
-- ----------------------------
ALTER TABLE [dbo].[carts] ADD CONSTRAINT [fk_cart_user] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[carts] ADD CONSTRAINT [fk_cart_product] FOREIGN KEY ([product_id]) REFERENCES [dbo].[products] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table products
-- ----------------------------
ALTER TABLE [dbo].[products] ADD CONSTRAINT [fk_product_category] FOREIGN KEY ([category_id]) REFERENCES [dbo].[categories] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[products] ADD CONSTRAINT [fk_product_supplier] FOREIGN KEY ([suppliers_id]) REFERENCES [dbo].[suppliers] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table purchase_invoice
-- ----------------------------
ALTER TABLE [dbo].[purchase_invoice] ADD CONSTRAINT [fk_purchase_product] FOREIGN KEY ([product_id]) REFERENCES [dbo].[products] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[purchase_invoice] ADD CONSTRAINT [fk_purchase_staff] FOREIGN KEY ([staff_id]) REFERENCES [dbo].[staffs] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[purchase_invoice] ADD CONSTRAINT [fk_purchase_supplier] FOREIGN KEY ([supplier_id]) REFERENCES [dbo].[suppliers] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table sales_invoice
-- ----------------------------
ALTER TABLE [dbo].[sales_invoice] ADD CONSTRAINT [fk_sale_product] FOREIGN KEY ([product_id]) REFERENCES [dbo].[products] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[sales_invoice] ADD CONSTRAINT [fk_sale_staff] FOREIGN KEY ([staff_id]) REFERENCES [dbo].[staffs] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table staffs
-- ----------------------------
ALTER TABLE [dbo].[staffs] ADD CONSTRAINT [fk_staff_user] FOREIGN KEY ([user_id]) REFERENCES [dbo].[users] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [fk_user_role] FOREIGN KEY ([role_id]) REFERENCES [dbo].[roles] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

