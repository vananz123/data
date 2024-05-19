/****** Object:  Database [eJewelryDb]    Script Date: 5/19/2024 5:07:40 PM ******/
CREATE DATABASE [eJewelryDb]  (EDITION = 'Free', SERVICE_OBJECTIVE = 'Free', MAXSIZE = 32 MB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [eJewelryDb] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [eJewelryDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eJewelryDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eJewelryDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eJewelryDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eJewelryDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [eJewelryDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eJewelryDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eJewelryDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eJewelryDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eJewelryDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eJewelryDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eJewelryDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eJewelryDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eJewelryDb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [eJewelryDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eJewelryDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [eJewelryDb] SET  MULTI_USER 
GO
ALTER DATABASE [eJewelryDb] SET ENCRYPTION ON
GO
ALTER DATABASE [eJewelryDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [eJewelryDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[PhoneNumber] [nvarchar](10) NOT NULL,
	[StreetNumber] [nvarchar](max) NOT NULL,
	[WardCommune] [nvarchar](300) NOT NULL,
	[UrbanDistrict] [nvarchar](300) NOT NULL,
	[Province] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ProductItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[ParentId] [int] NULL,
	[Sort] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guaranties]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guaranties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SKU] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Period] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModify] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Guaranties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderAddresses]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderAddresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PhoneNumber] [nvarchar](10) NOT NULL,
	[StreetNumber] [nvarchar](max) NOT NULL,
	[WardCommune] [nvarchar](200) NOT NULL,
	[UrbanDistrict] [nvarchar](200) NOT NULL,
	[Province] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ValuePromotion] [decimal](18, 2) NOT NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPayments]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
	[Privoder] [nvarchar](max) NULL,
	[AccountNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderPayments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderTotal] [decimal](18, 2) NOT NULL,
	[OrderDiscount] [decimal](18, 2) NOT NULL,
	[ShippingMethodId] [int] NOT NULL,
	[Voucher] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatuses]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_OrderStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[PaymentTypeId] [int] NOT NULL,
	[Privoder] [nvarchar](max) NULL,
	[AccountNumber] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductConfigs]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductConfigs](
	[ProductId] [int] NOT NULL,
	[VariationId] [int] NOT NULL,
 CONSTRAINT [PK_ProductConfigs] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[VariationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductItemConfigs]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItemConfigs](
	[ProductItemId] [int] NOT NULL,
	[VariationOptionId] [int] NOT NULL,
 CONSTRAINT [PK_ProductItemConfigs] PRIMARY KEY CLUSTERED 
(
	[ProductItemId] ASC,
	[VariationOptionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductItems]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[GuarantyId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[SKU] [nvarchar](max) NOT NULL,
	[IsMulti] [bit] NOT NULL,
	[UrlImage] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModify] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[SeoDescription] [nvarchar](max) NOT NULL,
	[SeoTitle] [nvarchar](max) NOT NULL,
	[UrlThumbnailImage] [nvarchar](max) NOT NULL,
	[UrlImage] [nvarchar](max) NOT NULL,
	[ViewCount] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModify] [datetime2](7) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionInProductItems]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionInProductItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductItemId] [int] NOT NULL,
	[PromotionId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[LimitQuantity] [bit] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PromotionInProductItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Value] [decimal](18, 2) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Condition] [decimal](18, 2) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[Rate] [int] NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[Feelback] [nvarchar](max) NULL,
	[FeelbackAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingMethods]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ShippingMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NOT NULL,
	[ProviderKey] [nvarchar](max) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariationOptions]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariationOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VariationId] [int] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_VariationOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variations]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsMulti] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Variations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warranties]    Script Date: 5/19/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModify] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Warranties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240512095721_InitialCreate', N'7.0.15')
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([Id], [UserId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country], [IsDefault]) VALUES (1, N'cb7bc037-0753-4f22-7616-08dc7287eb97', N'0393946693', N'hcmm', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam', 0)
INSERT [dbo].[Addresses] ([Id], [UserId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country], [IsDefault]) VALUES (2, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam', 0)
INSERT [dbo].[Addresses] ([Id], [UserId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country], [IsDefault]) VALUES (3, N'cb7bc037-0753-4f22-7616-08dc7287eb97', N'0393946693', N'Thôn thiện bình ', N'Xã Thiện Nghiệp', N'Thành Phố Phan Thiết', N'Bình Thuận', N'Việt Nam', 0)
INSERT [dbo].[Addresses] ([Id], [UserId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country], [IsDefault]) VALUES (4, N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', N'210', N'Nguyễn Văn Công', N'Phường 10', N'Quận Gò Vấp', N'Tp Hồ Chí Minh', N'Việt Nam', 0)
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId], [ProductItemId], [Quantity]) VALUES (17, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', 28, 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (1, N'Mặt dây chuyền', 9, 1, 2)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (2, N'Đồng hồ', NULL, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (3, N'Nhẫn', 9, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (4, N'Dây chuyền', 9, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (5, N'Lắc', 9, 1, 2)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (6, N'Đồng hồ cơ', 2, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (7, N'Đồng hồ điện tử', 2, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (9, N'Trang sức', NULL, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (11, N'test', NULL, 0, 2)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Guaranties] ON 

INSERT [dbo].[Guaranties] ([Id], [SKU], [Name], [Description], [Period], [DateCreated], [DateModify], [Status]) VALUES (1, N'Tháng', N'Bảo hàng không khả dụng', N'Sản phẩm không có bảo hành', 0, CAST(N'2024-05-12T16:57:21.0363840' AS DateTime2), NULL, 0)
INSERT [dbo].[Guaranties] ([Id], [SKU], [Name], [Description], [Period], [DateCreated], [DateModify], [Status]) VALUES (2, N'Tháng', N'Bảo hành 6 tháng', N'Bảo hành 6 tháng', 6, CAST(N'2024-05-12T16:57:21.0363845' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [dbo].[Guaranties] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderAddresses] ON 

INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (1, 1, N'0393946693', N'hcmm', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (2, 2, N'0393946693', N'hcmm', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (3, 3, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (4, 4, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (5, 5, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (6, 6, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (7, 7, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (8, 8, N'0393946693', N'hcmm', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (9, 9, N'0393946693', N'hcmm', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (10, 10, N'0393946693', N'Thôn thiện bình ', N'Xã Thiện Nghiệp', N'Thành Phố Phan Thiết', N'Bình Thuận', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (11, 11, N'210', N'Nguyễn Văn Công', N'Phường 10', N'Quận Gò Vấp', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (12, 12, N'210', N'Nguyễn Văn Công', N'Phường 10', N'Quận Gò Vấp', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (13, 13, N'210', N'Nguyễn Văn Công', N'Phường 10', N'Quận Gò Vấp', N'Tp Hồ Chí Minh', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[OrderAddresses] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (1, 1, 3, 1, CAST(3000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (2, 2, 4, 1, CAST(3200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (3, 3, 26, 1, CAST(59840000.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (4, 4, 3, 1, CAST(2700000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (5, 4, 28, 1, CAST(3700000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (6, 5, 16, 1, CAST(3432000.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (7, 5, 28, 1, CAST(3700000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (8, 6, 30, 1, CAST(616000.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (9, 7, 30, 1, CAST(616000.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (10, 8, 27, 2, CAST(3700000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (11, 9, 5, 1, CAST(4000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (12, 10, 21, 1, CAST(9000000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (13, 11, 29, 1, CAST(579920.00 AS Decimal(18, 2)), CAST(12.00 AS Decimal(18, 2)), N'percentage')
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (14, 12, 5, 1, CAST(4000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (15, 13, 3, 1, CAST(2700000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'percentage')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderPayments] ON 

INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (1, 1, CAST(N'2024-05-12T20:58:03.4497010' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (2, 2, CAST(N'2024-05-13T13:18:25.3781280' AS DateTime2), N'Thanh toán VNPAY', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (3, 3, CAST(N'2024-05-13T16:31:13.1982838' AS DateTime2), N'Thanh toán VNPAY', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (4, 4, CAST(N'2024-05-13T17:14:19.6708953' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (5, 5, CAST(N'2024-05-13T22:43:27.5476333' AS DateTime2), N'Thanh toán VNPAY', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (6, 6, CAST(N'2024-05-13T22:45:06.0384244' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (7, 7, CAST(N'2024-05-13T22:45:36.9239729' AS DateTime2), N'Thanh toán VNPAY', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (8, 8, CAST(N'2024-05-16T06:49:35.1932220' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (9, 9, CAST(N'2024-05-18T05:14:10.3789349' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (10, 10, CAST(N'2024-05-18T10:55:28.3878815' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (11, 11, CAST(N'2024-05-18T13:42:23.3057248' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (12, 12, CAST(N'2024-05-18T13:43:50.2229908' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (13, 13, CAST(N'2024-05-18T13:44:43.5307022' AS DateTime2), N'Thanh toán khi nhận hàng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderPayments] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (1, N'cb7bc037-0753-4f22-7616-08dc7287eb97', CAST(N'2024-05-12T20:58:02.9994606' AS DateTime2), CAST(3000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (2, N'cb7bc037-0753-4f22-7616-08dc7287eb97', CAST(N'2024-05-13T13:18:24.8697290' AS DateTime2), CAST(3200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (3, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', CAST(N'2024-05-13T16:31:12.9881309' AS DateTime2), CAST(59840000.00 AS Decimal(18, 2)), CAST(8160000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (4, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', CAST(N'2024-05-13T17:14:19.4036573' AS DateTime2), CAST(6400000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (5, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', CAST(N'2024-05-13T22:43:27.1016159' AS DateTime2), CAST(7132000.00 AS Decimal(18, 2)), CAST(468000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (6, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', CAST(N'2024-05-13T22:45:05.8819965' AS DateTime2), CAST(616000.00 AS Decimal(18, 2)), CAST(84000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (7, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', CAST(N'2024-05-13T22:45:36.7674920' AS DateTime2), CAST(616000.00 AS Decimal(18, 2)), CAST(84000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (8, N'cb7bc037-0753-4f22-7616-08dc7287eb97', CAST(N'2024-05-16T06:49:34.8693240' AS DateTime2), CAST(7400000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (9, N'cb7bc037-0753-4f22-7616-08dc7287eb97', CAST(N'2024-05-18T05:14:10.1172974' AS DateTime2), CAST(4000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (10, N'cb7bc037-0753-4f22-7616-08dc7287eb97', CAST(N'2024-05-18T10:55:28.1592622' AS DateTime2), CAST(9000000.00 AS Decimal(18, 2)), CAST(1000000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (11, N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', CAST(N'2024-05-18T13:42:23.0412527' AS DateTime2), CAST(579920.00 AS Decimal(18, 2)), CAST(79080.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (12, N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', CAST(N'2024-05-18T13:43:50.0388598' AS DateTime2), CAST(4000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [Voucher]) VALUES (13, N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', CAST(N'2024-05-18T13:44:43.3395333' AS DateTime2), CAST(2700000.00 AS Decimal(18, 2)), CAST(300000.00 AS Decimal(18, 2)), 1, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatuses] ON 

INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (1, N'Đang xử lý', 1, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-12T20:58:03.1233096' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (2, N'Đã tiếp nhận', 1, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-05-12T21:34:31.1489599' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (3, N'Đã hoàng thành', 1, N'Đơn hàng đã được khách hàng xác nhận', CAST(N'2024-05-12T22:26:46.9155428' AS DateTime2), 5)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (4, N'Đang xử lý', 2, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-13T13:18:25.1342339' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (5, N'Đã thanh toán', 2, N'Đơn hàng đã toán trực tuyến', CAST(N'2024-05-13T13:19:08.5321490' AS DateTime2), 1)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (6, N'Đã thanh toán', 2, N'Đơn hàng đã toán trực tuyến', CAST(N'2024-05-13T13:19:08.9264639' AS DateTime2), 1)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (7, N'Đang xử lý', 3, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-13T16:31:13.0341472' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (8, N'Đã tiếp nhận', 3, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-05-13T16:33:25.1122955' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (9, N'Đang xử lý', 4, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-13T17:14:19.4359148' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (10, N'Đang xử lý', 5, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-13T22:43:27.1845552' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (11, N'Đã hủy', 5, N'Đơn hàng đã được hủy', CAST(N'2024-05-13T22:44:33.8167056' AS DateTime2), 6)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (12, N'Đang xử lý', 6, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-13T22:45:05.9199688' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (13, N'Đang xử lý', 7, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-13T22:45:36.8057287' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (14, N'Đã thanh toán', 7, N'Đơn hàng đã toán trực tuyến', CAST(N'2024-05-13T22:46:04.5792273' AS DateTime2), 1)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (15, N'Đã thanh toán', 7, N'Đơn hàng đã toán trực tuyến', CAST(N'2024-05-13T22:46:05.0549502' AS DateTime2), 1)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (16, N'Đã hủy', 2, N'Đơn hàng đã được hủy', CAST(N'2024-05-15T14:54:18.1442509' AS DateTime2), 6)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (17, N'Đang xử lý', 8, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-16T06:49:34.9833427' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (18, N'Đã tiếp nhận', 8, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-05-16T08:40:50.4810558' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (19, N'Đã tiếp nhận', 6, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-05-17T04:07:27.8938789' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (20, N'Đang xử lý', 9, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-18T05:14:10.1727730' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (21, N'Đang xử lý', 10, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-18T10:55:28.2094643' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (22, N'Đang xử lý', 11, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-18T13:42:23.1151283' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (23, N'Đang xử lý', 12, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-18T13:43:50.0816030' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (24, N'Đang xử lý', 13, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-05-18T13:44:43.3783419' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (25, N'Đã tiếp nhận', 13, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-05-19T04:15:57.1480672' AS DateTime2), 3)
SET IDENTITY_INSERT [dbo].[OrderStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] ON 

INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (1, N'16ecc6d3-4e94-47b7-94de-c629d89ace31', 1, N'', N'', 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (2, N'cb7bc037-0753-4f22-7616-08dc7287eb97', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (3, N'cb7bc037-0753-4f22-7616-08dc7287eb97', 2, NULL, NULL, 0)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (4, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (5, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', 2, NULL, NULL, 0)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (6, N'3376909b-4e36-49bb-22cf-08dc7724de96', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (7, N'3376909b-4e36-49bb-22cf-08dc7724de96', 2, NULL, NULL, 0)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (8, N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (9, N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', 2, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[PaymentMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (1, N'Thanh toán khi nhận hàng')
INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (2, N'Thanh toán VNPAY')
SET IDENTITY_INSERT [dbo].[PaymentTypes] OFF
GO
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (1, 1)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (2, 1)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (1, 2)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (2, 2)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (1, 3)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (2, 3)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (3, 4)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (3, 5)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (4, 6)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (4, 7)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (5, 8)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (5, 9)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (6, 10)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (6, 11)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (7, 12)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (7, 13)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (8, 14)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (8, 15)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (9, 16)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (9, 17)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (10, 18)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (10, 19)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (11, 20)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (11, 21)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (12, 22)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (12, 23)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (13, 26)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (13, 27)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (14, 28)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (14, 29)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (15, 30)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (15, 31)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (15, 32)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (16, 33)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (16, 34)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (16, 35)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (17, 36)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (17, 37)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (17, 38)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (18, 39)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (18, 40)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (18, 41)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (19, 42)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (19, 43)
GO
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (1, 2)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (2, 3)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (3, 5)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (4, 6)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (6, 11)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (7, 12)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (10, 19)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (11, 20)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (12, 23)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (13, 24)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (14, 27)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (17, 34)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (18, 35)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (19, 36)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (20, 39)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (21, 44)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (22, 45)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (23, 48)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (24, 49)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (29, 64)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (30, 65)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (31, 66)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (32, 67)
GO
SET IDENTITY_INSERT [dbo].[ProductItems] ON 

INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (1, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), 10, 0, N'cm', 1, N'', 1, CAST(N'2024-05-12T16:57:21.0363929' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (2, 1, 2, CAST(5200000.00 AS Decimal(18, 2)), 11, 1, N'cm', 1, N'', 1, CAST(N'2024-05-12T16:57:21.0363933' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (3, 2, 2, CAST(3000000.00 AS Decimal(18, 2)), 6, 1, N'size', 1, N'', 1, CAST(N'2024-05-12T16:57:21.0363938' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (4, 2, 2, CAST(3200000.00 AS Decimal(18, 2)), 8, 2, N'size', 1, N'', 1, CAST(N'2024-05-12T16:57:21.0363941' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (5, 3, 1, CAST(4000000.00 AS Decimal(18, 2)), 8, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (6, 4, 2, CAST(9000000.00 AS Decimal(18, 2)), 5, 2, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (7, 4, 2, CAST(10000000.00 AS Decimal(18, 2)), 3, 3, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (10, 6, 2, CAST(44000000.00 AS Decimal(18, 2)), 3, 0, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (11, 6, 2, CAST(49000000.00 AS Decimal(18, 2)), 5, 0, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (12, 7, 2, CAST(19000000.00 AS Decimal(18, 2)), 4, 0, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (13, 7, 2, CAST(20000000.00 AS Decimal(18, 2)), 0, 0, N'cm', 1, N'', 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (14, 8, 2, CAST(24000000.00 AS Decimal(18, 2)), 2, 0, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (15, 9, 2, CAST(8156000.00 AS Decimal(18, 2)), 3, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (16, 10, 1, CAST(3900000.00 AS Decimal(18, 2)), 5, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (17, 11, 2, CAST(35000000.00 AS Decimal(18, 2)), 2, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (18, 11, 2, CAST(36000000.00 AS Decimal(18, 2)), 4, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (19, 11, 2, CAST(37000000.00 AS Decimal(18, 2)), 4, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (20, 12, 1, CAST(9037000.00 AS Decimal(18, 2)), 2, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (21, 13, 2, CAST(10000000.00 AS Decimal(18, 2)), 3, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (22, 13, 2, CAST(11000000.00 AS Decimal(18, 2)), 0, 0, N'size', 1, N'', 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (23, 14, 2, CAST(14000000.00 AS Decimal(18, 2)), 4, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (24, 14, 2, CAST(14600000.00 AS Decimal(18, 2)), 2, 0, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (25, 15, 2, CAST(50000000.00 AS Decimal(18, 2)), 3, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (26, 16, 2, CAST(68000000.00 AS Decimal(18, 2)), 2, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (27, 17, 1, CAST(3700000.00 AS Decimal(18, 2)), 4, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (28, 18, 1, CAST(3700000.00 AS Decimal(18, 2)), 6, 0, N'', 0, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (29, 19, 2, CAST(659000.00 AS Decimal(18, 2)), 3, 2, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (30, 19, 2, CAST(700000.00 AS Decimal(18, 2)), 5, 6, N'size', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (31, 5, 1, CAST(6000000.00 AS Decimal(18, 2)), 4, 2, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [Stock], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (32, 5, 1, CAST(6100000.00 AS Decimal(18, 2)), 3, 2, N'cm', 1, N'', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[ProductItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (1, N'Dây chuyền vàng', N'Dây chuyền vàng 24k đính đá ECZ kim bảo d', N'Dây chuyền vàng 24k đính đá ECZ kim bảo', N'/images/88187761-2d61-4bdc-8858-ac5a2bba93b9.png', N'', 6, 0, CAST(N'2024-05-12T16:57:21.0363884' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (2, N'Nhẫn bạc', N'Nhẫn bạc nguyên chất', N'Nhẫn bạc nguyên chất', N'/images/c045aba9-a7fb-4baf-8613-7cac391d8199.png', N'', 8, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 3)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (3, N'Đồng hồ Seiko 5 Sports Nam SRPK67K Dây Kim Loại 42 mm', N'Seiko 5 Sports - Huyền thoại đồng hồ thể thao với diện mạo hoàn toàn mới, sẵn sàng chinh phục mọi phong cách và hành trình. Seiko 5 Sports mang đến hơn 20 mẫu mã đa dạng, đáp ứng mọi sở thích và cá tính.

Bên cạnh đó, đồng hồ được sản xuất từ thép không gỉ, kính Hardlex bền bỉ cùng bộ máy tự động Seiko Caliber 4R36 mạnh mẽ, dự trữ năng lượng 41 giờ. Seiko 5 Sports - Không chỉ là đồng hồ, mà là tuyên ngôn cho phong cách sống năng động và cá tính.', N'Đồng hồ Seiko 5 Sports Nam SRPK67K Dây Kim Loại 42 mm', N'/images/fc524753-4975-400d-95cc-477b18abe6d4.png', N'*', 7, 0, CAST(N'2024-05-12T19:08:20.9761070' AS DateTime2), NULL, 6)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (4, N'Dây chuyền Vàng 24K PNJ 0000Y007437', N'Bằng việc kết hợp chất liệu vàng 24K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.

Dù diện lên bộ cánh dạ tiệc hay bộ áo dài đỏ trong ngày cưới, chiếc dây chuyền sẽ tạo điểm nhấn tuyệt đối xung quanh xương quai xanh và khơi gợi ánh nhìn xung quanh.', N'Dây chuyền Vàng 24K PNJ 0000Y007437', N'/images/2b14d1dd-603a-4115-a00a-1edf65e577c2.png', N'/images/54c063dd-85a4-488f-ae3a-a2d72837bcc2.png*/images/85d35865-4c66-44e5-97fd-45f37836fe70.png*/images/2e94a7cc-d5d6-4b34-8cf3-07307208d83b.png*', 10, 0, CAST(N'2024-05-13T14:32:12.5765725' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (5, N'Dây chuyền Vàng 24K PNJ 0000Y007840', N'Bằng việc kết hợp chất liệu vàng 24K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.', N'Dây chuyền Vàng 24K PNJ 0000Y007840', N'/images/3049c3b0-6aee-4b6a-a355-17f5bcdedace.png', N'/images/538ee9aa-69db-4c4f-b313-0b85464f8fbf.png*/images/5c6c106f-f431-4c17-a903-ae75ba4aebbe.png*', 4, 0, CAST(N'2024-05-13T14:41:55.6753718' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (6, N'Dây chuyền Vàng 24K PNJ 0000Y007880', N'Bằng việc kết hợp chất liệu vàng 24K cùng thiết kế tinh tế, sợi dây chuyền chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.', N'Dây chuyền Vàng 24K PNJ 0000Y007880', N'/images/f99df3cd-98b5-4938-848a-a94ced4380f4.png', N'/images/2738a3c0-83e4-4cd2-9486-5039aef61dbf.png*/images/bc8e69fa-8c62-4940-8b1a-7a94bfeeaa4e.png*', 3, 0, CAST(N'2024-05-13T14:45:55.6183358' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (7, N'Lắc tay Vàng 24K PNJ 0000Y002404', N'Thêm vào đó, với thiết kế cổ điển, chiếc lắc tay còn là món quà dành tặng cho các nàng dâu. Với các điểm nhấn trên sản phẩm, PNJ tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.', N'Lắc tay Vàng 24K PNJ 0000Y002404', N'/images/960dfcff-e495-435b-9223-3caf6c1ac0be.png', N'/images/f815f7ab-c296-4344-9f9d-cf576caeaee8.png*/images/9ecfbd26-c719-43ef-bdec-ffebc46f35a0.png*', 0, 0, CAST(N'2024-05-13T14:52:16.8571437' AS DateTime2), NULL, 5)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (8, N'Lắc tay Vàng 24K PNJ 0000Y002405', N'Thêm vào đó, với thiết kế cổ điển, chiếc lắc tay còn là món quà dành tặng cho các nàng dâu. Với các điểm nhấn trên sản phẩm, PNJ tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.', N'Lắc tay Vàng 24K PNJ 0000Y002405', N'/images/6f3e00a4-c978-4b3c-a1a0-fa53ed858442.png', N'/images/b1c4ec1c-2586-4c73-9abf-299698d93cc8.png*/images/d46ec958-aa02-4da5-8897-8693088bdadd.png*', 0, 0, CAST(N'2024-05-13T14:56:50.0462301' AS DateTime2), NULL, 5)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (9, N'Mặt dây chuyền Vàng 24K PNJ 0000Y000755', N'Sản phẩm với thiết kế đơn giản, không quá nhiều chi tiết cầu kỳ sẽ giúp càng nàng tỏa sáng. Khi kết hợp cùng dây chuyền, bộ đôi sẽ giúp nàng khoe trọn xương quai xanh quyến rũ và thu hút ánh nhìn xung quanh.', N'Mặt dây chuyền Vàng 24K PNJ 0000Y000755', N'/images/d9e9a923-deda-4cc6-ad01-4b78f260105e.png', N'/images/0b6fb42b-6523-4e19-aa85-094b9c4ba38e.png*/images/234808c8-a12c-4592-bb82-66f75629b403.png*', 0, 2, CAST(N'2024-05-13T14:58:46.4538998' AS DateTime2), NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (10, N'Mặt dây chuyền Vàng 24K PNJ 0000Y000757', N'Sản phẩm với thiết kế đơn giản, không quá nhiều chi tiết cầu kỳ sẽ giúp càng nàng tỏa sáng. Khi kết hợp cùng dây chuyền, bộ đôi sẽ giúp nàng khoe trọn xương quai xanh quyến rũ và thu hút ánh nhìn xung quanh.', N'Mặt dây chuyền Vàng 24K PNJ 0000Y000757', N'/images/8b9ef218-c67d-4752-aa53-7a11d99f9310.png', N'/images/e288a853-589e-49c6-86ad-602d002bbc55.png*/images/28415033-79c5-4484-9a7e-0c959e401322.png*', 0, 2, CAST(N'2024-05-13T15:32:19.4012022' AS DateTime2), NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (11, N'Nhẫn cưới Nam Vàng 24K PNJ 0000Y002374', N'Phụ nữ luôn thật đẹp khi biết chăm chút cho mọi thứ quanh mình, nàng hãy thử trổ tài làm một fashionista khi “kết đôi” các thời trang như nhẫn quý phái và dây chuyền hay chiếc nhẫn nhỏ xinh để luôn lộng lẫy và cuốn hút đến từng ánh nhìn.', N'Nhẫn cưới Nam Vàng 24K PNJ 0000Y002374', N'/images/39215bed-b1e5-4b8f-bf05-20b80756ef6e.png', N'/images/f17f3fc0-1268-4c0a-9469-51987792d802.png*/images/744d4678-917e-4164-8ade-da018cc6706c.png*', 9, 2, CAST(N'2024-05-13T15:41:07.9643929' AS DateTime2), NULL, 3)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (12, N'Nhẫn cưới Vàng 24K PNJ 0000Y002158', N'Phụ nữ luôn thật đẹp khi biết chăm chút cho mọi thứ quanh mình, nàng hãy thử trổ tài làm một fashionista khi “kết đôi” các thời trang như nhẫn quý phái và dây chuyền hay chiếc nhẫn nhỏ xinh để luôn lộng lẫy và cuốn hút đến từng ánh nhìn.', N'Nhẫn cưới Vàng 24K PNJ 0000Y002158', N'/images/00b74938-3d34-46eb-bccc-c0cb09016eaf.png', N'/images/fd575a5d-c703-4da5-8760-20a68823ba58.png*/images/f6e7e23e-7bfa-4e1c-890d-b0581f30d56e.png*', 10, 2, CAST(N'2024-05-13T15:45:13.2225440' AS DateTime2), NULL, 3)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (13, N'Nhẫn cưới Vàng 24K PNJ 0000Y002531', N'Phụ nữ luôn thật đẹp khi biết chăm chút cho mọi thứ quanh mình, nàng hãy thử trổ tài làm một fashionista khi “kết đôi” các thời trang như nhẫn quý phái và dây chuyền hay đôi bông tai nhỏ xinh để luôn lộng lẫy và cuốn hút đến từng ánh nhìn.', N'Nhẫn cưới Vàng 24K PNJ 0000Y002531', N'/images/9ab0ebb7-cf6c-41fd-9ef9-07bb4782f35e.png', N'/images/68a9a233-dfba-4168-aaac-6ae77fe6d3c8.png*/images/f2ec0ddb-6ef4-43d4-8a6c-5d66a14d5065.png*', 7, 3, CAST(N'2024-05-13T15:51:40.5073651' AS DateTime2), NULL, 3)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (14, N'Nhẫn cưới Vàng 24K PNJ Trầu Cau 0000Y002594', N'Lá trầu bên ngoài được tạo nét theo cánh phượng uyển chuyển bao bọc bên trong là quả cau, thể hiện sự hòa quyện giữa miếng trầu và cánh phượng vừa mang đậm tính văn hóa bản sắc dân tộc vừa thể hiện được tình cảm sắt son của đôi lứa.', N'Nhẫn cưới Vàng 24K PNJ Trầu Cau 0000Y002594', N'/images/462c72db-5057-48f8-931f-023ec8eacb98.png', N'/images/f3879cde-f349-4315-a636-6e0a8337a69c.png*/images/dcf2ab22-8910-4b5e-b2c5-1eaa1f678e94.png*', 2, 3, CAST(N'2024-05-13T15:54:42.9872853' AS DateTime2), NULL, 3)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (15, N'Đồng hồ Rado Coupole Classic Nam R22894203 Dây Kim Loại 41 mm', N'Đồng hồ Rado Coupole Classic Nam R22894203 Dây Kim Loại 41 mm', N'Đồng hồ Rado Coupole Classic Nam R22894203 Dây Kim Loại 41 mm', N'/images/b321545f-e08a-4597-88f6-4d36edd7d6e0.png', N'/images/c465d77c-c01c-4150-99b8-842f9a463954.png*/images/f42cdd5d-45c9-454b-a50f-fc18ffea5325.png*', 3, 2, CAST(N'2024-05-13T16:07:41.8788622' AS DateTime2), NULL, 6)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (16, N'Đồng hồ Rado Centrix Nữ R30034712 Dây Ceramic 28 mm', N'Rado Centrix - Lựa chọn hoàn hảo cho những ai yêu thích phong cách thanh lịch và đẳng cấp.Hãy sở hữu ngay để khẳng định vị thế và đẳng cấp của bạn!', N'Đồng hồ Rado Centrix Nữ R30034712 Dây Ceramic 28 mm', N'/images/6c6ca93f-a2b8-403b-933e-02170c4cea6d.png', N'/images/f3ea116c-ccfa-4f66-8bce-668cb61b51e4.png*/images/c493ad70-a262-4d9e-97a1-2d12f8d5f6f2.png*', 4, 2, CAST(N'2024-05-13T16:11:08.6461346' AS DateTime2), NULL, 6)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (17, N'Đồng hồ Casio G-Shock Nữ GMA-S2100NC-8ADR Dây Cao Su 43 mm', N'Đồng hồ Casio G-Shock Nữ GMA-S2100NC-8ADR Dây Cao Su 43 mm', N'Đồng hồ Casio G-Shock Nữ GMA-S2100NC-8ADR Dây Cao Su 43 mm', N'/images/204c49d2-9b1b-448b-a72d-022b3f36e2d1.png', N'*', 11, 0, CAST(N'2024-05-13T16:21:48.2444228' AS DateTime2), NULL, 7)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (18, N'Đồng hồ Casio G-Shock Nữ GMA-S2100NC-4A2DR Dây Cao Su 43 mm', N'Đồng hồ Casio G-Shock Nữ GMA-S2100NC-4A2DR Dây Cao Su 43 mm', N'Đồng hồ Casio G-Shock Nữ GMA-S2100NC-4A2DR Dây Cao Su 43 mm', N'/images/22ec1cef-deee-4f0e-8e6c-54346caa1973.png', N'*', 11, 0, CAST(N'2024-05-13T16:23:44.8001433' AS DateTime2), NULL, 7)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (19, N'Nhẫn Bạc đính đá Disney|PNJ Aristocats XMXMH060005', N'Với kiểu dáng thời thượng cùng những viên đá đính xung quanh bề mặt chiếc nhẫn trên chất liệu bạc 92.5, Disney|PNJ mang đến chiếc nhẫn với vẻ đẹp trẻ trung nhưng không kém phần phá cách, giúp các cô gái trông thật nổi bật.', N'Nhẫn Bạc đính đá Disney|PNJ Aristocats XMXMH060005', N'/images/fcd3362e-01fe-4d35-96d3-08b85323f31e.png', N'/images/abf1e62b-5608-4452-93d7-7ae281a2aabe.png*/images/9db985ba-4d0a-4870-a381-2ab1c99bd48f.png*', 27, 2, CAST(N'2024-05-13T20:45:48.8431813' AS DateTime2), NULL, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PromotionInProductItems] ON 

INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (1, 3, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (2, 6, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (3, 7, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (6, 12, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (7, 13, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (8, 15, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (10, 16, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (11, 17, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (12, 18, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (13, 19, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (14, 20, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (15, 21, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (16, 22, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (17, 25, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (18, 26, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (19, 29, 2, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (20, 30, 2, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[PromotionInProductItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotions] ON 

INSERT [dbo].[Promotions] ([Id], [Name], [Description], [Value], [Type], [Condition], [StartDate], [EndDate], [Status]) VALUES (1, N'Khuyến mãi khai trương', N'Chương trình khai trương cửa hàng online', CAST(10.00 AS Decimal(18, 2)), N'percentage', NULL, CAST(N'2024-05-12T16:57:21.0000000' AS DateTime2), CAST(N'2024-07-07T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Promotions] ([Id], [Name], [Description], [Value], [Type], [Condition], [StartDate], [EndDate], [Status]) VALUES (2, N'Khuyến Mãi Sản Phẩm Mới', N'Sản phẩm mới ra mắt được giảm giá đến 12%', CAST(12.00 AS Decimal(18, 2)), N'percentage', NULL, CAST(N'2024-05-13T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-13T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Promotions] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [UserId], [OrderDetailId], [CreateAt], [Rate], [Comment], [Feelback], [FeelbackAt]) VALUES (1, N'cb7bc037-0753-4f22-7616-08dc7287eb97', 1, CAST(N'2024-05-12T21:48:31.9004438' AS DateTime2), 5, N'oke nhé best', N'Cảm ơn vì đã ủng hộ chúng tôi', CAST(N'2024-05-18T01:27:47.3304475' AS DateTime2))
INSERT [dbo].[Reviews] ([Id], [UserId], [OrderDetailId], [CreateAt], [Rate], [Comment], [Feelback], [FeelbackAt]) VALUES (2, N'fb84da47-e98e-4d73-eb69-08dc732f4e05', 9, CAST(N'2024-05-18T04:12:35.9648627' AS DateTime2), 5, N'tốt', NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [UserId], [OrderDetailId], [CreateAt], [Rate], [Comment], [Feelback], [FeelbackAt]) VALUES (3, N'cb7bc037-0753-4f22-7616-08dc7287eb97', 12, CAST(N'2024-05-18T10:56:01.8269644' AS DateTime2), 4, N'Oke', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ac4a3a6c-3e84-4ed4-93eb-7679abf315a3', N'sale role', N'sale', N'sale', NULL)
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e07d16e3-52e2-43ec-b3d0-9c0fea10ab52', N'administrator role', N'admin', N'admin', NULL)
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81', N'customer role', N'customer', N'customer', NULL)
GO
SET IDENTITY_INSERT [dbo].[ShippingMethods] ON 

INSERT [dbo].[ShippingMethods] ([Id], [Name], [Price]) VALUES (1, N'Giao hàng tiết kiệm', CAST(30000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ShippingMethods] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'cb7bc037-0753-4f22-7616-08dc7287eb97', N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'fb84da47-e98e-4d73-eb69-08dc732f4e05', N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'3376909b-4e36-49bb-22cf-08dc7724de96', N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'972f6d06-b68f-45d6-acbe-98df405c192d', N'ac4a3a6c-3e84-4ed4-93eb-7679abf315a3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'e07d16e3-52e2-43ec-b3d0-9c0fea10ab52')
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cb7bc037-0753-4f22-7616-08dc7287eb97', N'An', N'Đỗ', N'ĐỗAn', N'0393946693', N'vananz', N'VANANZ', N'2051050001an@ou.edu.vn', N'2051050001AN@OU.EDU.VN', 0, N'AQAAAAIAAYagAAAAEMCX3my+rNbOC2Zus9SW3eOIMGXIln+Sxov8rzRsyF7Pof/bJBFzmfFUl+oQWN2L4w==', N'IEJC63SVNEYET4P5LKP4EJT77LNEVUJZ', N'25f37825-8d5b-4b63-8b0f-6043dbf9729d', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb84da47-e98e-4d73-eb69-08dc732f4e05', N'Linh', N'Nguyễn Đình', N'Nguyễn ĐìnhLinh', N'0356636960', N'linhadmin', N'LINHADMIN', N'nguyendinhlinh65@gmail.com', N'NGUYENDINHLINH65@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELCTdAWmCY1Z1HXbDUlkP1wBmsaPB+AT8g2Qz4iQL6UsZDto1RC8ugrPI8UQ4jJeCQ==', N'4ZIIEIKHM4B4NB4IMMIB3CNA4GFS7B5T', N'dd3687e6-11fc-46d6-9172-0da2e566fdbb', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3376909b-4e36-49bb-22cf-08dc7724de96', N'Hiến', N'Bùi', N'BùiHiến', N'0389630450', N'Hyena_2310', N'HYENA_2310', N'thanhhien23102005@gmail.com', N'THANHHIEN23102005@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEA576tTvX0wsWg/lFQqeKhA3KqIjJTHFAxB5bD61zHPwZN8cLpblgLsLkFoTB+xYYQ==', N'UQ7CXP5C7ZFUPM2KHB2MM7HSXCXOWX6E', N'7f61059d-7e34-4ad6-9fcd-50102aeef759', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6ee12112-e33e-4fdb-ec85-08dc773ffb52', N'Trường', N'Thái', N'TháiTrường', N'0564564897', N'Truong1234', N'TRUONG1234', N'thaitruong958@gmail.com', N'THAITRUONG958@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMssQQQVPzWd6Ew//zVTj/3HuvQaHBqGW7m7wHmeZQdp+oRjsExPS3C9+ezLQkhPVg==', N'MADW4I4JG6QKM4FWXBXGEFXISBJOXT6Y', N'38a10b0f-772e-4feb-a886-d9e2f20b201b', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'972f6d06-b68f-45d6-acbe-98df405c192d', N'Linh', N'Nguyen', N'Nguyen Dinh Linh', N'0393946693', N'sale', N'sale', N'vanboan450@gmail.com', N'vanboan450@gmail.com', 1, N'AQAAAAIAAYagAAAAEEEkkOCuDkB2DuTuNPdwJgvYLa/YsvoDb6rAusTLvOisyJpXcwWzsXx33ruclbjCSw==', N'', N'0ca57cc7-7827-4b42-891a-b6f90e6eb8c7', 0, 0, NULL, 0, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'An', N'Do', N'Do Van An', N'0393946693', N'admin', N'ADMIN', N'dovanan.bth2017@gmail.com', N'DOVANAN.BTH2017@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEKMHM13sFeVTbHBUWviYNsorKpFYR7AZotjbgML0QR9bquUuFjNeSS28fXcPa34Yiw==', N'', N'c02ae9d3-6095-48e4-94af-66d1a386f4c7', 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[VariationOptions] ON 

INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (1, 1, N'Vàng 24k')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (2, 2, N'45')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (3, 2, N'46')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (4, 3, N'VA')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (5, 2, N'6')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (6, 2, N'7')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (7, 4, N'Seiko')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (8, 5, N'Nhật Bản')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (9, 6, N'12.79774 phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (10, 7, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (11, 2, N'42')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (12, 2, N'45')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (13, 8, N'24.78036 phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (14, 9, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (17, 10, N'59.51409 phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (18, 11, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (19, 2, N'50')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (20, 2, N'55')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (21, 12, N'23.78665phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (22, 13, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (23, 2, N'17')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (24, 2, N'18')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (25, 14, N'29.58511phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (26, 15, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (27, 2, N'17')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (28, 16, N'29.58511phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (29, 17, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (30, 18, N'10.58511phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (31, 19, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (32, 20, N'10.58511phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (33, 21, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (34, 2, N'17')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (35, 2, N'19')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (36, 2, N'20')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (37, 22, N'10.58511phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (38, 23, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (39, 2, N'13')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (42, 26, N'12.22075phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (43, 27, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (44, 2, N'13')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (45, 2, N'14')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (46, 28, N'16.36673phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (47, 29, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (48, 2, N'9')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (49, 2, N'10')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (50, 30, N'Classic, cổ điển')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (51, 31, N'Rabo')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (52, 32, N'Thụy Sỹ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (53, 33, N'Classic, cổ điển')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (54, 34, N'Rabo')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (55, 35, N'Thụy Sỹ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (56, 36, N'Thời trang')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (57, 37, N'Casio')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (58, 38, N'Trung Quốc')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (59, 39, N'Thời trang')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (60, 40, N'Casio')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (61, 41, N'Trung Quốc')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (62, 42, N'5.54829phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (63, 43, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (64, 2, N'11')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (65, 2, N'12')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (66, 2, N'45')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (67, 2, N'50')
SET IDENTITY_INSERT [dbo].[VariationOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Variations] ON 

INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (1, N'Chất liệu', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (2, N'Size', 1, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (3, N'Thương hiệu', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (4, N'Thương hiệu', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (5, N'Xuất Xứ Thương Hiệu', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (6, N'Trọng lượng tham khảo:', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (7, N'Thương hiệu:', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (8, N'Trọng lượng tham khảo:', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (9, N'Thương hiệu:', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (10, N'Trọng lượng tham khảo:', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (11, N'Thương hiệu:', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (12, N'Trọng lượng tham khảo:', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (13, N'Thương hiệu:', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (14, N'Trọng lượng tham khảo:', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (15, N'Thương hiệu:', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (16, N'Trọng lượng tham khảo:', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (17, N'Thương hiệu:', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (18, N'Trọng lượng tham khảo:', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (19, N'Thương hiệu:', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (20, N'Trọng lượng tham khảo:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (21, N'Thương hiệu:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (22, N'Trọng lượng tham khảo:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (23, N'Thương hiệu:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (26, N'Trọng lượng tham khảo:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (27, N'Thương hiệu:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (28, N'Trọng lượng tham khảo:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (29, N'Thương hiệu:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (30, N'Phong cách: ', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (31, N'Thương hiệu:', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (32, N'Lắp ráp tại:', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (33, N'Phong cách: ', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (34, N'Thương hiệu:', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (35, N'Lắp ráp tại:', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (36, N'Phong cách: ', 0, 7)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (37, N'Thương hiệu:', 0, 7)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (38, N'Lắp ráp tại:', 0, 7)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (39, N'Phong cách: ', 0, 7)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (40, N'Thương hiệu:', 0, 7)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (41, N'Lắp ráp tại:', 0, 7)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (42, N'Trọng lượng tham khảo:', 0, 3)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (43, N'Thương hiệu:', 0, 3)
SET IDENTITY_INSERT [dbo].[Variations] OFF
GO
/****** Object:  Index [IX_Addresses_UserId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_UserId] ON [dbo].[Addresses]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_ProductItemId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ProductItemId] ON [dbo].[Carts]
(
	[ProductItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_UserId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_UserId] ON [dbo].[Carts]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderAddresses_OrderId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OrderAddresses_OrderId] ON [dbo].[OrderAddresses]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductItemId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductItemId] ON [dbo].[OrderDetails]
(
	[ProductItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderPayments_OrderId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OrderPayments_OrderId] ON [dbo].[OrderPayments]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ShippingMethodId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ShippingMethodId] ON [dbo].[Orders]
(
	[ShippingMethodId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderStatuses_OrderId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderStatuses_OrderId] ON [dbo].[OrderStatuses]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentMethods_PaymentTypeId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentMethods_PaymentTypeId] ON [dbo].[PaymentMethods]
(
	[PaymentTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentMethods_UserId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentMethods_UserId] ON [dbo].[PaymentMethods]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductConfigs_VariationId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductConfigs_VariationId] ON [dbo].[ProductConfigs]
(
	[VariationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItemConfigs_VariationOptionId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductItemConfigs_VariationOptionId] ON [dbo].[ProductItemConfigs]
(
	[VariationOptionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItems_GuarantyId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductItems_GuarantyId] ON [dbo].[ProductItems]
(
	[GuarantyId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItems_ProductId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductItems_ProductId] ON [dbo].[ProductItems]
(
	[ProductId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PromotionInProductItems_ProductItemId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_PromotionInProductItems_ProductItemId] ON [dbo].[PromotionInProductItems]
(
	[ProductItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PromotionInProductItems_PromotionId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_PromotionInProductItems_PromotionId] ON [dbo].[PromotionInProductItems]
(
	[PromotionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_OrderDetailId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_OrderDetailId] ON [dbo].[Reviews]
(
	[OrderDetailId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_UserId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VariationOptions_VariationId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_VariationOptions_VariationId] ON [dbo].[VariationOptions]
(
	[VariationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Warranties_OrderDetailId]    Script Date: 5/19/2024 5:07:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Warranties_OrderDetailId] ON [dbo].[Warranties]
(
	[OrderDetailId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDefault]
GO
ALTER TABLE [dbo].[Carts] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Guaranties] ADD  DEFAULT (N'Tháng') FOR [SKU]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0.0)) FOR [ValuePromotion]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [OrderTotal]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [OrderDiscount]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [Voucher]
GO
ALTER TABLE [dbo].[OrderStatuses] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[PaymentMethods] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDefault]
GO
ALTER TABLE [dbo].[ProductItems] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[ProductItems] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[ProductItems] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsMulti]
GO
ALTER TABLE [dbo].[ProductItems] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [UrlThumbnailImage]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((0.0)) FOR [Value]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT (N'percentage') FOR [Type]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ShippingMethods] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[VariationOptions] ADD  DEFAULT (N'200') FOR [Value]
GO
ALTER TABLE [dbo].[Variations] ADD  DEFAULT (N'200') FOR [Name]
GO
ALTER TABLE [dbo].[Variations] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsMulti]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Users_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_ProductItems_ProductItemId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users_UserId]
GO
ALTER TABLE [dbo].[OrderAddresses]  WITH CHECK ADD  CONSTRAINT [FK_OrderAddresses_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderAddresses] CHECK CONSTRAINT [FK_OrderAddresses_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductItems_ProductItemId]
GO
ALTER TABLE [dbo].[OrderPayments]  WITH CHECK ADD  CONSTRAINT [FK_OrderPayments_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderPayments] CHECK CONSTRAINT [FK_OrderPayments_Orders_OrderId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ShippingMethods_ShippingMethodId] FOREIGN KEY([ShippingMethodId])
REFERENCES [dbo].[ShippingMethods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ShippingMethods_ShippingMethodId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_UserId]
GO
ALTER TABLE [dbo].[OrderStatuses]  WITH CHECK ADD  CONSTRAINT [FK_OrderStatuses_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderStatuses] CHECK CONSTRAINT [FK_OrderStatuses_Orders_OrderId]
GO
ALTER TABLE [dbo].[PaymentMethods]  WITH CHECK ADD  CONSTRAINT [FK_PaymentMethods_PaymentTypes_PaymentTypeId] FOREIGN KEY([PaymentTypeId])
REFERENCES [dbo].[PaymentTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentMethods] CHECK CONSTRAINT [FK_PaymentMethods_PaymentTypes_PaymentTypeId]
GO
ALTER TABLE [dbo].[PaymentMethods]  WITH CHECK ADD  CONSTRAINT [FK_PaymentMethods_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaymentMethods] CHECK CONSTRAINT [FK_PaymentMethods_Users_UserId]
GO
ALTER TABLE [dbo].[ProductConfigs]  WITH CHECK ADD  CONSTRAINT [FK_ProductConfigs_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductConfigs] CHECK CONSTRAINT [FK_ProductConfigs_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductConfigs]  WITH CHECK ADD  CONSTRAINT [FK_ProductConfigs_Variations_VariationId] FOREIGN KEY([VariationId])
REFERENCES [dbo].[Variations] ([Id])
GO
ALTER TABLE [dbo].[ProductConfigs] CHECK CONSTRAINT [FK_ProductConfigs_Variations_VariationId]
GO
ALTER TABLE [dbo].[ProductItemConfigs]  WITH CHECK ADD  CONSTRAINT [FK_ProductItemConfigs_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductItemConfigs] CHECK CONSTRAINT [FK_ProductItemConfigs_ProductItems_ProductItemId]
GO
ALTER TABLE [dbo].[ProductItemConfigs]  WITH CHECK ADD  CONSTRAINT [FK_ProductItemConfigs_VariationOptions_VariationOptionId] FOREIGN KEY([VariationOptionId])
REFERENCES [dbo].[VariationOptions] ([Id])
GO
ALTER TABLE [dbo].[ProductItemConfigs] CHECK CONSTRAINT [FK_ProductItemConfigs_VariationOptions_VariationOptionId]
GO
ALTER TABLE [dbo].[ProductItems]  WITH CHECK ADD  CONSTRAINT [FK_ProductItems_Guaranties_GuarantyId] FOREIGN KEY([GuarantyId])
REFERENCES [dbo].[Guaranties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductItems] CHECK CONSTRAINT [FK_ProductItems_Guaranties_GuarantyId]
GO
ALTER TABLE [dbo].[ProductItems]  WITH CHECK ADD  CONSTRAINT [FK_ProductItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductItems] CHECK CONSTRAINT [FK_ProductItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[PromotionInProductItems]  WITH CHECK ADD  CONSTRAINT [FK_PromotionInProductItems_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PromotionInProductItems] CHECK CONSTRAINT [FK_PromotionInProductItems_ProductItems_ProductItemId]
GO
ALTER TABLE [dbo].[PromotionInProductItems]  WITH CHECK ADD  CONSTRAINT [FK_PromotionInProductItems_Promotions_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PromotionInProductItems] CHECK CONSTRAINT [FK_PromotionInProductItems_Promotions_PromotionId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_OrderDetails_OrderDetailId] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_OrderDetails_OrderDetailId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users_UserId]
GO
ALTER TABLE [dbo].[VariationOptions]  WITH CHECK ADD  CONSTRAINT [FK_VariationOptions_Variations_VariationId] FOREIGN KEY([VariationId])
REFERENCES [dbo].[Variations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VariationOptions] CHECK CONSTRAINT [FK_VariationOptions_Variations_VariationId]
GO
ALTER TABLE [dbo].[Warranties]  WITH CHECK ADD  CONSTRAINT [FK_Warranties_OrderDetails_OrderDetailId] FOREIGN KEY([OrderDetailId])
REFERENCES [dbo].[OrderDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Warranties] CHECK CONSTRAINT [FK_Warranties_OrderDetails_OrderDetailId]
GO
ALTER DATABASE [eJewelryDb] SET  READ_WRITE 
GO
