USE [master]
GO
/****** Object:  Database [MasterPol]    Script Date: 14.11.2024 14:34:54 ******/
CREATE DATABASE [MasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPol', FILENAME = N'Z:\Programs\mssql\server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPol_log', FILENAME = N'Z:\Programs\mssql\server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MasterPol] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPol] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPol] SET RECOVERY FULL 
GO
ALTER DATABASE [MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MasterPol', N'ON'
GO
ALTER DATABASE [MasterPol] SET QUERY_STORE = ON
GO
ALTER DATABASE [MasterPol] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MasterPol]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdIndex] [int] NOT NULL,
	[IdRegion] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[HouseNum] [int] NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityOf] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indexes]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indexes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IndexOf] [int] NOT NULL,
 CONSTRAINT [PK_Indexes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeImport]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeOfMaterial] [nvarchar](50) NOT NULL,
	[PercentOfDefect] [float] NOT NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductsImport]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductsImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduction] [int] NOT NULL,
	[IdPartnerName] [int] NOT NULL,
	[CountOfProduction] [int] NOT NULL,
	[DateOfSale] [date] NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnersImport]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnersImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTypeOfParther] [int] NOT NULL,
	[IdPartnerName] [int] NOT NULL,
	[IdDirector] [int] NOT NULL,
	[EmailOfPartner] [nvarchar](50) NOT NULL,
	[PhoneOfPartner] [nvarchar](12) NOT NULL,
	[IdAdress] [int] NOT NULL,
	[INN] [bigint] NULL,
	[Reiting] [int] NOT NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameOfProduction] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Production] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsImport]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductType] [int] NOT NULL,
	[IdProduction] [int] NOT NULL,
	[Article] [bigint] NOT NULL,
	[MinPriceForPartner] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Products_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductType] [int] NOT NULL,
	[CoefOfType] [float] NOT NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegionOf] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Streets]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Streets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StreetOf] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Streets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfPartner]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfPartner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeOfPartner] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_TypeOfPartner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfProduction]    Script Date: 14.11.2024 14:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfProduction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeOfProduction] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TypeOfProduction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adress] ON 

INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (1, 5, 3, 5, 1, 15)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (4, 1, 5, 2, 4, 51)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (5, 4, 2, 4, 3, 122)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (6, 6, 6, 6, 6, 12)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (7, 7, 7, 7, 7, 12)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (8, 8, 8, 8, 8, 1)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (9, 9, 9, 9, 9, 12)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (10, 10, 10, 10, 10, 213)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (11, 11, 11, 11, 11, 45)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (12, 12, 12, 12, 12, 4)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (13, 13, 13, 13, 13, 324)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (14, 14, 14, 14, 14, 3)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (15, 15, 15, 15, 15, 2)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (16, 16, 16, 16, 16, 2)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (17, 17, 17, 17, 17, 2)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (18, 18, 18, 18, 18, 3)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (19, 19, 19, 19, 19, 1)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (20, 20, 20, 20, 20, 4)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (21, 21, 21, 21, 21, 5)
INSERT [dbo].[Adress] ([Id], [IdIndex], [IdRegion], [IdCity], [IdStreet], [HouseNum]) VALUES (22, 22, 22, 22, 22, 2)
SET IDENTITY_INSERT [dbo].[Adress] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (1, N'Приморск')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (2, N'Реутов')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (3, N'Северодвинск')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (4, N'Старый Оскол')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (5, N'Юрга')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (6, N'as')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (7, N'asd')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (8, N'1')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (9, N'asd')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (10, N'bd')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (11, N'hf')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (12, N'а')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (13, N'342')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (14, N'ваы')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (15, N'аыв')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (16, N'sfd')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (17, N'qwerty')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (18, N'gd')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (19, N'ыав')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (20, N'ар')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (21, N'а')
INSERT [dbo].[Cities] ([Id], [CityOf]) VALUES (22, N'фыв')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (5, N'Степанов Степан Сергеевич')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (6, N'Беличенко Александр Андреевич')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (7, N'fdsdfs')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (8, N'фывфыв')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (9, N'sfd')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (10, N'sdfsdf')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (11, N'фцв')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (12, N'фыв')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (13, N'asd')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (14, N'1')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (15, N'fgdgdfg')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (16, N'fds')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (17, N'gm')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (18, N'ав')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (19, N'xcv')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (20, N'gfddfgd')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (21, N'nm')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (22, N'lk')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (23, N'yt')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (24, N'gh')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (25, N'п')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (26, N'234')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (27, N'ыва')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (28, N'qwerty')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (29, N'safcd')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (30, N'ваы')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (31, N'ва')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (32, N'рпа')
INSERT [dbo].[Directors] ([Id], [FIO]) VALUES (33, N'фвы')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[Indexes] ON 

INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (1, 143960)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (2, 164500)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (3, 188910)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (4, 309500)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (5, 652050)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (6, 12)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (7, 12)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (8, 1)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (9, 12)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (10, 324)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (11, 2)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (12, 2)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (13, 432)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (14, 2)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (15, 2)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (16, 2)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (17, 1)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (18, 2)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (19, 1)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (20, 5)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (21, 4)
INSERT [dbo].[Indexes] ([Id], [IndexOf]) VALUES (22, 2)
SET IDENTITY_INSERT [dbo].[Indexes] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] ON 

INSERT [dbo].[MaterialTypeImport] ([Id], [TypeOfMaterial], [PercentOfDefect]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeOfMaterial], [PercentOfDefect]) VALUES (2, N'Тип материала 2', 0.0095)
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeOfMaterial], [PercentOfDefect]) VALUES (3, N'Тип материала 3', 0.0028)
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeOfMaterial], [PercentOfDefect]) VALUES (4, N'Тип материала 4', 0.0055)
INSERT [dbo].[MaterialTypeImport] ([Id], [TypeOfMaterial], [PercentOfDefect]) VALUES (5, N'Тип материала 5', 0.0034)
SET IDENTITY_INSERT [dbo].[MaterialTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerName] ON 

INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (5, N'Стройсервис')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (6, N'Балашиха')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (7, N'123')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (8, N'13')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (9, N'sdf')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (10, N'ghgfhf')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (11, N'ываыав')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (12, N'ыфв')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (13, N'asd')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (14, N'1')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (15, N'ads')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (16, N'фыв')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (17, N'уцакца')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (18, N'паотекоекококекео')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (19, N'regrrger')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (20, N'xcvjknxcvjkxcv')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (21, N'ykujkyuyk')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (22, N'па')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (23, N'cxv')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (24, N'gf')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (25, N'mnnm')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (26, N'kjkj')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (27, N'yt')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (28, N'fhfhg')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (29, N'43')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (30, N'пвы')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (31, N'аыв')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (32, N'dsf')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (33, N'qwerty')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (34, N'yter')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (35, N'ва')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (36, N'кен')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (37, N'ыва')
SET IDENTITY_INSERT [dbo].[PartnerName] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] ON 

INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (17, 2, 10, 2700, CAST(N'2024-06-02' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (19, 3, 18, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (21, 3, 19, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (30, 3, 29, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (31, 3, 29, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (32, 3, 29, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (33, 3, 29, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (34, 3, 29, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (35, 3, 31, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (36, 3, 31, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (37, 3, 31, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (38, 3, 31, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (39, 3, 31, 0, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (40, 4, 17, 600, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (41, 4, 17, 600, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (42, 4, 17, 600, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (43, 4, 17, 600, CAST(N'2024-11-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([Id], [IdProduction], [IdPartnerName], [CountOfProduction], [DateOfSale]) VALUES (44, 4, 17, 600, CAST(N'2024-11-14' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnersImport] ON 

INSERT [dbo].[PartnersImport] ([Id], [IdTypeOfParther], [IdPartnerName], [IdDirector], [EmailOfPartner], [PhoneOfPartner], [IdAdress], [INN], [Reiting]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'+74931234567', 1, 2222455179, 7)
INSERT [dbo].[PartnersImport] ([Id], [IdTypeOfParther], [IdPartnerName], [IdDirector], [EmailOfPartner], [PhoneOfPartner], [IdAdress], [INN], [Reiting]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru', N'+79871235678', 2, 3333888520, 7)
INSERT [dbo].[PartnersImport] ([Id], [IdTypeOfParther], [IdPartnerName], [IdDirector], [EmailOfPartner], [PhoneOfPartner], [IdAdress], [INN], [Reiting]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru', N'+78122233200', 3, 4440391035, 7)
INSERT [dbo].[PartnersImport] ([Id], [IdTypeOfParther], [IdPartnerName], [IdDirector], [EmailOfPartner], [PhoneOfPartner], [IdAdress], [INN], [Reiting]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'+74442223311', 4, 1111520857, 5)
INSERT [dbo].[PartnersImport] ([Id], [IdTypeOfParther], [IdPartnerName], [IdDirector], [EmailOfPartner], [PhoneOfPartner], [IdAdress], [INN], [Reiting]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru', N'+79128883333', 5, 5552431140, 10)
INSERT [dbo].[PartnersImport] ([Id], [IdTypeOfParther], [IdPartnerName], [IdDirector], [EmailOfPartner], [PhoneOfPartner], [IdAdress], [INN], [Reiting]) VALUES (8, 2, 13, 13, N'asd', N'12', 7, 0, 12)
SET IDENTITY_INSERT [dbo].[PartnersImport] OFF
GO
SET IDENTITY_INSERT [dbo].[Production] ON 

INSERT [dbo].[Production] ([Id], [NameOfProduction]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Production] ([Id], [NameOfProduction]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Production] ([Id], [NameOfProduction]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Production] ([Id], [NameOfProduction]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Production] ([Id], [NameOfProduction]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[Production] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsImport] ON 

INSERT [dbo].[ProductsImport] ([Id], [IdProductType], [IdProduction], [Article], [MinPriceForPartner]) VALUES (1, 3, 4, 8758385, CAST(4456.90 AS Decimal(8, 2)))
INSERT [dbo].[ProductsImport] ([Id], [IdProductType], [IdProduction], [Article], [MinPriceForPartner]) VALUES (2, 3, 1, 8858958, CAST(7330.99 AS Decimal(8, 2)))
INSERT [dbo].[ProductsImport] ([Id], [IdProductType], [IdProduction], [Article], [MinPriceForPartner]) VALUES (3, 1, 2, 7750282, CAST(1799.33 AS Decimal(8, 2)))
INSERT [dbo].[ProductsImport] ([Id], [IdProductType], [IdProduction], [Article], [MinPriceForPartner]) VALUES (4, 1, 3, 7028748, CAST(3890.41 AS Decimal(8, 2)))
INSERT [dbo].[ProductsImport] ([Id], [IdProductType], [IdProduction], [Article], [MinPriceForPartner]) VALUES (5, 4, 5, 5012543, CAST(5450.59 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[ProductsImport] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypeImport] ON 

INSERT [dbo].[ProductTypeImport] ([Id], [IdProductType], [CoefOfType]) VALUES (1, 1, 2.35)
INSERT [dbo].[ProductTypeImport] ([Id], [IdProductType], [CoefOfType]) VALUES (2, 2, 5.15)
INSERT [dbo].[ProductTypeImport] ([Id], [IdProductType], [CoefOfType]) VALUES (3, 3, 4.34)
INSERT [dbo].[ProductTypeImport] ([Id], [IdProductType], [CoefOfType]) VALUES (4, 4, 1.5)
SET IDENTITY_INSERT [dbo].[ProductTypeImport] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 

INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (3, N'Кемеровская область')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (5, N'Московская область')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (6, N'asd')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (7, N'asd')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (8, N'1')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (9, N'12')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (10, N'fdb')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (11, N'hf')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (12, N'в')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (13, N'342')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (14, N'ыав')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (15, N'авы')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (16, N'sfd')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (17, N'qwerty')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (18, N'f')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (19, N'ыав')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (20, N'рп')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (21, N'пар')
INSERT [dbo].[Regions] ([Id], [RegionOf]) VALUES (22, N'фыв')
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[Streets] ON 

INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (1, N'ул.Лесная')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (2, N'ул.Парковая')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (3, N'ул.Рабочая')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (4, N'ул.Свободы')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (5, N'ул.Строителей')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (6, N'sda')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (7, N'asd')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (8, N'1')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (9, N'sda')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (10, N'db')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (11, N'hgf')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (12, N'а')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (13, N'324')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (14, N'аыв')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (15, N'ыав')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (16, N'sfd')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (17, N'qwerty')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (18, N'f')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (19, N'ыав')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (20, N'па')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (21, N'прап')
INSERT [dbo].[Streets] ([Id], [StreetOf]) VALUES (22, N'фвы')
SET IDENTITY_INSERT [dbo].[Streets] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOfPartner] ON 

INSERT [dbo].[TypeOfPartner] ([Id], [TypeOfPartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypeOfPartner] ([Id], [TypeOfPartner]) VALUES (2, N'ОАО')
INSERT [dbo].[TypeOfPartner] ([Id], [TypeOfPartner]) VALUES (3, N'ООО')
INSERT [dbo].[TypeOfPartner] ([Id], [TypeOfPartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypeOfPartner] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOfProduction] ON 

INSERT [dbo].[TypeOfProduction] ([Id], [TypeOfProduction]) VALUES (1, N'Ламинат')
INSERT [dbo].[TypeOfProduction] ([Id], [TypeOfProduction]) VALUES (2, N'Массивная доска')
INSERT [dbo].[TypeOfProduction] ([Id], [TypeOfProduction]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[TypeOfProduction] ([Id], [TypeOfProduction]) VALUES (4, N'Пробковое покрытие')
SET IDENTITY_INSERT [dbo].[TypeOfProduction] OFF
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Cities] FOREIGN KEY([IdCity])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Cities]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Indexes] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[Indexes] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Indexes]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Regions] FOREIGN KEY([IdRegion])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Regions]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Streets] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Streets] ([Id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Streets]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_PartnerName] FOREIGN KEY([IdPartnerName])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_Partner_products_import_PartnerName]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Production] FOREIGN KEY([IdProduction])
REFERENCES [dbo].[Production] ([Id])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_Partner_products_import_Production]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Adress] FOREIGN KEY([IdAdress])
REFERENCES [dbo].[Adress] ([Id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_Partners_import_Adress]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_Directors] FOREIGN KEY([IdDirector])
REFERENCES [dbo].[Directors] ([Id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_Partners_import_Directors]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_PartnerName] FOREIGN KEY([IdPartnerName])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_Partners_import_PartnerName]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_Partners_import_TypeOfPartner] FOREIGN KEY([IdTypeOfParther])
REFERENCES [dbo].[TypeOfPartner] ([Id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_Partners_import_TypeOfPartner]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_Production] FOREIGN KEY([IdProduction])
REFERENCES [dbo].[Production] ([Id])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_Products_import_Production]
GO
ALTER TABLE [dbo].[ProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_Products_import_TypeOfProduction] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[TypeOfProduction] ([Id])
GO
ALTER TABLE [dbo].[ProductsImport] CHECK CONSTRAINT [FK_Products_import_TypeOfProduction]
GO
ALTER TABLE [dbo].[ProductTypeImport]  WITH CHECK ADD  CONSTRAINT [FK_Product_type_import_TypeOfProduction] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[TypeOfProduction] ([Id])
GO
ALTER TABLE [dbo].[ProductTypeImport] CHECK CONSTRAINT [FK_Product_type_import_TypeOfProduction]
GO
USE [master]
GO
ALTER DATABASE [MasterPol] SET  READ_WRITE 
GO
