USE [SQl_QLNS]
GO
/****** Object:  Table [dbo].[BAOCAOTHONGKE]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAOTHONGKE](
	[MaBaoCao] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[NgayThangBatDau] [date] NULL,
	[NgayThangKetThuc] [date] NULL,
	[SoLuongSachBanDuoc] [int] NULL,
	[TongTien] [money] NULL,
	[MaNV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [char](10) NOT NULL,
	[MaSach] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [money] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAP]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAP](
	[MA_PN] [varchar](10) NOT NULL,
	[MASACH] [varchar](10) NOT NULL,
	[SL_NHAP] [int] NULL,
	[GIA_NHAP] [int] NULL,
 CONSTRAINT [PK_CT_NHAPSACH] PRIMARY KEY CLUSTERED 
(
	[MA_PN] ASC,
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [char](10) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[MaSach] [varchar](10) NULL,
	[NgayLap] [date] NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[ThanhTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[SDT] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACC]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACC](
	[ID_NCC] [int] IDENTITY(1,1) NOT NULL,
	[MA_NCC] [varchar](10) NOT NULL,
	[TEN_NCC] [nvarchar](40) NULL,
	[DC_NCC] [nvarchar](40) NULL,
	[DT_NCC] [nvarchar](20) NULL,
 CONSTRAINT [PK_NHACC] PRIMARY KEY CLUSTERED 
(
	[MA_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNXB] [varchar](10) NOT NULL,
	[TenNXB] [nvarchar](40) NULL,
	[DiaChi] [nvarchar](40) NULL,
	[SDT] [char](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[IDQuyen] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MA_PN] [varchar](10) NOT NULL,
	[NGAY_NHAP] [date] NULL,
	[MANV] [varchar](10) NOT NULL,
	[MA_NCC] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MA_PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [varchar](10) NOT NULL,
	[MaTG] [varchar](10) NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[GiaBan] [money] NULL,
	[SoLuongTon] [int] NULL,
	[MaNXB] [varchar](10) NULL,
	[NgayXuatBan] [date] NULL,
	[LanTaiBan] [int] NULL,
	[MaTL] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [varchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
	[QueQuan] [nvarchar](30) NULL,
	[NamSinh] [date] NULL,
	[NamMat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTheLoai] [varchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](20) NULL,
	[NgonNgu] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](40) NULL,
	[PassWord] [nvarchar](50) NULL,
	[IDQuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 8/12/2023 9:34:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](30) NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](30) NULL,
	[Role] [varchar](6) NULL,
	[Password_md5] [nvarchar](100) NULL,
	[Password_sha256] [nvarchar](100) NULL,
	[Password_sha1] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAOCAOTHONGKE] ON 

INSERT [dbo].[BAOCAOTHONGKE] ([MaBaoCao], [NgayLap], [NgayThangBatDau], [NgayThangKetThuc], [SoLuongSachBanDuoc], [TongTien], [MaNV]) VALUES (11, CAST(N'2023-12-08' AS Date), CAST(N'2023-10-02' AS Date), CAST(N'2023-10-04' AS Date), 6, 216000.0000, N'NV001')
SET IDENTITY_INSERT [dbo].[BAOCAOTHONGKE] OFF
GO
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD001     ', N'S001', 1, 35000.0000, 35000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD001     ', N'S007', 2, 25000.0000, 50000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD003     ', N'S002', 4, 30000.0000, 120000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD003     ', N'S005', 1, 20000.0000, 20000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD004     ', N'S008', 2, 25000.0000, 50000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD004     ', N'S010', 1, 15000.0000, 15000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD005     ', N'S004', 3, 28000.0000, 84000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD005     ', N'S006', 2, 32000.0000, 64000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD006     ', N'S003', 1, 25000.0000, 25000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD006     ', N'S004', 2, 35000.0000, 70000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD007     ', N'S008', 3, 45000.0000, 135000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD007     ', N'S009', 1, 40000.0000, 40000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD008     ', N'S006', 2, 30000.0000, 60000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD008     ', N'S007', 1, 20000.0000, 20000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD009     ', N'S005', 3, 25000.0000, 75000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD009     ', N'S010', 2, 15000.0000, 30000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD010     ', N'S004', 3, 28000.0000, 84000.0000)
INSERT [dbo].[CHITIETHOADON] ([MaHD], [MaSach], [SoLuong], [GiaTien], [ThanhTien]) VALUES (N'HD011     ', N'S003', 7, 40000.0000, 280000.0000)
GO
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN001', N'S001', 10, 30000)
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN001', N'S002', 5, 28000)
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN002', N'S003', 8, 38000)
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN002', N'S004', 12, 25000)
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN003', N'S002', 5, 30000)
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN004', N'S001', 10, 35000)
INSERT [dbo].[CT_PHIEUNHAP] ([MA_PN], [MASACH], [SL_NHAP], [GIA_NHAP]) VALUES (N'PN005', N'S003', 10, 40000)
GO
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD001     ', N'NV008', N'KH002', N'S001', CAST(N'2023-10-01' AS Date), 2, 35000.0000, 70000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD003     ', N'NV009', N'KH006', N'S003', CAST(N'2023-10-03' AS Date), 4, 40000.0000, 160000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD004     ', N'NV010', N'KH007', N'S004', CAST(N'2023-10-04' AS Date), 2, 28000.0000, 56000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD005     ', N'NV001', N'KH010', N'S005', CAST(N'2023-10-05' AS Date), 3, 25000.0000, 75000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD006     ', N'NV005', N'KH005', N'S006', CAST(N'2023-10-06' AS Date), 2, 35000.0000, 70000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD007     ', N'NV006', N'KH001', N'S007', CAST(N'2023-10-07' AS Date), 3, 20000.0000, 60000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD008     ', N'NV002', N'KH009', N'S008', CAST(N'2023-10-08' AS Date), 2, 25000.0000, 50000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD009     ', N'NV004', N'KH003', N'S009', CAST(N'2023-10-09' AS Date), 1, 40000.0000, 40000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD010     ', N'NV001', N'KH005', N'S004', CAST(N'2023-12-08' AS Date), 3, 28000.0000, 84000.0000)
INSERT [dbo].[HOADON] ([MaHD], [MaNV], [MaKH], [MaSach], [NgayLap], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HD011     ', N'NV001', N'KH004', N'S003', CAST(N'2023-12-08' AS Date), 7, 40000.0000, 280000.0000)
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH001', N'Nguyễn Thị An', N'0901234567')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH002', N'Võ Văn Bình', N'0987654321')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH003', N'Lê Thị Cường', N'0909090909')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH004', N'Hoàng Văn Dũng', N'0979797978')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH005', N'Phạm Thị Hoa', N'0922222222')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH006', N'Đặng Văn Gia', N'0933333333')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH007', N'Trần Thị Hương', N'0944444444')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH009', N'Phạm Thị Lâm', N'0966666666')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [SDT]) VALUES (N'KH010', N'Lê Văn Mạnh', N'0977777777')
GO
SET IDENTITY_INSERT [dbo].[NHACC] ON 

INSERT [dbo].[NHACC] ([ID_NCC], [MA_NCC], [TEN_NCC], [DC_NCC], [DT_NCC]) VALUES (1, N'NCC001', N'Công ty sách ABC', N'Quận 3, TP. Hồ Chí Minh', N'0123456789')
INSERT [dbo].[NHACC] ([ID_NCC], [MA_NCC], [TEN_NCC], [DC_NCC], [DT_NCC]) VALUES (2, N'NCC002', N'Công ty TikiBook', N'Quận Hai Bà Trưng, Hà Nội ', N'0987654321')
INSERT [dbo].[NHACC] ([ID_NCC], [MA_NCC], [TEN_NCC], [DC_NCC], [DT_NCC]) VALUES (3, N'NCC003', N'Công ty sách XYZ', N'Phường 4, TP. Vũng Tàu', N'0312345678')
SET IDENTITY_INSERT [dbo].[NHACC] OFF
GO
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'NXB001', N'Nhà xuất bản Mỹ Thuật', N'Hà Nội', N'0123456789 ')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'NXB002', N'Nhà xuất bản Kim Đồng', N'Hà Nội', N'0987654321 ')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'NXB003', N'Nhà xuất bản Văn học', N'Hà Nội', N'0369852147 ')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [SDT]) VALUES (N'NXB004', N'Nhà xuất bản Thanh Niên', N'Hà Nội', N'0912345678 ')
GO
INSERT [dbo].[PHANQUYEN] ([IDQuyen], [Name]) VALUES (1, N'Quản Lý')
INSERT [dbo].[PHANQUYEN] ([IDQuyen], [Name]) VALUES (2, N'Nhân Viên')
GO
INSERT [dbo].[PHIEUNHAP] ([MA_PN], [NGAY_NHAP], [MANV], [MA_NCC]) VALUES (N'PN001', CAST(N'2023-12-02' AS Date), N'NV001', N'NCC001')
INSERT [dbo].[PHIEUNHAP] ([MA_PN], [NGAY_NHAP], [MANV], [MA_NCC]) VALUES (N'PN002', CAST(N'2023-10-31' AS Date), N'NV002', N'NCC002')
INSERT [dbo].[PHIEUNHAP] ([MA_PN], [NGAY_NHAP], [MANV], [MA_NCC]) VALUES (N'PN003', CAST(N'2023-12-02' AS Date), N'NV001', N'NCC002')
INSERT [dbo].[PHIEUNHAP] ([MA_PN], [NGAY_NHAP], [MANV], [MA_NCC]) VALUES (N'PN004', CAST(N'2023-12-08' AS Date), N'NV001', N'NCC003')
INSERT [dbo].[PHIEUNHAP] ([MA_PN], [NGAY_NHAP], [MANV], [MA_NCC]) VALUES (N'PN005', CAST(N'2023-12-08' AS Date), N'NV001', N'NCC003')
GO
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S001', N'TG001', N'Cho tôi xin một vé đi tuổi thơ', 35000.0000, 40, N'NXB001', CAST(N'2019-09-01' AS Date), 1, N'TL03')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S002', N'TG002', N'Truyện Kiều', 30000.0000, 33, N'NXB002', CAST(N'1802-01-01' AS Date), 10, N'TL02')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S003', N'TG003', N'Hạt giống tâm hồn', 40000.0000, 43, N'NXB003', CAST(N'1990-08-15' AS Date), 5, N'TL02')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S004', N'TG004', N'Hồn Trương Ba Da Hàng Thịt', 28000.0000, 37, N'NXB003', CAST(N'1968-05-01' AS Date), 3, N'TL03')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S005', N'TG005', N'Tắt đèn', 25000.0000, 11, N'NXB001', CAST(N'1989-01-01' AS Date), 8, N'TL07')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S006', N'TG006', N'Diary of a propaganda cadre', 35000.0000, 10, N'NXB004', CAST(N'1960-01-01' AS Date), 1, N'TL07')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S007', N'TG007', N'Chí Phèo', 20000.0000, 25, N'NXB003', CAST(N'1941-01-01' AS Date), 7, N'TL07')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S008', N'TG008', N'Những nụ hoa tình cuối đường', 25000.0000, 5, N'NXB002', CAST(N'1943-01-01' AS Date), 4, N'TL08')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S009', N'TG009', N'Số đỏ', 15000.0000, 18, N'NXB001', CAST(N'1936-01-01' AS Date), 6, N'TL05')
INSERT [dbo].[SACH] ([MaSach], [MaTG], [TenSach], [GiaBan], [SoLuongTon], [MaNXB], [NgayXuatBan], [LanTaiBan], [MaTL]) VALUES (N'S010', N'TG010', N'Thiên đường mù', 15000.0000, 12, N'NXB003', CAST(N'1990-01-01' AS Date), 2, N'TL10')
GO
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG001', N'Nguyễn Nhật Anh', N'Hà Nội', CAST(N'1955-05-14' AS Date), NULL)
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG002', N'Nguyễn Du', N'Hà Tĩnh', CAST(N'1765-01-01' AS Date), CAST(N'1820-09-16' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG003', N'Nguyễn Khắc Viện', N'Hà Nội', CAST(N'1913-10-11' AS Date), CAST(N'1997-10-14' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG004', N'Nguyễn Tuân', N'Hà Nội', CAST(N'1930-12-03' AS Date), CAST(N'2013-01-10' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG005', N'Nguyễn Huy Thiệp', N'Hà Nội', CAST(N'1950-10-06' AS Date), CAST(N'2021-03-20' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG006', N'Hồ Chí Minh', N'Nghệ An', CAST(N'1890-05-19' AS Date), CAST(N'1969-09-02' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG007', N'Nam Cao', N'Nam Định', CAST(N'1915-10-20' AS Date), CAST(N'1951-01-10' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG008', N'Xuân Diệu', N'Hà Nội', CAST(N'1916-10-02' AS Date), CAST(N'1985-12-18' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG009', N'Vũ Trọng Phụng', N'Hà Nội', CAST(N'1912-08-25' AS Date), CAST(N'1939-10-08' AS Date))
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [QueQuan], [NamSinh], [NamMat]) VALUES (N'TG010', N'Bùi Giáng', N'Hà Nội', CAST(N'1916-01-01' AS Date), CAST(N'1995-12-31' AS Date))
GO
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL01', N'Tiểu thuyết', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL02', N'Kinh điển', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL03', N'Tâm lý', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL04', N'Hài hước', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL05', N'Truyện ngắn', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL06', N'Tự truyện', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL07', N'Văn học', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL08', N'Tình cảm', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL09', N'Truyện cổ tích', N'Tiếng Việt')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai], [NgonNgu]) VALUES (N'TL10', N'Hồi ký', N'Tiếng Anh')
GO
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV001', N'Nguyễn Văn An', N'Nam', N'0912345678', N'123 Đường ABC, Quận 1, TP HCM', N'123', 1)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV002', N'Trần Thị Diễm', N'Nữ', N'0987654321', N'456 Đường DEF, Quận 2, TP HCM', N'123', 1)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV003', N'Lê Quang Cường', N'Nữ', N'0909090909', N'789 Đường GHI, Quận 3, TP HCM', N'5677777', 1)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV004', N'Hoàng Thị Dung', N'Nữ', N'0979797979', N'111 Đường JKL, Quận 4, TP HCM', N'123', 1)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV005', N'Phạm Văn Toàn', N'Nam', N'0922222225', N'222 Đường PQR, Quận 5, TP HCM', N'123', 2)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV006', N'Đặng Thị Thu', N'Nữ', N'0933333333', N'333 Đường STU, Quận 6, TP HCM', N'123', 2)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV007', N'Trần Văn Hậu', N'Nam', N'0944444444', N'444 Đường VWX, Quận 7, TP HCM', N'123', 2)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV008', N'Lê Thị Hường', N'Nữ', N'0955555555', N'555 Đường YZA, Quận 8, TP HCM', N'123', 2)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV009', N'Nguyễn Văn Kiệt', N'Nam', N'0966666666', N'666 Đường BCD, Quận 9, TP HCM', N'123', 2)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV010', N'Phạm Thị Nga', N'Nữ', N'0977777777', N'777 Đường EFG, Quận 10, TP HCM', N'123', 2)
INSERT [dbo].[USER] ([MaNV], [HoTen], [GioiTinh], [SDT], [DiaChi], [PassWord], [IDQuyen]) VALUES (N'NV011', N'Võ Thành Đạt', N'Nam', N'0399999999', N'Tân Phú', N'123', 2)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_SDT_KH]    Script Date: 8/12/2023 9:34:02 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [UN_SDT_KH] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHAXUATB__CCE3868D14983A02]    Script Date: 8/12/2023 9:34:02 AM ******/
ALTER TABLE [dbo].[NHAXUATBAN] ADD UNIQUE NONCLUSTERED 
(
	[TenNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__THELOAI__327F958FA1C2F560]    Script Date: 8/12/2023 9:34:02 AM ******/
ALTER TABLE [dbo].[THELOAI] ADD UNIQUE NONCLUSTERED 
(
	[TenTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_SDT_NV]    Script Date: 8/12/2023 9:34:02 AM ******/
ALTER TABLE [dbo].[USER] ADD  CONSTRAINT [UN_SDT_NV] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NHAXUATBAN] ADD  DEFAULT ('TP HCM') FOR [DiaChi]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHD_SACH]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_NHAPSACH_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_NHAPSACH_SACH]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_NS_CT_PN] FOREIGN KEY([MA_PN])
REFERENCES [dbo].[PHIEUNHAP] ([MA_PN])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_NS_CT_PN]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_KH]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[USER] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_Sach]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PN_NCC] FOREIGN KEY([MA_NCC])
REFERENCES [dbo].[NHACC] ([MA_NCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PN_NCC]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PN_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[USER] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PN_NHANVIEN]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD FOREIGN KEY([MaTL])
REFERENCES [dbo].[THELOAI] ([MaTheLoai])
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_User_IDQuyen] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PHANQUYEN] ([IDQuyen])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK_User_IDQuyen]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD CHECK  (([GiaTien]>(0)))
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD CHECK  (([ThanhTien]>(0)))
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD CHECK  (([ThanhTien]>(0)))
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([GiaBan]>(0)))
GO
