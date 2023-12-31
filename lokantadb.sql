USE [master]
GO
/****** Object:  Database [LokantaDb]    Script Date: 22.12.2023 10:24:02 ******/
CREATE DATABASE [LokantaDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LokantaDb', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LokantaDb.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LokantaDb_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LokantaDb_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LokantaDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LokantaDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LokantaDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LokantaDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LokantaDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LokantaDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LokantaDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [LokantaDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LokantaDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LokantaDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LokantaDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LokantaDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LokantaDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LokantaDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LokantaDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LokantaDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LokantaDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LokantaDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LokantaDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LokantaDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LokantaDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LokantaDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LokantaDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [LokantaDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LokantaDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LokantaDb] SET  MULTI_USER 
GO
ALTER DATABASE [LokantaDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LokantaDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LokantaDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LokantaDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LokantaDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LokantaDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22.12.2023 10:24:02 ******/
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
/****** Object:  Table [dbo].[Adisyons]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adisyons](
	[Adisyon_Id] [int] IDENTITY(1,1) NOT NULL,
	[Siparis_Id] [int] NOT NULL,
	[Servis_Id] [int] NULL,
	[Adet] [int] NULL,
 CONSTRAINT [PK_Adisyons] PRIMARY KEY CLUSTERED 
(
	[Adisyon_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[Kategori_Id] [int] IDENTITY(1,1) NOT NULL,
	[Kategori_Ad] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategori_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Masalars]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Masalars](
	[Masa_Id] [int] IDENTITY(1,1) NOT NULL,
	[Masa_Ad] [nvarchar](max) NOT NULL,
	[Masa_Durum] [bit] NOT NULL,
 CONSTRAINT [PK_Masalars] PRIMARY KEY CLUSTERED 
(
	[Masa_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personellers]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personellers](
	[Personel_Id] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NOT NULL,
	[Masa_Id] [int] NOT NULL,
	[Rol_Id] [int] NOT NULL,
 CONSTRAINT [PK_Personellers] PRIMARY KEY CLUSTERED 
(
	[Personel_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rollers]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rollers](
	[Rol_Id] [int] IDENTITY(1,1) NOT NULL,
	[Rol_Ad] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Rollers] PRIMARY KEY CLUSTERED 
(
	[Rol_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Servislers]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servislers](
	[Servis_Id] [int] IDENTITY(1,1) NOT NULL,
	[Servis_Ad] [nvarchar](max) NULL,
	[Kategori_Id] [int] NOT NULL,
	[Fiyat] [float] NULL,
	[Servis_Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Servislers] PRIMARY KEY CLUSTERED 
(
	[Servis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siparislers]    Script Date: 22.12.2023 10:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparislers](
	[Siparis_Id] [int] IDENTITY(1,1) NOT NULL,
	[Masa_Id] [int] NOT NULL,
	[Acilis] [datetime2](7) NOT NULL,
	[Kapanis] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Siparislers] PRIMARY KEY CLUSTERED 
(
	[Siparis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231216200410_mig1', N'6.0.24')
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([Kategori_Id], [Kategori_Ad]) VALUES (1, N'Tatlılar')
INSERT [dbo].[Kategoriler] ([Kategori_Id], [Kategori_Ad]) VALUES (2, N'Tuzlular')
INSERT [dbo].[Kategoriler] ([Kategori_Id], [Kategori_Ad]) VALUES (3, N'Çorbalar22')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Masalars] ON 

INSERT [dbo].[Masalars] ([Masa_Id], [Masa_Ad], [Masa_Durum]) VALUES (2, N'Salon2 ', 1)
INSERT [dbo].[Masalars] ([Masa_Id], [Masa_Ad], [Masa_Durum]) VALUES (4, N'Salon44', 1)
INSERT [dbo].[Masalars] ([Masa_Id], [Masa_Ad], [Masa_Durum]) VALUES (5, N'Salon5', 0)
INSERT [dbo].[Masalars] ([Masa_Id], [Masa_Ad], [Masa_Durum]) VALUES (7, N'Balkon1', 0)
SET IDENTITY_INSERT [dbo].[Masalars] OFF
SET IDENTITY_INSERT [dbo].[Rollers] ON 

INSERT [dbo].[Rollers] ([Rol_Id], [Rol_Ad]) VALUES (1, N'Garson1')
INSERT [dbo].[Rollers] ([Rol_Id], [Rol_Ad]) VALUES (2, N'Komi2')
SET IDENTITY_INSERT [dbo].[Rollers] OFF
/****** Object:  Index [IX_Adisyons_Servis_Id]    Script Date: 22.12.2023 10:24:02 ******/
CREATE NONCLUSTERED INDEX [IX_Adisyons_Servis_Id] ON [dbo].[Adisyons]
(
	[Servis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Adisyons_Siparis_Id]    Script Date: 22.12.2023 10:24:02 ******/
CREATE NONCLUSTERED INDEX [IX_Adisyons_Siparis_Id] ON [dbo].[Adisyons]
(
	[Siparis_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personellers_Masa_Id]    Script Date: 22.12.2023 10:24:02 ******/
CREATE NONCLUSTERED INDEX [IX_Personellers_Masa_Id] ON [dbo].[Personellers]
(
	[Masa_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personellers_Rol_Id]    Script Date: 22.12.2023 10:24:02 ******/
CREATE NONCLUSTERED INDEX [IX_Personellers_Rol_Id] ON [dbo].[Personellers]
(
	[Rol_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Servislers_Kategori_Id]    Script Date: 22.12.2023 10:24:02 ******/
CREATE NONCLUSTERED INDEX [IX_Servislers_Kategori_Id] ON [dbo].[Servislers]
(
	[Kategori_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Siparislers_Masa_Id]    Script Date: 22.12.2023 10:24:02 ******/
CREATE NONCLUSTERED INDEX [IX_Siparislers_Masa_Id] ON [dbo].[Siparislers]
(
	[Masa_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adisyons]  WITH CHECK ADD  CONSTRAINT [FK_Adisyons_Servislers_Servis_Id] FOREIGN KEY([Servis_Id])
REFERENCES [dbo].[Servislers] ([Servis_Id])
GO
ALTER TABLE [dbo].[Adisyons] CHECK CONSTRAINT [FK_Adisyons_Servislers_Servis_Id]
GO
ALTER TABLE [dbo].[Adisyons]  WITH CHECK ADD  CONSTRAINT [FK_Adisyons_Siparislers_Siparis_Id] FOREIGN KEY([Siparis_Id])
REFERENCES [dbo].[Siparislers] ([Siparis_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Adisyons] CHECK CONSTRAINT [FK_Adisyons_Siparislers_Siparis_Id]
GO
ALTER TABLE [dbo].[Personellers]  WITH CHECK ADD  CONSTRAINT [FK_Personellers_Masalars_Masa_Id] FOREIGN KEY([Masa_Id])
REFERENCES [dbo].[Masalars] ([Masa_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personellers] CHECK CONSTRAINT [FK_Personellers_Masalars_Masa_Id]
GO
ALTER TABLE [dbo].[Personellers]  WITH CHECK ADD  CONSTRAINT [FK_Personellers_Rollers_Rol_Id] FOREIGN KEY([Rol_Id])
REFERENCES [dbo].[Rollers] ([Rol_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personellers] CHECK CONSTRAINT [FK_Personellers_Rollers_Rol_Id]
GO
ALTER TABLE [dbo].[Servislers]  WITH CHECK ADD  CONSTRAINT [FK_Servislers_Kategoriler_Kategori_Id] FOREIGN KEY([Kategori_Id])
REFERENCES [dbo].[Kategoriler] ([Kategori_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Servislers] CHECK CONSTRAINT [FK_Servislers_Kategoriler_Kategori_Id]
GO
ALTER TABLE [dbo].[Siparislers]  WITH CHECK ADD  CONSTRAINT [FK_Siparislers_Masalars_Masa_Id] FOREIGN KEY([Masa_Id])
REFERENCES [dbo].[Masalars] ([Masa_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Siparislers] CHECK CONSTRAINT [FK_Siparislers_Masalars_Masa_Id]
GO
USE [master]
GO
ALTER DATABASE [LokantaDb] SET  READ_WRITE 
GO
