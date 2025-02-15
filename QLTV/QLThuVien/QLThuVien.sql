
/****** Object:  Database [QLThuVien]  */
CREATE DATABASE [QLThuVien]
 CONTAINMENT = NONE
 
ALTER DATABASE [QLThuVien] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLThuVien] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QLThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLThuVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLThuVien]
GO
/****** Object:  Table [dbo].[tblChiTietMuon]*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChiTietMuon](
	[MaPM] [int] NOT NULL,
	[MaSach] [char](10) NOT NULL,
	[NgayThue] [datetime] NOT NULL,
	[NgayTra] [datetime] NOT NULL,
 CONSTRAINT [PK_tblChiTietMuon] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDocGia] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDocGia](
	[MaDG] [char](10) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [char](12) NULL,
	[Email] [nvarchar](30) NULL,
 CONSTRAINT [PK_tblDocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHoaDonMuon]   */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHoaDonMuon](
	[MaPM] [int] NOT NULL,
	[MaDG] [char](10) NOT NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_tblHoaDonMuon_1] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSach] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSach](
	[MaSach] [char](10) NOT NULL,
	[MaTL] [char](10) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[TacGia] [nvarchar](30) NULL,
	[NhaXuatBan] [nvarchar](30) NULL,
	[NgayMuaSach] [datetime] NULL,
	[TonTai] [int] NULL,
	[SoLanMuon] [int] NULL,
 CONSTRAINT [PK_tblSach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTheLoai]   */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTheLoai](
	[MaTL] [char](10) NOT NULL,
	[TenTL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblTheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTTNhanVien]    */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTTNhanVien](
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [char](12) NULL,
 CONSTRAINT [PK_tblTTNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[ID] [nchar](10) NOT NULL,
	[Password] [nchar](20) NOT NULL,
	[PhanQuyen] [int] NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblChiTietMuon] ([MaPM], [MaSach], [NgayThue], [NgayTra]) VALUES (2, N'MS006     ', CAST(0x0000A60C00000000 AS DateTime), CAST(0x0000A61300000000 AS DateTime))
INSERT [dbo].[tblDocGia] ([MaDG], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email]) VALUES (N'DG001     ', N'Châu Tinh Trì', 0, CAST(0x0000A61200000000 AS DateTime), N'Quảng Châu - Trung Quốc', N'0123548521  ', N'chautinhtinh@gmail.com')
INSERT [dbo].[tblDocGia] ([MaDG], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email]) VALUES (N'DG002     ', N'Nguyễn Thị Bé', 1, CAST(0x000088E300000000 AS DateTime), N'Đà Nẵng', N'0166555555  ', N'bexinhxinh@yahoo.com')
INSERT [dbo].[tblDocGia] ([MaDG], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email]) VALUES (N'DG003     ', N'Trần Hạo Nam', 0, CAST(0x0000806800000000 AS DateTime), N'Hải Phòng', N'0120000000  ', N'nguoitronggiangho@gmail.com')
INSERT [dbo].[tblHoaDonMuon] ([MaPM], [MaDG], [TinhTrang]) VALUES (1, N'DG001     ', 1)
INSERT [dbo].[tblHoaDonMuon] ([MaPM], [MaDG], [TinhTrang]) VALUES (2, N'DG002     ', 0)
INSERT [dbo].[tblHoaDonMuon] ([MaPM], [MaDG], [TinhTrang]) VALUES (3, N'DG003     ', 1)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS001     ', N'L010      ', N'Hướng dẫn nấu các món ăn Đông Á', N'Trần Hoàng Lân', N'KiMoChi', CAST(0x0000A5D400000000 AS DateTime), 481, 19)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS002     ', N'L010      ', N'Hướng dẫn nấu các món ăn Tây', N'Trần Hoàng Lân', N'KiMoChi', CAST(0x0000A5D400000000 AS DateTime), 392, 8)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS004     ', N'L001      ', N'Kỹ năng sinh tồn - Phần 1', N'Zoro', N'One Piece', CAST(0x0000A5D400000000 AS DateTime), 293, 5)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS005     ', N'L001      ', N'Kỹ năng sinh tồn - Phần 3', N'Robin', N'One Piece', CAST(0x0000A5D400000000 AS DateTime), 192, 6)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS006     ', N'L001      ', N'Kỹ năng sinh tồn - Phần 2', N'Robin', N'One Piece', CAST(0x0000A5D400000000 AS DateTime), 94, 5)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS007     ', N'L003      ', N'Nhà Giả Kim ', N'Paulo Coelho', N'', CAST(0x0000A61400000000 AS DateTime), 200, 30)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS008     ', N'L003      ', N'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2014)', N'Luis Sepulveda', N'', CAST(0x0000A61400000000 AS DateTime), 200, 21)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS009     ', N'L003      ', N'Cho Tôi Một Vé Đi Tuổi Thơ', N'Nguyễn Nhật Ánh', N'', CAST(0x0000A61400000000 AS DateTime), 200, 18)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS010     ', N'L003      ', N'Bàn Có Năm Chỗ Ngồi', N'Nguyễn Nhật Ánh', N'', CAST(0x0000A61400000000 AS DateTime), 200, 18)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS011     ', N'L003      ', N'Bồ Câu Không Đưa Thư', N'Nguyễn Nhật Ánh', N'', CAST(0x0000A61400000000 AS DateTime), 200, 2)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS012     ', N'L003      ', N'Đời Cơ Bản Là Buồn Cười', N'Lê Bích', N'', CAST(0x0000A61400000000 AS DateTime), 200, 3)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS013     ', N'L003      ', N'Bong Bóng Lên Trời', N'Nguyễn Nhật Ánh', N'', CAST(0x0000A61400000000 AS DateTime), 200, 4)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS014     ', N'L003      ', N'Khi Lỗi Thuộc Về Những Vì Sao', N'John Green', N'', CAST(0x0000A61400000000 AS DateTime), 200, 0)
INSERT [dbo].[tblSach] ([MaSach], [MaTL], [TenSach], [TacGia], [NhaXuatBan], [NgayMuaSach], [TonTai], [SoLanMuon]) VALUES (N'MS015     ', N'L003      ', N'Bức Xúc Không Làm Ta Vô Can', N'Đặng Hoàng Giang', N'', CAST(0x0000A61400000000 AS DateTime), 200, 0)
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L001      ', N'Sách kỹ năng sống')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L002      ', N'Sách truyện ngắn - Bút ký')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L003      ', N'Văn học')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L004      ', N'Sách văn hóa - xã hội')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L005      ', N'Sách thiếu nhi')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L006      ', N'Sách truyện tranh')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L007      ', N'Sách lịch sử Việt Nam')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L008      ', N'Sách Hentai')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L009      ', N'Sách du lịch')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L010      ', N'Sách nấu ăn')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L011      ', N'Sách kỹ thuật công nghệ')
INSERT [dbo].[tblTheLoai] ([MaTL], [TenTL]) VALUES (N'L012      ', N'Sách tin học')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV001     ', N'Nguyễn Văn Dũng', 0, CAST(0x0000881000000000 AS DateTime), N'Hà Nội', N'012106172360')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV002     ', N'Nguyễn Hồng Phương', 0, CAST(0x0000884600000000 AS DateTime), N'Quảng Ngãi', N'01206172360 ')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV004     ', N'Nguyễn Vân', 1, CAST(0x00008C6300000000 AS DateTime), N'Hà Nội', N'01206172360 ')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV006     ', N'Trần Phúc Thuận', 0, CAST(0x000088CD00000000 AS DateTime), N'Đồng Nai', N'0123456789  ')
INSERT [dbo].[tblTTNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV007     ', N'Thới Lục', 0, CAST(0x0000874100000000 AS DateTime), N'TP HCM', N'01206172323 ')
INSERT [dbo].[tblUser] ([ID], [Password], [PhanQuyen]) VALUES (N'admin     ', N'1                   ', 0)
INSERT [dbo].[tblUser] ([ID], [Password], [PhanQuyen]) VALUES (N'dung      ', N'dung                ', 3)
ALTER TABLE [dbo].[tblChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietMuon_tblHoaDonMuon] FOREIGN KEY([MaPM])
REFERENCES [dbo].[tblHoaDonMuon] ([MaPM])
GO
ALTER TABLE [dbo].[tblChiTietMuon] CHECK CONSTRAINT [FK_tblChiTietMuon_tblHoaDonMuon]
GO
ALTER TABLE [dbo].[tblChiTietMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietMuon_tblSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tblSach] ([MaSach])
GO
ALTER TABLE [dbo].[tblChiTietMuon] CHECK CONSTRAINT [FK_tblChiTietMuon_tblSach]
GO
ALTER TABLE [dbo].[tblHoaDonMuon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDonMuon_tblDocGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[tblDocGia] ([MaDG])
GO
ALTER TABLE [dbo].[tblHoaDonMuon] CHECK CONSTRAINT [FK_tblHoaDonMuon_tblDocGia]
GO
ALTER TABLE [dbo].[tblSach]  WITH CHECK ADD  CONSTRAINT [FK_tblSach_tblTheLoai] FOREIGN KEY([MaTL])
REFERENCES [dbo].[tblTheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[tblSach] CHECK CONSTRAINT [FK_tblSach_tblTheLoai]
GO
USE [master]
GO
ALTER DATABASE [QLThuVien] SET  READ_WRITE 
GO
