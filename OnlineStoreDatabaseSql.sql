USE [master]
GO
/****** Object:  Database [OnlineStoreDb]    Script Date: 18.07.2022 17:51:47 ******/
CREATE DATABASE [OnlineStoreDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineStoreDb', FILENAME = N'C:\Users\Admin\OnlineStoreDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineStoreDb_log', FILENAME = N'C:\Users\Admin\OnlineStoreDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OnlineStoreDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineStoreDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineStoreDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineStoreDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineStoreDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineStoreDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineStoreDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineStoreDb] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineStoreDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineStoreDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineStoreDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineStoreDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineStoreDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineStoreDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineStoreDb] SET QUERY_STORE = OFF
GO
USE [OnlineStoreDb]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.07.2022 17:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatetDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (1, N'Acer Predator', 200000, 10, N'gaming laptop', CAST(N'2022-07-15T17:01:48.843' AS DateTime), CAST(N'2022-07-15T17:01:48.843' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (2, N'Acer Nitro', 250000, 11, N'gaming laptop by nitro', CAST(N'2022-07-15T17:02:12.400' AS DateTime), CAST(N'2022-07-15T17:02:12.400' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (3, N'Asus Tuf', 220000, 7, N'gaming laptop by ASUS TUF', CAST(N'2022-07-15T17:02:39.903' AS DateTime), CAST(N'2022-07-15T17:02:39.903' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (4, N'Asus ROG', 320000, 3, N'gaming laptop by ASUS ROG', CAST(N'2022-07-15T17:02:56.590' AS DateTime), CAST(N'2022-07-15T17:02:56.590' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (5, N'Samsung S20+', 320000, 10, N'smartphone by samsung', CAST(N'2022-07-15T17:04:00.957' AS DateTime), CAST(N'2022-07-15T17:04:00.957' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (6, N'Samsung S10', 150000, 10, N'smartphone by samsung', CAST(N'2022-07-15T17:04:14.093' AS DateTime), CAST(N'2022-07-15T17:04:14.093' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (7, N'One Plus 9', 200000, 10, N'smartphone by 1+', CAST(N'2022-07-15T17:04:54.457' AS DateTime), CAST(N'2022-07-15T17:04:54.457' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (8, N'One Plus 10', 300000, 5, N'smartphone by 1+', CAST(N'2022-07-15T17:06:14.977' AS DateTime), CAST(N'2022-07-15T17:06:14.977' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (9, N'Hyperx Alloy FPS', 40000, 50, N'gaming keyboard', CAST(N'2022-07-15T17:07:15.233' AS DateTime), CAST(N'2022-07-15T17:07:15.233' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (10, N'Samsung Monitor 27inch', 400000, 30, N'IPS monitor', CAST(N'2022-07-15T17:09:23.610' AS DateTime), CAST(N'2022-07-15T17:09:23.610' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (1002, N'Acer Predator INSERT', 200000, 10, N'gaming laptop', CAST(N'2022-07-18T17:40:20.650' AS DateTime), CAST(N'2022-07-18T17:40:20.650' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (1003, N'Acer Predator INSERT 2', 200000, 10, N'gaming laptop', CAST(N'2022-07-18T17:42:10.020' AS DateTime), CAST(N'2022-07-18T17:42:10.020' AS DateTime))
INSERT [dbo].[Products] ([Id], [Name], [Price], [Count], [Description], [CreatedDate], [UpdatetDate]) VALUES (1004, N'Acer Predator INSERT 3', 200000, 10, N'gaming laptop', CAST(N'2022-07-18T17:44:01.727' AS DateTime), CAST(N'2022-07-18T17:44:01.727' AS DateTime))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [OnlineStoreDb] SET  READ_WRITE 
GO
