USE [DB_QLKHOAHOC]
GO
/****** Object:  Table [dbo].[ChuongKh]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongKh](
	[MaCH] [varchar](255) NOT NULL,
	[MaKH] [varchar](255) NULL,
	[TenCH] [nvarchar](255) NULL,
	[Stt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_GioHang]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_GioHang](
	[MaGH] [varchar](255) NOT NULL,
	[MaKH] [varchar](255) NOT NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [varchar](255) NOT NULL,
	[MaKH] [varchar](255) NOT NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[MaDG] [varchar](255) NOT NULL,
	[MaHV] [varchar](255) NULL,
	[MaKH] [varchar](255) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[SoSao] [int] NULL,
	[NgayDG] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucKh]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucKh](
	[MaDM] [varchar](255) NOT NULL,
	[TenDM] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGG] [varchar](255) NOT NULL,
	[PhanTramGiam] [float] NULL,
	[MaGv] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [varchar](255) NOT NULL,
	[MaND] [varchar](255) NULL,
	[TenGV] [nvarchar](255) NULL,
	[GioiThieu] [nvarchar](max) NULL,
	[Hinh] [varchar](255) NULL,
	[NgaySinh] [date] NULL,
	[Phai] [nvarchar](10) NULL,
	[SDT] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[LinkInfor] [nvarchar](max) NULL,
	[CmndMacTruoc] [varchar](255) NULL,
	[CmndMacSau] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MaGH] [varchar](255) NOT NULL,
	[MaHV] [varchar](255) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [varchar](255) NOT NULL,
	[MaPT] [varchar](255) NULL,
	[MaHV] [varchar](255) NULL,
	[TongTien] [float] NULL,
	[NgayThanhToan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocVien]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocVien](
	[MaHV] [varchar](255) NOT NULL,
	[MaND] [varchar](255) NULL,
	[TenHV] [nvarchar](255) NULL,
	[Hinh] [varchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NgaySinh] [date] NULL,
	[Phai] [nvarchar](10) NULL,
	[SDT] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKH] [varchar](255) NOT NULL,
	[MaGV] [varchar](255) NULL,
	[MaDM] [varchar](255) NULL,
	[TieuDe] [nvarchar](255) NULL,
	[DonGia] [float] NULL,
	[GiaDaGiam] [float] NULL,
	[Mota] [nvarchar](max) NULL,
	[KetQuaDatDuoc] [nvarchar](max) NULL,
	[Hinh] [varchar](255) NULL,
	[TrangThai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHocDaMua]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHocDaMua](
	[MaKh] [varchar](255) NOT NULL,
	[MaHv] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKh] ASC,
	[MaHv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHocGiamGia]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHocGiamGia](
	[MaGG] [varchar](255) NOT NULL,
	[Makh] [varchar](255) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGG] ASC,
	[Makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NDChuong]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NDChuong](
	[MaND] [varchar](255) NOT NULL,
	[MaCH] [varchar](255) NULL,
	[TenND] [nvarchar](255) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
	[Stt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [varchar](255) NOT NULL,
	[MaVT] [varchar](255) NULL,
	[TenDN] [varchar](255) NULL,
	[MatKhau] [varchar](255) NULL,
	[TrangThai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PTTHANHTOAN]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PTTHANHTOAN](
	[MaPT] [varchar](255) NOT NULL,
	[TenPT] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 12/25/2023 8:22:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[MaVT] [varchar](255) NOT NULL,
	[TenVT] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH1066726373', N'KH2141902988', N'Giới thiệu khóa học', 1)
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH119414154', N'KH269761354', N'Giới thiêu khóa học', 1)
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH1337284485', N'KH760796087', N'Giới thiệu ', 1)
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH1389945211', N'KH1941948175', N'Bắt đầu', 1)
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH1653719997', N'KH269761354', N'Bắt đầu khóa học', 2)
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH1779830243', N'KH1462081184', N'Giới thiệu', 1)
INSERT [dbo].[ChuongKh] ([MaCH], [MaKH], [TenCH], [Stt]) VALUES (N'CKH827855802', N'KH834762114', N'Giới thiệu', 1)
GO
INSERT [dbo].[CT_GioHang] ([MaGH], [MaKH], [DonGia]) VALUES (N'GH1663505895', N'KH269761354', 980000)
GO
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH1387403907', N'KH760796087', 100000)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH1387403907', N'KH834762114', 10000000)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH2020679412', N'KH1462081184', 599999)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH397173768', N'KH1462081184', 599999)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH501354413', N'KH1941948175', 1000000)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH595464112', N'KH1941948175', 1000000)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH661126387', N'KH269761354', 980000)
INSERT [dbo].[CTHD] ([MaHD], [MaKH], [DonGia]) VALUES (N'HDKH774191659', N'KH2141902988', 1000000)
GO
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG1082406188', N'HVX350', N'KH2141902988', N'<p>Khoa hoc tuyet voi</p>', 4, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG1425725766', N'HVX350', N'KH2141902988', N'<p>Hay  qua</p>', 3, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG1452668529', N'HVX350', N'KH2141902988', N'<p>Hay quá </p>', 4, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG1600219515', N'HVX350', N'KH2141902988', N'<p>KHo hoc ngu</p>', 5, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG1783569824', N'HVX350', N'KH2141902988', N'<p>asd</p>', 3, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG581385050', N'HVX350', N'KH2141902988', N'<p>Hay qua</p>', 5, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[DanhGia] ([MaDG], [MaHV], [MaKH], [NoiDung], [SoSao], [NgayDG]) VALUES (N'DG863449549', N'HVV911', N'KH1941948175', N'<p>Khóa học hay quá</p>', 4, CAST(N'2023-12-18' AS Date))
GO
INSERT [dbo].[DanhMucKh] ([MaDM], [TenDM]) VALUES (N'DM01', N'WEB')
INSERT [dbo].[DanhMucKh] ([MaDM], [TenDM]) VALUES (N'DM138084544', N'Kinh Doanh')
INSERT [dbo].[DanhMucKh] ([MaDM], [TenDM]) VALUES (N'DM98964283', N'Lập Trình Web')
GO
INSERT [dbo].[GiamGia] ([MaGG], [PhanTramGiam], [MaGv]) VALUES (N'GG160865802', 99, N'GV338510169')
GO
INSERT [dbo].[GiangVien] ([MaGV], [MaND], [TenGV], [GioiThieu], [Hinh], [NgaySinh], [Phai], [SDT], [Email], [LinkInfor], [CmndMacTruoc], [CmndMacSau]) VALUES (N'GV1660858856', N'ND1570736391', N'Nguyễn Văn Hửu', N'<p>Andrew Ramdayal, PMP, PgMP, PMI-ACP, CISSP-ISSMP has over 15 years of project management experience in IT. He holds over 60 professional certifications in IT and accounting from vendors such as Microsoft, Cisco, CompTIA, and PMI. He also holds a Master''s Degree in Management Information systems with a minor in project management. Andrew has worked on many ERP, IT Security, and computer networking projects over his career.</p><p>Andrew has been teaching the PMP and information security courses for over 18 years to thousands of students all over the world. His unique teaching methods have allowed his students not only to pass the exam but also to apply the concepts in real life.</p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fthong-tin%2Fz4984316756178_b7f9a70324e2ffcfd145b041cf22e751.jpg?alt=media&token=057c3485-3f73-431e-8b46-e48a80671f70', CAST(N'2002-01-29' AS Date), N'Nam', N'0366475870', N'huu@gmail.com', N'', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fthong-tin%2FMat-chung-minh-nhan-dan-co-bi-phat-khong-theo-quy-dinh-1.jpg?alt=media&token=bda314fd-ceee-4cdc-827c-2a1c3f6e440b', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fthong-tin%2FSau.jpg?alt=media&token=ae379403-3a3f-4190-8619-89ef590a0f44')
INSERT [dbo].[GiangVien] ([MaGV], [MaND], [TenGV], [GioiThieu], [Hinh], [NgaySinh], [Phai], [SDT], [Email], [LinkInfor], [CmndMacTruoc], [CmndMacSau]) VALUES (N'GV338510169', N'ND385271491', N'Nguyen Van A', N'<p>Tuyet voi</p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fthong-tin%2Fhinh-anh-avatar-dep-cute-ngau-601x600-1.jpg?alt=media&token=54a84bff-7ffb-4369-b2ff-b77248993c6f', CAST(N'2002-01-18' AS Date), N'Nam', N'0366735760', N'longhufidev@gmail.com', N'', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fthong-tin%2FMat-chung-minh-nhan-dan-co-bi-phat-khong-theo-quy-dinh-1.jpg?alt=media&token=2f3232ea-26f9-42bd-83cc-350f8d722298', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fthong-tin%2FSau.jpg?alt=media&token=48c288b0-de43-44c4-8464-48df04de68ab')
INSERT [dbo].[GiangVien] ([MaGV], [MaND], [TenGV], [GioiThieu], [Hinh], [NgaySinh], [Phai], [SDT], [Email], [LinkInfor], [CmndMacTruoc], [CmndMacSau]) VALUES (N'GV53604952', N'ND1499738549', N'TIA Education, Andrew Ramdayal', N'<p>Andrew Ramdayal, PMP, PgMP, PMI-ACP, CISSP-ISSMP has over 15 years of project management experience in IT. He holds over 60 professional certifications in IT and accounting from vendors such as Microsoft, Cisco, CompTIA, and PMI. He also holds a Master''s Degree in Management Information systems with a minor in project management. Andrew has worked on many ERP, IT Security, and computer networking projects over his career.</p><p>Andrew has been teaching the PMP and information security courses for over 18 years to thousands of students all over the world. His unique teaching methods have allowed his students not only to pass the exam but also to apply the concepts in real life.</p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV53604952%2Fthong-tin%2Fz4984318256046_8dc2697327f2b0c3199b534e9ac96f6b.jpg?alt=media&token=4bc3b708-0095-4e3e-b90b-323e1872f9f2', CAST(N'2002-01-09' AS Date), N'Nam', N'0366374760', N'long@gmail.com', N'', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV53604952%2Fthong-tin%2FMat-chung-minh-nhan-dan-co-bi-phat-khong-theo-quy-dinh-1.jpg?alt=media&token=2a8b19e0-4372-4bb6-9fa2-c1130dfcee75', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV53604952%2Fthong-tin%2FSau.jpg?alt=media&token=b9078b3c-95f7-470a-8ece-5a261176ff1d')
GO
INSERT [dbo].[GIOHANG] ([MaGH], [MaHV], [TongTien]) VALUES (N'GH1663505895', N'HVV911', 0)
INSERT [dbo].[GIOHANG] ([MaGH], [MaHV], [TongTien]) VALUES (N'GH606044412', N'HVX350', 0)
INSERT [dbo].[GIOHANG] ([MaGH], [MaHV], [TongTien]) VALUES (N'GH609991957', N'HVZ415', 0)
GO
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH1387403907', N'PT001', N'HVX350', 10100000, CAST(N'2023-12-18T22:13:21.440' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH2020679412', N'PT001', N'HVZ415', 599999, CAST(N'2023-12-19T09:40:14.690' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH397173768', N'PT001', N'HVX350', 599999, CAST(N'2023-12-18T23:28:13.267' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH501354413', N'PT001', N'HVX350', 1000000, CAST(N'2023-12-18T22:06:55.350' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH595464112', N'PT001', N'HVV911', 1000000, CAST(N'2023-12-18T22:51:54.320' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH661126387', N'PT001', N'HVX350', 980000, CAST(N'2023-12-18T22:11:19.983' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaPT], [MaHV], [TongTien], [NgayThanhToan]) VALUES (N'HDKH774191659', N'PT001', N'HVX350', 1000000, CAST(N'2023-12-18T16:42:04.573' AS DateTime))
GO
INSERT [dbo].[HocVien] ([MaHV], [MaND], [TenHV], [Hinh], [DiaChi], [NgaySinh], [Phai], [SDT], [Email]) VALUES (N'HVV911', N'ND2057977919', N'Bạch Long Nguyễn', NULL, NULL, NULL, NULL, NULL, N'bachlongnguyen103@gmail.com')
INSERT [dbo].[HocVien] ([MaHV], [MaND], [TenHV], [Hinh], [DiaChi], [NgaySinh], [Phai], [SDT], [Email]) VALUES (N'HVX350', N'ND2067637400', N'Nguyễn Bạch Long', NULL, NULL, NULL, NULL, NULL, N'longhufidev@gmail.com')
INSERT [dbo].[HocVien] ([MaHV], [MaND], [TenHV], [Hinh], [DiaChi], [NgaySinh], [Phai], [SDT], [Email]) VALUES (N'HVZ415', N'ND1773346691', N'LONG Channel', NULL, NULL, NULL, NULL, NULL, N'kiata4242@gmail.com')
GO
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH1455187082', N'GV338510169', N'DM138084544', N'PMP Certification Exam Prep Course 35 PDU Contact Hours/PDU', NULL, NULL, N'<p><strong>This course has been fully updated for the 2023 PMP&nbsp;exam and is now over 35 hours of content with 350</strong>+<strong>&nbsp;videos.</strong></p><p><br></p><p><strong>Covers<em>&nbsp;PMBOK&nbsp;Guide 7th</em>&nbsp;<em>Edition</em>,<em>&nbsp;Process Groups:&nbsp;A Practice Guide</em>, Agile Practice Guide, and more.&nbsp;</strong></p><p>Passing the PMP certification&nbsp;exam is a must for any individual looking to move up the corporate ladder in any company. This course will cover all the topics needed to pass your PMP&nbsp;exam on the first try. This course includes coverage of traditional, Agile and hybrid projects.</p><p>This course is taught by Instructor and PMP&nbsp;author Andrew Ramdayal. Andrew has over 60 certifications and is the&nbsp;<strong>author of Amazon Bestselling PMP&nbsp;Study Guide, PMP&nbsp;Exam Prep Simplified.</strong>&nbsp;Andrew has taught this course to thousands of students around the world both in the classroom and online.</p><p>This course will include the following:</p><ul><li><strong>35 hours of project management education needed to take your PMP&nbsp;exam.</strong></li><li><strong>Based on the latest PMP&nbsp;Examination Content Outline</strong></li><li><strong>35+ Hours of expert instruction from a certified PMP&nbsp;Instructor and one of Amazon best selling authors for the PMP&nbsp;exam books.</strong></li><li><strong>350+&nbsp;Videos</strong></li><li><strong>400+&nbsp;realistic exam questions</strong></li><li><strong>Course Slides and PDF''s with all the processes and formulas</strong></li><li><strong>Expert instructions filling out the PMP&nbsp;application</strong></li><li><strong>Full-length mock exam</strong></li></ul><p>Every year we help thousands to pass their PMP certification exam&nbsp;and we can help you also. This course is presented by TIA&nbsp;Education Group and taught by instructor Andrew Ramdayal.</p>', N'<ul><li>35 Hours of project management education/training</li><li>PMBOK&nbsp;Guide 7th Edition, PMBOK&nbsp;Guide 6th Edition, Agile Practice Guide</li><li>Students will learn to pass the PMP Certification Exam on the first try.</li><li>All 49 PMBOK processes will be covered in depth</li><li>All EVM, communication, and estimating formulas</li><li>Exam tips and tricks</li><li>Introduction to agile project management</li><li>400+ Exam Like Questions</li></ul><p><br></p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fbackground-course%2F5675460_6479.jpg?alt=media&token=9831244f-2eeb-45f5-a68e-6519237b1519', N'Đang bán')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH1462081184', N'GV338510169', N'DM138084544', N'Cấu trúc dữ liệu và giải thuật Thực chiến với LeetCode', 599999, NULL, N'<p>Hiện nay ngành&nbsp;<strong>Công nghệ thông tin</strong>&nbsp;nói chung và ngành&nbsp;<strong>Lập trình viên</strong>&nbsp;nói riêng ở nước ta ngày càng phát triển!</p><p>Chính vì vậy mà quy trình tuyển chọn của một số công ty cũng ngày càng cao.</p><p>Những công ty lớn như:&nbsp;<strong>Viettel</strong>,&nbsp;<strong>VinGroup</strong>,&nbsp;<strong>Samsung</strong>,... tất cả các vòng phỏng vấn của họ đều có vòng&nbsp;<strong>thi test kỹ thuật đầu vào</strong>, và cụ thể là những bài thi dạng&nbsp;<strong>lập trình thi đấu</strong>, liên quan đến&nbsp;<strong>cấu trúc dữ liệu&nbsp;</strong>và&nbsp;<strong>giải thuật</strong>&nbsp;là chính.</p><p><br></p><p>Tại nước ngoài hầu hết những kiểu thi như thế này đều rất là phổ biến và hầu như công ty nào cũng áp dụng.</p><p>Nhưng gần đây cách test này mới được áp dụng một cách chuyên nghiệp tại Việt Nam.</p><p>Có những công ty cung cấp cho ứng viên một bài test online tại một nền tảng thứ 3 (như&nbsp;<strong>HackerRank, LeetCode</strong>) và yêu cầu họ hoàn thành bài test trong 2-3 tiếng.</p><p><br></p><p>Chính vì những lý do trên mà khoá học&nbsp;<strong>"Cấu trúc dữ liệu và giải thuật Thực chiến với Java và LeetCode"</strong>&nbsp;được ra đời.</p><p>Khoá học sẽ giúp các bạn ôn lại toàn bộ kiến thức về các cấu trúc dữ liệu và giải thuật đã học, ví dụ:</p><p><strong>Cấu trúc dữ liệu</strong>:</p><ul><li>Array,</li><li>String,</li><li>Stack (Ngăn xếp),</li><li>Queue (Hàng đợi),</li><li>Linked List (Danh sách liên kết),</li><li>Tree (Cây), Binary Tree (Cây Nhị phân),</li><li>Graph (Đồ thị),...</li></ul><p><strong>Thuật toán</strong>:</p><ul><li>Sorting (Sắp xếp),</li><li>Searching (Tìm kiếm),</li><li>Recursion (Đệ quy),</li><li>Depth First Search (Tìm kiếm theo chiều sâu),</li><li>Breadth First Search (Tìm kiếm theo chiều rộng),...</li></ul><p>Tất cả các kiến thức đó sẽ được tổng hợp và ôn tập lại một cách bài bản.</p><p>Sau đó chúng ta sẽ đi giải quyết hàng chục bài&nbsp;<strong>LeetCode&nbsp;</strong>để cải thiện kỹ năng lập trình của bạn.</p><p>Như vậy bạn vừa được ôn tập lại kiến thức lý thuyết lại vừa được thực hành và luyện tập lại những gì mình vừa được học!</p><h2>Đối tượng của khóa học này:</h2><ul><li>Dành cho các bạn sinh viên đang học môn CTDL&amp;GT</li><li>Dành cho các bạn mới ra trường chuẩn bị tìm việc làm</li><li>Dành cho các bạn đã đi làm và đang chuẩn bị cho vòng phỏng vấn kỹ thuật</li></ul><p><br></p>', N'<ul><li>Làm quen với các cấu trúc dữ liệu giải thuật CƠ BẢN và NÂNG CAO</li><li>Tự cài đặt được các cấu trúc dữ liệu và giải thuật</li><li>Biết được cách sử dụng thư viện tương ứng với các CTDL và GT đó</li><li>Thực hành bởi các bài tập thực tế trên LeetCode và HackerRank</li></ul><p><br></p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fbackground-course%2F393928_0e1c_5.jpg?alt=media&token=cbb05963-2e0e-4007-a28f-e22a0aa202a9', N'Đang bán')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH1941948175', N'GV338510169', N'DM01', N'Khóa học Figma từ căn bản đến thực chiến', 1000000, NULL, N'<p><strong>KHÓA HỌC NÀY CÓ GÌ</strong></p><p><br></p><p>Khóa học thiết kế giao diện bằng Figma dành cho những bạn có đam mê với ngành nghề UI/UX design. Khóa học tập trung vào những kỹ năng căn bản nhất, đồng thời cung cấp một cái nhìn tổng quát giúp học viên có thể tạo ra sản phẩm cụ thể sau khóa học.</p><p><strong>KHÓA HỌC SẼ DẠY NHỮNG GÌ?</strong></p><p>Bạn sẽ được tiếp kiến thức thực chiến từ đội ngũ TELOS, bao gồm các Developer và Designer cùng quản lý công việc và trao đổi trên một file làm việc Figma hơn 3 năm, bao gồm:</p><ul><li>Cách một dự án thiết kế giao diện UI/UX được thực thi</li><li>Kiến thức căn bản về cách tận dụng Figma</li><li>Các mẹo vặt để làm việc khoa học và tư duy theo lối lập trình</li><li>Phương pháp nghiên cứu để luôn tìm ra câu trả lời cho cái mình chưa biết trong Figma</li><li>Vun đắp mối quan hệ Designer - Developer với những sản phẩm ăn ý</li></ul><p>-----------</p><p><strong>RỒI HỌC XONG ĐƯỢC GÌ?</strong></p><ul><li>Thuần thục cách sử dụng công cụ; hiểu rõ ngôn ngữ thiết kế; thấu hiểu tư duy bài bản</li><li>Tự tin thực hiện hoá ý tưởng của mình trên các thiết kế</li><li>Biết cách dùng phần mềm như một người làm UI/UX với lối tư duy hệ thống, nắm vững nền tảng cơ bản; sắp xếp và quản lý các công việc một cách khoa học</li><li>Giảm đến hơn 60% thời gian cho các thao tác lặp đi lặp lại bằng việc tạo ra các component</li><li>Tự tạo ra những thiết kế Website/App cực chất, sẵn sàng để trở thành một Designer ở các Agency chuyên xây dựng website.</li><li>Đặc biệt, quà tặng Ebook Figma Design Notebook được gửi tặng ngay sau khóa học, được biên soạn với kiến thức bổ sung, được hệ thống lại và cập nhật từng đợt, đảm bảo chưa bao giờ bị lỗi nhịp với thời đại.</li></ul><p><br></p>', N'<ul><li>Sử dụng thành thục figma</li><li>Nâng cao năng suất làm việc, nâng cao thu nhập</li><li>Hình thành tư duy hệ thống hóa thiết kế với figma</li><li>Quản lý mọi thành phần trong thiết kế một cách khoa học, giảm thiểu thao tác thừa</li></ul>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fbackground-course%2F1565838_e54e_18.jpg?alt=media&token=ca8afe48-ea8b-4228-ab4e-431fbe56002a', N'Đang bán')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH2141902988', N'GV53604952', N'DM98964283', N'PMP Certification Exam Prep Course 35 PDU Contact Hours/PDU', 1000000, NULL, N'<p><strong>This course has been fully updated for the 2023 PMP&nbsp;exam and is now over 35 hours of content with 350</strong>+<strong>&nbsp;videos.</strong></p><p><br></p><p><strong>Covers<em>&nbsp;PMBOK&nbsp;Guide 7th</em>&nbsp;<em>Edition</em>,<em>&nbsp;Process Groups:&nbsp;A Practice Guide</em>, Agile Practice Guide, and more.&nbsp;</strong></p><p>Passing the PMP certification&nbsp;exam is a must for any individual looking to move up the corporate ladder in any company. This course will cover all the topics needed to pass your PMP&nbsp;exam on the first try. This course includes coverage of traditional, Agile and hybrid projects.</p><p>This course is taught by Instructor and PMP&nbsp;author Andrew Ramdayal. Andrew has over 60 certifications and is the&nbsp;<strong>author of Amazon Bestselling PMP&nbsp;Study Guide, PMP&nbsp;Exam Prep Simplified.</strong>&nbsp;Andrew has taught this course to thousands of students around the world both in the classroom and online.</p><p>This course will include the following:</p><ul><li><strong>35 hours of project management education needed to take your PMP&nbsp;exam.</strong></li><li><strong>Based on the latest PMP&nbsp;Examination Content Outline</strong></li><li><strong>35+ Hours of expert instruction from a certified PMP&nbsp;Instructor and one of Amazon best selling authors for the PMP&nbsp;exam books.</strong></li><li><strong>350+&nbsp;Videos</strong></li><li><strong>400+&nbsp;realistic exam questions</strong></li><li><strong>Course Slides and PDF''s with all the processes and formulas</strong></li><li><strong>Expert instructions filling out the PMP&nbsp;application</strong></li><li><strong>Full-length mock exam</strong></li></ul><p>Every year we help thousands to pass their PMP certification exam&nbsp;and we can help you also. This course is presented by TIA&nbsp;Education Group and taught by instructor Andrew Ramdayal.</p>', N'<ul><li>35 Hours of project management education/training</li><li>PMBOK&nbsp;Guide 7th Edition, PMBOK&nbsp;Guide 6th Edition, Agile Practice Guide</li><li>Students will learn to pass the PMP Certification Exam on the first try.</li><li>All 49 PMBOK processes will be covered in depth</li><li>All EVM, communication, and estimating formulas</li><li>Exam tips and tricks</li><li>Introduction to agile project management</li><li>400+ Exam Like Questions</li></ul>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV53604952%2Fbackground-course%2F1105404_aca0_22.jpg?alt=media&token=822535b2-ba72-4447-852d-8566a18a0505', N'Đang bán')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH269761354', N'GV1660858856', N'DM138084544', N'Hibernate and Java Persistence API (JPA) Fundamentals', 980000, NULL, N'<p><span style="color: rgb(45, 47, 49);">Are you ready to get more out of JDBC and your data using smart, streamlined techniques? This Hibernate course is a great place to start.</span></p><p><br></p><p><span style="color: rgb(45, 47, 49);">You will start by learning about object relational mapping and Hibernate, then jump into learning about the Hibernate basics. From there, Kevin will teach you basic mapping annotations, mapping composite and collection types, and entity associations. This video tutorial also covers Hibernate API, JPA API, advanced mapping and configurations, and criteria API. Finally, you will learn about the Hibernate query language and Java Persistence query language.</span></p><p><br></p><p><span style="color: rgb(45, 47, 49);">Once you have completed this computer based training course, you will be able to simplify and clarify the persistence tier of your applications using Hibernate and Java Persistence, granting you productivity improvements and easing future maintenance.</span></p>', N'<ul><li>work consistently and efficiently with databases in Java</li><li>how to set up the Hibernate framework, how to work with APIs, and how to retrieve useful data</li></ul><p><br></p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fbackground-course%2F26089_7e99_5.jpg?alt=media&token=75f9746a-130c-4c10-8bc4-87c62bf6e6d3', N'Đang bán')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH760796087', N'GV338510169', N'DM138084544', N'[NEW] Ultimate AWS Certified Cloud Practitioner CLF-C02', 100000, NULL, N'<p><strong>This course covers the newest CLF-C02 exam.</strong></p><p><strong>Welcome!&nbsp;I''m here to help you prepare and PASS the newest AWS&nbsp;Certified Cloud Practitioner exam.</strong></p><p><strong>[May 2023 Update]:</strong>&nbsp;Over 20 videos have been refreshed/added to keep up with the AWS&nbsp;UI changes and exam changes</p><p><strong>[April 2022 Update]:</strong>&nbsp;Over 30 videos have been refreshed/added to keep up with the AWS&nbsp;UI changes and exam changes</p><p><strong>[Oct 2021 Update]:</strong>&nbsp;Over 30 videos have been refreshed/added to keep up with the AWS&nbsp;UI changes and exam changes</p><p><strong>[April 2021 Update]:</strong>&nbsp;Over 20 videos have been refreshed/added to keep up with the AWS&nbsp;UI changes</p><p><strong>[Feb 2021 Update]:</strong>&nbsp;Over 4 hours of content has been updated/created in order to keep up with exam and AWS&nbsp;UI&nbsp;changes</p><p><strong>[Dec 2020 Update]:</strong>&nbsp;The S3 section has been entirely re-recorded to accommodate for the AWS&nbsp;UI changes</p>', N'<ul><li>FULLY UPDATED FOR CLF-C01 &amp; CLF-C02: Pass the AWS Certified Cloud Practitioner Certification</li><li>Full Practice Exam with Explanations included!</li><li>Learn the AWS Fundamentals (EC2, ELB, ASG, RDS, ElastiCache, S3)</li><li>All 300+ slides available as downloadable PDF</li></ul><p><br></p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fbackground-course%2F3794620_2f4c_3.jpg?alt=media&token=fc016a7a-03d7-423f-8ee6-499b7755986a', N'Đang bán')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaGV], [MaDM], [TieuDe], [DonGia], [GiaDaGiam], [Mota], [KetQuaDatDuoc], [Hinh], [TrangThai]) VALUES (N'KH834762114', N'GV1660858856', N'DM98964283', N'Viết ứng dụng bán hàng với Java Springboot/API và Angular', 10000000, NULL, N'<p>Khóa học "Thực chiến, xây dựng ứng dụng bán hàng với Java Springboot API và Angular" sẽ giúp bạn học cách tạo một ứng dụng web thực tế hoàn chỉnh từ đầu đến cuối, bao gồm cả phía back-end và front-end.</p><p><br></p><p>Bạn sẽ học cách sử dụng Java Springboot để xây dựng một RESTful API, cung cấp các tính năng cần thiết cho ứng dụng bán hàng như đăng nhập, đăng ký người dùng, quản lý sản phẩm và đơn hàng. Ngoài ra, bạn cũng sẽ được hướng dẫn cách áp dụng các công nghệ an toàn trong việc xây dựng API như JWT, Spring Security và OAuth 2.0.</p><p>Bên cạnh đó, khóa học cũng sẽ giới thiệu về Angular - một framework front-end phổ biến để xây dựng các ứng dụng web động. Bạn sẽ học cách sử dụng Angular để tạo giao diện người dùng cho ứng dụng bán hàng của mình, kết hợp với API đã xây dựng để hiển thị thông tin sản phẩm và quản lý đơn hàng.</p><p>Sau khi hoàn thành khóa học này, bạn sẽ có kiến thức và kỹ năng để xây dựng một ứng dụng web hoàn chỉnh với Java Springboot API và Angular, đáp ứng được các yêu cầu của một ứng dụng bán hàng thực tế.</p>', N'<ul><li>Có khả năng xây dựng một ứng dụng web thực tế hoàn chỉnh từ đầu đến cuối, kết hợp giữa phần back-end với Java Springboot API và phần front-end với Angular</li><li>Có khả năng xây dựng một RESTful API với Java Springboot từ đầu đến cuối, bao gồm các tính năng cơ bản như đăng nhập, đăng ký và quản lý sản phẩm và đơn hàng</li><li>Hiểu rõ về các công nghệ an toàn liên quan đến việc xây dựng RESTful API như JWT, Spring Security và OAuth 2.0, phương pháp để tích hợp vào các dự án thực tế</li><li>Thành thạo sử dụng Angular để tạo giao diện người dùng cho ứng dụng web, kết hợp với RESTful API đã xây dựng để hiển thị thông tin sản phẩm và quản lý đơn hàng</li></ul><p><br></p>', N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fbackground-course%2F39292_b3f3_9.jpg?alt=media&token=cf58d8a1-d0fb-4313-a79d-6d487350b21d', N'Đang bán')
GO
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH1462081184', N'HVX350')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH1462081184', N'HVZ415')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH1941948175', N'HVV911')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH1941948175', N'HVX350')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH2141902988', N'HVX350')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH269761354', N'HVX350')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH760796087', N'HVX350')
INSERT [dbo].[KhoaHocDaMua] ([MaKh], [MaHv]) VALUES (N'KH834762114', N'HVX350')
GO
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC1068030712', N'CKH1653719997', N'Khóa học kinh Doanh', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fvideo-khoa-hoc%2FCKH1653719997%2FNDC1068030712%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=e0d768fd-8fce-42ca-ad40-e2a2ae4f6381', 1)
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC1551493300', N'CKH1779830243', N'Khóa học lập trình ', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fvideo-khoa-hoc%2FCKH1779830243%2FNDC1551493300%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=41445231-f599-41b7-9739-0b449148e5d6', 1)
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC1574536604', N'CKH119414154', N'Khóa học kinh doanh', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fvideo-khoa-hoc%2FCKH119414154%2FNDC1574536604%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=ba0aef20-3be4-45ee-88c5-009a251c7de7', 1)
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC1722283856', N'CKH1066726373', N'Lập trình căn bản', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV53604952%2Fvideo-khoa-hoc%2FCKH1066726373%2FNDC1722283856%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=26f2662a-9ed9-4176-a761-4ea49537d54f', 1)
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC1991957346', N'CKH827855802', N'Bắt đầu', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV1660858856%2Fvideo-khoa-hoc%2FCKH827855802%2FNDC1991957346%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=e01a2648-215d-4817-8181-527e18fc2dbe', 1)
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC268284738', N'CKH1389945211', N'Khóa học', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fvideo-khoa-hoc%2FCKH1389945211%2FNDC268284738%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=abb9782e-862f-46f5-a47c-9da3c0b9bd05', 1)
INSERT [dbo].[NDChuong] ([MaND], [MaCH], [TenND], [MoTa], [Video], [Stt]) VALUES (N'NDC596094015', N'CKH1337284485', N'Khóa học', NULL, N'https://firebasestorage.googleapis.com/v0/b/luutru-web-ban-khoa-hoc-cef36.appspot.com/o/GiangVien%2FGV338510169%2Fvideo-khoa-hoc%2FCKH1337284485%2FNDC596094015%2Fy2meta.com%20-%20Cao%20%E1%BB%90c%2020%20_%20B%20RAY%20x%20DatG%20(ft%20MASEW%20x%20K-ICM)%20_%20MV%20OFFICIAL.mp4?alt=media&token=aa2e8a0a-8e77-4155-aca2-9995c1cd8d37', 1)
GO
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'AD0001', N'VTQ485', N'Admin', N'123456', NULL)
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'ND1499738549', N'VTR249', N'long@gmail.com', N'GV53604952', N'Duyệt')
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'ND1570736391', N'VTR249', N'huu@gmail.com', N'GV1660858856', N'Duyệt')
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'ND1773346691', N'VTQ936', N'kiata4242@gmail.com', NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'ND2057977919', N'VTQ936', N'bachlongnguyen103@gmail.com', NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'ND2067637400', N'VTQ936', N'longbachnguyen09dev@gmail.com', NULL, NULL)
INSERT [dbo].[NguoiDung] ([MaND], [MaVT], [TenDN], [MatKhau], [TrangThai]) VALUES (N'ND385271491', N'VTR249', N'longhufidev@gmail.com', N'GV338510169', N'Duyệt')
GO
INSERT [dbo].[PTTHANHTOAN] ([MaPT], [TenPT]) VALUES (N'PT001', N'VNPAY')
GO
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (N'VTQ485', N'Admin')
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (N'VTQ936', N'Học Viên')
INSERT [dbo].[VaiTro] ([MaVT], [TenVT]) VALUES (N'VTR249', N'Giảng Viên')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_TenDN]    Script Date: 12/25/2023 8:22:21 AM ******/
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [UQ_TenDN] UNIQUE NONCLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChuongKh]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[CT_GioHang]  WITH CHECK ADD FOREIGN KEY([MaGH])
REFERENCES [dbo].[GIOHANG] ([MaGH])
GO
ALTER TABLE [dbo].[CT_GioHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HocVien] ([MaHV])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[GiamGia]  WITH CHECK ADD FOREIGN KEY([MaGv])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HocVien] ([MaHV])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaHV])
REFERENCES [dbo].[HocVien] ([MaHV])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaPT])
REFERENCES [dbo].[PTTHANHTOAN] ([MaPT])
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucKh] ([MaDM])
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[KhoaHocDaMua]  WITH CHECK ADD FOREIGN KEY([MaHv])
REFERENCES [dbo].[HocVien] ([MaHV])
GO
ALTER TABLE [dbo].[KhoaHocDaMua]  WITH CHECK ADD FOREIGN KEY([MaKh])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[KhoaHocGiamGia]  WITH CHECK ADD FOREIGN KEY([MaGG])
REFERENCES [dbo].[GiamGia] ([MaGG])
GO
ALTER TABLE [dbo].[KhoaHocGiamGia]  WITH CHECK ADD FOREIGN KEY([Makh])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[NDChuong]  WITH CHECK ADD FOREIGN KEY([MaCH])
REFERENCES [dbo].[ChuongKh] ([MaCH])
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD FOREIGN KEY([MaVT])
REFERENCES [dbo].[VaiTro] ([MaVT])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [CHK_DANHGIA_SoSao] CHECK  (([SoSao]>=(1) AND [SoSao]<=(5)))
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [CHK_DANHGIA_SoSao]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [CHK_GIANGVIEN_NgaySinh] CHECK  (([NgaySinh]<=getdate()))
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [CHK_GIANGVIEN_NgaySinh]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [CHK_GIANGVIEN_Phai] CHECK  (([Phai]='N?' OR [Phai]='Nam'))
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [CHK_GIANGVIEN_Phai]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [CHK_GIANGVIEN_SDT] CHECK  ((len([SDT])=(10) AND [SDT] like '[0-9]%'))
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [CHK_GIANGVIEN_SDT]
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD  CONSTRAINT [CHK_HOCVIEN_NgaySinh] CHECK  (([NgaySinh]<=getdate()))
GO
ALTER TABLE [dbo].[HocVien] CHECK CONSTRAINT [CHK_HOCVIEN_NgaySinh]
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD  CONSTRAINT [CHK_HOCVIEN_Phai] CHECK  (([Phai]='N?' OR [Phai]='Nam'))
GO
ALTER TABLE [dbo].[HocVien] CHECK CONSTRAINT [CHK_HOCVIEN_Phai]
GO
ALTER TABLE [dbo].[HocVien]  WITH CHECK ADD  CONSTRAINT [CHK_HOCVIEN_SDT] CHECK  ((len([SDT])=(10) AND [SDT] like '[0-9]%'))
GO
ALTER TABLE [dbo].[HocVien] CHECK CONSTRAINT [CHK_HOCVIEN_SDT]
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [CHK_KHOAHOC_Gia] CHECK  (([DonGia]>=[GiaDaGiam]))
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [CHK_KHOAHOC_Gia]
GO
