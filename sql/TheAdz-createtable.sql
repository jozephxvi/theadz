USE [master]
GO
/****** Object:  Database [TheAdz]    Script Date: 02/26/2015 09:08:26 ******/
CREATE DATABASE [TheAdz] ON  PRIMARY 
( NAME = N'TheAdz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TheAdz.mdf' , SIZE = 14336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TheAdz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\TheAdz_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TheAdz] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheAdz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheAdz] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TheAdz] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TheAdz] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TheAdz] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TheAdz] SET ARITHABORT OFF
GO
ALTER DATABASE [TheAdz] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TheAdz] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TheAdz] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TheAdz] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TheAdz] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TheAdz] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TheAdz] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TheAdz] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TheAdz] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TheAdz] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TheAdz] SET  DISABLE_BROKER
GO
ALTER DATABASE [TheAdz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TheAdz] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TheAdz] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TheAdz] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TheAdz] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TheAdz] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TheAdz] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TheAdz] SET  READ_WRITE
GO
ALTER DATABASE [TheAdz] SET RECOVERY FULL
GO
ALTER DATABASE [TheAdz] SET  MULTI_USER
GO
ALTER DATABASE [TheAdz] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TheAdz] SET DB_CHAINING OFF
GO
USE [TheAdz]
GO
/****** Object:  Table [dbo].[WebExceptionLogger]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebExceptionLogger](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[last_created] [datetime] NULL,
	[url] [nvarchar](255) NULL,
	[ip_address] [varchar](255) NULL,
	[logger] [ntext] NULL,
	[err_exception] [ntext] NULL,
	[err_message] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promotion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[type] [int] NULL,
	[value] [decimal](18, 0) NULL,
	[flag] [bit] NULL,
	[valid_date] [datetime] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrizeImages]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrizeImages](
	[prize_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[main] [bit] NULL,
 CONSTRAINT [PK_PrizeImages] PRIMARY KEY CLUSTERED 
(
	[prize_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prize]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prize](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[sponsor_name] [nvarchar](255) NULL,
	[price] [decimal](18, 2) NULL,
	[description] [ntext] NULL,
	[terms] [ntext] NULL,
	[detail] [ntext] NULL,
	[expiry_date] [datetime] NULL,
	[publish_date] [datetime] NULL,
	[group_name] [nvarchar](255) NULL,
	[total_revenue] [decimal](18, 0) NULL,
	[cal_total_revenue] [decimal](18, 0) NULL,
	[game_type] [int] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
	[fake_visualmeter] [decimal](18, 0) NULL,
	[freedeal] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PreCode]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreCode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NULL,
	[transaction_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[showAsCategory] [bit] NULL,
	[parent_id] [int] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubscribeEmail]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscribeEmail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NULL,
	[created_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Static]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Static](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KPointAction]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KPointAction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NULL,
	[description] [nvarchar](255) NULL,
	[amount] [decimal](18, 0) NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryItemTypes]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryItemTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryItemTags]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryItemTags](
	[inventoryitem_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
 CONSTRAINT [PK_InventoryItemTags] PRIMARY KEY CLUSTERED 
(
	[inventoryitem_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryItemImages]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryItemImages](
	[inventoryitem_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[main] [bit] NULL,
 CONSTRAINT [PK_InventoryItemImages] PRIMARY KEY CLUSTERED 
(
	[inventoryitem_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [nvarchar](255) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MerchantImages]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MerchantImages](
	[merchant_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[image_url] [nvarchar](255) NULL,
 CONSTRAINT [PK_MerchantImages] PRIMARY KEY CLUSTERED 
(
	[merchant_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logger]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logger](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[last_created] [datetime] NULL,
	[type] [varchar](10) NULL,
	[url] [nvarchar](255) NULL,
	[ip_address] [varchar](255) NULL,
	[logger] [ntext] NULL,
	[api_key] [varchar](255) NULL,
	[req_body] [ntext] NULL,
	[res_body] [ntext] NULL,
	[err_message] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BannerImages]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerImages](
	[banner_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[image_url] [nvarchar](255) NULL,
 CONSTRAINT [PK_BannerImages] PRIMARY KEY CLUSTERED 
(
	[banner_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[link] [nvarchar](255) NULL,
	[last_action] [varchar](1) NULL,
	[seq] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[password] [nvarchar](255) NULL,
	[password_salt] [nvarchar](255) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CallbackMOLLog]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallbackMOLLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[creationdate] [datetime] NULL,
	[nbcb] [nvarchar](255) NULL,
	[tranID] [nvarchar](255) NULL,
	[orderid] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[domain] [nvarchar](255) NULL,
	[amount] [decimal](18, 2) NULL,
	[currency] [nvarchar](255) NULL,
	[appcode] [nvarchar](255) NULL,
	[paydate] [datetime] NULL,
	[skey] [nvarchar](255) NULL,
	[channel] [nvarchar](255) NULL,
	[error_code] [nvarchar](255) NULL,
	[error_desc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BVDImages]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BVDImages](
	[bvd_id] [int] NOT NULL,
	[image_id] [int] NOT NULL,
	[image_url] [nvarchar](255) NULL,
 CONSTRAINT [PK_BVDImages] PRIMARY KEY CLUSTERED 
(
	[bvd_id] ASC,
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BVD]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BVD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[link] [nvarchar](255) NULL,
	[seq] [int] NULL,
	[typee] [int] NULL,
	[last_action] [varchar](1) NULL,
	[created_date] [datetime] NULL,
	[updated_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailSendLog]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSendLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NULL,
	[status] [int] NULL,
	[subject] [nvarchar](255) NULL,
	[creationdate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currencies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[code] [nvarchar](10) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[country_id] [int] NULL,
	[currency_id] [int] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[country_id] [int] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[gender] [int] NULL,
	[dateofbirth] [datetime] NULL,
	[image_id] [int] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_login] [datetime] NULL,
	[last_lockout] [datetime] NULL,
	[password] [nvarchar](255) NULL,
	[password_salt] [nvarchar](255) NULL,
	[userstatus_id] [int] NULL,
	[notif] [bit] NULL,
	[locked_status] [bit] NULL,
	[resetpass] [nvarchar](255) NULL,
	[resetpass_expire] [datetime] NULL,
	[token] [nvarchar](255) NULL,
	[token_salt] [nvarchar](255) NULL,
	[token_expire] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Games]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Games](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prize_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[description] [ntext] NULL,
	[instruction] [ntext] NULL,
	[image_id] [int] NULL,
	[expiry_date] [datetime] NULL,
	[hidden_latitude] [float] NULL,
	[hidden_longitude] [float] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facebook]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facebook](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[facebookid] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[accesstoken] [nvarchar](255) NULL,
	[link_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[promotion_id] [int] NULL,
	[kpoint] [decimal](18, 0) NULL,
	[transaction_date] [datetime] NULL,
	[transaction_status] [int] NULL,
	[process_date] [datetime] NULL,
	[participate_game] [bit] NULL,
	[last_action] [varchar](1) NULL,
	[tranID] [nvarchar](255) NULL,
	[orderid] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[domain] [nvarchar](255) NULL,
	[amount] [decimal](18, 2) NULL,
	[currency] [nvarchar](255) NULL,
	[appcode] [nvarchar](255) NULL,
	[paydate] [datetime] NULL,
	[skey] [nvarchar](255) NULL,
	[channel] [nvarchar](255) NULL,
	[error_code] [nvarchar](255) NULL,
	[error_desc] [nvarchar](255) NULL,
	[process_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Merchants]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Merchants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[address_line1] [nvarchar](255) NULL,
	[address_line2] [nvarchar](255) NULL,
	[city_id] [int] NULL,
	[postcode] [varchar](10) NULL,
	[contact_number] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[website] [varchar](255) NULL,
	[facebook] [nvarchar](255) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[description] [ntext] NULL,
	[status_id] [int] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShippingUser]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShippingUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[gender] [int] NULL,
	[address_line1] [nvarchar](255) NULL,
	[address_line2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[zipcode] [varchar](10) NULL,
	[gift] [bit] NULL,
	[note] [ntext] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KPointTrxH]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KPointTrxH](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[balance] [decimal](18, 0) NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BillingUser]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillingUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[payment_method] [int] NULL,
	[payment_cc] [varchar](255) NULL,
	[payment_ccv] [varchar](3) NULL,
	[payment_expm] [int] NULL,
	[payment_expy] [int] NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[gender] [int] NULL,
	[address_line1] [nvarchar](255) NULL,
	[address_line2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[zipcode] [varchar](10) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Billing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_id] [int] NULL,
	[payment_method] [int] NULL,
	[payment_cc] [varchar](255) NULL,
	[payment_ccv] [varchar](3) NULL,
	[payment_expm] [int] NULL,
	[payment_expy] [int] NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[gender] [int] NULL,
	[address_line1] [nvarchar](255) NULL,
	[address_line2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[zipcode] [varchar](10) NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[short_desc] [nvarchar](255) NULL,
	[price] [decimal](18, 2) NULL,
	[margin] [decimal](18, 2) NULL,
	[general_description] [ntext] NULL,
	[description] [ntext] NULL,
	[merchant_id] [int] NULL,
	[keywords] [nvarchar](255) NULL,
	[inventoryitem_type_id] [int] NULL,
	[discount] [decimal](18, 3) NULL,
	[expiry_date] [datetime] NULL,
	[maximumsales] [decimal](18, 0) NULL,
	[remainsales] [decimal](18, 0) NULL,
	[publish_date] [datetime] NULL,
	[minimumtarget] [decimal](18, 0) NULL,
	[salesvisualmeter] [decimal](18, 0) NULL,
	[prize_id] [int] NULL,
	[terms] [ntext] NULL,
	[created_by] [int] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[flag] [bit] NULL,
	[featured] [bit] NULL,
	[featured_seq] [int] NULL,
	[featured_text] [ntext] NULL,
	[email_flag] [bit] NULL,
	[city_id] [int] NULL,
	[last_action] [varchar](1) NULL,
	[draft] [bit] NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameTransactions]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameTransactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[transaction_id] [int] NULL,
	[game_id] [int] NULL,
	[hidden_latitude] [float] NULL,
	[hidden_longitude] [float] NULL,
	[timeused] [int] NULL,
	[transaction_date] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_id] [int] NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[phone] [varchar](255) NULL,
	[gender] [int] NULL,
	[address_line1] [nvarchar](255) NULL,
	[address_line2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[zipcode] [varchar](10) NULL,
	[gift] [bit] NULL,
	[note] [ntext] NULL,
	[last_action] [varchar](1) NULL,
	[rcemail] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WishList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[inventoryitem_id] [int] NULL,
	[last_created] [datetime] NULL,
	[last_updated] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Winner]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Winner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prize_id] [int] NULL,
	[user_id] [int] NULL,
	[transaction_id] [int] NULL,
	[inventoryitem_id] [int] NULL,
	[create_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variance]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Variance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [decimal](18, 2) NULL,
	[discount] [decimal](18, 3) NULL,
	[inventoryitem_id] [int] NULL,
	[margin] [decimal](18, 2) NULL,
	[available_limit] [int] NULL,
	[sku] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FlashDeal]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FlashDeal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[inventoryitem_id] [int] NULL,
	[discount] [decimal](18, 2) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[flag] [bit] NULL,
	[last_action] [varchar](1) NULL,
	[email_flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionFreeDeals]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionFreeDeals](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[inventoryitem_id] [int] NULL,
	[flashdeal_id] [int] NULL,
	[variance] [nvarchar](255) NULL,
	[qty] [int] NULL,
	[discount] [decimal](18, 2) NULL,
	[price] [decimal](18, 2) NULL,
	[transaction_date] [datetime] NULL,
	[process_status] [bit] NULL,
	[process_date] [datetime] NULL,
	[last_action] [varchar](1) NULL,
 CONSTRAINT [PK_TransactionFreeDeals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_id] [int] NULL,
	[inventoryitem_id] [int] NULL,
	[flashdeal_id] [int] NULL,
	[variance] [nvarchar](255) NULL,
	[qty] [int] NULL,
	[discount] [decimal](18, 2) NULL,
	[price] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Review](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[inventoryitem_id] [int] NULL,
	[user_id] [int] NULL,
	[rating] [int] NULL,
	[message] [ntext] NULL,
	[review_date] [datetime] NULL,
	[last_action] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KPointTrxD]    Script Date: 02/26/2015 09:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KPointTrxD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kpointh_id] [int] NULL,
	[amount] [decimal](18, 0) NULL,
	[action_type] [int] NULL,
	[from_user] [int] NULL,
	[to_user] [int] NULL,
	[remarks] [ntext] NULL,
	[inventoryitem_id] [int] NULL,
	[transaction_id] [int] NULL,
	[last_created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Tags_Tags]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_Tags] FOREIGN KEY([parent_id])
REFERENCES [dbo].[Tags] ([id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_Tags]
GO
/****** Object:  ForeignKey [FK_Cities_Countries]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[Countries] ([id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
/****** Object:  ForeignKey [FK_Cities_Currencies]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Currencies] FOREIGN KEY([currency_id])
REFERENCES [dbo].[Currencies] ([id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Currencies]
GO
/****** Object:  ForeignKey [FK_Cities_States]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[States]  WITH CHECK ADD  CONSTRAINT [FK_Cities_States] FOREIGN KEY([country_id])
REFERENCES [dbo].[Countries] ([id])
GO
ALTER TABLE [dbo].[States] CHECK CONSTRAINT [FK_Cities_States]
GO
/****** Object:  ForeignKey [FK_Users_Images]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Images] FOREIGN KEY([image_id])
REFERENCES [dbo].[Images] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Images]
GO
/****** Object:  ForeignKey [FK_Users_UserStatus]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserStatus] FOREIGN KEY([userstatus_id])
REFERENCES [dbo].[UserStatus] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserStatus]
GO
/****** Object:  ForeignKey [FK_Games_Prize]    Script Date: 02/26/2015 09:08:28 *****
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Prize] FOREIGN KEY([prize_id])
REFERENCES [dbo].[Prize] ([id])
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Prize]
GO*/
/****** Object:  ForeignKey [FK_Facebook_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Facebook]  WITH CHECK ADD  CONSTRAINT [FK_Facebook_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Facebook] CHECK CONSTRAINT [FK_Facebook_Users]
GO
/****** Object:  ForeignKey [FK_Transactions_Promotion]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Promotion] FOREIGN KEY([promotion_id])
REFERENCES [dbo].[Promotion] ([id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Promotion]
GO
/****** Object:  ForeignKey [FK_Transactions_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Users]
GO
/****** Object:  ForeignKey [FK_Merchants_Cities]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Merchants]  WITH CHECK ADD  CONSTRAINT [FK_Merchants_Cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[Cities] ([id])
GO
ALTER TABLE [dbo].[Merchants] CHECK CONSTRAINT [FK_Merchants_Cities]
GO
/****** Object:  ForeignKey [FK_Merchants_Status]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Merchants]  WITH CHECK ADD  CONSTRAINT [FK_Merchants_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Merchants] CHECK CONSTRAINT [FK_Merchants_Status]
GO
/****** Object:  ForeignKey [FK_ShippingUser_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[ShippingUser]  WITH CHECK ADD  CONSTRAINT [FK_ShippingUser_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[ShippingUser] CHECK CONSTRAINT [FK_ShippingUser_Users]
GO
/****** Object:  ForeignKey [FK_KPointTrxH_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[KPointTrxH]  WITH CHECK ADD  CONSTRAINT [FK_KPointTrxH_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[KPointTrxH] CHECK CONSTRAINT [FK_KPointTrxH_Users]
GO
/****** Object:  ForeignKey [FK_BillingUser_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[BillingUser]  WITH CHECK ADD  CONSTRAINT [FK_BillingUser_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[BillingUser] CHECK CONSTRAINT [FK_BillingUser_Users]
GO
/****** Object:  ForeignKey [FK_Billing_Transactions]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK_Billing_Transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[Transactions] ([id])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK_Billing_Transactions]
GO
/****** Object:  ForeignKey [FK_InventoryItems_Admins]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[InventoryItems]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItems_Admins] FOREIGN KEY([created_by])
REFERENCES [dbo].[Admins] ([id])
GO
ALTER TABLE [dbo].[InventoryItems] CHECK CONSTRAINT [FK_InventoryItems_Admins]
GO
/****** Object:  ForeignKey [FK_InventoryItems_Cities]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[InventoryItems]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItems_Cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[Cities] ([id])
GO
ALTER TABLE [dbo].[InventoryItems] CHECK CONSTRAINT [FK_InventoryItems_Cities]
GO
/****** Object:  ForeignKey [FK_InventoryItems_InventoryItemTypes]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[InventoryItems]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItems_InventoryItemTypes] FOREIGN KEY([inventoryitem_type_id])
REFERENCES [dbo].[InventoryItemTypes] ([id])
GO
ALTER TABLE [dbo].[InventoryItems] CHECK CONSTRAINT [FK_InventoryItems_InventoryItemTypes]
GO
/****** Object:  ForeignKey [FK_InventoryItems_Merchants]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[InventoryItems]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItems_Merchants] FOREIGN KEY([merchant_id])
REFERENCES [dbo].[Merchants] ([id])
GO
ALTER TABLE [dbo].[InventoryItems] CHECK CONSTRAINT [FK_InventoryItems_Merchants]
GO
/****** Object:  ForeignKey [FK_InventoryItems_Prize]    Script Date: 02/26/2015 09:08:28 *****
ALTER TABLE [dbo].[InventoryItems]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItems_Prize] FOREIGN KEY([prize_id])
REFERENCES [dbo].[Prize] ([id])
GO
ALTER TABLE [dbo].[InventoryItems] CHECK CONSTRAINT [FK_InventoryItems_Prize]
GO*/
/****** Object:  ForeignKey [FK_GameTransactions_Games]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[GameTransactions]  WITH CHECK ADD  CONSTRAINT [FK_GameTransactions_Games] FOREIGN KEY([game_id])
REFERENCES [dbo].[Games] ([id])
GO
ALTER TABLE [dbo].[GameTransactions] CHECK CONSTRAINT [FK_GameTransactions_Games]
GO
/****** Object:  ForeignKey [FK_GameTransactions_Transactions]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[GameTransactions]  WITH CHECK ADD  CONSTRAINT [FK_GameTransactions_Transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[Transactions] ([id])
GO
ALTER TABLE [dbo].[GameTransactions] CHECK CONSTRAINT [FK_GameTransactions_Transactions]
GO
/****** Object:  ForeignKey [FK_GameTransactions_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[GameTransactions]  WITH CHECK ADD  CONSTRAINT [FK_GameTransactions_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[GameTransactions] CHECK CONSTRAINT [FK_GameTransactions_Users]
GO
/****** Object:  ForeignKey [FK_Shipping_Transactions]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Shipping]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[Transactions] ([id])
GO
ALTER TABLE [dbo].[Shipping] CHECK CONSTRAINT [FK_Shipping_Transactions]
GO
/****** Object:  ForeignKey [FK_WishList_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishList_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishList_InventoryItems]
GO
/****** Object:  ForeignKey [FK_WishListt_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[WishList]  WITH CHECK ADD  CONSTRAINT [FK_WishListt_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[WishList] CHECK CONSTRAINT [FK_WishListt_Users]
GO
/****** Object:  ForeignKey [FK_Winner_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Winner]  WITH CHECK ADD  CONSTRAINT [FK_Winner_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[Winner] CHECK CONSTRAINT [FK_Winner_InventoryItems]
GO
/****** Object:  ForeignKey [FK_Winner_Prize]    Script Date: 02/26/2015 09:08:28 *****
ALTER TABLE [dbo].[Winner]  WITH CHECK ADD  CONSTRAINT [FK_Winner_Prize] FOREIGN KEY([prize_id])
REFERENCES [dbo].[Prize] ([id])
GO
ALTER TABLE [dbo].[Winner] CHECK CONSTRAINT [FK_Winner_Prize]
GO*/
/****** Object:  ForeignKey [FK_Winner_Transactions]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Winner]  WITH CHECK ADD  CONSTRAINT [FK_Winner_Transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[Transactions] ([id])
GO
ALTER TABLE [dbo].[Winner] CHECK CONSTRAINT [FK_Winner_Transactions]
GO
/****** Object:  ForeignKey [FK_Winner_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Winner]  WITH CHECK ADD  CONSTRAINT [FK_Winner_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Winner] CHECK CONSTRAINT [FK_Winner_Users]
GO
/****** Object:  ForeignKey [FK_Variance_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Variance]  WITH CHECK ADD  CONSTRAINT [FK_Variance_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[Variance] CHECK CONSTRAINT [FK_Variance_InventoryItems]
GO
/****** Object:  ForeignKey [FK_FlashDeal_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[FlashDeal]  WITH CHECK ADD  CONSTRAINT [FK_FlashDeal_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[FlashDeal] CHECK CONSTRAINT [FK_FlashDeal_InventoryItems]
GO
/****** Object:  ForeignKey [FK_TransactionFreeDeals_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[TransactionFreeDeals]  WITH CHECK ADD  CONSTRAINT [FK_TransactionFreeDeals_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[TransactionFreeDeals] CHECK CONSTRAINT [FK_TransactionFreeDeals_InventoryItems]
GO
/****** Object:  ForeignKey [FK_TransactionFreeDeals_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[TransactionFreeDeals]  WITH CHECK ADD  CONSTRAINT [FK_TransactionFreeDeals_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[TransactionFreeDeals] CHECK CONSTRAINT [FK_TransactionFreeDeals_Users]
GO
/****** Object:  ForeignKey [FK_TransactionDetails_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[TransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetails_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[TransactionDetails] CHECK CONSTRAINT [FK_TransactionDetails_InventoryItems]
GO
/****** Object:  ForeignKey [FK_TransactionDetails_Transactions]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[TransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetails_Transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[Transactions] ([id])
GO
ALTER TABLE [dbo].[TransactionDetails] CHECK CONSTRAINT [FK_TransactionDetails_Transactions]
GO
/****** Object:  ForeignKey [FK_Review_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_InventoryItems]
GO
/****** Object:  ForeignKey [FK_Review_Users]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Users]
GO
/****** Object:  ForeignKey [FK_KPointTrxD_InventoryItems]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[KPointTrxD]  WITH CHECK ADD  CONSTRAINT [FK_KPointTrxD_InventoryItems] FOREIGN KEY([inventoryitem_id])
REFERENCES [dbo].[InventoryItems] ([id])
GO
ALTER TABLE [dbo].[KPointTrxD] CHECK CONSTRAINT [FK_KPointTrxD_InventoryItems]
GO
/****** Object:  ForeignKey [FK_KPointTrxD_KPointTrxH]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[KPointTrxD]  WITH CHECK ADD  CONSTRAINT [FK_KPointTrxD_KPointTrxH] FOREIGN KEY([kpointh_id])
REFERENCES [dbo].[KPointTrxH] ([id])
GO
ALTER TABLE [dbo].[KPointTrxD] CHECK CONSTRAINT [FK_KPointTrxD_KPointTrxH]
GO
/****** Object:  ForeignKey [FK_KPointTrxD_Transactions]    Script Date: 02/26/2015 09:08:28 ******/
ALTER TABLE [dbo].[KPointTrxD]  WITH CHECK ADD  CONSTRAINT [FK_KPointTrxD_Transactions] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[Transactions] ([id])
GO
ALTER TABLE [dbo].[KPointTrxD] CHECK CONSTRAINT [FK_KPointTrxD_Transactions]
GO
