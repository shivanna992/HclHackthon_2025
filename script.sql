USE [master]
GO
/****** Object:  Database [Hackthon_2025]    Script Date: 30-05-2025 18:05:34 ******/
CREATE DATABASE [Hackthon_2025]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hackthon_2025', FILENAME = N'C:\Users\User_2897\Hackthon_2025.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hackthon_2025_log', FILENAME = N'C:\Users\User_2897\Hackthon_2025_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Hackthon_2025] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hackthon_2025].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hackthon_2025] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hackthon_2025] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hackthon_2025] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hackthon_2025] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hackthon_2025] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hackthon_2025] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Hackthon_2025] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hackthon_2025] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hackthon_2025] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hackthon_2025] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hackthon_2025] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hackthon_2025] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hackthon_2025] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hackthon_2025] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hackthon_2025] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hackthon_2025] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hackthon_2025] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hackthon_2025] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hackthon_2025] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hackthon_2025] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hackthon_2025] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hackthon_2025] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hackthon_2025] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hackthon_2025] SET  MULTI_USER 
GO
ALTER DATABASE [Hackthon_2025] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hackthon_2025] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hackthon_2025] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hackthon_2025] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hackthon_2025] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hackthon_2025] SET QUERY_STORE = OFF
GO
USE [Hackthon_2025]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 30-05-2025 18:05:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[stID] [int] IDENTITY(1,1) NOT NULL,
	[shiftType] [varchar](200) NULL,
	[Department] [varchar](100) NULL,
	[attendanceType] [varchar](20) NULL,
	[shift_Starts] [time](7) NULL,
	[shift_End] [time](7) NULL,
	[status] [varchar](20) NULL,
	[createdBy] [varchar](100) NULL,
	[createdDate] [date] NULL,
	[modifiedBy] [varchar](100) NULL,
	[modifiedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[stID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 30-05-2025 18:05:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[deptID] [int] IDENTITY(1,1) NOT NULL,
	[deptName] [varchar](200) NULL,
	[status] [varchar](20) NULL,
	[createdBy] [varchar](100) NULL,
	[createdDate] [date] NULL,
	[modifiedBy] [varchar](100) NULL,
	[modifiedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[deptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 30-05-2025 18:05:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] NOT NULL,
	[RoleName] [varchar](100) NULL,
	[status] [varchar](20) NULL,
	[createdBy] [varchar](100) NULL,
	[createdDate] [date] NULL,
	[modifiedBy] [varchar](100) NULL,
	[modifiedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scheduler]    Script Date: 30-05-2025 18:05:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduler](
	[ID] [int] NOT NULL,
	[Shiftname] [varchar](100) NULL,
	[staffID] [int] NULL,
	[contactNumber] [varchar](15) NULL,
	[status] [varchar](20) NULL,
	[createdBy] [varchar](100) NULL,
	[createdDate] [date] NULL,
	[modifiedBy] [varchar](100) NULL,
	[modifiedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shift]    Script Date: 30-05-2025 18:05:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[ShiftID] [int] NOT NULL,
	[shiftType] [varchar](200) NULL,
	[status] [varchar](20) NULL,
	[createdBy] [varchar](100) NULL,
	[createdDate] [date] NULL,
	[modifiedBy] [varchar](100) NULL,
	[modifiedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShiftID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 30-05-2025 18:05:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[roleID] [int] NULL,
	[status] [varchar](20) NULL,
	[createdBy] [varchar](100) NULL,
	[createdDate] [date] NULL,
	[modifiedBy] [varchar](100) NULL,
	[modifiedDate] [date] NULL,
	[deptID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[staffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Scheduler]  WITH CHECK ADD FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([staffID])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
USE [master]
GO
ALTER DATABASE [Hackthon_2025] SET  READ_WRITE 
GO
