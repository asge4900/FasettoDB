USE [master]
GO
/****** Object:  Database [Test]    Script Date: 20-12-2019 20:37:39 ******/
CREATE DATABASE [Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test', FILENAME = N'C:\Users\asger\Test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Test_log', FILENAME = N'C:\Users\asger\Test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Test] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test] SET  MULTI_USER 
GO
ALTER DATABASE [Test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Test] SET QUERY_STORE = OFF
GO
USE [Test]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Test]
GO
/****** Object:  Table [dbo].[PersonName]    Script Date: 20-12-2019 20:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_PersonName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PersonName] ON 

INSERT [dbo].[PersonName] ([Id], [Name]) VALUES (1, N'Sigurd    ')
INSERT [dbo].[PersonName] ([Id], [Name]) VALUES (2, N'Knud      ')
SET IDENTITY_INSERT [dbo].[PersonName] OFF
USE [master]
GO
ALTER DATABASE [Test] SET  READ_WRITE 
GO
