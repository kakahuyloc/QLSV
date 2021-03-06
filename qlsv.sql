USE [master]
GO
/****** Object:  Database [QuanLyHocSinh]    Script Date: 02/11/2020 22:38:58 ******/
CREATE DATABASE [QuanLyHocSinh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLySinhVien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.LOCSQL\MSSQL\DATA\QuanLySinhVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLySinhVien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.LOCSQL\MSSQL\DATA\QuanLySinhVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLyHocSinh] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyHocSinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyHocSinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyHocSinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyHocSinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyHocSinh] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyHocSinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyHocSinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyHocSinh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyHocSinh] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyHocSinh', N'ON'
GO
ALTER DATABASE [QuanLyHocSinh] SET QUERY_STORE = OFF
GO
USE [QuanLyHocSinh]
GO
/****** Object:  Table [dbo].[chucvu]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chucvu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenchucvu] [nvarchar](50) NULL,
 CONSTRAINT [PK_chucvu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giaovien]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaovien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hovaten] [varchar](50) NULL,
	[msgv] [varchar](50) NULL,
	[gioitinh] [bit] NULL,
	[ngaysinh] [date] NULL,
	[noisinh] [varchar](200) NULL,
	[dantoc] [varchar](50) NULL,
	[diachi] [varchar](200) NULL,
	[id_taikhoan] [int] NOT NULL,
 CONSTRAINT [PK_giaovien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hocba]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hocba](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_hocsinh] [int] NOT NULL,
	[id_lophoc] [int] NOT NULL,
 CONSTRAINT [PK_hocba] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hocsinh]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hocsinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hovaten] [varchar](50) NULL,
	[mshs] [varchar](50) NULL,
	[gioitinh] [bit] NULL,
	[ngaysinh] [date] NULL,
	[noisinh] [varchar](200) NULL,
	[dantoc] [varchar](50) NULL,
	[diachi] [varchar](200) NULL,
	[id_taikhoan] [int] NULL,
 CONSTRAINT [PK_hocsinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lophoc]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lophoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenlop] [varchar](50) NULL,
	[capbac] [int] NULL,
	[namhoc] [int] NULL,
	[id_gvcn] [int] NULL,
 CONSTRAINT [PK_lophoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mohoc_giaovien]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mohoc_giaovien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_giaovien] [int] NOT NULL,
	[id_monhoc] [int] NOT NULL,
 CONSTRAINT [PK_mohoc_giaovien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monhoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenmonhoc] [varchar](50) NULL,
 CONSTRAINT [PK_monhoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ngaychucvu]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ngaychucvu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_giaovien] [int] NULL,
	[id_chucvu] [int] NULL,
	[ngaynhamchuc] [date] NULL,
 CONSTRAINT [PK_ngaychucvu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](25) NULL,
	[matkhau] [nvarchar](50) NULL,
	[trangthai] [bit] NULL,
	[email] [nvarchar](100) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[loaitaikhoan] [int] NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[giaovien]  WITH CHECK ADD  CONSTRAINT [FK_giaovien_taikhoan] FOREIGN KEY([id_taikhoan])
REFERENCES [dbo].[taikhoan] ([id])
GO
ALTER TABLE [dbo].[giaovien] CHECK CONSTRAINT [FK_giaovien_taikhoan]
GO
ALTER TABLE [dbo].[hocba]  WITH CHECK ADD  CONSTRAINT [FK_hocba_hocsinh] FOREIGN KEY([id_hocsinh])
REFERENCES [dbo].[hocsinh] ([id])
GO
ALTER TABLE [dbo].[hocba] CHECK CONSTRAINT [FK_hocba_hocsinh]
GO
ALTER TABLE [dbo].[hocba]  WITH CHECK ADD  CONSTRAINT [FK_hocba_lophoc] FOREIGN KEY([id_lophoc])
REFERENCES [dbo].[lophoc] ([id])
GO
ALTER TABLE [dbo].[hocba] CHECK CONSTRAINT [FK_hocba_lophoc]
GO
ALTER TABLE [dbo].[hocsinh]  WITH CHECK ADD  CONSTRAINT [FK_hocsinh_taikhoan] FOREIGN KEY([id_taikhoan])
REFERENCES [dbo].[taikhoan] ([id])
GO
ALTER TABLE [dbo].[hocsinh] CHECK CONSTRAINT [FK_hocsinh_taikhoan]
GO
ALTER TABLE [dbo].[lophoc]  WITH CHECK ADD  CONSTRAINT [FK_lophoc_giaovien] FOREIGN KEY([id_gvcn])
REFERENCES [dbo].[giaovien] ([id])
GO
ALTER TABLE [dbo].[lophoc] CHECK CONSTRAINT [FK_lophoc_giaovien]
GO
ALTER TABLE [dbo].[mohoc_giaovien]  WITH CHECK ADD  CONSTRAINT [FK_mohoc_giaovien_giaovien] FOREIGN KEY([id_giaovien])
REFERENCES [dbo].[giaovien] ([id])
GO
ALTER TABLE [dbo].[mohoc_giaovien] CHECK CONSTRAINT [FK_mohoc_giaovien_giaovien]
GO
ALTER TABLE [dbo].[mohoc_giaovien]  WITH CHECK ADD  CONSTRAINT [FK_mohoc_giaovien_monhoc] FOREIGN KEY([id_monhoc])
REFERENCES [dbo].[monhoc] ([id])
GO
ALTER TABLE [dbo].[mohoc_giaovien] CHECK CONSTRAINT [FK_mohoc_giaovien_monhoc]
GO
ALTER TABLE [dbo].[ngaychucvu]  WITH CHECK ADD  CONSTRAINT [FK_ngaychucvu_chucvu] FOREIGN KEY([id_chucvu])
REFERENCES [dbo].[chucvu] ([id])
GO
ALTER TABLE [dbo].[ngaychucvu] CHECK CONSTRAINT [FK_ngaychucvu_chucvu]
GO
ALTER TABLE [dbo].[ngaychucvu]  WITH CHECK ADD  CONSTRAINT [FK_ngaychucvu_giaovien] FOREIGN KEY([id_giaovien])
REFERENCES [dbo].[giaovien] ([id])
GO
ALTER TABLE [dbo].[ngaychucvu] CHECK CONSTRAINT [FK_ngaychucvu_giaovien]
GO
/****** Object:  StoredProcedure [dbo].[loginWithAccount]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[loginWithAccount]
(@username varchar(100) , @password varchar(20) )

as 
	begin
			select * from taikhoan where (tentaikhoan = @username or email=@username) and matkhau = @password
	end

GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 02/11/2020 22:38:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[search]
(@keyword varchar(250),@type int)
as
	begin
			IF (@type = 2) --hoc sinh
				BEGIN
				   select * from hocsinh where ([hovaten]=@keyword or [mshs]=@keyword)
				END
			ELSE
				IF (@type = 3) --giao vien
				BEGIN
				   select * from giaovien where ([hovaten]=@keyword or [msgv]=@keyword)
				END
	end
GO
USE [master]
GO
ALTER DATABASE [QuanLyHocSinh] SET  READ_WRITE 
GO
