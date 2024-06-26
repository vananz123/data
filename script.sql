/****** Object:  Database [eJewelryDb]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Addresses]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Carts]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Departments]    Script Date: 6/19/2024 11:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[UrbanDistrict] [nvarchar](max) NOT NULL,
	[LinkGoogleMap] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[Province] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guaranties]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[HistoryInventionDetails]    Script Date: 6/19/2024 11:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryInventionDetails](
	[HistoryInventionId] [int] NOT NULL,
	[ProductItemId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_HistoryInventionDetails] PRIMARY KEY CLUSTERED 
(
	[ProductItemId] ASC,
	[HistoryInventionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryInventions]    Script Date: 6/19/2024 11:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryInventions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[DateModify] [datetime2](7) NULL,
 CONSTRAINT [PK_HistoryInventions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventories]    Script Date: 6/19/2024 11:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventories](
	[ProductItemId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED 
(
	[ProductItemId] ASC,
	[DepartmentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderAddresses]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[OrderPayments]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 6/19/2024 11:04:02 PM ******/
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
	[DepartmentId] [int] NOT NULL,
	[Voucher] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatuses]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[PaymentTypes]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[ProductConfigs]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[ProductItemConfigs]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[ProductItems]    Script Date: 6/19/2024 11:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[GuarantyId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
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
/****** Object:  Table [dbo].[Products]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[PromotionInProductItems]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Promotions]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Reviews]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[ShippingMethods]    Script Date: 6/19/2024 11:04:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ShippingMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[UserLogins]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[UserRoles]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[UserTokens]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[VariationOptions]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Variations]    Script Date: 6/19/2024 11:04:02 PM ******/
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
/****** Object:  Table [dbo].[Warranties]    Script Date: 6/19/2024 11:04:02 PM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240615085209_InitialCreate', N'7.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240617043730_InitialCreate6', N'7.0.15')
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([Id], [UserId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country], [IsDefault]) VALUES (1, N'c428d506-0e36-477b-4090-08dc8d1c924e', N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam', 0)
INSERT [dbo].[Addresses] ([Id], [UserId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country], [IsDefault]) VALUES (2, N'240fb214-6254-44b8-f06b-08dc90274324', N'0393946693', N'40A Thích quảng đức', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam', 0)
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId], [ProductItemId], [Quantity]) VALUES (12, N'c428d506-0e36-477b-4090-08dc8d1c924e', 24, 1)
INSERT [dbo].[Carts] ([Id], [UserId], [ProductItemId], [Quantity]) VALUES (14, N'240fb214-6254-44b8-f06b-08dc90274324', 30, 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (1, N'Trang sức', NULL, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (2, N'Đồng hồ', NULL, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (3, N'Nhẫn', 1, 1, 1)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (4, N'Dây chuyền', 1, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (5, N'Lắc', 1, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (6, N'Đồng hồ cơ', 2, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (7, N'Đồng hồ điện tử', 2, 1, 0)
INSERT [dbo].[Categories] ([Id], [Name], [ParentId], [Sort], [Status]) VALUES (8, N'Mặt dây chuyền', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [PhoneNumber], [Name], [Description], [Address], [UrbanDistrict], [LinkGoogleMap], [Status], [Province]) VALUES (1, N'0000000000', N'Chi nhánh trung tâm', N'<p>Chi nhánh trung tâm</p>', N'30A Thích Quảng Đức, Phường 5', N'Quận Phú Nhuận', N'https://maps.app.goo.gl/iTRvse4RGDLXjLPD6', 0, N'Tp Hồ Chí Minh')
INSERT [dbo].[Departments] ([Id], [PhoneNumber], [Name], [Description], [Address], [UrbanDistrict], [LinkGoogleMap], [Status], [Province]) VALUES (2, N'0000000000', N'Chi nhánh Gò Vấp', N'<p>Chi nhánh Gò Vấp</p>', N'377 Nguyễn Kiệm, Phường 3', N'Quận Gò Vấp', N'https://maps.app.goo.gl/iTRvse4RGDLXjLPD6', 0, N'Tp Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Guaranties] ON 

INSERT [dbo].[Guaranties] ([Id], [SKU], [Name], [Description], [Period], [DateCreated], [DateModify], [Status]) VALUES (1, N'Tháng', N'Bảo hàng không khả dụng', N'Sản phẩm không có bảo hành', 0, CAST(N'2024-06-17T11:37:30.4053043' AS DateTime2), NULL, 0)
INSERT [dbo].[Guaranties] ([Id], [SKU], [Name], [Description], [Period], [DateCreated], [DateModify], [Status]) VALUES (2, N'Tháng', N'Bảo hành 6 tháng', N'Bảo hành 6 tháng', 6, CAST(N'2024-06-17T11:37:30.4053046' AS DateTime2), NULL, 0)
SET IDENTITY_INSERT [dbo].[Guaranties] OFF
GO
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (3, 1, CAST(4500000.00 AS Decimal(18, 2)), 3, CAST(N'2024-06-16T12:15:34.5736531' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (4, 1, CAST(4500000.00 AS Decimal(18, 2)), 2, CAST(N'2024-06-16T12:27:32.9760379' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (5, 1, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-06-16T13:30:22.1162193' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (6, 1, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-06-16T09:44:56.4707389' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (7, 1, CAST(0.00 AS Decimal(18, 2)), 1, CAST(N'2024-06-16T09:46:50.3254000' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (15, 1, CAST(4000000.00 AS Decimal(18, 2)), 6, CAST(N'2024-06-19T11:31:33.4082895' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (15, 2, CAST(4200000.00 AS Decimal(18, 2)), 6, CAST(N'2024-06-19T11:31:33.4998290' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (8, 4, CAST(0.00 AS Decimal(18, 2)), 2, CAST(N'2024-06-16T20:17:38.4418022' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (11, 24, CAST(9000000.00 AS Decimal(18, 2)), 2, CAST(N'2024-06-17T04:50:09.6879832' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (12, 24, CAST(8000000.00 AS Decimal(18, 2)), 2, CAST(N'2024-06-17T04:51:27.7551484' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (14, 24, CAST(8200000.00 AS Decimal(18, 2)), 2, CAST(N'2024-06-17T05:02:39.0454271' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (16, 29, CAST(33000000.00 AS Decimal(18, 2)), 9, CAST(N'2024-06-19T13:28:07.5622868' AS DateTime2))
INSERT [dbo].[HistoryInventionDetails] ([HistoryInventionId], [ProductItemId], [Price], [Quantity], [DateCreate]) VALUES (16, 30, CAST(39000000.00 AS Decimal(18, 2)), 8, CAST(N'2024-06-19T13:28:07.5909804' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[HistoryInventions] ON 

INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (3, N'import', 1, 1, CAST(N'2024-06-16T12:15:30.9757054' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (4, N'import', 1, 1, CAST(N'2024-06-16T12:27:32.3615981' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (5, N'export', 2, 1, CAST(N'2024-06-16T13:30:21.6047318' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (6, N'export', 2, 1, CAST(N'2024-06-16T09:44:56.2334952' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (7, N'export', 2, 1, CAST(N'2024-06-16T09:46:50.2545279' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (8, N'export', 2, 0, CAST(N'2024-06-16T20:17:38.2153503' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (11, N'import', 1, 1, CAST(N'2024-06-17T04:50:09.4209467' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (12, N'import', 1, 1, CAST(N'2024-06-17T04:51:27.7182548' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (14, N'export', 2, 1, CAST(N'2024-06-17T05:02:39.0380919' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (15, N'import', 1, 1, CAST(N'2024-06-19T11:31:33.1795966' AS DateTime2), NULL)
INSERT [dbo].[HistoryInventions] ([Id], [Type], [DepartmentId], [Status], [DateCreate], [DateModify]) VALUES (16, N'import', 1, 1, CAST(N'2024-06-19T13:28:07.5242080' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[HistoryInventions] OFF
GO
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (1, 1, 11, CAST(4000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (1, 2, 9, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (2, 1, 15, CAST(4200000.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (2, 2, 6, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (3, 1, 9, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (3, 2, 9, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (4, 1, 9, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (4, 2, 9, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (24, 1, 2, CAST(8200000.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (24, 2, 2, CAST(8200000.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (26, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (26, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (27, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (27, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (28, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (28, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (29, 1, 9, CAST(33000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (29, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (30, 1, 8, CAST(39000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (30, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (31, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (31, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (32, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (32, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (33, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (33, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (34, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (34, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (35, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (35, 2, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (36, 1, 0, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Inventories] ([ProductItemId], [DepartmentId], [Stock], [Price]) VALUES (36, 2, 0, CAST(0.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[OrderAddresses] ON 

INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (1, 1, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (2, 2, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (3, 3, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (4, 4, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (5, 5, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (6, 6, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (7, 7, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (8, 8, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (9, 9, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (11, 11, N'0356636960', N'19/5H Trần Văn Mười, Xuân Thới Thượng, Hóc Môn', N'Xã Xuân Thới Thượng', N'Huyện Hóc Môn', N'Tp Hồ Chí Minh', N'Việt Nam')
INSERT [dbo].[OrderAddresses] ([Id], [OrderId], [PhoneNumber], [StreetNumber], [WardCommune], [UrbanDistrict], [Province], [Country]) VALUES (12, 12, N'0393946693', N'40A Thích quảng đức', N'Phường 5', N'Quận Phú Nhuận', N'Tp Hồ Chí Minh', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[OrderAddresses] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (1, 1, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (2, 2, 2, 1, CAST(5200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (3, 3, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (4, 4, 1, 2, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (5, 5, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (6, 6, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (7, 7, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (8, 8, 2, 1, CAST(5200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (9, 9, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (10, 11, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductItemId], [Quantity], [Price], [ValuePromotion], [Type]) VALUES (11, 12, 2, 1, CAST(5200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderPayments] ON 

INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (1, 1, CAST(N'2024-06-15T09:38:13.7495600' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (2, 2, CAST(N'2024-06-15T10:36:25.1308319' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (3, 3, CAST(N'2024-06-15T14:23:13.3962846' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (4, 4, CAST(N'2024-06-15T14:27:45.0145803' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (5, 5, CAST(N'2024-06-15T14:32:09.1431361' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (6, 6, CAST(N'2024-06-15T14:41:07.0824473' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (7, 7, CAST(N'2024-06-16T09:26:18.4362792' AS DateTime2), N'Thanh toán VNPAY', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (8, 8, CAST(N'2024-06-16T09:38:53.9356670' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (9, 9, CAST(N'2024-06-16T10:27:08.4340162' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (11, 11, CAST(N'2024-06-16T10:31:20.5936573' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
INSERT [dbo].[OrderPayments] ([Id], [OrderId], [PaymentDate], [PaymentType], [Privoder], [AccountNumber]) VALUES (12, 12, CAST(N'2024-06-19T13:23:40.2613463' AS DateTime2), N'Thanh toán tiền mặt', NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderPayments] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (1, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-15T09:38:13.5887002' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (2, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-15T10:36:24.9871044' AS DateTime2), CAST(5200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 2, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (3, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-15T14:23:13.2157050' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 2, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (4, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-15T14:27:44.9697214' AS DateTime2), CAST(10000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 2, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (5, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-15T14:32:09.1251297' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (6, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-15T14:41:07.0633317' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (7, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-16T09:26:18.0139560' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (8, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-16T09:38:53.9196517' AS DateTime2), CAST(5200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 2, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (9, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-16T10:27:08.0451016' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (11, N'c428d506-0e36-477b-4090-08dc8d1c924e', CAST(N'2024-06-16T10:31:20.5756636' AS DateTime2), CAST(5000000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [OrderTotal], [OrderDiscount], [ShippingMethodId], [DepartmentId], [Voucher]) VALUES (12, N'240fb214-6254-44b8-f06b-08dc90274324', CAST(N'2024-06-19T13:23:39.8846979' AS DateTime2), CAST(5200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, 2, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatuses] ON 

INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (1, N'Đang xử lý', 1, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-15T09:38:13.6728447' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (2, N'Đang xử lý', 2, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-15T10:36:25.0293466' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (3, N'Đang xử lý', 3, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-15T14:23:13.2991860' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (4, N'Đang xử lý', 4, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-15T14:27:45.0045651' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (5, N'Đang xử lý', 5, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-15T14:32:09.1330419' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (6, N'Đang xử lý', 6, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-15T14:41:07.0724121' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (7, N'Đang xử lý', 7, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-16T09:26:18.2594079' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (8, N'Đã thanh toán', 7, N'Đơn hàng đã toán trực tuyến', CAST(N'2024-06-16T09:27:01.5540416' AS DateTime2), 1)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (9, N'Đã tiếp nhận', 7, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-06-16T09:30:04.9068812' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (10, N'Đang xử lý', 8, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-16T09:38:53.9263805' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (11, N'Đã tiếp nhận', 8, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-06-16T09:39:12.0879010' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (12, N'Đang xử lý', 9, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-16T10:27:08.2812215' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (14, N'Đang xử lý', 11, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-16T10:31:20.5841856' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (15, N'Đã tiếp nhận', 11, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-06-16T19:42:54.9733861' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (16, N'Đã tiếp nhận', 6, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-06-16T20:36:59.9479692' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (17, N'Đã hoàn thành', 11, N'Đơn hàng đã được khách hàng xác nhận', CAST(N'2024-06-19T08:50:37.3419471' AS DateTime2), 5)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (18, N'Đã hoàn thành', 8, N'Đơn hàng đã được khách hàng xác nhận', CAST(N'2024-06-19T08:50:50.9867446' AS DateTime2), 5)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (19, N'Đang xử lý', 12, N'Đơn hàng đang được quản trị viên xử lý', CAST(N'2024-06-19T13:23:40.0844804' AS DateTime2), 0)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (20, N'Đã tiếp nhận', 12, N'Đơn hàng đã được quản trị viên tiếp nhận', CAST(N'2024-06-19T13:25:24.4894522' AS DateTime2), 3)
INSERT [dbo].[OrderStatuses] ([Id], [Name], [OrderId], [Description], [CreateAt], [Status]) VALUES (21, N'Đã hoàn thành', 12, N'Đơn hàng đã được khách hàng xác nhận', CAST(N'2024-06-19T13:25:42.5124114' AS DateTime2), 5)
SET IDENTITY_INSERT [dbo].[OrderStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] ON 

INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (1, N'16ecc6d3-4e94-47b7-94de-c629d89ace31', 1, N'', N'', 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (2, N'c428d506-0e36-477b-4090-08dc8d1c924e', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (3, N'c428d506-0e36-477b-4090-08dc8d1c924e', 2, NULL, NULL, 0)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (4, N'a40d8d62-622a-4885-4cc5-08dc8dd7891a', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (5, N'a40d8d62-622a-4885-4cc5-08dc8dd7891a', 2, NULL, NULL, 0)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (6, N'240fb214-6254-44b8-f06b-08dc90274324', 1, NULL, NULL, 1)
INSERT [dbo].[PaymentMethods] ([Id], [UserId], [PaymentTypeId], [Privoder], [AccountNumber], [IsDefault]) VALUES (7, N'240fb214-6254-44b8-f06b-08dc90274324', 2, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[PaymentMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTypes] ON 

INSERT [dbo].[PaymentTypes] ([Id], [Name]) VALUES (1, N'Thanh toán tiền mặt')
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
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (3, 6)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (4, 7)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (4, 8)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (4, 9)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (7, 10)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (7, 11)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (7, 12)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (8, 13)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (8, 14)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (8, 15)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (10, 16)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (10, 17)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (10, 18)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (9, 19)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (9, 20)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (9, 21)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (6, 22)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (6, 23)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (6, 24)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (5, 25)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (5, 26)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (5, 27)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (11, 28)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (11, 29)
INSERT [dbo].[ProductConfigs] ([ProductId], [VariationId]) VALUES (11, 30)
GO
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (1, 2)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (26, 2)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (27, 2)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (2, 3)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (3, 5)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (4, 6)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (24, 10)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (28, 12)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (29, 12)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (30, 16)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (31, 17)
INSERT [dbo].[ProductItemConfigs] ([ProductItemId], [VariationOptionId]) VALUES (32, 17)
GO
SET IDENTITY_INSERT [dbo].[ProductItems] ON 

INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (1, 1, 1, CAST(5000000.00 AS Decimal(18, 2)), 13, N'cm', 1, N'', 1, CAST(N'2024-06-17T11:37:30.4053179' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (2, 1, 2, CAST(5200000.00 AS Decimal(18, 2)), 16, N'cm', 1, N'', 1, CAST(N'2024-06-17T11:37:30.4053183' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (3, 2, 2, CAST(3000000.00 AS Decimal(18, 2)), 0, N'size', 1, N'', 1, CAST(N'2024-06-17T11:37:30.4053185' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (4, 2, 2, CAST(3200000.00 AS Decimal(18, 2)), 0, N'size', 1, N'', 1, CAST(N'2024-06-17T11:37:30.4053187' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (24, 3, 2, CAST(9700000.00 AS Decimal(18, 2)), 5, N'cm', 1, N'', 1, CAST(N'2024-06-16T22:28:20.1015530' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (26, 3, 2, CAST(10270000.00 AS Decimal(18, 2)), 6, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:13:46.8119485' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (27, 4, 1, CAST(18400000.00 AS Decimal(18, 2)), 11, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:15:51.5475580' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (28, 4, 1, CAST(20500000.00 AS Decimal(18, 2)), 11, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:16:05.5339679' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (29, 5, 2, CAST(43000000.00 AS Decimal(18, 2)), 12, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:18:04.3876871' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (30, 5, 2, CAST(49000000.00 AS Decimal(18, 2)), 14, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:18:13.5438639' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (31, 6, 2, CAST(19400000.00 AS Decimal(18, 2)), 0, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:21:10.7272078' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (32, 7, 2, CAST(23400000.00 AS Decimal(18, 2)), 0, N'cm', 1, N'', 1, CAST(N'2024-06-16T16:30:31.7520157' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (33, 8, 2, CAST(8105000.00 AS Decimal(18, 2)), 0, N'', 0, N'', 1, CAST(N'2024-06-16T16:33:13.5877035' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (34, 9, 2, CAST(3800000.00 AS Decimal(18, 2)), 0, N'', 0, N'', 1, CAST(N'2024-06-16T16:34:37.9547931' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (35, 10, 2, CAST(11800000.00 AS Decimal(18, 2)), 0, N'', 0, N'', 1, CAST(N'2024-06-16T16:40:30.5608750' AS DateTime2), NULL)
INSERT [dbo].[ProductItems] ([Id], [ProductId], [GuarantyId], [Price], [ViewCount], [SKU], [IsMulti], [UrlImage], [Status], [DateCreated], [DateModify]) VALUES (36, 11, 2, CAST(50000000.00 AS Decimal(18, 2)), 0, N'', 0, N'', 1, CAST(N'2024-06-16T16:57:48.4377051' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[ProductItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (1, N'Dây chuyền vàng', N'<p>Dây chuyền vàng 24k đính đá ECZ kim bảo</p>', N'Dây chuyền vàng 24k đính đá ECZ kim bảo', N'/images/4ec709c5-9791-4a38-a77b-81461dd3e7be.webp', N'', 24, 0, CAST(N'2024-06-17T11:37:30.4053130' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (2, N'Nhẫn bạc', N'<p>Nhẫn bạc nguyên chất</p>', N'Nhẫn bạc nguyên chất', N'/images/c045aba9-a7fb-4baf-8613-7cac391d8199.png', N'', 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, 3)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (3, N'Dây chuyền Vàng 24K PNJ 0000Y007437', N'<p>Trọng lượng tham khảo: 12.81268phân</p><p>Hàm lượng chất liệu: 9900</p><p>Loại đá chính: Không gắn đá</p><p>Loại đá phụ: Không gắn đá</p><p>Thương hiệu: PNJ</p><p>Giới tính: Nữ</p><p>Bằng việc kết hợp chất liệu vàng 24K cùng thiết kế tinh tế, sợi <a href="https://www.pnj.com.vn/day-chuyen/day-chuyen-vang-bac/day-chuyen-vang/?itm_source=pdp&amp;itm_medium=daychuyenvang&amp;itm_campaign=&amp;itm_content=">dây chuyền</a> chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.</p><p><strong>Dù diện lên bộ cánh dạ tiệc hay bộ áo dài đỏ trong ngày cưới, chiếc dây chuyền sẽ tạo điểm nhấn tuyệt đối xung quanh xương quai xanh và khơi gợi ánh nhìn xung quanh.</strong></p>', N'Dây chuyền Vàng 24K PNJ 0000Y007437', N'/images/b05810ff-c44f-4bc7-87f8-2d7f037770fd.webp', N'/images/bea780b2-2ce4-45e7-9b4d-8502b108f63b.webp*/images/9928fed7-1832-4324-9d9d-abd987b86430.webp*', 16, 2, CAST(N'2024-06-16T15:05:22.6259015' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (4, N'Dây chuyền Vàng 24K PNJ 0000Y007840', N'<p>Trọng lượng tham khảo:24.95435phân</p><p>Hàm lượng chất liệu:9900</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Giới tính:Unisex</p><p>Bằng việc kết hợp chất liệu vàng 24K cùng thiết kế tinh tế, sợi <a href="https://www.pnj.com.vn/"><strong>dây chuyền</strong></a> chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.</p><p>Dù diện lên bộ cánh dạ tiệc hay đơn giản là oufit thường ngày, chiếc dây chuyền sẽ tạo điểm nhấn tuyệt đối xung quanh xương quai xanh và khơi gợi ánh nhìn xung quanh.</p>', N'Dây chuyền Vàng 24K PNJ 0000Y007840', N'/images/f9412311-4a63-4a19-9a48-5d1efd632de0.webp', N'/images/2833147a-2fee-4301-be87-5c4ec8c1140e.webp*/images/64850b0b-2b03-47c6-b56e-54bee412dd83.webp*', 30, 2, CAST(N'2024-06-16T16:15:18.2698157' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (5, N'Dây chuyền Vàng 24K PNJ 0000Y007880', N'<p>Trọng lượng tham khảo:60.98845phân</p><p>Hàm lượng chất liệu:9900</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Bằng việc kết hợp chất liệu vàng 24K cùng thiết kế tinh tế, sợi <a href="https://www.pnj.com.vn/day-chuyen/day-chuyen-vang-bac/day-chuyen-vang/?itm_source=pdp&amp;itm_medium=daychuyenvang&amp;itm_campaign=&amp;itm_content=">dây chuyền</a> chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Dây đeo mảnh thích hợp với những bộ trang phục có nhiều họa tiết, đồng thời tạo điểm nhìn cân bằng với các phụ kiện to bản khác.</p><p>Dù diện lên bộ cánh dạ tiệc hay bộ áo dài đỏ trong ngày cưới, chiếc dây chuyền sẽ tạo điểm nhấn tuyệt đối xung quanh xương quai xanh và khơi gợi ánh nhìn xung quanh.</p>', N'Dây chuyền Vàng 24K PNJ 0000Y007880', N'/images/25f0233b-b26c-47ab-a83c-6984dff1007d.webp', N'/images/6afb0e4b-6239-484e-b96b-d692001cdeaa.webp*/images/45ab8cd1-7d09-4246-b4c7-eeb577612c7e.webp*', 42, 2, CAST(N'2024-06-16T16:17:33.5915725' AS DateTime2), NULL, 4)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (6, N'Lắc tay Vàng 24K PNJ 0000Y002404', N'<p>Trọng lượng tham khảo:23.8043phân</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Giới tính:Nữ</p><p>Vừa mang nét cổ điển nhưng lại có một chút sự hiện đại bởi sự rành mạch trong đường nét, lại giữ được sự mềm mại và ngẫu hứng giữa vàng 24K cùng thiết kế độc đáo - chiếc <a href="https://www.pnj.com.vn/"><strong>lắc tay</strong></a> khoác lên sự thanh lịch và gây ấn tượng như người phụ nữ trưởng thành với phong cách tao nhã.</p><p>Thêm vào đó, với thiết kế cổ điển, chiếc lắc tay còn là <a href="https://www.pnj.com.vn/"><strong>món quà</strong></a> dành tặng cho các nàng dâu. Với các điểm nhấn trên sản phẩm, PNJ tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.</p>', N'Lắc tay Vàng 24K PNJ 0000Y002404', N'/images/55f133b2-a6ac-4200-933d-6045ad24c25d.webp', N'/images/bb483b2e-8d49-4d8d-abb1-ad11a6fced4d.webp*', 28, 2, CAST(N'2024-06-16T16:20:24.9004815' AS DateTime2), NULL, 5)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (7, N'Lắc tay Vàng 24K PNJ 0000Y002405', N'<p>Trọng lượng tham khảo:29.5629phân</p><p>Hàm lượng chất liệu:9900</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Giới tính:Nữ</p><p>Vừa mang nét cổ điển nhưng lại có một chút sự hiện đại bởi sự rành mạch trong đường nét, lại giữ được sự mềm mại và ngẫu hứng giữa vàng 24K cùng thiết kế độc đáo - chiếc <a href="https://www.pnj.com.vn/"><strong>lắc tay</strong></a> khoác lên sự thanh lịch và gây ấn tượng như người phụ nữ trưởng thành với phong cách tao nhã.</p><p>Thêm vào đó, với thiết kế cổ điển, chiếc lắc tay còn là <a href="https://www.pnj.com.vn/"><strong>món quà</strong></a> dành tặng cho các nàng dâu. Với các điểm nhấn trên sản phẩm, PNJ tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện chúng.</p>', N'Lắc tay Vàng 24K PNJ 0000Y002405', N'/images/3ff3c0f1-5cc8-4447-be4a-f56fd02417eb.webp', N'/images/10980168-27d5-48ba-a5c3-bca28fa43474.webp*', 16, 3, CAST(N'2024-06-16T16:29:54.8801112' AS DateTime2), NULL, 5)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (8, N'Mặt dây chuyền Vàng 24K PNJ 0000Y000755', N'<p>Trọng lượng tham khảo:10.45724phân</p><p>Hàm lượng chất liệu:9900</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Giới tính:Nữ</p><p>Chiếc mặt dây chuyền PNJ sở hữu sự cứng cáp của vàng 24K được chế tác tinh xảo, tạo nên sự độc đáo và sang trọng. Từng đường viền mềm mại được chế tác sinh động, kết hợp chất liệu vàng 24K, tất cả đã mang đến mặt dây chuyền nổi bật với vẻ đẹp tinh tế.</p><p>Sản phẩm với thiết kế đơn giản, không quá nhiều chi tiết cầu kỳ sẽ giúp càng nàng tỏa sáng. Khi kết hợp cùng dây chuyền, bộ đôi sẽ giúp nàng khoe trọn xương quai xanh quyến rũ và thu hút ánh nhìn xung quanh.</p>', N'Mặt dây chuyền Vàng 24K PNJ 0000Y000755', N'/images/b427eb10-f177-4c73-a395-88ddbf2678f8.webp', N'/images/acd6033e-8b5c-4154-8cdd-bd6752361e4a.webp*/images/d8fc3c7e-2183-498f-a1d5-77a3f97ec5e6.webp*', 28, 3, CAST(N'2024-06-16T16:32:33.3017119' AS DateTime2), NULL, 8)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (9, N'Mặt dây chuyền Vàng 24K PNJ 0000Y000757', N'<p>Trọng lượng tham khảo:4.85071phân</p><p>Hàm lượng chất liệu:9900</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Giới tính:Nữ</p><p>Chiếc mặt dây chuyền PNJ sở hữu sự cứng cáp của vàng 24K được chế tác tinh xảo, tạo nên sự độc đáo và sang trọng. Từng đường viền mềm mại được chế tác sinh động, kết hợp chất liệu vàng 24K, tất cả đã mang đến mặt dây chuyền nổi bật với vẻ đẹp tinh tế.</p><p>Sản phẩm với thiết kế đơn giản, không quá nhiều chi tiết cầu kỳ sẽ giúp càng nàng tỏa sáng. Khi kết hợp cùng dây chuyền, bộ đôi sẽ giúp nàng khoe trọn xương quai xanh quyến rũ và thu hút ánh nhìn xung quanh.</p>', N'Mặt dây chuyền Vàng 24K PNJ 0000Y000757', N'/images/aa33f6a5-14c3-4bd9-ac9e-a6af4d233c2e.webp', N'/images/9a59210a-6269-4b9b-ab05-a4289b7ca409.webp*/images/02c7b0fc-1806-49d0-9b73-56f3054c9efc.webp*', 23, 3, CAST(N'2024-06-16T16:34:13.2113955' AS DateTime2), NULL, 8)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (10, N'Mặt dây chuyền cưới Vàng 24K PNJ 0000Y001366', N'<p>Trọng lượng tham khảo:14.888phân</p><p>Hàm lượng chất liệu:9900</p><p>Loại đá chính:Không gắn đá</p><p>Loại đá phụ:Không gắn đá</p><p>Thương hiệu:PNJ</p><p>Giới tính:Nữ</p><p>Mô phỏng nét tin yêu cùng vẻ đẹp tinh tế, thanh tú của nàng, PNJ mang đến hơi thở mới mẻ từ những chi tiết giản đơn cho thiết kế trang sức mới của mình. Chiếc <a href="https://www.pnj.com.vn/"><strong>mặt dây chuyền</strong></a> được chế tác từ sắc vàng 24K trên thiết kế đậm chất phóng khoáng và hiện đại.</p><p>Sản phẩm chính là sự hội tụ của phong cách thiết kế hiện đại kết hợp đỉnh cao của trình độ chế tác và sẽ trở thành xu hướng trang sức mới, mang đến cho phái đẹp thêm nhiều sự lựa chọn cho bộ sưu tập của mình.</p>', N'Mặt dây chuyền cưới Vàng 24K PNJ 0000Y001366', N'/images/1aa91a59-0030-4046-9a2c-7305d26c79d0.webp', N'/images/8ea4e0ff-27a2-4815-9f69-749b0b3cd4be.webp*/images/ead5fd79-1858-420e-acb3-b4b229aa2c2e.webp*', 10, 3, CAST(N'2024-06-16T16:39:54.3553589' AS DateTime2), NULL, 8)
INSERT [dbo].[Products] ([Id], [Name], [SeoDescription], [SeoTitle], [UrlThumbnailImage], [UrlImage], [ViewCount], [Status], [DateCreated], [DateModify], [CategoryId]) VALUES (11, N'Đồng hồ Rado Coupole Classic Nam R22894203 Dây Kim Loại 41 mm', N'<p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Phong cách:Classic: cổ điển, thông dụng</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Thương hiệu:Rado</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Xuất Xứ Thương Hiệu:Thụy Sỹ</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Xuất xứ bộ máy:Thụy Sỹ</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Lắp ráp tại:Thụy Sỹ</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Loại máy đồng hồ:Automatic (cơ tự động)</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Loại mặt kính:Kính Sapphire Chống Chói</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Chất liệu dây:Dây thép cao cấp không gỉ 316L</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Chất liệu vỏ:Thép không gỉ</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Hình dạng mặt:Tròn</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Màu sắc mặt:Xanh dương</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Kích thước mặt:41mm</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Độ chịu nước:5atm</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Độ dày vỏ máy:11mm</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Số Kim:2</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Đá Gắn Kèm Đồng Hồ:Không gắn đá</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Chứng nhận Chronometer:Không</span></p><p><span style="color:hsl(270, 75%, 60%);font-family:Arial, Helvetica, sans-serif;">Giới tính:Nam</span></p>', N'Đồng hồ Rado Coupole Classic Nam R22894203 Dây Kim Loại 41 mm', N'/images/910074eb-0310-4b98-a7a1-1ca4aa24d9f9.webp', N'/images/4cefcc9f-48b9-4e36-9b25-d5a6df66ada4.webp*/images/e7a52d40-60d2-4ead-88a5-466472a26e00.webp*', 29, 0, CAST(N'2024-06-16T16:56:36.9635744' AS DateTime2), NULL, 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PromotionInProductItems] ON 

INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (1, 24, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (2, 26, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (3, 27, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (4, 28, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (5, 29, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (6, 30, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (7, 31, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (8, 32, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (9, 33, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (11, 35, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (12, 34, 1, 0, 0, 0)
INSERT [dbo].[PromotionInProductItems] ([Id], [ProductItemId], [PromotionId], [Quantity], [LimitQuantity], [Status]) VALUES (13, 36, 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[PromotionInProductItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotions] ON 

INSERT [dbo].[Promotions] ([Id], [Name], [Description], [Value], [Type], [Condition], [StartDate], [EndDate], [Status]) VALUES (1, N'Khuyến mãi khai trương', N'Chương trình khai trương cửa hàng online', CAST(10.00 AS Decimal(18, 2)), N'percentage', NULL, CAST(N'2024-06-17T11:37:30.4052967' AS DateTime2), CAST(N'2024-07-07T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Promotions] OFF
GO
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b22642d4-2463-4cdf-8e21-3ecec11fa25b', N'super administrator role', N'super-admin', N'super-admin', NULL)
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ac4a3a6c-3e84-4ed4-93eb-7679abf315a3', N'sale role', N'sale', N'sale', NULL)
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e07d16e3-52e2-43ec-b3d0-9c0fea10ab52', N'administrator role', N'admin', N'admin', NULL)
INSERT [dbo].[Roles] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81', N'customer role', N'customer', N'customer', NULL)
GO
SET IDENTITY_INSERT [dbo].[ShippingMethods] ON 

INSERT [dbo].[ShippingMethods] ([Id], [Name], [Description], [Price]) VALUES (1, N'Giao hàng tận nơi', N'Miễn phí giao hàng toàn quốc', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[ShippingMethods] ([Id], [Name], [Description], [Price]) VALUES (2, N'Nhận hàng cửa hàng', N'Giữ hàng trước – nhận hàng ngay', CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ShippingMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[UserClaims] ON 

INSERT [dbo].[UserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'Chi nhánh trung tâm', N'1')
INSERT [dbo].[UserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'Chi nhánh Gò Vấp', N'2')
INSERT [dbo].[UserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'972f6d06-b68f-45d6-acbe-98df405c192d', N'Chi nhánh trung tâm', N'1')
INSERT [dbo].[UserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (6, N'a40d8d62-622a-4885-4cc5-08dc8dd7891a', N'Chi nhánh Gò Vấp', N'2')
SET IDENTITY_INSERT [dbo].[UserClaims] OFF
GO
INSERT [dbo].[UserLogins] ([UserId], [LoginProvider], [ProviderKey], [ProviderDisplayName]) VALUES (N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'google', N'114896921808867439817', N'google')
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'c428d506-0e36-477b-4090-08dc8d1c924e', N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'a40d8d62-622a-4885-4cc5-08dc8dd7891a', N'e07d16e3-52e2-43ec-b3d0-9c0fea10ab52')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'240fb214-6254-44b8-f06b-08dc90274324', N'0c2f35c7-9fbe-43af-a0ca-f5b64b0cfe81')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'972f6d06-b68f-45d6-acbe-98df405c192d', N'ac4a3a6c-3e84-4ed4-93eb-7679abf315a3')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'b22642d4-2463-4cdf-8e21-3ecec11fa25b')
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c428d506-0e36-477b-4090-08dc8d1c924e', N'Linh', N'Nguyễn Đình', N'Nguyễn ĐìnhLinh', N'0356636960', N'DinhLinh', N'DINHLINH', N'zindon012333@gmail.com', N'ZINDON012333@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELGowDZYxGlTiRGbkYsYmxjpREG5xFNkOGCIIJ3vseypUeatMmfMsx2d7laAWqU9zQ==', N'TJBRCKTOYPEJOXFZKF6KUGKLYSDVFYAF', N'de7a2b1f-4483-41dd-a023-48512113b85c', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a40d8d62-622a-4885-4cc5-08dc8dd7891a', N'An', N'Đỗ', N'ĐỗAn', N'0393946693', N'AdminGV', N'ADMINCENTER', N'vanan.2020bth@gmail.com', N'VANAN.2020BTH@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELdyLnW8wyvStpYUcYoLNzdtLDyjG7gck94CbYUWdp8aGyc8QScz0YAhqViF+YeIVw==', N'NAN2EWEPNGORB4VUE7Z7LSITLFVV6NLU', N'd266e77d-327c-43d0-8596-9d37f660b4ad', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'240fb214-6254-44b8-f06b-08dc90274324', N'An', N'Do', N'DoAn', N'0393946693', N'Vananpro', N'VANANPRO', N'xathiennghiep@gmail.com', N'XATHIENNGHIEP@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEyek3CfoiEY0vNm5dJvY932ZBCfYaM8PTlFo0jTJlrsdgspypSYBXMPrjCAwRH0fQ==', N'BIBMEECVWPANJF4FGT6PT4OMQ5RSV5RS', N'69c7178e-a2bb-4d97-9be0-e90552df70eb', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'972f6d06-b68f-45d6-acbe-98df405c192d', N'Linh', N'Nguyen', N'Nguyen Dinh Linh', N'0393946693', N'sale', N'SALE', N'vanboan450@gmail.com', N'VANBOAN450@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEASgtR4yvodW6X7zExw1PklYuyoQwlV6bccdWdwS93HPtlZ0x7RZJhfgMVjKDemWsA==', N'', N'0b5fcd1d-40ef-45ee-81d8-706f17e67ec8', 0, 0, NULL, 0, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [FullName], [PhoneNumber], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'16ecc6d3-4e94-47b7-94de-c629d89ace31', N'An', N'Do', N'DoAn', N'0393946693', N'SuperAdmin', N'ADMIN', N'dovanan.bth2017@gmail.com', N'DOVANAN.BTH2017@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEMwiLUBKglIBqtOrk2FEPuAF6mWdSYn/kjw3E0EH2aszTejjnySOl6ryC5fkq+NK3w==', N'', N'fed2210a-c75d-4a6c-8319-d0d0a3c4602c', 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[VariationOptions] ON 

INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (1, 1, N'Vàng 24k')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (2, 2, N'45')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (3, 2, N'46')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (4, 3, N'AL')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (5, 2, N'6')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (6, 2, N'7')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (7, 4, N'12.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (8, 5, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (9, 6, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (10, 2, N'42')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (11, 2, N'43')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (12, 2, N'50')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (13, 7, N'24.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (14, 8, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (15, 9, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (16, 2, N'55')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (17, 2, N'17')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (18, 10, N'29.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (19, 11, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (20, 12, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (21, 13, N'10.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (22, 14, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (23, 15, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (24, 16, N'14.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (25, 17, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (26, 18, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (27, 19, N'14.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (28, 20, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (29, 21, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (30, 22, N'14.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (31, 23, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (32, 24, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (33, 25, N'60.81268phân')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (34, 26, N'9900')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (35, 27, N'PNJ')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (36, 28, N'Classic')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (37, 29, N'Rado')
INSERT [dbo].[VariationOptions] ([Id], [VariationId], [Value]) VALUES (38, 30, N'Thụy Sỹ')
SET IDENTITY_INSERT [dbo].[VariationOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Variations] ON 

INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (1, N'Chất liệu', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (2, N'Size', 1, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (3, N'Thương hiệu', 0, 1)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (4, N'Trọng lượng tham khảo: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (5, N'Hàm lượng chất liệu: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (6, N'Thương hiệu: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (7, N'Trọng lượng tham khảo: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (8, N'Hàm lượng chất liệu: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (9, N'Thương hiệu: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (10, N'Trọng lượng tham khảo: ', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (11, N'Hàm lượng chất liệu: ', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (12, N'Thương hiệu: ', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (13, N'Trọng lượng tham khảo: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (14, N'Hàm lượng chất liệu: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (15, N'Thương hiệu: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (16, N'Trọng lượng tham khảo: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (17, N'Hàm lượng chất liệu: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (18, N'Thương hiệu: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (19, N'Trọng lượng tham khảo: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (20, N'Hàm lượng chất liệu: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (21, N'Thương hiệu: ', 0, 8)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (22, N'Trọng lượng tham khảo: ', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (23, N'Hàm lượng chất liệu: ', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (24, N'Thương hiệu: ', 0, 5)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (25, N'Trọng lượng tham khảo: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (26, N'Hàm lượng chất liệu: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (27, N'Thương hiệu: ', 0, 4)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (28, N'Phong cách: ', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (29, N'Thương hiệu:', 0, 6)
INSERT [dbo].[Variations] ([Id], [Name], [IsMulti], [CategoryId]) VALUES (30, N'Xuất xứ', 0, 6)
SET IDENTITY_INSERT [dbo].[Variations] OFF
GO
/****** Object:  Index [IX_Addresses_UserId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_UserId] ON [dbo].[Addresses]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_ProductItemId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ProductItemId] ON [dbo].[Carts]
(
	[ProductItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_UserId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_UserId] ON [dbo].[Carts]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HistoryInventionDetails_HistoryInventionId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_HistoryInventionDetails_HistoryInventionId] ON [dbo].[HistoryInventionDetails]
(
	[HistoryInventionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HistoryInventions_DepartmentId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_HistoryInventions_DepartmentId] ON [dbo].[HistoryInventions]
(
	[DepartmentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Inventories_DepartmentId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Inventories_DepartmentId] ON [dbo].[Inventories]
(
	[DepartmentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderAddresses_OrderId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OrderAddresses_OrderId] ON [dbo].[OrderAddresses]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductItemId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductItemId] ON [dbo].[OrderDetails]
(
	[ProductItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderPayments_OrderId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_OrderPayments_OrderId] ON [dbo].[OrderPayments]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_DepartmentId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_DepartmentId] ON [dbo].[Orders]
(
	[DepartmentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ShippingMethodId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ShippingMethodId] ON [dbo].[Orders]
(
	[ShippingMethodId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderStatuses_OrderId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderStatuses_OrderId] ON [dbo].[OrderStatuses]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentMethods_PaymentTypeId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentMethods_PaymentTypeId] ON [dbo].[PaymentMethods]
(
	[PaymentTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentMethods_UserId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentMethods_UserId] ON [dbo].[PaymentMethods]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductConfigs_VariationId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductConfigs_VariationId] ON [dbo].[ProductConfigs]
(
	[VariationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItemConfigs_VariationOptionId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductItemConfigs_VariationOptionId] ON [dbo].[ProductItemConfigs]
(
	[VariationOptionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItems_GuarantyId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductItems_GuarantyId] ON [dbo].[ProductItems]
(
	[GuarantyId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductItems_ProductId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductItems_ProductId] ON [dbo].[ProductItems]
(
	[ProductId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PromotionInProductItems_ProductItemId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_PromotionInProductItems_ProductItemId] ON [dbo].[PromotionInProductItems]
(
	[ProductItemId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PromotionInProductItems_PromotionId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_PromotionInProductItems_PromotionId] ON [dbo].[PromotionInProductItems]
(
	[PromotionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_OrderDetailId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_OrderDetailId] ON [dbo].[Reviews]
(
	[OrderDetailId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_UserId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserId] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_VariationOptions_VariationId]    Script Date: 6/19/2024 11:04:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_VariationOptions_VariationId] ON [dbo].[VariationOptions]
(
	[VariationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Warranties_OrderDetailId]    Script Date: 6/19/2024 11:04:19 PM ******/
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
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Guaranties] ADD  DEFAULT (N'Tháng') FOR [SKU]
GO
ALTER TABLE [dbo].[HistoryInventionDetails] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[HistoryInventionDetails] ADD  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[HistoryInventions] ADD  DEFAULT (N'import') FOR [Type]
GO
ALTER TABLE [dbo].[HistoryInventions] ADD  DEFAULT ('2024-06-17T11:37:30.2333697+07:00') FOR [DateCreate]
GO
ALTER TABLE [dbo].[Inventories] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Inventories] ADD  DEFAULT ((0.0)) FOR [Price]
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
ALTER TABLE [dbo].[ShippingMethods] ADD  DEFAULT (N'') FOR [Description]
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
ALTER TABLE [dbo].[HistoryInventionDetails]  WITH CHECK ADD  CONSTRAINT [FK_HistoryInventionDetails_HistoryInventions_HistoryInventionId] FOREIGN KEY([HistoryInventionId])
REFERENCES [dbo].[HistoryInventions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoryInventionDetails] CHECK CONSTRAINT [FK_HistoryInventionDetails_HistoryInventions_HistoryInventionId]
GO
ALTER TABLE [dbo].[HistoryInventionDetails]  WITH CHECK ADD  CONSTRAINT [FK_HistoryInventionDetails_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoryInventionDetails] CHECK CONSTRAINT [FK_HistoryInventionDetails_ProductItems_ProductItemId]
GO
ALTER TABLE [dbo].[HistoryInventions]  WITH CHECK ADD  CONSTRAINT [FK_HistoryInventions_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HistoryInventions] CHECK CONSTRAINT [FK_HistoryInventions_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_Inventories_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_Inventories_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_Inventories_ProductItems_ProductItemId] FOREIGN KEY([ProductItemId])
REFERENCES [dbo].[ProductItems] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_Inventories_ProductItems_ProductItemId]
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
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Departments_DepartmentId]
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
