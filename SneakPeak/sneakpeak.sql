/****** Object:  Database [sneakpeakdb]    Script Date: 11/19/2023 1:33:49 PM ******/
CREATE DATABASE [sneakpeakdb]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [sneakpeakdb] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [sneakpeakdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sneakpeakdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sneakpeakdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sneakpeakdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sneakpeakdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [sneakpeakdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sneakpeakdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sneakpeakdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sneakpeakdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sneakpeakdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sneakpeakdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sneakpeakdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sneakpeakdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sneakpeakdb] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [sneakpeakdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sneakpeakdb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [sneakpeakdb] SET  MULTI_USER 
GO
ALTER DATABASE [sneakpeakdb] SET ENCRYPTION ON
GO
ALTER DATABASE [sneakpeakdb] SET QUERY_STORE = ON
GO
ALTER DATABASE [sneakpeakdb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  User [sneakpearuser]    Script Date: 11/19/2023 1:33:49 PM ******/
CREATE USER [sneakpearuser] WITH PASSWORD=N'I86wh9aS2mDxVtPIyZsIBxukxXg7oZZSwh9OBnUBfgc=', DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/19/2023 1:33:50 PM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Street] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PricePerUnit] [decimal](18, 2) NOT NULL,
	[Size] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLineItem]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLineItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PricePerUnit] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderLineItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Size] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
	[IsInStock] [bit] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItems]    Script Date: 11/19/2023 1:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WishlistId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_WishlistItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230723185652_Initial Create', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230723212810_Added Product', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230724014950_Added new models', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230724020035_Updated models', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230724140816_updated models v2', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230724174114_Added new Models', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230725015128_Added Address', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231031045159_Added category and wishlist', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231031232239_Fixing wishlist', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231106153612_Added Contact', N'7.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231106164930_Added Size', N'7.0.9')
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [UserId], [FirstName], [LastName], [Street], [City], [PostalCode], [Country], [Phone], [Email]) VALUES (1, N'd8e243c3-7688-4978-8a53-e850556ea60a', N'Test', N'Test', N'EastPark Apt', N'Denton', N'76201', N'USA', N'9494094940', N'test@gmail.com')
INSERT [dbo].[Address] ([Id], [UserId], [FirstName], [LastName], [Street], [City], [PostalCode], [Country], [Phone], [Email]) VALUES (4, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', N'Tony Stark', N'Vemula', N'3330 East Park blvd ', N'Denton', N'76201', N'United States', N'9409409444', N'koushiksiva9@gmail.com')
INSERT [dbo].[Address] ([Id], [UserId], [FirstName], [LastName], [Street], [City], [PostalCode], [Country], [Phone], [Email]) VALUES (5, N'b7ec1601-8f80-4e72-a3d5-4112a3de7eed', N'test', N'test', N'test', N'denton', N'76208', N'USA', N'test', N'test')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6b2b834b-9511-4a51-9e4a-469359e0a604', N'koushik', N'vc', N'VCKOUSHIKSIVA@GMAIL.COM', N'VCKOUSHIKSIVA@GMAIL.COM', N'VCKOUSHIKSIVA@GMAIL.COM', N'VCKOUSHIKSIVA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOpO+iMg+Qm7gDWhHShdmF2jIzirVCm3GJSmcNHeAldHueJ7NzF0Vf2Rui1vr/QYpA==', N'CE55WMFMYQXI5XQG25OPXBKXTQMTXH54', N'7b40c761-4463-48c7-8f4b-7c5cadc9fbad', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'892299be-3689-4949-a0fa-054b4edc044c', N'Javali', N'M', N'lakshmi.srinu24@gmail.com', N'LAKSHMI.SRINU24@GMAIL.COM', N'lakshmi.srinu24@gmail.com', N'LAKSHMI.SRINU24@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEBIvfDOglR90hGOU8LoG45pgjg9d/GurBL8UgNbiPw8TGpirXFzBeyQxvuFtL+uQMQ==', N'PYIW3YTLTNSCVLMILFUKTVFBAAM3RJJS', N'a04dd7f7-fc3b-44fa-be83-5af1803d7d0b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8e96f522-8157-4e8c-aea8-5fb352a1b30c', N'Javali', N'M', N'javali.binnu1024@gmail.com', N'JAVALI.BINNU1024@GMAIL.COM', N'javali.binnu1024@gmail.com', N'JAVALI.BINNU1024@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECjQGFF33U92BUyieFxvcp/VT6dUZw82tmPU197OSBfemhj/b0YZz9wfNz+Ecoz4YA==', N'6IS7WRID6K76QTZKLV2T5KXAEMW72AUB', N'c5b84ad8-6ad5-41ea-993b-621f112d1f38', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b7ec1601-8f80-4e72-a3d5-4112a3de7eed', N'Renee', N'Bryce', N'Renee.Bryce@unt.edu', N'RENEE.BRYCE@UNT.EDU', N'Renee.Bryce@unt.edu', N'RENEE.BRYCE@UNT.EDU', 0, N'AQAAAAIAAYagAAAAEDqp0Y/iaduZHZ+DJK1cb8k4iV21dQm+ZweSmdO2kB1p4dESeroIBBghYYxxq+qA+A==', N'DUQGICFHMHZNPAX66JIU23O4VNLSIKCW', N'1a76261b-07fb-4786-99b2-05242a670db4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd8e243c3-7688-4978-8a53-e850556ea60a', N'Test', N'User', N'Test@gmail.com', N'TEST@GMAIL.COM', N'Test@gmail.com', N'TEST@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIS5WAaCmntK1e9bz+WMRWyPJYCff/8phSKZ2EvDkcfA9OwksIjf3NNOgRLSIqWoYg==', N'PSL353HEVYM2Q2TCBPECBIQJH34T2CXA', N'5801665d-ce1a-4d50-8ab1-83de3af422e9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', N'koushik', N'siva', N'koushiksiva9@gmail.com', N'KOUSHIKSIVA9@GMAIL.COM', N'koushiksiva9@gmail.com', N'KOUSHIKSIVA9@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIL7EMD3ff9sfr8U2fAR0ci44/Hyt38Z72g2yVQ2NFn4ki8swMfh2go9dF5VgCaGOQ==', N'CUPFGD4TCTBBZXJBFFQRUBLK6WUETIQO', N'579bfd99-dc09-4057-a5f8-b5066c294a98', N'9409774833', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'd8e243c3-7688-4978-8a53-e850556ea60a', N'[AspNetUserStore]', N'AuthenticatorKey', N'DB3R7VZB2DUWLHP6TXB3STY6U4ZP57DT')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', N'[AspNetUserStore]', N'AuthenticatorKey', N'VJMS47FIF4PSVOLXAAJ7QDOZSGNA6ATR')
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [UserId]) VALUES (1, N'd8e243c3-7688-4978-8a53-e850556ea60a')
INSERT [dbo].[Cart] ([Id], [UserId]) VALUES (2, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f')
INSERT [dbo].[Cart] ([Id], [UserId]) VALUES (3, N'6b2b834b-9511-4a51-9e4a-469359e0a604')
INSERT [dbo].[Cart] ([Id], [UserId]) VALUES (4, N'892299be-3689-4949-a0fa-054b4edc044c')
INSERT [dbo].[Cart] ([Id], [UserId]) VALUES (5, N'b7ec1601-8f80-4e72-a3d5-4112a3de7eed')
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItem] ON 

INSERT [dbo].[CartItem] ([Id], [CartId], [ProductId], [Quantity], [PricePerUnit], [Size]) VALUES (1036, 3, 2, 2, CAST(89.99 AS Decimal(18, 2)), N'')
INSERT [dbo].[CartItem] ([Id], [CartId], [ProductId], [Quantity], [PricePerUnit], [Size]) VALUES (1039, 4, 11, 1, CAST(99.99 AS Decimal(18, 2)), N'')
SET IDENTITY_INSERT [dbo].[CartItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [FirstName], [LastName], [Email], [Subject], [Message]) VALUES (5, N'Chenchu Siva Koushik', N'Vemula', N'koushiksiva9@gmail.com', N'Test', N'Test')
INSERT [dbo].[Contact] ([Id], [FirstName], [LastName], [Email], [Subject], [Message]) VALUES (7, N'test', N'test', N'Renee.Bryce@Unt.edu', N'testing for my favorite students! :)', N'testing for my favorite students! :)')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (1, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-07-24T14:28:48.5875885' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (2, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-07-24T22:00:17.9833535' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (3, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-07-24T22:02:50.6549897' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (4, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-07-24T23:24:55.0353075' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (5, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-07-24T23:30:43.4430206' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (6, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-07-24T23:33:30.8432849' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (7, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-26T18:02:13.7954174' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (8, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-26T18:07:24.5980945' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (9, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-26T18:20:12.8829102' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (10, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-30T22:24:49.0133754' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (11, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-30T22:36:56.2257340' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (12, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-30T22:44:33.8973146' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (13, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-30T22:49:04.5935526' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (14, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-30T22:54:28.5765307' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (15, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-10-30T22:56:42.6874246' AS DateTime2), N'Received', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (19, N'd8e243c3-7688-4978-8a53-e850556ea60a', CAST(N'2023-11-04T19:06:55.1590452' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (21, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-04T19:39:37.0585920' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (22, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-05T16:52:19.3191934' AS DateTime2), N'Received', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (23, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-06T14:48:01.5545657' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (24, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-06T18:33:26.4877878' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (25, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-06T20:27:42.7318725' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (26, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-07T14:07:46.6875215' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (27, N'b7ec1601-8f80-4e72-a3d5-4112a3de7eed', CAST(N'2023-11-07T14:24:30.0813356' AS DateTime2), N'Pending', 0)
INSERT [dbo].[Order] ([Id], [UserId], [CreatedDate], [OrderStatus], [isDeleted]) VALUES (28, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f', CAST(N'2023-11-17T20:08:00.4222934' AS DateTime2), N'Delivered', 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderLineItem] ON 

INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (1, 1, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (2, 1, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (3, 2, 2, 2, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (4, 2, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (5, 3, 3, 1, CAST(79.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (6, 4, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (7, 4, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (8, 5, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (9, 6, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (10, 7, 1, 2, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (11, 8, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (12, 9, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (13, 10, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (14, 11, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (15, 12, 6, 1, CAST(64.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (16, 13, 5, 1, CAST(59.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (17, 14, 5, 2, CAST(59.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (18, 15, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (22, 19, 2, 4, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (24, 21, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (25, 22, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (26, 23, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (27, 24, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (28, 25, 14, 1, CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (29, 25, 15, 1, CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (30, 26, 2, 1, CAST(89.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (31, 27, 1, 1, CAST(129.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (32, 28, 3, 1, CAST(79.99 AS Decimal(18, 2)))
INSERT [dbo].[OrderLineItem] ([Id], [OrderId], [ProductId], [Quantity], [PricePerUnit]) VALUES (33, 28, 12, 1, CAST(100.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderLineItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (1, N'Nike Air Max 270', N'Classic Nike Air Max sneakers with excellent cushioning.', CAST(129.99 AS Decimal(18, 2)), N'US 9', N'Nike', N'White/Black', 1, N'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/pyyixbczj6u5kiwhpjik/air-max-270-womens-shoes-Pgb94t.png', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (2, N'Adidas Superstar', N'Iconic Adidas Superstar sneakers with shell toe.', CAST(89.99 AS Decimal(18, 2)), N'US 8', N'Adidas', N'White', 1, N'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/15f901c90a9549d29104aae700d27efb_9366/Superstar_Shoes_Black_EG4959_01_standard.jpg', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (3, N'Puma RS-X3', N'Modern Puma sneakers with a futuristic design.', CAST(79.99 AS Decimal(18, 2)), N'US 10.5', N'Puma', N'Grey/Red', 1, N'https://images.stockx.com/images/Puma-RS-X3-Super-Black.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1639998654', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (4, N'Reebok Classic Leather', N'Timeless Reebok sneakers with soft leather upper.', CAST(69.99 AS Decimal(18, 2)), N'US 7', N'Reebok', N'Black/Gum', 1, N'https://www.forever21.com/dw/image/v2/BFKH_PRD/on/demandware.static/-/Sites-f21-master-catalog/default/dwbb23684e/1_front_750/00475199-03.jpg?sw=1000&sh=1500', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (5, N'Converse Chuck Taylor All Star', N'Legendary Converse high-top sneakers.', CAST(59.99 AS Decimal(18, 2)), N'US 6.5', N'Converse', N'Navy', 1, N'https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw3931bb17/images/a_107/M9160_A_107X1.jpg?sw=964', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (6, N'Vans Old Skool', N'Classic Vans skate shoes with side stripe.', CAST(64.99 AS Decimal(18, 2)), N'US 8.5', N'Vans', N'Black/White', 1, N'https://images.journeys.com/images/products/1_259094_ZM_THERO.JPG', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (7, N'New Balance 990v5', N'Premium New Balance running shoes.', CAST(149.99 AS Decimal(18, 2)), N'US 9.5', N'New Balance', N'Grey', 1, N'https://nb.scene7.com/is/image/NB/m990bk5_nb_02_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (8, N'Asics Gel-Kayano 28', N'High-performance Asics running shoes.', CAST(139.99 AS Decimal(18, 2)), N'US 11', N'Asics', N'Blue/White', 1, N'https://images.asics.com/is/image/asics/1012B047_003_SR_RT_GLB?$zoom$', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (9, N'Fila Disruptor II', N'Chunky Fila sneakers with a retro look.', CAST(74.99 AS Decimal(18, 2)), N'US 7.5', N'Fila', N'Pink', 1, N'https://i8.amplience.net/i/jpl/jd_052545_a?qlt=92&w=600&h=425&v=1&fmt=auto', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (10, N'Under Armour Curry 8', N'Stephen Curry signature basketball shoes.', CAST(119.99 AS Decimal(18, 2)), N'US 10', N'Under Armour', N'Black/Gold', 1, N'https://www.sportsdirect.com/images/imgzoom/15/15130903_xxl.jpg', N'Shoe')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (11, N'WORLD T-SHIRT', N'Show the world who you are! This stylish, globe-inspired t-shirt lets you rep your appreciation of our beautiful planet with a unique, one-of-a-kind look. Conquer the world in style!', CAST(99.99 AS Decimal(18, 2)), N'XL', N'BluOrng', N'White', 1, N'https://bluorng.com/cdn/shop/files/ji.jpg?v=1698493789&width=360https://bluorng.com/cdn/shop/files/ji.jpg?v=1698493789&width=360', N'Women')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (12, N'RED BONSAI T-SHIRT', N'This luxurious RED BONSAI T-SHIRT is the perfect way to add a touch of sophistication to your wardrobe. Its eye-catching red colour and classic bonsai print on the back provide a unique twist to the traditional t-shirt. The finishing touch is the stunning set of shiny studs for a truly exclusive look.', CAST(100.00 AS Decimal(18, 2)), N'XL', N'BluOrng', N'Red', 1, N'https://bluorng.com/cdn/shop/files/DSC05165174.jpg?v=1693990036&width=360', N'Men')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (13, N'BLACK LINEN SHIRT', N'Don''t blend in with the crowd, stand out in your new BLACK LINEN SHIRT! Made from high-quality black linen, this cool piece of apparel will keep you looking fresh and daring. With the bold branding at the back, everyone will know your name! (Don''t worry, you can still remain anonymous.)', CAST(60.00 AS Decimal(18, 2)), N'XL', N'Bluorng', N'Black', 1, N'https://bluorng.com/cdn/shop/files/DSC09657.jpg?v=1692492278&width=360', N'Men')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (14, N'Beige Lenin Shirt', N'Don''t blend in with the crowd, stand out in your new BLACK LINEN SHIRT! Made from high-quality black linen, this cool piece of apparel will keep you looking fresh and daring. With the bold branding at the back, everyone will know your name! (Don''t worry, you can still remain anonymous.)', CAST(50.00 AS Decimal(18, 2)), N'L', N'BluOrng', N'Beige', 1, N'https://bluorng.com/cdn/shop/files/DSC09805.jpg?v=1692853561&width=360', N'Men')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (15, N'BLACK FAVOURITE HOODIE', N'This BLACK FAVOURITE HOODIE is perfect for the child who''s so special, that they must be the favorite! The bold statement on the hoodie will let everyone know just how adored they are. With this hoodie, your favorite kid can show off their fun style while staying warm and cozy.', CAST(80.00 AS Decimal(18, 2)), N'L', N'BluOrng', N'Black', 1, N'https://bluorng.com/cdn/shop/files/k3.jpg?v=1699165759&width=360', N'Men')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (16, N'GREEN DRAGON SWEATSHIRT', N'GREEN DRAGON SWEATSHIRT', CAST(75.00 AS Decimal(18, 2)), N'M', N'BluOrng', N'Green', 1, N'https://bluorng.com/cdn/shop/products/green-dragon-sweatshirt-771262.jpg?v=1666293150&width=360', N'Men')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (17, N'BLACK SHINE SWEATSHIRT', N'BLACK SHINE SWEATSHIRT', CAST(80.00 AS Decimal(18, 2)), N'L', N'BluOrng', N'Black', 1, N'https://bluorng.com/cdn/shop/products/image.heic?v=1670479696&width=823', N'Men')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (18, N'BLU FAVOUR SWEATSHIRT', N'BLU FAVOUR SWEATSHIRT', CAST(67.00 AS Decimal(18, 2)), N'S', N'BluOrng', N'Blue', 1, N'https://bluorng.com/cdn/shop/products/blu-favour-sweatshirt-820408.jpg?v=1672130772&width=823', N'Women')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Size], [Brand], [Color], [IsInStock], [ImageUrl], [Category]) VALUES (19, N'BLACK KRAKEN HOODIE', N'BLACK KRAKEN HOODIE', CAST(90.00 AS Decimal(18, 2)), N'L', N'BluOrng', N'Black', 1, N'https://bluorng.com/cdn/shop/products/black-kraken-hoodie-109065.jpg?v=1667677513&width=823', N'Women')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Wishlist] ON 

INSERT [dbo].[Wishlist] ([Id], [UserId]) VALUES (1, N'd8e243c3-7688-4978-8a53-e850556ea60a')
INSERT [dbo].[Wishlist] ([Id], [UserId]) VALUES (2, N'd9b196d3-0bfc-4c27-91eb-ee4a340c3c9f')
INSERT [dbo].[Wishlist] ([Id], [UserId]) VALUES (3, N'b7ec1601-8f80-4e72-a3d5-4112a3de7eed')
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
GO
SET IDENTITY_INSERT [dbo].[WishlistItems] ON 

INSERT [dbo].[WishlistItems] ([Id], [WishlistId], [ProductId]) VALUES (1, 1, 1)
INSERT [dbo].[WishlistItems] ([Id], [WishlistId], [ProductId]) VALUES (2, 1, 3)
INSERT [dbo].[WishlistItems] ([Id], [WishlistId], [ProductId]) VALUES (3, 2, 2)
INSERT [dbo].[WishlistItems] ([Id], [WishlistId], [ProductId]) VALUES (4, 3, 1)
SET IDENTITY_INSERT [dbo].[WishlistItems] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItem_CartId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_CartId] ON [dbo].[CartItem]
(
	[CartId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItem_ProductId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_ProductId] ON [dbo].[CartItem]
(
	[ProductId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLineItem_OrderId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderLineItem_OrderId] ON [dbo].[OrderLineItem]
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderLineItem_ProductId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderLineItem_ProductId] ON [dbo].[OrderLineItem]
(
	[ProductId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishlistItems_ProductId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_WishlistItems_ProductId] ON [dbo].[WishlistItems]
(
	[ProductId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WishlistItems_WishlistId]    Script Date: 11/19/2023 1:33:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_WishlistItems_WishlistId] ON [dbo].[WishlistItems]
(
	[WishlistId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartItem] ADD  DEFAULT (N'') FOR [Size]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [Category]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Cart] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Cart_CartId]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Product_ProductId]
GO
ALTER TABLE [dbo].[OrderLineItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderLineItem_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLineItem] CHECK CONSTRAINT [FK_OrderLineItem_Order_OrderId]
GO
ALTER TABLE [dbo].[OrderLineItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderLineItem_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLineItem] CHECK CONSTRAINT [FK_OrderLineItem_Product_ProductId]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItems_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItems_Product_ProductId]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItems_Wishlist_WishlistId] FOREIGN KEY([WishlistId])
REFERENCES [dbo].[Wishlist] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItems_Wishlist_WishlistId]
GO
ALTER DATABASE [sneakpeakdb] SET  READ_WRITE 
GO
