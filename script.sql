USE [BookStore]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[maCN] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](225) NULL,
	[diaChi] [nvarchar](225) NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[maCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[maNV] [int] NULL,
	[maKH] [int] NOT NULL,
	[ngayLap] [date] NULL,
	[tongTien] [int] NULL,
	[kieuHD] [nvarchar](50) NULL,
 CONSTRAINT [PK_HoaDonOffline] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] NOT NULL,
	[tenKhachHang] [nvarchar](225) NULL,
	[maCN] [int] NOT NULL,
	[diaChi] [nvarchar](225) NULL,
	[sdt] [nvarchar](225) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoan] [nvarchar](225) NULL,
	[matKhau] [nvarchar](225) NULL,
	[hoTen] [nvarchar](225) NULL,
	[diaChi] [nvarchar](225) NULL,
	[sdt] [nvarchar](225) NULL,
	[maCN] [int] NULL,
	[chucvu] [nvarchar](225) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[maHD] [int] NOT NULL,
	[maSach] [int] NOT NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [PK_GiaoDich] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[maSach] [int] NOT NULL,
	[maLS] [int] NOT NULL,
	[tenSach] [nvarchar](225) NOT NULL,
	[nhaSanXuat] [nvarchar](225) NULL,
	[img] [nvarchar](225) NULL,
	[giaBan] [nvarchar](225) NULL,
	[tacGia] [nvarchar](225) NULL,
	[quocGia] [nvarchar](225) NULL,
	[nguoiBienDich] [nvarchar](225) NULL,
	[kichThuoc] [nvarchar](225) NULL,
	[moTa] [nvarchar](225) NULL,
	[ngayXuatBan] [nvarchar](225) NULL,
 CONSTRAINT [PK_MatHang_1] PRIMARY KEY CLUSTERED 
(
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SachThuocChiNhanh]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SachThuocChiNhanh](
	[maCN] [int] NOT NULL,
	[maSach] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiNhanhMatHang] PRIMARY KEY CLUSTERED 
(
	[maCN] ASC,
	[maSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoaiSach]    Script Date: 4/3/2019 7:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiSach](
	[maLs] [int] IDENTITY(1,1) NOT NULL,
	[tenLS] [nvarchar](225) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[maLs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonOffline_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDonOffline_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonOffline_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDonOffline_NhanVien]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ChiNhanh] FOREIGN KEY([maCN])
REFERENCES [dbo].[ChiNhanh] ([maCN])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ChiNhanh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChiNhanh1] FOREIGN KEY([maCN])
REFERENCES [dbo].[ChiNhanh] ([maCN])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChiNhanh1]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_HoaDonOffline] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_GiaoDich_HoaDonOffline]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_MatHang] FOREIGN KEY([maSach])
REFERENCES [dbo].[Sach] ([maSach])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_GiaoDich_MatHang]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_DanhMuc] FOREIGN KEY([maLS])
REFERENCES [dbo].[TheLoaiSach] ([maLs])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_MatHang_DanhMuc]
GO
ALTER TABLE [dbo].[SachThuocChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanhMatHang_ChiNhanh] FOREIGN KEY([maCN])
REFERENCES [dbo].[ChiNhanh] ([maCN])
GO
ALTER TABLE [dbo].[SachThuocChiNhanh] CHECK CONSTRAINT [FK_ChiNhanhMatHang_ChiNhanh]
GO
ALTER TABLE [dbo].[SachThuocChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_ChiNhanhMatHang_MatHang] FOREIGN KEY([maSach])
REFERENCES [dbo].[Sach] ([maSach])
GO
ALTER TABLE [dbo].[SachThuocChiNhanh] CHECK CONSTRAINT [FK_ChiNhanhMatHang_MatHang]
GO
