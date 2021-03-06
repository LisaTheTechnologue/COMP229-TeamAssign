USE [master]
GO
/****** Object:  Database [Comp229_Project]    Script Date: 1/5/2018 11:48:42 PM ******/
CREATE DATABASE [Comp229_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Comp229_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Comp229_Project.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Comp229_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Comp229_Project_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Comp229_Project] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Comp229_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Comp229_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Comp229_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Comp229_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Comp229_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Comp229_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Comp229_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Comp229_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Comp229_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Comp229_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Comp229_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Comp229_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Comp229_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Comp229_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Comp229_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Comp229_Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Comp229_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Comp229_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Comp229_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Comp229_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Comp229_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Comp229_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Comp229_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Comp229_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Comp229_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Comp229_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Comp229_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Comp229_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Comp229_Project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Comp229_Project] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Comp229_Project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/5/2018 11:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[USERID] [int] NOT NULL,
	[FIRSTNAME] [varchar](25) NOT NULL,
	[LASTNAME] [varchar](25) NULL,
	[USERNAME] [varchar](25) NULL,
	[PASSWORD] [varchar](25) NULL,
	[EMAIL] [varchar](25) NULL,
	[RIGHT] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 1/5/2018 11:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Book](
	[ISBN] [int] NOT NULL,
	[BOOKNAME] [varchar](100) NOT NULL,
	[AUTHORNAME] [varchar](90) NULL,
	[PUBLISHER] [varchar](50) NULL,
	[PRICE] [float] NOT NULL,
	[RATING] [float] NULL,
	[PLOT] [text] NULL,
	[STATUS] [nvarchar](90) NULL,
	[IMGURL] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 1/5/2018 11:48:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[COMMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCOUNT_ID] [int] NOT NULL,
	[ISBN] [int] NOT NULL,
	[DESC] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[COMMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([USERID], [FIRSTNAME], [LASTNAME], [USERNAME], [PASSWORD], [EMAIL], [RIGHT]) VALUES (101, N'Helen', N'Nguyen', N'helennguyen', N'12345', N'helen@gmail.com', N'member')
INSERT [dbo].[Account] ([USERID], [FIRSTNAME], [LASTNAME], [USERNAME], [PASSWORD], [EMAIL], [RIGHT]) VALUES (102, N'Elain', N'Lee', N'elain', N'67890', N'elain@gmail.com', N'member')
INSERT [dbo].[Account] ([USERID], [FIRSTNAME], [LASTNAME], [USERNAME], [PASSWORD], [EMAIL], [RIGHT]) VALUES (103, N'Macy', N'Queen', N'macy', N'68891', N'macy@gmail.com', N'member')
INSERT [dbo].[Account] ([USERID], [FIRSTNAME], [LASTNAME], [USERNAME], [PASSWORD], [EMAIL], [RIGHT]) VALUES (104, N'Nhuy', N'Lin', N'nhuy', N'64390', N'nhuy@gmail.com', N'member')
INSERT [dbo].[Account] ([USERID], [FIRSTNAME], [LASTNAME], [USERNAME], [PASSWORD], [EMAIL], [RIGHT]) VALUES (105, N'Jolisa', N'Lee', N'jolisa', N'62290', N'jolisa@gmail.com', N'member')
INSERT [dbo].[Account] ([USERID], [FIRSTNAME], [LASTNAME], [USERNAME], [PASSWORD], [EMAIL], [RIGHT]) VALUES (106, N'Bonnie', N'Huang', N'bonnie', N'67333', N'bonnie@gmail.com', N'member')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1001, N'Build Your Own ASP.NET 4 Websit using C# & VB', N'CRISTIAN DARIE,WYATT BARNNETT,TIM POSEY', N'SitePoint Pty.Ltd', 50, 4.1, N'ASP.NET WebForms simplifies developers transition from Windows application development to Web development by offering the ability to build pages composed of controls similar to a Windows user interface', N'owned', N'https://i.imgur.com/Ga8AMiN.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1002, N'Java - How to program', N'PAUL DEITEL,HARVEY DEITEL', N'DEITEL, PEARSON', 15, 4.5, N'Information about programming language', N'owned', N'https://i.imgur.com/wiIoN4S.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1003, N'JAVACRIPT', N'SASHA VODNIKT, DON GOSSELIN', N'CENGAGE LEARNING', 15, 4.3, N'Builing client-side interface using Javacript language', N'owned', N'https://i.imgur.com/m71zRCB.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1004, N'ORACLE 11G:PL/SQL PROGRAMMING', N'JOAN CASTELL', N'CENGAGE LEARING', 10, 4.1, N'PL/SQL and application programming ', N'loaned', N'https://i.imgur.com/JMVhqcL.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1005, N'ORACLE 12C:SQL', N'JOAN CASTELL', N'CENGAGE LEARING', 10, 4.1, N'Instruction about Database', N'loaned', N'https://i.imgur.com/pakl2ze.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1006, N'Cracking the Coding Interview', N'Gayle Laakmann McDowell', N'CareerCup', 10, 4.7, N'Helping you through this process, teaching you what you need to know and enabling you to perform at your very best', N'wanted', N'https://i.imgur.com/ii9zyIf.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1007, N'C# 4.0 in a Nutshell', N'JOAN CASTELL', N'O''Reilly Media', 10, 4.1, N'Get up to speed on C# language basics', N'wanted', N'https://i.imgur.com/yQ9zchL.jpg')
INSERT [dbo].[Book] ([ISBN], [BOOKNAME], [AUTHORNAME], [PUBLISHER], [PRICE], [RATING], [PLOT], [STATUS], [IMGURL]) VALUES (1008, N'System Analysis and Design', N'SATEGINGER', N'CENGAGE LEARING', 10, 4.1, N'Software Engineering Methology', N'loaned', N'https://i.imgur.com/oW4B2sL.jpg')
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (1, 101, 1001, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (2, 101, 1002, N'good for reference')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (3, 101, 1001, N'not bad')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (4, 102, 1001, N'like to read this kind of book')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (5, 103, 1004, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (6, 104, 1006, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (7, 101, 1001, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (8, 105, 1004, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (9, 102, 1003, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (10, 104, 1004, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (11, 102, 1002, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (12, 104, 1003, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (13, 104, 1003, N'good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (14, 105, 1005, N'not good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (15, 101, 1007, N'not good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (16, 102, 1006, N'not good book to read')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (18, 103, 1001, N'test')
INSERT [dbo].[Comment] ([COMMENT_ID], [ACCOUNT_ID], [ISBN], [DESC]) VALUES (19, 103, 1007, N'test')
SET IDENTITY_INSERT [dbo].[Comment] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_COMMENT_ACCOUNT] FOREIGN KEY([ACCOUNT_ID])
REFERENCES [dbo].[Account] ([USERID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_COMMENT_ACCOUNT]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_COMMENT_BOOK] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Book] ([ISBN])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_COMMENT_BOOK]
GO
USE [master]
GO
ALTER DATABASE [Comp229_Project] SET  READ_WRITE 
GO
