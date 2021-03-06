USE [master]
GO
/****** Object:  Database [Restaurant_Food]    Script Date: 26/11/2020 9:22:24 am ******/
CREATE DATABASE [Restaurant_Food]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurant_Food', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Restaurant_Food.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restaurant_Food_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Restaurant_Food_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Restaurant_Food] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurant_Food].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurant_Food] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurant_Food] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurant_Food] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurant_Food] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurant_Food] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurant_Food] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restaurant_Food] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurant_Food] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurant_Food] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurant_Food] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurant_Food] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurant_Food] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurant_Food] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurant_Food] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurant_Food] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restaurant_Food] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurant_Food] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurant_Food] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurant_Food] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurant_Food] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurant_Food] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurant_Food] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurant_Food] SET RECOVERY FULL 
GO
ALTER DATABASE [Restaurant_Food] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurant_Food] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurant_Food] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurant_Food] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurant_Food] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Restaurant_Food] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Restaurant_Food', N'ON'
GO
ALTER DATABASE [Restaurant_Food] SET QUERY_STORE = OFF
GO
USE [Restaurant_Food]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/11/2020 9:22:24 am ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food_Items]    Script Date: 26/11/2020 9:22:24 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food_Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Food_Item_Name] [nvarchar](max) NULL,
	[Food_Type] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Food_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200410090748_food', N'3.1.8')
GO
SET IDENTITY_INSERT [dbo].[Food_Items] ON 

INSERT [dbo].[Food_Items] ([Id], [Food_Item_Name], [Food_Type], [Description], [Price]) VALUES (2, N'Butter Chicken', N'Non-Veg', N'Tandoor cooked chicken tikka simmered in creamy tomato gravy.', CAST(20.95 AS Decimal(18, 2)))
INSERT [dbo].[Food_Items] ([Id], [Food_Item_Name], [Food_Type], [Description], [Price]) VALUES (3, N'Paneer Butter Masala', N'Vegetarian', N'Cottage cheese cooked with chef’s special gravy.', CAST(18.50 AS Decimal(18, 2)))
INSERT [dbo].[Food_Items] ([Id], [Food_Item_Name], [Food_Type], [Description], [Price]) VALUES (4, N'Aloo Shimla Mirch ', N'Gluten_Free', N'Fresh green pepper cooked in a spiced sauce with potatoes.', CAST(18.00 AS Decimal(18, 2)))
INSERT [dbo].[Food_Items] ([Id], [Food_Item_Name], [Food_Type], [Description], [Price]) VALUES (5, N'Paneer Makhani', N'Vegetarian', N'Cottage cheese cooked in tomato, ginger, spices and creamy gravy', CAST(18.00 AS Decimal(18, 2)))
INSERT [dbo].[Food_Items] ([Id], [Food_Item_Name], [Food_Type], [Description], [Price]) VALUES (6, N'Aloo Gobi', N'Vegan', N'	Fresh potatoes cooked in a spiced sauce with cauliflower, onion and tomato base.', CAST(17.50 AS Decimal(18, 2)))
INSERT [dbo].[Food_Items] ([Id], [Food_Item_Name], [Food_Type], [Description], [Price]) VALUES (7, N'paneer tikka', N'Vegetarian', N'Paneer with some masalas', CAST(30.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Food_Items] OFF
GO
USE [master]
GO
ALTER DATABASE [Restaurant_Food] SET  READ_WRITE 
GO
