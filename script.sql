USE [master]
GO
/****** Object:  Database [BTL_python]    Script Date: 5/14/2024 9:52:01 PM ******/
CREATE DATABASE [BTL_python]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTL_python', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BTL_python.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BTL_python_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BTL_python_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BTL_python] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTL_python].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BTL_python] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BTL_python] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BTL_python] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BTL_python] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BTL_python] SET ARITHABORT OFF 
GO
ALTER DATABASE [BTL_python] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BTL_python] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BTL_python] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BTL_python] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BTL_python] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BTL_python] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BTL_python] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BTL_python] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BTL_python] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BTL_python] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BTL_python] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BTL_python] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BTL_python] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BTL_python] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BTL_python] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BTL_python] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BTL_python] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BTL_python] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BTL_python] SET  MULTI_USER 
GO
ALTER DATABASE [BTL_python] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BTL_python] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BTL_python] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BTL_python] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BTL_python] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BTL_python] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BTL_python] SET QUERY_STORE = ON
GO
ALTER DATABASE [BTL_python] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BTL_python]
GO
/****** Object:  Table [dbo].[History]    Script Date: 5/14/2024 9:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [varchar](50) NULL,
	[value] [decimal](18, 0) NULL,
	[time_update] [datetime] NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sensor]    Script Date: 5/14/2024 9:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sensor](
	[sid] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[value] [decimal](18, 0) NULL,
	[time_update] [datetime] NULL,
 CONSTRAINT [PK_Sensor] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SO_XO]    Script Date: 5/14/2024 9:52:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_XO](
	[date] [nvarchar](50) NOT NULL,
	[score] [int] NOT NULL,
	[result] [int] NOT NULL,
	[desc_] [nvarchar](50) NULL,
 CONSTRAINT [PK_SO_XO] PRIMARY KEY CLUSTERED 
(
	[date] ASC,
	[score] ASC,
	[result] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[History] ON 

INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (4, N'demo', CAST(4308 AS Decimal(18, 0)), CAST(N'2024-05-14T09:22:20.113' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (5, N'demo', CAST(2071 AS Decimal(18, 0)), CAST(N'2024-05-14T09:22:51.780' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (6, N'demo', CAST(2037 AS Decimal(18, 0)), CAST(N'2024-05-14T09:22:58.817' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (7, N'demo', CAST(5386 AS Decimal(18, 0)), CAST(N'2024-05-14T09:22:59.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (8, N'demo', CAST(5738 AS Decimal(18, 0)), CAST(N'2024-05-14T09:22:59.213' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (9, N'demo', CAST(1127 AS Decimal(18, 0)), CAST(N'2024-05-14T09:22:59.377' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (10, N'demo', CAST(6819 AS Decimal(18, 0)), CAST(N'2024-05-14T09:23:16.563' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (11, N'demo', CAST(6573 AS Decimal(18, 0)), CAST(N'2024-05-14T09:23:46.573' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (12, N'demo', CAST(5872 AS Decimal(18, 0)), CAST(N'2024-05-14T09:24:16.570' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (13, N'demo', CAST(557 AS Decimal(18, 0)), CAST(N'2024-05-14T09:24:46.577' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (14, N'demo', CAST(8405 AS Decimal(18, 0)), CAST(N'2024-05-14T09:25:16.597' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (15, N'demo', CAST(3788 AS Decimal(18, 0)), CAST(N'2024-05-14T09:25:46.640' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (16, N'demo', CAST(179 AS Decimal(18, 0)), CAST(N'2024-05-14T09:26:16.613' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (17, N'demo', CAST(6994 AS Decimal(18, 0)), CAST(N'2024-05-14T09:26:46.630' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (18, N'demo', CAST(9123 AS Decimal(18, 0)), CAST(N'2024-05-14T09:27:16.640' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (19, N'demo', CAST(6700 AS Decimal(18, 0)), CAST(N'2024-05-14T09:27:46.653' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (20, N'demo', CAST(1632 AS Decimal(18, 0)), CAST(N'2024-05-14T09:28:16.657' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (21, N'demo', CAST(7576 AS Decimal(18, 0)), CAST(N'2024-05-14T09:28:46.653' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (22, N'demo', CAST(5021 AS Decimal(18, 0)), CAST(N'2024-05-14T09:29:16.667' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (23, N'demo', CAST(4253 AS Decimal(18, 0)), CAST(N'2024-05-14T09:29:46.667' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (24, N'demo', CAST(2488 AS Decimal(18, 0)), CAST(N'2024-05-14T09:30:16.683' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (25, N'demo', CAST(7192 AS Decimal(18, 0)), CAST(N'2024-05-14T09:30:46.770' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (26, N'demo', CAST(1207 AS Decimal(18, 0)), CAST(N'2024-05-14T09:31:16.753' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (27, N'demo', CAST(2588 AS Decimal(18, 0)), CAST(N'2024-05-14T09:31:46.760' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (28, N'demo', CAST(3336 AS Decimal(18, 0)), CAST(N'2024-05-14T09:32:16.770' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (29, N'demo', CAST(5933 AS Decimal(18, 0)), CAST(N'2024-05-14T09:32:46.773' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (30, N'demo', CAST(9166 AS Decimal(18, 0)), CAST(N'2024-05-14T09:33:16.787' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (31, N'demo', CAST(8214 AS Decimal(18, 0)), CAST(N'2024-05-14T09:33:46.783' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (32, N'demo', CAST(831 AS Decimal(18, 0)), CAST(N'2024-05-14T09:34:16.807' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (33, N'demo', CAST(8504 AS Decimal(18, 0)), CAST(N'2024-05-14T09:34:46.800' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (34, N'demo', CAST(8994 AS Decimal(18, 0)), CAST(N'2024-05-14T09:35:16.820' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (35, N'demo', CAST(1721 AS Decimal(18, 0)), CAST(N'2024-05-14T09:35:46.807' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (36, N'demo', CAST(8354 AS Decimal(18, 0)), CAST(N'2024-05-14T09:36:16.823' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (37, N'demo', CAST(8282 AS Decimal(18, 0)), CAST(N'2024-05-14T09:36:46.827' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (38, N'demo', CAST(9530 AS Decimal(18, 0)), CAST(N'2024-05-14T09:37:16.830' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (39, N'demo', CAST(1430 AS Decimal(18, 0)), CAST(N'2024-05-14T09:37:46.853' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (40, N'demo', CAST(9533 AS Decimal(18, 0)), CAST(N'2024-05-14T09:38:16.840' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (41, N'demo', CAST(7067 AS Decimal(18, 0)), CAST(N'2024-05-14T09:38:46.860' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (42, N'demo', CAST(6919 AS Decimal(18, 0)), CAST(N'2024-05-14T09:39:16.880' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (43, N'demo', CAST(3348 AS Decimal(18, 0)), CAST(N'2024-05-14T09:39:46.887' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (44, N'demo', CAST(8014 AS Decimal(18, 0)), CAST(N'2024-05-14T09:40:16.893' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (45, N'demo', CAST(8092 AS Decimal(18, 0)), CAST(N'2024-05-14T09:40:46.907' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (46, N'demo', CAST(8986 AS Decimal(18, 0)), CAST(N'2024-05-14T09:41:16.917' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (47, N'demo', CAST(7676 AS Decimal(18, 0)), CAST(N'2024-05-14T09:41:46.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (48, N'demo', CAST(1690 AS Decimal(18, 0)), CAST(N'2024-05-14T09:42:16.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (49, N'demo', CAST(3160 AS Decimal(18, 0)), CAST(N'2024-05-14T09:42:46.930' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (50, N'demo', CAST(643 AS Decimal(18, 0)), CAST(N'2024-05-14T09:43:16.943' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (51, N'demo', CAST(3242 AS Decimal(18, 0)), CAST(N'2024-05-14T09:43:46.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (52, N'demo', CAST(6560 AS Decimal(18, 0)), CAST(N'2024-05-14T09:44:16.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (53, N'demo', CAST(3103 AS Decimal(18, 0)), CAST(N'2024-05-14T09:44:46.963' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (54, N'demo', CAST(1848 AS Decimal(18, 0)), CAST(N'2024-05-14T09:45:16.983' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (55, N'demo', CAST(9408 AS Decimal(18, 0)), CAST(N'2024-05-14T09:45:46.987' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (56, N'demo', CAST(2085 AS Decimal(18, 0)), CAST(N'2024-05-14T09:46:17.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (57, N'demo', CAST(1900 AS Decimal(18, 0)), CAST(N'2024-05-14T09:46:47.000' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (58, N'demo', CAST(5206 AS Decimal(18, 0)), CAST(N'2024-05-14T09:47:17.027' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (59, N'demo', CAST(9267 AS Decimal(18, 0)), CAST(N'2024-05-14T09:47:47.027' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (60, N'demo', CAST(9326 AS Decimal(18, 0)), CAST(N'2024-05-14T09:48:17.080' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (61, N'demo', CAST(8059 AS Decimal(18, 0)), CAST(N'2024-05-14T09:48:47.043' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (62, N'demo', CAST(6226 AS Decimal(18, 0)), CAST(N'2024-05-14T09:49:17.037' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (63, N'demo', CAST(1280 AS Decimal(18, 0)), CAST(N'2024-05-14T09:49:47.040' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (64, N'demo', CAST(5504 AS Decimal(18, 0)), CAST(N'2024-05-14T09:50:17.043' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (65, N'demo', CAST(9234 AS Decimal(18, 0)), CAST(N'2024-05-14T09:50:47.057' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (66, N'demo', CAST(5976 AS Decimal(18, 0)), CAST(N'2024-05-14T09:51:17.067' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (67, N'demo', CAST(7004 AS Decimal(18, 0)), CAST(N'2024-05-14T09:51:47.090' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (68, N'demo', CAST(4561 AS Decimal(18, 0)), CAST(N'2024-05-14T09:52:17.077' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (69, N'demo', CAST(2013 AS Decimal(18, 0)), CAST(N'2024-05-14T09:52:47.080' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (70, N'demo', CAST(5383 AS Decimal(18, 0)), CAST(N'2024-05-14T09:53:17.097' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (71, N'demo', CAST(8686 AS Decimal(18, 0)), CAST(N'2024-05-14T09:53:47.097' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (72, N'demo', CAST(8599 AS Decimal(18, 0)), CAST(N'2024-05-14T09:54:17.113' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (73, N'demo', CAST(9176 AS Decimal(18, 0)), CAST(N'2024-05-14T09:54:47.113' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (74, N'demo', CAST(5188 AS Decimal(18, 0)), CAST(N'2024-05-14T09:55:17.120' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (75, N'demo', CAST(9284 AS Decimal(18, 0)), CAST(N'2024-05-14T09:55:47.123' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (76, N'demo', CAST(2932 AS Decimal(18, 0)), CAST(N'2024-05-14T09:56:17.140' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (77, N'demo', CAST(8563 AS Decimal(18, 0)), CAST(N'2024-05-14T09:56:47.150' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (78, N'demo', CAST(8898 AS Decimal(18, 0)), CAST(N'2024-05-14T09:57:17.143' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (79, N'demo', CAST(2132 AS Decimal(18, 0)), CAST(N'2024-05-14T09:57:47.157' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (80, N'demo', CAST(8407 AS Decimal(18, 0)), CAST(N'2024-05-14T09:58:17.163' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (81, N'demo', CAST(9837 AS Decimal(18, 0)), CAST(N'2024-05-14T09:58:47.160' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (82, N'demo', CAST(489 AS Decimal(18, 0)), CAST(N'2024-05-14T09:59:17.160' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (83, N'demo', CAST(9731 AS Decimal(18, 0)), CAST(N'2024-05-14T09:59:47.180' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (84, N'demo', CAST(7095 AS Decimal(18, 0)), CAST(N'2024-05-14T10:00:17.187' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (85, N'demo', CAST(7796 AS Decimal(18, 0)), CAST(N'2024-05-14T10:00:47.200' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (86, N'demo', CAST(2659 AS Decimal(18, 0)), CAST(N'2024-05-14T10:01:17.210' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (87, N'demo', CAST(9623 AS Decimal(18, 0)), CAST(N'2024-05-14T10:01:47.220' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (88, N'demo', CAST(5244 AS Decimal(18, 0)), CAST(N'2024-05-14T10:02:17.233' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (89, N'demo', CAST(3710 AS Decimal(18, 0)), CAST(N'2024-05-14T10:02:47.243' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (90, N'demo', CAST(4693 AS Decimal(18, 0)), CAST(N'2024-05-14T10:03:17.250' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (91, N'demo', CAST(7263 AS Decimal(18, 0)), CAST(N'2024-05-14T10:03:47.270' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (92, N'demo', CAST(9251 AS Decimal(18, 0)), CAST(N'2024-05-14T10:04:17.267' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (93, N'demo', CAST(7230 AS Decimal(18, 0)), CAST(N'2024-05-14T10:04:47.270' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (94, N'demo', CAST(1783 AS Decimal(18, 0)), CAST(N'2024-05-14T10:05:17.290' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (95, N'demo', CAST(5297 AS Decimal(18, 0)), CAST(N'2024-05-14T10:05:47.287' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (96, N'demo', CAST(8511 AS Decimal(18, 0)), CAST(N'2024-05-14T10:06:17.297' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (97, N'demo', CAST(5900 AS Decimal(18, 0)), CAST(N'2024-05-14T10:06:47.303' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (98, N'demo', CAST(8090 AS Decimal(18, 0)), CAST(N'2024-05-14T10:07:17.317' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (99, N'demo', CAST(8378 AS Decimal(18, 0)), CAST(N'2024-05-14T10:07:47.323' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (100, N'demo', CAST(4661 AS Decimal(18, 0)), CAST(N'2024-05-14T10:08:17.337' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (101, N'demo', CAST(8926 AS Decimal(18, 0)), CAST(N'2024-05-14T10:08:47.330' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (102, N'demo', CAST(1903 AS Decimal(18, 0)), CAST(N'2024-05-14T10:09:17.340' AS DateTime))
GO
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (103, N'demo', CAST(1126 AS Decimal(18, 0)), CAST(N'2024-05-14T10:09:47.340' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (104, N'demo', CAST(233 AS Decimal(18, 0)), CAST(N'2024-05-14T10:10:17.337' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (105, N'demo', CAST(1614 AS Decimal(18, 0)), CAST(N'2024-05-14T10:10:47.340' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (106, N'demo', CAST(7581 AS Decimal(18, 0)), CAST(N'2024-05-14T10:11:17.353' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (107, N'demo', CAST(5266 AS Decimal(18, 0)), CAST(N'2024-05-14T10:11:47.353' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (108, N'demo', CAST(1138 AS Decimal(18, 0)), CAST(N'2024-05-14T10:12:17.360' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (109, N'demo', CAST(2860 AS Decimal(18, 0)), CAST(N'2024-05-14T10:12:47.380' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (110, N'demo', CAST(1744 AS Decimal(18, 0)), CAST(N'2024-05-14T10:13:17.377' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (111, N'demo', CAST(3284 AS Decimal(18, 0)), CAST(N'2024-05-14T10:13:47.377' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (112, N'demo', CAST(7335 AS Decimal(18, 0)), CAST(N'2024-05-14T10:14:17.383' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (113, N'demo', CAST(5513 AS Decimal(18, 0)), CAST(N'2024-05-14T10:14:47.410' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (114, N'demo', CAST(8260 AS Decimal(18, 0)), CAST(N'2024-05-14T10:15:17.407' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (115, N'demo', CAST(2402 AS Decimal(18, 0)), CAST(N'2024-05-14T10:15:47.390' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (116, N'demo', CAST(9708 AS Decimal(18, 0)), CAST(N'2024-05-14T10:16:17.407' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (117, N'demo', CAST(1891 AS Decimal(18, 0)), CAST(N'2024-05-14T10:16:47.427' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (118, N'demo', CAST(1627 AS Decimal(18, 0)), CAST(N'2024-05-14T10:17:17.423' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (119, N'demo', CAST(43 AS Decimal(18, 0)), CAST(N'2024-05-14T10:17:47.440' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (120, N'demo', CAST(4237 AS Decimal(18, 0)), CAST(N'2024-05-14T10:18:17.450' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (121, N'demo', CAST(425 AS Decimal(18, 0)), CAST(N'2024-05-14T10:18:47.463' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (122, N'demo', CAST(5352 AS Decimal(18, 0)), CAST(N'2024-05-14T10:19:17.493' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (123, N'demo', CAST(9070 AS Decimal(18, 0)), CAST(N'2024-05-14T10:19:47.477' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (124, N'demo', CAST(1467 AS Decimal(18, 0)), CAST(N'2024-05-14T10:20:17.480' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (125, N'demo', CAST(6088 AS Decimal(18, 0)), CAST(N'2024-05-14T10:20:47.493' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (126, N'demo', CAST(6706 AS Decimal(18, 0)), CAST(N'2024-05-14T10:21:17.493' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (127, N'demo', CAST(5144 AS Decimal(18, 0)), CAST(N'2024-05-14T10:21:47.513' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (128, N'demo', CAST(3825 AS Decimal(18, 0)), CAST(N'2024-05-14T10:22:17.523' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (129, N'demo', CAST(3318 AS Decimal(18, 0)), CAST(N'2024-05-14T10:22:47.543' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (130, N'demo', CAST(3568 AS Decimal(18, 0)), CAST(N'2024-05-14T10:23:17.540' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (131, N'demo', CAST(1061 AS Decimal(18, 0)), CAST(N'2024-05-14T10:23:47.543' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (132, N'demo', CAST(5973 AS Decimal(18, 0)), CAST(N'2024-05-14T10:24:17.550' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (133, N'demo', CAST(1427 AS Decimal(18, 0)), CAST(N'2024-05-14T10:24:47.553' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (134, N'demo', CAST(1589 AS Decimal(18, 0)), CAST(N'2024-05-14T10:25:17.560' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (135, N'demo', CAST(6052 AS Decimal(18, 0)), CAST(N'2024-05-14T10:25:47.567' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (136, N'demo', CAST(350 AS Decimal(18, 0)), CAST(N'2024-05-14T10:26:17.577' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (137, N'demo', CAST(8393 AS Decimal(18, 0)), CAST(N'2024-05-14T10:26:47.590' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (138, N'demo', CAST(8380 AS Decimal(18, 0)), CAST(N'2024-05-14T10:27:17.603' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (139, N'demo', CAST(2483 AS Decimal(18, 0)), CAST(N'2024-05-14T10:27:47.607' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (140, N'demo', CAST(3241 AS Decimal(18, 0)), CAST(N'2024-05-14T10:28:17.607' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (141, N'demo', CAST(8942 AS Decimal(18, 0)), CAST(N'2024-05-14T10:28:47.607' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (142, N'demo', CAST(5531 AS Decimal(18, 0)), CAST(N'2024-05-14T10:29:17.620' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (143, N'demo', CAST(1145 AS Decimal(18, 0)), CAST(N'2024-05-14T10:29:47.627' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (144, N'demo', CAST(4426 AS Decimal(18, 0)), CAST(N'2024-05-14T10:30:17.627' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (145, N'demo', CAST(2022 AS Decimal(18, 0)), CAST(N'2024-05-14T10:30:47.650' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (146, N'demo', CAST(4054 AS Decimal(18, 0)), CAST(N'2024-05-14T10:31:17.640' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (147, N'demo', CAST(3794 AS Decimal(18, 0)), CAST(N'2024-05-14T10:31:47.660' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (148, N'demo', CAST(7845 AS Decimal(18, 0)), CAST(N'2024-05-14T10:32:17.660' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (149, N'demo', CAST(2909 AS Decimal(18, 0)), CAST(N'2024-05-14T10:32:47.680' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (150, N'demo', CAST(6360 AS Decimal(18, 0)), CAST(N'2024-05-14T10:33:17.683' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (151, N'demo', CAST(1681 AS Decimal(18, 0)), CAST(N'2024-05-14T10:33:47.717' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (152, N'demo', CAST(9675 AS Decimal(18, 0)), CAST(N'2024-05-14T10:34:17.700' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (153, N'demo', CAST(203 AS Decimal(18, 0)), CAST(N'2024-05-14T10:34:47.727' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (154, N'demo', CAST(5694 AS Decimal(18, 0)), CAST(N'2024-05-14T10:35:17.737' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (155, N'demo', CAST(6816 AS Decimal(18, 0)), CAST(N'2024-05-14T10:35:47.740' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (156, N'demo', CAST(5078 AS Decimal(18, 0)), CAST(N'2024-05-14T10:36:17.740' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (157, N'demo', CAST(3620 AS Decimal(18, 0)), CAST(N'2024-05-14T10:36:47.780' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (158, N'demo', CAST(1140 AS Decimal(18, 0)), CAST(N'2024-05-14T10:37:17.753' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (159, N'demo', CAST(5426 AS Decimal(18, 0)), CAST(N'2024-05-14T10:37:47.760' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (160, N'demo', CAST(8401 AS Decimal(18, 0)), CAST(N'2024-05-14T10:38:17.770' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (161, N'demo', CAST(8860 AS Decimal(18, 0)), CAST(N'2024-05-14T10:38:47.767' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (162, N'demo', CAST(5922 AS Decimal(18, 0)), CAST(N'2024-05-14T10:39:17.793' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (163, N'demo', CAST(4097 AS Decimal(18, 0)), CAST(N'2024-05-14T10:39:47.787' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (164, N'demo', CAST(5001 AS Decimal(18, 0)), CAST(N'2024-05-14T10:40:17.800' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (165, N'demo', CAST(5192 AS Decimal(18, 0)), CAST(N'2024-05-14T10:40:47.803' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (166, N'demo', CAST(9508 AS Decimal(18, 0)), CAST(N'2024-05-14T10:41:17.827' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (167, N'demo', CAST(312 AS Decimal(18, 0)), CAST(N'2024-05-14T10:41:47.847' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (168, N'demo', CAST(8161 AS Decimal(18, 0)), CAST(N'2024-05-14T10:42:17.840' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (169, N'demo', CAST(5564 AS Decimal(18, 0)), CAST(N'2024-05-14T10:42:47.850' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (170, N'demo', CAST(8471 AS Decimal(18, 0)), CAST(N'2024-05-14T10:43:17.850' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (171, N'demo', CAST(8534 AS Decimal(18, 0)), CAST(N'2024-05-14T10:43:47.870' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (172, N'demo', CAST(7029 AS Decimal(18, 0)), CAST(N'2024-05-14T10:44:17.873' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (173, N'demo', CAST(1352 AS Decimal(18, 0)), CAST(N'2024-05-14T10:44:47.880' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (174, N'demo', CAST(201 AS Decimal(18, 0)), CAST(N'2024-05-14T10:45:17.887' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (175, N'demo', CAST(3732 AS Decimal(18, 0)), CAST(N'2024-05-14T10:45:47.903' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (176, N'demo', CAST(1779 AS Decimal(18, 0)), CAST(N'2024-05-14T10:46:17.940' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (177, N'demo', CAST(8368 AS Decimal(18, 0)), CAST(N'2024-05-14T10:46:46.697' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (178, N'demo', CAST(323 AS Decimal(18, 0)), CAST(N'2024-05-14T10:46:47.970' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (179, N'demo', CAST(7935 AS Decimal(18, 0)), CAST(N'2024-05-14T10:47:17.957' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (180, N'demo', CAST(1609 AS Decimal(18, 0)), CAST(N'2024-05-14T10:47:47.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (181, N'demo', CAST(8045 AS Decimal(18, 0)), CAST(N'2024-05-14T10:48:17.980' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (182, N'demo', CAST(5838 AS Decimal(18, 0)), CAST(N'2024-05-14T10:48:47.950' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (183, N'demo', CAST(5014 AS Decimal(18, 0)), CAST(N'2024-05-14T10:49:17.967' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (184, N'demo', CAST(2116 AS Decimal(18, 0)), CAST(N'2024-05-14T10:49:47.997' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (185, N'demo', CAST(8635 AS Decimal(18, 0)), CAST(N'2024-05-14T10:50:17.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (186, N'demo', CAST(3986 AS Decimal(18, 0)), CAST(N'2024-05-14T10:50:47.997' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (187, N'demo', CAST(872 AS Decimal(18, 0)), CAST(N'2024-05-14T10:51:18.007' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (188, N'demo', CAST(5635 AS Decimal(18, 0)), CAST(N'2024-05-14T10:51:48.017' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (189, N'demo', CAST(1068 AS Decimal(18, 0)), CAST(N'2024-05-14T10:52:14.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (190, N'demo', CAST(2664 AS Decimal(18, 0)), CAST(N'2024-05-14T10:52:44.923' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (191, N'demo', CAST(7871 AS Decimal(18, 0)), CAST(N'2024-05-14T10:53:14.950' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (192, N'demo', CAST(775 AS Decimal(18, 0)), CAST(N'2024-05-14T10:53:44.957' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (193, N'demo', CAST(6598 AS Decimal(18, 0)), CAST(N'2024-05-14T10:54:14.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (194, N'demo', CAST(1129 AS Decimal(18, 0)), CAST(N'2024-05-14T10:54:44.983' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (195, N'demo', CAST(9414 AS Decimal(18, 0)), CAST(N'2024-05-14T10:55:14.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (196, N'demo', CAST(3819 AS Decimal(18, 0)), CAST(N'2024-05-14T10:55:45.003' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (197, N'demo', CAST(4059 AS Decimal(18, 0)), CAST(N'2024-05-14T10:56:14.997' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (198, N'demo', CAST(3984 AS Decimal(18, 0)), CAST(N'2024-05-14T10:56:44.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (199, N'demo', CAST(7213 AS Decimal(18, 0)), CAST(N'2024-05-14T10:57:14.993' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (200, N'demo', CAST(6495 AS Decimal(18, 0)), CAST(N'2024-05-14T10:57:45.007' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (201, N'demo', CAST(9051 AS Decimal(18, 0)), CAST(N'2024-05-14T10:58:15.020' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (202, N'demo', CAST(9847 AS Decimal(18, 0)), CAST(N'2024-05-14T10:58:45.023' AS DateTime))
GO
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (203, N'demo', CAST(6838 AS Decimal(18, 0)), CAST(N'2024-05-14T10:59:15.047' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (204, N'demo', CAST(3649 AS Decimal(18, 0)), CAST(N'2024-05-14T10:59:45.067' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (205, N'demo', CAST(2817 AS Decimal(18, 0)), CAST(N'2024-05-14T11:00:15.073' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (206, N'demo', CAST(4891 AS Decimal(18, 0)), CAST(N'2024-05-14T11:00:45.060' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (207, N'demo', CAST(8769 AS Decimal(18, 0)), CAST(N'2024-05-14T11:01:15.070' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (208, N'demo', CAST(2933 AS Decimal(18, 0)), CAST(N'2024-05-14T11:01:45.063' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (209, N'demo', CAST(129 AS Decimal(18, 0)), CAST(N'2024-05-14T11:02:15.080' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (210, N'demo', CAST(1920 AS Decimal(18, 0)), CAST(N'2024-05-14T11:02:45.093' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (211, N'demo', CAST(780 AS Decimal(18, 0)), CAST(N'2024-05-14T11:03:15.100' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (212, N'demo', CAST(8422 AS Decimal(18, 0)), CAST(N'2024-05-14T11:03:45.143' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (213, N'demo', CAST(1843 AS Decimal(18, 0)), CAST(N'2024-05-14T11:04:15.130' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (214, N'demo', CAST(2656 AS Decimal(18, 0)), CAST(N'2024-05-14T11:04:45.100' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (215, N'demo', CAST(5196 AS Decimal(18, 0)), CAST(N'2024-05-14T11:05:15.117' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (216, N'demo', CAST(2529 AS Decimal(18, 0)), CAST(N'2024-05-14T11:05:45.130' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (217, N'demo', CAST(9625 AS Decimal(18, 0)), CAST(N'2024-05-14T11:06:15.120' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (218, N'demo', CAST(3878 AS Decimal(18, 0)), CAST(N'2024-05-14T11:06:45.127' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (219, N'demo', CAST(9725 AS Decimal(18, 0)), CAST(N'2024-05-14T13:20:14.393' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (220, N'demo', CAST(889 AS Decimal(18, 0)), CAST(N'2024-05-14T13:20:53.283' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (221, N'demo', CAST(7242 AS Decimal(18, 0)), CAST(N'2024-05-14T13:21:23.283' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (222, N'demo', CAST(7740 AS Decimal(18, 0)), CAST(N'2024-05-14T13:21:53.293' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (223, N'demo', CAST(9741 AS Decimal(18, 0)), CAST(N'2024-05-14T14:18:28.040' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (224, N'demo', CAST(4549 AS Decimal(18, 0)), CAST(N'2024-05-14T14:18:58.047' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (225, N'demo', CAST(5472 AS Decimal(18, 0)), CAST(N'2024-05-14T14:19:28.047' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (226, N'demo', CAST(9570 AS Decimal(18, 0)), CAST(N'2024-05-14T14:19:58.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (227, N'demo', CAST(8811 AS Decimal(18, 0)), CAST(N'2024-05-14T14:20:28.070' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (228, N'demo', CAST(6661 AS Decimal(18, 0)), CAST(N'2024-05-14T14:20:58.073' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (229, N'demo', CAST(8002 AS Decimal(18, 0)), CAST(N'2024-05-14T14:21:29.310' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (230, N'demo', CAST(2245 AS Decimal(18, 0)), CAST(N'2024-05-14T14:21:58.080' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (231, N'demo', CAST(946 AS Decimal(18, 0)), CAST(N'2024-05-14T14:22:28.780' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (232, N'demo', CAST(1725 AS Decimal(18, 0)), CAST(N'2024-05-14T14:22:58.780' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (233, N'demo', CAST(4219 AS Decimal(18, 0)), CAST(N'2024-05-14T14:23:28.810' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (234, N'demo', CAST(6079 AS Decimal(18, 0)), CAST(N'2024-05-14T14:23:58.810' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (235, N'demo', CAST(9179 AS Decimal(18, 0)), CAST(N'2024-05-14T14:24:28.813' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (236, N'demo', CAST(1093 AS Decimal(18, 0)), CAST(N'2024-05-14T14:24:58.827' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (237, N'demo', CAST(5065 AS Decimal(18, 0)), CAST(N'2024-05-14T14:25:28.817' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (238, N'demo', CAST(1801 AS Decimal(18, 0)), CAST(N'2024-05-14T14:25:58.847' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (239, N'demo', CAST(216 AS Decimal(18, 0)), CAST(N'2024-05-14T14:26:28.823' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (240, N'demo', CAST(7322 AS Decimal(18, 0)), CAST(N'2024-05-14T14:27:11.013' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (241, N'demo', CAST(7506 AS Decimal(18, 0)), CAST(N'2024-05-14T14:27:41.017' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (242, N'demo', CAST(3565 AS Decimal(18, 0)), CAST(N'2024-05-14T14:28:11.030' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (243, N'demo', CAST(3140 AS Decimal(18, 0)), CAST(N'2024-05-14T14:28:41.013' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (244, N'demo', CAST(552 AS Decimal(18, 0)), CAST(N'2024-05-14T14:29:11.020' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (245, N'demo', CAST(1754 AS Decimal(18, 0)), CAST(N'2024-05-14T14:29:41.040' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (246, N'demo', CAST(6871 AS Decimal(18, 0)), CAST(N'2024-05-14T14:30:11.043' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (247, N'demo', CAST(10 AS Decimal(18, 0)), CAST(N'2024-05-14T14:30:41.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (248, N'demo', CAST(5608 AS Decimal(18, 0)), CAST(N'2024-05-14T14:31:11.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (249, N'demo', CAST(5639 AS Decimal(18, 0)), CAST(N'2024-05-14T14:31:52.953' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (250, N'demo', CAST(2724 AS Decimal(18, 0)), CAST(N'2024-05-14T14:32:22.957' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (251, N'demo', CAST(1088 AS Decimal(18, 0)), CAST(N'2024-05-14T14:32:52.963' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (252, N'demo', CAST(3593 AS Decimal(18, 0)), CAST(N'2024-05-14T14:33:22.973' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (253, N'demo', CAST(7462 AS Decimal(18, 0)), CAST(N'2024-05-14T14:33:52.967' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (254, N'demo', CAST(5471 AS Decimal(18, 0)), CAST(N'2024-05-14T14:34:50.433' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (255, N'demo', CAST(4614 AS Decimal(18, 0)), CAST(N'2024-05-14T14:35:26.490' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (256, N'demo', CAST(8922 AS Decimal(18, 0)), CAST(N'2024-05-14T14:35:56.480' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (257, N'demo', CAST(4951 AS Decimal(18, 0)), CAST(N'2024-05-14T14:36:26.497' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (258, N'demo', CAST(8530 AS Decimal(18, 0)), CAST(N'2024-05-14T14:36:56.493' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (259, N'demo', CAST(6545 AS Decimal(18, 0)), CAST(N'2024-05-14T14:37:26.513' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (260, N'demo', CAST(1809 AS Decimal(18, 0)), CAST(N'2024-05-14T14:37:56.520' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (261, N'demo', CAST(4372 AS Decimal(18, 0)), CAST(N'2024-05-14T14:38:26.520' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (262, N'demo', CAST(9267 AS Decimal(18, 0)), CAST(N'2024-05-14T14:38:56.540' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (263, N'demo', CAST(8115 AS Decimal(18, 0)), CAST(N'2024-05-14T14:39:26.547' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (264, N'demo', CAST(5036 AS Decimal(18, 0)), CAST(N'2024-05-14T14:39:56.557' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (265, N'demo', CAST(1930 AS Decimal(18, 0)), CAST(N'2024-05-14T14:40:26.567' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (266, N'demo', CAST(2910 AS Decimal(18, 0)), CAST(N'2024-05-14T14:40:56.570' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (267, N'demo', CAST(3277 AS Decimal(18, 0)), CAST(N'2024-05-14T14:41:26.577' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (268, N'demo', CAST(3830 AS Decimal(18, 0)), CAST(N'2024-05-14T14:41:56.583' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (269, N'demo', CAST(8641 AS Decimal(18, 0)), CAST(N'2024-05-14T14:42:26.593' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (270, N'demo', CAST(3239 AS Decimal(18, 0)), CAST(N'2024-05-14T14:42:56.597' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (271, N'demo', CAST(9994 AS Decimal(18, 0)), CAST(N'2024-05-14T14:43:26.603' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (272, N'demo', CAST(3990 AS Decimal(18, 0)), CAST(N'2024-05-14T14:43:56.637' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (273, N'demo', CAST(8084 AS Decimal(18, 0)), CAST(N'2024-05-14T14:44:40.917' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (274, N'demo', CAST(4582 AS Decimal(18, 0)), CAST(N'2024-05-14T14:45:10.927' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (275, N'demo', CAST(8535 AS Decimal(18, 0)), CAST(N'2024-05-14T14:45:40.930' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (276, N'demo', CAST(2851 AS Decimal(18, 0)), CAST(N'2024-05-14T14:47:06.857' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (277, N'demo', CAST(8773 AS Decimal(18, 0)), CAST(N'2024-05-14T14:47:36.860' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (278, N'demo', CAST(204 AS Decimal(18, 0)), CAST(N'2024-05-14T14:48:06.863' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (279, N'demo', CAST(7193 AS Decimal(18, 0)), CAST(N'2024-05-14T14:48:36.883' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (280, N'demo', CAST(1665 AS Decimal(18, 0)), CAST(N'2024-05-14T14:49:06.870' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (281, N'demo', CAST(4038 AS Decimal(18, 0)), CAST(N'2024-05-14T14:49:36.883' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (282, N'demo', CAST(4083 AS Decimal(18, 0)), CAST(N'2024-05-14T14:50:06.890' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (283, N'demo', CAST(7041 AS Decimal(18, 0)), CAST(N'2024-05-14T14:50:36.910' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (284, N'demo', CAST(7111 AS Decimal(18, 0)), CAST(N'2024-05-14T14:51:06.923' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (285, N'demo', CAST(6678 AS Decimal(18, 0)), CAST(N'2024-05-14T14:51:36.927' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (286, N'demo', CAST(8986 AS Decimal(18, 0)), CAST(N'2024-05-14T14:52:06.937' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (287, N'demo', CAST(2633 AS Decimal(18, 0)), CAST(N'2024-05-14T14:52:36.933' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (288, N'demo', CAST(6502 AS Decimal(18, 0)), CAST(N'2024-05-14T14:53:06.953' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (289, N'demo', CAST(4104 AS Decimal(18, 0)), CAST(N'2024-05-14T14:53:36.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (290, N'demo', CAST(3471 AS Decimal(18, 0)), CAST(N'2024-05-14T14:54:07.020' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (291, N'demo', CAST(4330 AS Decimal(18, 0)), CAST(N'2024-05-14T14:54:36.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (292, N'demo', CAST(6398 AS Decimal(18, 0)), CAST(N'2024-05-14T14:55:06.987' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (293, N'demo', CAST(5504 AS Decimal(18, 0)), CAST(N'2024-05-14T14:55:36.993' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (294, N'demo', CAST(8855 AS Decimal(18, 0)), CAST(N'2024-05-14T14:56:06.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (295, N'demo', CAST(8386 AS Decimal(18, 0)), CAST(N'2024-05-14T14:56:37.017' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (296, N'demo', CAST(2061 AS Decimal(18, 0)), CAST(N'2024-05-14T14:57:07.010' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (297, N'demo', CAST(9704 AS Decimal(18, 0)), CAST(N'2024-05-14T14:57:37.027' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (298, N'demo', CAST(8088 AS Decimal(18, 0)), CAST(N'2024-05-14T14:58:07.030' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (299, N'demo', CAST(6080 AS Decimal(18, 0)), CAST(N'2024-05-14T14:58:37.037' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (300, N'demo', CAST(2284 AS Decimal(18, 0)), CAST(N'2024-05-14T14:59:07.030' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (301, N'demo', CAST(9821 AS Decimal(18, 0)), CAST(N'2024-05-14T14:59:37.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (302, N'demo', CAST(5661 AS Decimal(18, 0)), CAST(N'2024-05-14T15:00:07.077' AS DateTime))
GO
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (303, N'demo', CAST(6383 AS Decimal(18, 0)), CAST(N'2024-05-14T15:00:37.053' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (304, N'demo', CAST(5516 AS Decimal(18, 0)), CAST(N'2024-05-14T15:01:07.057' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (305, N'demo', CAST(5881 AS Decimal(18, 0)), CAST(N'2024-05-14T15:01:37.060' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (306, N'demo', CAST(768 AS Decimal(18, 0)), CAST(N'2024-05-14T15:02:07.097' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (307, N'demo', CAST(1424 AS Decimal(18, 0)), CAST(N'2024-05-14T15:02:37.087' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (308, N'demo', CAST(6867 AS Decimal(18, 0)), CAST(N'2024-05-14T15:03:07.077' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (309, N'demo', CAST(7004 AS Decimal(18, 0)), CAST(N'2024-05-14T15:03:37.090' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (310, N'demo', CAST(4561 AS Decimal(18, 0)), CAST(N'2024-05-14T15:04:07.083' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (311, N'demo', CAST(4482 AS Decimal(18, 0)), CAST(N'2024-05-14T15:04:37.110' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (312, N'demo', CAST(3119 AS Decimal(18, 0)), CAST(N'2024-05-14T15:05:07.097' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (313, N'demo', CAST(7476 AS Decimal(18, 0)), CAST(N'2024-05-14T15:05:37.093' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (314, N'demo', CAST(7363 AS Decimal(18, 0)), CAST(N'2024-05-14T15:06:07.100' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (315, N'demo', CAST(875 AS Decimal(18, 0)), CAST(N'2024-05-14T15:06:37.107' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (316, N'demo', CAST(8124 AS Decimal(18, 0)), CAST(N'2024-05-14T15:07:07.110' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (317, N'demo', CAST(4251 AS Decimal(18, 0)), CAST(N'2024-05-14T15:07:37.120' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (318, N'demo', CAST(5409 AS Decimal(18, 0)), CAST(N'2024-05-14T15:08:07.133' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (319, N'demo', CAST(8014 AS Decimal(18, 0)), CAST(N'2024-05-14T15:08:37.133' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (320, N'demo', CAST(6782 AS Decimal(18, 0)), CAST(N'2024-05-14T15:09:07.140' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (321, N'demo', CAST(8656 AS Decimal(18, 0)), CAST(N'2024-05-14T15:09:37.153' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (322, N'demo', CAST(3467 AS Decimal(18, 0)), CAST(N'2024-05-14T15:10:07.160' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (323, N'demo', CAST(1258 AS Decimal(18, 0)), CAST(N'2024-05-14T15:10:37.153' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (324, N'demo', CAST(8732 AS Decimal(18, 0)), CAST(N'2024-05-14T15:11:07.177' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (325, N'demo', CAST(5786 AS Decimal(18, 0)), CAST(N'2024-05-14T15:11:37.180' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (326, N'demo', CAST(1252 AS Decimal(18, 0)), CAST(N'2024-05-14T15:12:07.183' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (327, N'demo', CAST(5743 AS Decimal(18, 0)), CAST(N'2024-05-14T15:12:56.483' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (328, N'demo', CAST(7185 AS Decimal(18, 0)), CAST(N'2024-05-14T15:13:26.490' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (329, N'demo', CAST(852 AS Decimal(18, 0)), CAST(N'2024-05-14T15:13:56.497' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (330, N'demo', CAST(3411 AS Decimal(18, 0)), CAST(N'2024-05-14T15:14:26.527' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (331, N'demo', CAST(594 AS Decimal(18, 0)), CAST(N'2024-05-14T15:14:56.523' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (332, N'demo', CAST(7091 AS Decimal(18, 0)), CAST(N'2024-05-14T15:15:26.517' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (333, N'demo', CAST(6734 AS Decimal(18, 0)), CAST(N'2024-05-14T15:15:56.520' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (334, N'demo', CAST(8421 AS Decimal(18, 0)), CAST(N'2024-05-14T15:16:26.637' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (335, N'demo', CAST(5589 AS Decimal(18, 0)), CAST(N'2024-05-14T15:16:56.540' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (336, N'demo', CAST(1493 AS Decimal(18, 0)), CAST(N'2024-05-14T15:17:26.543' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (337, N'demo', CAST(7000 AS Decimal(18, 0)), CAST(N'2024-05-14T15:17:56.563' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (338, N'demo', CAST(6422 AS Decimal(18, 0)), CAST(N'2024-05-14T15:18:26.570' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (339, N'demo', CAST(2000 AS Decimal(18, 0)), CAST(N'2024-05-14T15:18:56.553' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (340, N'demo', CAST(2678 AS Decimal(18, 0)), CAST(N'2024-05-14T15:19:26.560' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (341, N'demo', CAST(8266 AS Decimal(18, 0)), CAST(N'2024-05-14T15:19:56.583' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (342, N'demo', CAST(9031 AS Decimal(18, 0)), CAST(N'2024-05-14T15:20:26.590' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (343, N'demo', CAST(5250 AS Decimal(18, 0)), CAST(N'2024-05-14T15:20:56.603' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (344, N'demo', CAST(8395 AS Decimal(18, 0)), CAST(N'2024-05-14T15:21:26.597' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (345, N'demo', CAST(4764 AS Decimal(18, 0)), CAST(N'2024-05-14T15:21:56.613' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (346, N'demo', CAST(7192 AS Decimal(18, 0)), CAST(N'2024-05-14T15:22:26.623' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (347, N'demo', CAST(990 AS Decimal(18, 0)), CAST(N'2024-05-14T15:22:56.630' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (348, N'demo', CAST(3228 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:26.647' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (349, N'demo', CAST(3751 AS Decimal(18, 0)), CAST(N'2024-05-14T15:23:56.650' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (350, N'demo', CAST(4474 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:26.660' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (351, N'demo', CAST(1567 AS Decimal(18, 0)), CAST(N'2024-05-14T15:24:56.667' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (352, N'demo', CAST(9520 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:26.687' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (353, N'demo', CAST(2643 AS Decimal(18, 0)), CAST(N'2024-05-14T15:25:56.680' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (354, N'demo', CAST(2170 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:26.677' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (355, N'demo', CAST(7658 AS Decimal(18, 0)), CAST(N'2024-05-14T15:26:56.680' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (356, N'demo', CAST(6865 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:26.700' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (357, N'demo', CAST(5303 AS Decimal(18, 0)), CAST(N'2024-05-14T15:27:56.697' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (358, N'demo', CAST(9813 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:26.710' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (359, N'demo', CAST(9764 AS Decimal(18, 0)), CAST(N'2024-05-14T15:28:56.720' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (360, N'demo', CAST(9294 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:26.713' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (361, N'demo', CAST(1960 AS Decimal(18, 0)), CAST(N'2024-05-14T15:29:56.737' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (362, N'demo', CAST(109 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:26.733' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (363, N'demo', CAST(4384 AS Decimal(18, 0)), CAST(N'2024-05-14T15:30:56.740' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (364, N'demo', CAST(9917 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:26.750' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (365, N'demo', CAST(5997 AS Decimal(18, 0)), CAST(N'2024-05-14T15:31:56.747' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (366, N'demo', CAST(4927 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:26.747' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (367, N'demo', CAST(5363 AS Decimal(18, 0)), CAST(N'2024-05-14T15:32:56.763' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (368, N'demo', CAST(1339 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:26.790' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (369, N'demo', CAST(9310 AS Decimal(18, 0)), CAST(N'2024-05-14T15:33:56.790' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (370, N'demo', CAST(9977 AS Decimal(18, 0)), CAST(N'2024-05-14T15:34:26.803' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (371, N'demo', CAST(2094 AS Decimal(18, 0)), CAST(N'2024-05-14T15:34:56.810' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (372, N'demo', CAST(25 AS Decimal(18, 0)), CAST(N'2024-05-14T15:35:26.817' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (373, N'demo', CAST(3481 AS Decimal(18, 0)), CAST(N'2024-05-14T15:35:56.807' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (374, N'demo', CAST(5192 AS Decimal(18, 0)), CAST(N'2024-05-14T15:36:26.820' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (375, N'demo', CAST(3544 AS Decimal(18, 0)), CAST(N'2024-05-14T15:36:56.810' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (376, N'demo', CAST(5941 AS Decimal(18, 0)), CAST(N'2024-05-14T15:37:26.830' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (377, N'demo', CAST(2854 AS Decimal(18, 0)), CAST(N'2024-05-14T15:37:56.853' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (378, N'demo', CAST(431 AS Decimal(18, 0)), CAST(N'2024-05-14T15:38:26.860' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (379, N'demo', CAST(1001 AS Decimal(18, 0)), CAST(N'2024-05-14T15:38:56.847' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (380, N'demo', CAST(3385 AS Decimal(18, 0)), CAST(N'2024-05-14T15:39:26.887' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (381, N'demo', CAST(244 AS Decimal(18, 0)), CAST(N'2024-05-14T15:39:56.873' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (382, N'demo', CAST(7094 AS Decimal(18, 0)), CAST(N'2024-05-14T15:40:26.883' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (383, N'demo', CAST(7314 AS Decimal(18, 0)), CAST(N'2024-05-14T15:40:56.923' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (384, N'demo', CAST(3723 AS Decimal(18, 0)), CAST(N'2024-05-14T15:41:26.903' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (385, N'demo', CAST(5780 AS Decimal(18, 0)), CAST(N'2024-05-14T15:41:56.910' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (386, N'demo', CAST(9752 AS Decimal(18, 0)), CAST(N'2024-05-14T15:42:26.917' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (387, N'demo', CAST(7362 AS Decimal(18, 0)), CAST(N'2024-05-14T15:42:56.920' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (388, N'demo', CAST(1127 AS Decimal(18, 0)), CAST(N'2024-05-14T15:43:26.937' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (389, N'demo', CAST(8131 AS Decimal(18, 0)), CAST(N'2024-05-14T15:43:56.933' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (390, N'demo', CAST(410 AS Decimal(18, 0)), CAST(N'2024-05-14T15:44:26.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (391, N'demo', CAST(1364 AS Decimal(18, 0)), CAST(N'2024-05-14T15:44:56.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (392, N'demo', CAST(6123 AS Decimal(18, 0)), CAST(N'2024-05-14T15:45:26.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (393, N'demo', CAST(4262 AS Decimal(18, 0)), CAST(N'2024-05-14T15:45:56.970' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (394, N'demo', CAST(8036 AS Decimal(18, 0)), CAST(N'2024-05-14T15:46:26.980' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (395, N'demo', CAST(7439 AS Decimal(18, 0)), CAST(N'2024-05-14T15:46:56.980' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (396, N'demo', CAST(4112 AS Decimal(18, 0)), CAST(N'2024-05-14T15:47:26.993' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (397, N'demo', CAST(8425 AS Decimal(18, 0)), CAST(N'2024-05-14T15:47:57.000' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (398, N'demo', CAST(7395 AS Decimal(18, 0)), CAST(N'2024-05-14T15:48:27.013' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (399, N'demo', CAST(7845 AS Decimal(18, 0)), CAST(N'2024-05-14T15:48:57.013' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (400, N'demo', CAST(4090 AS Decimal(18, 0)), CAST(N'2024-05-14T15:49:27.017' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (401, N'demo', CAST(3286 AS Decimal(18, 0)), CAST(N'2024-05-14T15:49:57.027' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (402, N'demo', CAST(4237 AS Decimal(18, 0)), CAST(N'2024-05-14T15:50:27.027' AS DateTime))
GO
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (403, N'demo', CAST(8811 AS Decimal(18, 0)), CAST(N'2024-05-14T15:50:57.037' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (404, N'demo', CAST(5768 AS Decimal(18, 0)), CAST(N'2024-05-14T15:51:27.570' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (405, N'demo', CAST(3735 AS Decimal(18, 0)), CAST(N'2024-05-14T15:51:37.943' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (406, N'demo', CAST(6591 AS Decimal(18, 0)), CAST(N'2024-05-14T15:51:55.687' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (407, N'demo', CAST(5829 AS Decimal(18, 0)), CAST(N'2024-05-14T15:51:58.067' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (408, N'demo', CAST(2606 AS Decimal(18, 0)), CAST(N'2024-05-14T15:52:19.083' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (409, N'demo', CAST(8327 AS Decimal(18, 0)), CAST(N'2024-05-14T15:52:46.500' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (410, N'demo', CAST(6398 AS Decimal(18, 0)), CAST(N'2024-05-14T15:52:51.643' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (411, N'demo', CAST(5889 AS Decimal(18, 0)), CAST(N'2024-05-14T15:53:18.820' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (412, N'demo', CAST(2478 AS Decimal(18, 0)), CAST(N'2024-05-14T15:53:48.827' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (413, N'demo', CAST(2261 AS Decimal(18, 0)), CAST(N'2024-05-14T15:54:18.840' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (414, N'demo', CAST(2405 AS Decimal(18, 0)), CAST(N'2024-05-14T15:54:48.833' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (415, N'demo', CAST(599 AS Decimal(18, 0)), CAST(N'2024-05-14T15:55:18.853' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (416, N'demo', CAST(6572 AS Decimal(18, 0)), CAST(N'2024-05-14T15:55:48.837' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (417, N'demo', CAST(7168 AS Decimal(18, 0)), CAST(N'2024-05-14T15:56:18.860' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (418, N'demo', CAST(7219 AS Decimal(18, 0)), CAST(N'2024-05-14T15:56:48.860' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (419, N'demo', CAST(5476 AS Decimal(18, 0)), CAST(N'2024-05-14T15:57:18.860' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (420, N'demo', CAST(5832 AS Decimal(18, 0)), CAST(N'2024-05-14T15:57:48.870' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (421, N'demo', CAST(9504 AS Decimal(18, 0)), CAST(N'2024-05-14T15:58:18.883' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (422, N'demo', CAST(4450 AS Decimal(18, 0)), CAST(N'2024-05-14T15:58:48.887' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (423, N'demo', CAST(8475 AS Decimal(18, 0)), CAST(N'2024-05-14T15:59:18.887' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (424, N'demo', CAST(6115 AS Decimal(18, 0)), CAST(N'2024-05-14T15:59:48.893' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (425, N'demo', CAST(8600 AS Decimal(18, 0)), CAST(N'2024-05-14T16:00:18.903' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (426, N'demo', CAST(8578 AS Decimal(18, 0)), CAST(N'2024-05-14T16:00:48.907' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (427, N'demo', CAST(246 AS Decimal(18, 0)), CAST(N'2024-05-14T16:01:18.903' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (428, N'demo', CAST(9371 AS Decimal(18, 0)), CAST(N'2024-05-14T16:01:48.913' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (429, N'demo', CAST(9947 AS Decimal(18, 0)), CAST(N'2024-05-14T16:02:18.927' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (430, N'demo', CAST(6216 AS Decimal(18, 0)), CAST(N'2024-05-14T16:02:48.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (431, N'demo', CAST(8446 AS Decimal(18, 0)), CAST(N'2024-05-14T16:03:18.957' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (432, N'demo', CAST(4152 AS Decimal(18, 0)), CAST(N'2024-05-14T16:03:48.957' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (433, N'demo', CAST(8489 AS Decimal(18, 0)), CAST(N'2024-05-14T16:04:18.983' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (434, N'demo', CAST(1334 AS Decimal(18, 0)), CAST(N'2024-05-14T16:04:48.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (435, N'demo', CAST(9884 AS Decimal(18, 0)), CAST(N'2024-05-14T16:05:18.973' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (436, N'demo', CAST(6207 AS Decimal(18, 0)), CAST(N'2024-05-14T16:05:48.980' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (437, N'demo', CAST(6939 AS Decimal(18, 0)), CAST(N'2024-05-14T16:06:19.003' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (438, N'demo', CAST(7438 AS Decimal(18, 0)), CAST(N'2024-05-14T16:06:49.003' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (439, N'demo', CAST(6238 AS Decimal(18, 0)), CAST(N'2024-05-14T16:07:19.007' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (440, N'demo', CAST(7953 AS Decimal(18, 0)), CAST(N'2024-05-14T16:07:49.000' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (441, N'demo', CAST(8723 AS Decimal(18, 0)), CAST(N'2024-05-14T16:08:19.007' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (442, N'demo', CAST(7574 AS Decimal(18, 0)), CAST(N'2024-05-14T16:08:49.027' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (443, N'demo', CAST(8018 AS Decimal(18, 0)), CAST(N'2024-05-14T16:09:19.020' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (444, N'demo', CAST(3746 AS Decimal(18, 0)), CAST(N'2024-05-14T16:09:49.040' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (445, N'demo', CAST(7214 AS Decimal(18, 0)), CAST(N'2024-05-14T16:10:19.037' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (446, N'demo', CAST(8 AS Decimal(18, 0)), CAST(N'2024-05-14T16:10:49.050' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (447, N'demo', CAST(5263 AS Decimal(18, 0)), CAST(N'2024-05-14T16:11:19.040' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (448, N'demo', CAST(5049 AS Decimal(18, 0)), CAST(N'2024-05-14T16:11:49.053' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (449, N'demo', CAST(7703 AS Decimal(18, 0)), CAST(N'2024-05-14T16:12:19.060' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (450, N'demo', CAST(9290 AS Decimal(18, 0)), CAST(N'2024-05-14T16:12:49.077' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (451, N'demo', CAST(8185 AS Decimal(18, 0)), CAST(N'2024-05-14T16:13:19.067' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (452, N'demo', CAST(2619 AS Decimal(18, 0)), CAST(N'2024-05-14T16:13:49.083' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (453, N'demo', CAST(3019 AS Decimal(18, 0)), CAST(N'2024-05-14T16:14:19.083' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (454, N'demo', CAST(567 AS Decimal(18, 0)), CAST(N'2024-05-14T16:14:49.090' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (455, N'demo', CAST(5560 AS Decimal(18, 0)), CAST(N'2024-05-14T16:15:19.107' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (456, N'demo', CAST(2798 AS Decimal(18, 0)), CAST(N'2024-05-14T16:15:49.100' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (457, N'demo', CAST(5750 AS Decimal(18, 0)), CAST(N'2024-05-14T16:16:19.107' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (458, N'demo', CAST(2264 AS Decimal(18, 0)), CAST(N'2024-05-14T16:16:49.117' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (459, N'demo', CAST(85 AS Decimal(18, 0)), CAST(N'2024-05-14T16:17:19.113' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (460, N'demo', CAST(3896 AS Decimal(18, 0)), CAST(N'2024-05-14T16:17:49.127' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (461, N'demo', CAST(507 AS Decimal(18, 0)), CAST(N'2024-05-14T16:18:19.127' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (462, N'demo', CAST(6541 AS Decimal(18, 0)), CAST(N'2024-05-14T16:18:49.133' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (463, N'demo', CAST(5015 AS Decimal(18, 0)), CAST(N'2024-05-14T16:19:19.123' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (464, N'demo', CAST(707 AS Decimal(18, 0)), CAST(N'2024-05-14T16:19:49.143' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (465, N'demo', CAST(3697 AS Decimal(18, 0)), CAST(N'2024-05-14T16:20:19.147' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (466, N'demo', CAST(8661 AS Decimal(18, 0)), CAST(N'2024-05-14T16:20:49.153' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (467, N'demo', CAST(3110 AS Decimal(18, 0)), CAST(N'2024-05-14T16:21:19.143' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (468, N'demo', CAST(4309 AS Decimal(18, 0)), CAST(N'2024-05-14T16:22:19.167' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (469, N'demo', CAST(766 AS Decimal(18, 0)), CAST(N'2024-05-14T16:22:49.167' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (470, N'demo', CAST(4857 AS Decimal(18, 0)), CAST(N'2024-05-14T16:23:19.187' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (471, N'demo', CAST(3261 AS Decimal(18, 0)), CAST(N'2024-05-14T16:23:49.180' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (472, N'demo', CAST(9512 AS Decimal(18, 0)), CAST(N'2024-05-14T16:29:22.940' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (473, N'demo', CAST(5960 AS Decimal(18, 0)), CAST(N'2024-05-14T16:29:52.950' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (474, N'demo', CAST(116 AS Decimal(18, 0)), CAST(N'2024-05-14T16:30:22.930' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (475, N'demo', CAST(46 AS Decimal(18, 0)), CAST(N'2024-05-14T16:30:52.947' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (476, N'demo', CAST(1780 AS Decimal(18, 0)), CAST(N'2024-05-14T16:31:22.940' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (477, N'demo', CAST(5469 AS Decimal(18, 0)), CAST(N'2024-05-14T16:31:52.950' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (478, N'demo', CAST(77 AS Decimal(18, 0)), CAST(N'2024-05-14T16:32:22.950' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (479, N'demo', CAST(626 AS Decimal(18, 0)), CAST(N'2024-05-14T16:32:52.973' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1249, N'demo', CAST(9013 AS Decimal(18, 0)), CAST(N'2024-05-14T21:47:04.957' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1250, N'demo', CAST(9116 AS Decimal(18, 0)), CAST(N'2024-05-14T21:47:34.960' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1251, N'demo', CAST(5658 AS Decimal(18, 0)), CAST(N'2024-05-14T21:48:04.967' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1252, N'demo', CAST(5057 AS Decimal(18, 0)), CAST(N'2024-05-14T21:48:34.983' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1253, N'demo', CAST(5372 AS Decimal(18, 0)), CAST(N'2024-05-14T21:49:04.983' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1254, N'demo', CAST(6205 AS Decimal(18, 0)), CAST(N'2024-05-14T21:49:34.990' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1255, N'demo', CAST(166 AS Decimal(18, 0)), CAST(N'2024-05-14T21:50:04.987' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1256, N'demo', CAST(9223 AS Decimal(18, 0)), CAST(N'2024-05-14T21:50:35.003' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1257, N'demo', CAST(5203 AS Decimal(18, 0)), CAST(N'2024-05-14T21:51:05.013' AS DateTime))
INSERT [dbo].[History] ([id], [sid], [value], [time_update]) VALUES (1258, N'demo', CAST(7356 AS Decimal(18, 0)), CAST(N'2024-05-14T21:51:35.010' AS DateTime))
SET IDENTITY_INSERT [dbo].[History] OFF
GO
INSERT [dbo].[Sensor] ([sid], [name], [description], [value], [time_update]) VALUES (N'demo', N'Cảm biến random', N'Random từ 0 đến 1000', CAST(7356 AS Decimal(18, 0)), CAST(N'2024-05-14T21:51:35.013' AS DateTime))
GO
INSERT [dbo].[SO_XO] ([date], [score], [result], [desc_]) VALUES (N'14-05-2024', 1, 16880, NULL)
GO
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_time_update]  DEFAULT (getdate()) FOR [time_update]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Sensor] FOREIGN KEY([sid])
REFERENCES [dbo].[Sensor] ([sid])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Sensor]
GO
USE [master]
GO
ALTER DATABASE [BTL_python] SET  READ_WRITE 
GO
