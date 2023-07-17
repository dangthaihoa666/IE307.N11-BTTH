--create database QLBANSACH
USE QLBANSACH
GO
/****** Object:  Table [dbo].[CHU_DE]    Script Date: 11/28/2020 3:08:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHU_DE](
	[Mcd] [int] IDENTITY(1,1) NOT NULL,
	[Ten_chu_de] [nvarchar](50) NULL,
	[PID] [int] NULL,
 CONSTRAINT [PK_CHU_DE] PRIMARY KEY CLUSTERED 
(
	[Mcd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DAT_HANG]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DAT_HANG](
	[Mctddh] [int] IDENTITY(1,1) NOT NULL,
	[Sdh] [int] NOT NULL,
	[Ms] [int] NOT NULL,
	[So_luong] [int] NULL,
	[Don_gia] [float] NULL,
	[Thanh_tien] [float] NULL,
 CONSTRAINT [PK_CT_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[Mctddh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DON_DAT_HANG]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DON_DAT_HANG](
	[Sdh] [int] IDENTITY(1,1) NOT NULL,
	[Mkh] [int] NULL,
	[Ngay_dat_hang] [datetime] NOT NULL,
	[Tri_gia] [money] NULL,
	[Da_giao_hang] [bit] NOT NULL,
	[Ngay_giao_hang] [datetime] NULL,
 CONSTRAINT [PK_DON_DAT_HANG] PRIMARY KEY CLUSTERED 
(
	[Sdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACH_HANG]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACH_HANG](
	[Mkh] [int] IDENTITY(1,1) NOT NULL,
	[Ho_ten] [nvarchar](50) NOT NULL,
	[Dia_chi] [nvarchar](50) NULL,
	[Dien_thoai] [nvarchar](10) NULL,
	[Ten_dang_nhap] [nvarchar](15) NOT NULL,
	[Mat_khau] [nvarchar](15) NOT NULL,
	[Ngay_sinh] [datetime] NULL,
	[Gioi_tinh] [bit] NOT NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_KHACH_HANG] PRIMARY KEY CLUSTERED 
(
	[Mkh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHA_XUAT_BAN]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHA_XUAT_BAN](
	[Mnxb] [int] IDENTITY(1,1) NOT NULL,
	[Ten_nha_xuat_ban] [nvarchar](100) NULL,
	[Dia_chi] [nvarchar](150) NULL,
	[Dien_thoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHA_XUAT_BAN] PRIMARY KEY CLUSTERED 
(
	[Mnxb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANG_CAO]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANG_CAO](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenCTy] [nvarchar](200) NULL,
	[Hinh_Minh_Hoa] [nvarchar](100) NULL,
	[HREF] [nvarchar](100) NULL,
	[Ngay_bat_dau] [datetime] NULL,
	[Ngay_het_han] [datetime] NULL,
 CONSTRAINT [PK_QUANG_CAO] PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[Ms] [int] IDENTITY(1,1) NOT NULL,
	[Ten_sach] [nvarchar](100) NOT NULL,
	[Don_gia] [money] NULL,
	[Don_vi_tinh] [nvarchar](10) NULL,
	[Mo_ta] [nvarchar](max) NULL,
	[Hinh_minh_hoa] [nvarchar](200) NULL,
	[Mcd] [int] NULL,
	[Mnxb] [int] NULL,
	[Ngay_cap_nhat] [datetime] NULL,
	[So_luong_ban] [int] NULL,
	[So_lan_xem] [int] NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[Ms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAC_GIA]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAC_GIA](
	[Mtg] [int] IDENTITY(1,1) NOT NULL,
	[Ten_tac_gia] [nvarchar](50) NULL,
	[Dia_chi] [nvarchar](100) NULL,
	[Dien_thoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_TAC_GIA] PRIMARY KEY CLUSTERED 
(
	[Mtg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THAM_GIA]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAM_GIA](
	[Ms] [int] NOT NULL,
	[Mtg] [int] NOT NULL,
	[Vai_tro] [nvarchar](50) NULL,
 CONSTRAINT [PK_THAM_GIA] PRIMARY KEY CLUSTERED 
(
	[Ms] ASC,
	[Mtg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHU_DE] ON 

INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (4, N'Ngoại ngữ', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (5, N'Tin học', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (7, N'Luật ', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (9, N'Văn học dân gian', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (10, N'Văn học nước ngoài', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (12, N'Khoa học cơ bản', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (13, N'Khoa học thần bí', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (14, N'Khoa học kỹ thuật', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (15, N'Nông nghiệp', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (16, N'Triết học - Chính trị', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (17, N'Lịch sử, địa lý', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (18, N'Phong tục', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (19, N'Tôn giáo', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (20, N'Mỹ thuật', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (21, N'Nghệ thuật', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (22, N'Âm nhạc', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (23, N'Sách giáo khoa', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (24, N'Sách tham khảo', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (25, N'Nhà ở', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (27, N'Nghệ thuật sống', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (28, N'Thể dục thể thao', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (29, N'Giới tính va sinh lý', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (31, N'Nữ công gia chánh', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (32, N'Nghệ thuật làm đẹp', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (33, N'Du lịch', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (36, N'Y học', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (37, N'Kế toán', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (39, N'Thiên văn', 0)
INSERT [dbo].[CHU_DE] ([Mcd], [Ten_chu_de], [PID]) VALUES (51, N'Tình yêu gia đình', NULL)
SET IDENTITY_INSERT [dbo].[CHU_DE] OFF
GO
SET IDENTITY_INSERT [dbo].[CT_DAT_HANG] ON 

INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (1, 45, 65, 2, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (2, 45, 64, 2, 198000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (3, 45, 27, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (4, 46, 64, 1, 198000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (5, 46, 63, 1, 29000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (6, 47, 65, 1, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (7, 47, 27, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (8, 48, 65, 1, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (9, 48, 64, 1, 198000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (10, 49, 27, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (11, 49, 43, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (12, 55, 65, 2, NULL, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (13, 55, 64, 3, NULL, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (14, 55, 62, 1, NULL, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (16, 60, 65, 2, 22000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (17, 61, 19, 1, 16800, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (18, 61, 33, 1, 25000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (19, 61, 43, 1, 18000, NULL)
INSERT [dbo].[CT_DAT_HANG] ([Mctddh], [Sdh], [Ms], [So_luong], [Don_gia], [Thanh_tien]) VALUES (20, 61, 64, 1, 198000, NULL)
SET IDENTITY_INSERT [dbo].[CT_DAT_HANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DON_DAT_HANG] ON 

INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (1, 1, CAST(N'2004-09-19T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (2, 2, CAST(N'2004-09-20T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (3, 5, CAST(N'2004-09-19T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (4, 1, CAST(N'2004-09-19T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (5, 5, CAST(N'2004-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (44, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (45, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (46, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (47, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (48, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (49, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (50, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (51, 5, CAST(N'2005-09-16T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (52, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (53, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (54, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (55, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (56, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (57, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (58, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (59, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (60, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[DON_DAT_HANG] ([Sdh], [Mkh], [Ngay_dat_hang], [Tri_gia], [Da_giao_hang], [Ngay_giao_hang]) VALUES (61, 33, CAST(N'2005-10-07T00:00:00.000' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[DON_DAT_HANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACH_HANG] ON 

INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (1, N'Phạm Văn Khoa', N'Trần Huy Liệu', N'0918062755', N'pvkhoa', N'', CAST(N'1962-07-08T00:00:00.000' AS DateTime), 0, N'pvkhoa@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (2, N'Nguyễn Tiến Luân', N'Quận 6', N'Chưa có', N'ntluan', N'luan', CAST(N'1974-07-15T00:00:00.000' AS DateTime), 1, N'ntluan@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (3, N'Đặng Quốc Hòa', N'Sư Vạn Hạnh', N'Chưa có', N'dqhoa', N'hoa', CAST(N'1965-07-24T00:00:00.000' AS DateTime), 1, N'dqhoa@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (4, N'Ngô Ngọc Ngân', N'Khu chung cư', N'0918544699', N'nnngan', N'ngan', CAST(N'1946-08-15T00:00:00.000' AS DateTime), 1, N'nnngan@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (5, N'Đỗ Quỳnh Hương', N'Cống Quỳnh', N'0908123456', N'dqhuong', N'huong', CAST(N'1982-03-24T00:00:00.000' AS DateTime), 0, N'dqhuong@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (7, N'Trần Thị Thu Trang', N'Nơ Trang Long', N'Chưa có', N'ttttrang       ', N'trang          ', CAST(N'1962-08-05T00:00:00.000' AS DateTime), 0, N'ttrang@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (8, N'Nguyễn Thiên Thanh', N'Hai Bà Trưng', N'0908320111', N'ntthanh', N'thanh', CAST(N'1979-04-04T00:00:00.000' AS DateTime), 0, N'ntthanh@t3h.hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (9, N'Trần Thị Hải Yến', N'Trần Hưng Đạo', N'8111111   ', N'tthyen', N'yen', CAST(N'1975-07-15T00:00:00.000' AS DateTime), 0, N'tthyan@vol.vnn.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (10, N'Nguyễn Thị Thanh Mai', N'Trần Quang Diệu', N'81111222', N'nttmai         ', N'mai            ', CAST(N'1982-09-15T00:00:00.000' AS DateTime), 0, NULL)
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (11, N'Nguyễn Thành Danh', N'Cộng Hòa', N'8103751   ', N'ntdanh', N'danh', CAST(N'1977-07-16T00:00:00.000' AS DateTime), 1, N'ntdanh@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (12, N'Phạm Thị Nga', N'Q6 - Tp.HCM', N'0831564512', N'ptnga', N'nga', CAST(N'2003-08-18T00:00:00.000' AS DateTime), 0, N'ptnhung@hcmuns.edu.vn')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (30, N'Lê Doanh Doanh', N'2Bis Hùng Vương', N'07077865', N'lddoanh', N'doanh', CAST(N'1977-05-06T00:00:00.000' AS DateTime), 0, N'lddoanh@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (33, N'Đòan Ngọc Minh Tâm', N'2 Đinh Tiên Hòang', N'0909092222', N'dnmtam', N'tam', CAST(N'1978-05-15T00:00:00.000' AS DateTime), 0, N'ndmtam@yahoo.com')
INSERT [dbo].[KHACH_HANG] ([Mkh], [Ho_ten], [Dia_chi], [Dien_thoai], [Ten_dang_nhap], [Mat_khau], [Ngay_sinh], [Gioi_tinh], [Email]) VALUES (46, N'Trần Khải Nhi', N'3 Bùi Hữu Nghĩa', N'0909095555', N'tknhi', N'nhi', CAST(N'1980-04-01T00:00:00.000' AS DateTime), 1, N'tknhi@yahoo.com')
SET IDENTITY_INSERT [dbo].[KHACH_HANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHA_XUAT_BAN] ON 

INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (1, N'Nhà xuất bản Trẻ', N'124 Nguyễn Văn Cừ Q.1 Tp.HCM', N'19001560')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (2, N'NXB Thống kê', N'Biên Hòa-Đồng Nai', N'19001511')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (3, N'Kim đồng', N'Tp.HCM', N'19001570')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (4, N'Đại học quốc gia', N'Tp.HCM', N'0908419981')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (5, N'Văn hóa nghệ thuật', N'Đà Nẵng', N'0903118833')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (6, N'Văn hóa', N'Bình Dương', N'0913336677')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (7, N'Lao động - Xã hội', N'Tp.HCM', N'0989888888')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (8, N'Khoa Học & Kỹ Thuật', N'Hà Nội', N'8351056')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (9, N'Thanh Niên', N'Tp.HCM', N'4545454')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (13, N'NXB Tài Chính', N'Huế', N'')
INSERT [dbo].[NHA_XUAT_BAN] ([Mnxb], [Ten_nha_xuat_ban], [Dia_chi], [Dien_thoai]) VALUES (14, N'NXB Phụ Nữ', N'Tp.HCM', N'')
SET IDENTITY_INSERT [dbo].[NHA_XUAT_BAN] OFF
GO
SET IDENTITY_INSERT [dbo].[QUANG_CAO] ON 

INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (1, N'Thời trang Việt Nam', N'Thoitrang', N'http://www.vietfashion.vn/', NULL, NULL)
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (2, N'Bột giặt Omo', N'Omo', N'http://www.haydetretudo.com.vn/', CAST(N'2005-05-10T00:00:00.000' AS DateTime), CAST(N'2006-06-10T00:00:00.000' AS DateTime))
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (3, N'Bánh Trung thu', N'Trungthu', N'http://demo10.webinvietnam.com/For_Ad/h/hanobaco/', CAST(N'2005-05-10T00:00:00.000' AS DateTime), CAST(N'2005-05-10T00:00:00.000' AS DateTime))
INSERT [dbo].[QUANG_CAO] ([STT], [TenCTy], [Hinh_Minh_Hoa], [HREF], [Ngay_bat_dau], [Ngay_het_han]) VALUES (10, N'Sữa Cô gái Hà Lan', N'Fristi', N'http://www.dutchlady.com.vn', CAST(N'2005-05-10T00:00:00.000' AS DateTime), CAST(N'2006-06-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[QUANG_CAO] OFF
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (1, N'Giáo trình Tin học cơ bản new', 26000.0000, N'Cuốn', N'Nội dung của cuốn: Tin Học Cơ Bản Windows XP gồm có 7 chương:
Chương 1: Một số vấn đề cơ bản. 
Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong My Computer và Windows Explorer. 
Chương 3: Các thao tác trong windows XP. 
Chương 4: Các thiết lập trong Windows XP. 
Chương 5: Bảo trì máy tính. 
Chương 6: Các phím tắt 
Chương 7: Hỏi và đáp các thắc mắc.
Xin trân trọng giới thiệu cuốn sách cùng bạn', N'http://192.168.1.26/webapidemo/Images/THCB.jpg', 5, 1, CAST(N'2004-07-17T00:00:00.000' AS DateTime), 120, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (2, N'Giáo trình Tin học văn phòng', 12000.0000, N'Cuốn', N'Cuốn sách này gồm 3 phần sau:
Phần 1: Xử lý văn bản trong Microsoft Office Word 2007. 
Phần 2: Xử lý bảng tính trong Microsoft Office Excel 2007. 
Phần 3: Quản lý cơ sở dữ liệu trong Microsoft Office Access 2007.
Xin trân trọng giới thiệu cùng các bạn.', N'http://192.168.1.26/webapidemo/Images/TH004.jpg', 5, 2, CAST(N'2004-06-05T00:00:00.000' AS DateTime), 25, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (3, N'Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0', 11500.0000, N'Cuốn', N'Cuốn sách "Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0" này giới thiệu các nội dung sau:
Chương 1: Căn bản về cơ sở dữ liệu.
Chương 2: Các bộ kết nối và tương tác dữ liệu.
Chương 3: Bộ chứa dữ liệu DataSet.
Chương 4: Bộ điều hợp dữ liệu DataAdapter.
Chương 5: Sử dụng các điều khiển ràng buộc dữ liệu.
Chương 6: Tạo báo cáo với Crystal Report.
Chương 7: ADO.NET và XML.
Xin trân trọng giới thiệu cùng các bạn.', N'http://192.168.1.26/webapidemo/Images/Gt_Thcb.jpg', 5, 3, CAST(N'2004-07-12T00:00:00.000' AS DateTime), 23, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (4, N'Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu', 20000.0000, N'Cuốn', N'"Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu" sẽ cung cấp kỹ thuật và hướng dẫn bạn:
Tự học xây dựng ứng dụng Web quản lý CSDL toàn diện với ADO.NET 2.0 và ASP.NET. 
Khai thác các đối tượng và nguồn dữ liệu dành cho WebForm. 
Sử dụng các điều khiển dữ liệu đặc thù dành riêng cho ASP.NET và Web. 
Làm quen với những khái niệm xử lý dữ liệu hoàn toàn mới. 
Ràng buộc dữ liệu với các thành phần giao diện Web Forms. 
Thiết kế ứng dụng Web "Quản lý CD Shop" trực quan và thực tế. 
Cung cấp một kiến thức hoàn chỉnh về Web cho các bạn yêu thích ngôn ngữ Visual Basic và .NET Framework.
Sách có kèm theo CD-ROM bài tập.
Xin trân trọng giới thiệu cùng các bạn.', N'http://192.168.1.26/webapidemo/Images/LTWeb2005.jpg', 5, 4, CAST(N'2004-07-18T00:00:00.000' AS DateTime), 240, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (5, N'Giáo trình Tin học quản lý 1', 21000.0000, N'Cuốn', N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu.', N'http://192.168.1.26/webapidemo/Images/TH001.jpg', 5, 1, CAST(N'2004-06-18T00:00:00.000' AS DateTime), 16, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (6, N'Giáo trình Tin học quản lý 2', 21000.0000, N'Cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn.', N'http://192.168.1.26/webapidemo/Images/130499.jpg', 5, 5, CAST(N'2004-05-15T00:00:00.000' AS DateTime), 65, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (7, N'Giáo trình SQL Server', 18000.0000, N'Cuốn', N'Hệ quản trị cơ sở dữ liệu SQl Server 2003
Test thu', N'http://192.168.1.26/webapidemo/Images/Gt_Thcb.jpg', 5, 6, CAST(N'2004-08-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (8, N'Giáo trình Phân tích hệ thống', 61000.0000, N'Cuốn', N'', N'http://192.168.1.26/webapidemo/Images/Gt_Thcb.jpg', 5, 7, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (9, N'Giáo trình VB.Net 1', 25000.0000, N'Cuốn', N'', N'http://192.168.1.26/webapidemo/Images/Gt_Thcb.jpg', 5, 8, CAST(N'2003-02-11T00:00:00.000' AS DateTime), 87, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (10, N'Giáo trình VB.Net 2', 23000.0000, N'Cuốn', N'', N'http://192.168.1.26/webapidemo/Images/Gt_Thcb.jpg', 5, 2, CAST(N'2002-04-12T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (11, N'Giáo trình Oracle ', 61000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/Gt_Thcb.jpg', 5, 3, CAST(N'2001-09-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (13, N'Phong Cách Quản Lý Kinh Doanh Hiện Đại ', 61000.0000, N'Cuốn', N'Cuốn sách này không đi vào chi tiết những chủ đề quản lý cổ điển đã được nhắc đến trong nhiều cuốn sách khác như tổ chức cuộc họp, cung cấp số liệu, quản lý thời gian. Mục đích của cuốn sách này là mang lại cho bạn "nhiều hơn", một giá trị gia tăng so với những gì bạn đã biết và đã áp dụng, và giúp bạn tối ưu hóa việc quản lý chuyên môn và quản lý nhân sự.
Nội dung sách bao gồm 9 chương:
Chương 1: Bốn cách nhìn quản lý theo sắc màu.
Chương 2: Quản lý các sắc màu của một cộng tác viên.
Chương 3: Quản lý nhóm theo màu sắc.
Chương 4: Quyết định cách thích hợp dựa vào bản thân, người khác và hoàn cảnh.
Chương 5: Phát triển hiệu quả tối ưu theo sắc màu.
Chương 6: Hiểu rõ những sai lệch trong cách quản lý của mình.
Chương 7: Nền tảng cơ sở của hệ thống Success Insights: Bốn màu với tám kiểu.
Chương 8: Nhận biết và quản lý tám kiểu cộng tác viên.
Chương 9: Cải thiện người quản lý.
Xin trân trọng giới thiệu. 
', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 9, 8, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (14, N'Giáo Trình Lý Thuyết Tài Chính - Tiền Tệ ', 23000.0000, N'Cuốn', N'Cuốn sách này không đi vào chi tiết những chủ đề quản lý cổ điển đã được nhắc đến trong nhiều cuốn sách khác như tổ chức cuộc họp, cung cấp số liệu, quản lý thời gian. Mục đích của cuốn sách này là mang lại cho bạn "nhiều hơn", một giá trị gia tăng so với những gì bạn đã biết và đã áp dụng, và giúp bạn tối ưu hóa việc quản lý chuyên môn và quản lý nhân sự.
Nội dung sách bao gồm 9 chương:
Chương 1: Bốn cách nhìn quản lý theo sắc màu.
Chương 2: Quản lý các sắc màu của một cộng tác viên.
Chương 3: Quản lý nhóm theo màu sắc.
Chương 4: Quyết định cách thích hợp dựa vào bản thân, người khác và hoàn cảnh.
Chương 5: Phát triển hiệu quả tối ưu theo sắc màu.
Chương 6: Hiểu rõ những sai lệch trong cách quản lý của mình.
Chương 7: Nền tảng cơ sở của hệ thống Success Insights: Bốn màu với tám kiểu.
Chương 8: Nhận biết và quản lý tám kiểu cộng tác viên.
Chương 9: Cải thiện người quản lý.
Xin trân trọng giới thiệu. 
', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 13, 7, CAST(N'2003-05-24T00:00:00.000' AS DateTime), 58, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (15, N'Cán Bộ Quản Lý Trong Sản Xuất Công Nghiệp', 25000.0000, N'Cuốn', N'Cuốn sách này gồm những nội dung chính sau:
Phần 1: Quản lý sản xuất công nghiệp trong kinh tế thị trường
- Kinh doanh sản xuất công nghiệp trong kinh tế thị trường
- Sự cần thiết và các chức năng của quản lý nhà nước đối với doanh nghiệp sản xuất công nghiệp
- Nội dung và tính chất của những công việc mà cán bộ quản lý sản xuất công nghiệp phải đảm nhiệm, hoàn thành.
- Kinh nghiệm đào tạo và đánh giá cán bộ quản lý kinh doanh ở Nhật.
Phần 2: Thực trạng và một số giải pháp nhằm nâng cao chất lượng đội ngũ cán bộ quản lý sản xuất công nghiệp Việt Nam
- Thực trạng cán bộ quản lý doanh nghiệp công nghiệp của Việt Nam
- Tiêu chuẩn hóa cán bộ quản lý sản xuất công nghiệp Việt Nam
- Đổi mới căn bản nội dung và phương pháp đào tạo cán bộ quản lý sản xuất công nghiệp Việt Nam
Xin trân trọng giới thiệu. 
 
', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 5, 6, CAST(N'2003-08-27T00:00:00.000' AS DateTime), 89, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (16, N'Tư Duy Chiến Lược (Quản Lý - Tại Sao? Thế Nào?', 18000.0000, N'Cuốn', N'Khả năng hoạch định dài hạn đồng thời tối ưu hóa tình hình hoạt động ngắn hạn là một yêu cầu bắt buộc phải có đối với các nhà quản lý.Tư Duy Chiến Lược sẽ giúp bạn vạch ra con đường đến thành công đồng thời giúp hình thành các kỹ năng phân tích và hoạch định theo nhóm. Tất cả các lĩnh vực then chốt để hình thành và thực thi một chiến lược đều được trình bày cặn kẽ trong cuốn sách này, từ việc nghiên cứu và thu thập thông tin nền tảng, hình thành một chiến lược mới đến việc xem xét và ứng dụng chiến lược ấy. Cả thảy có 101 chỉ dẫn nhằm cung cấp cho các bạn những lời khuyên thực tiễn hơn, đồng thời bài tập tự đánh giá sẽ giúp bạn xác định xem mình là một nhà tư duy chiến lược hiệu quả đến mức nào. Khi bạn có nhiều tham vọng hơn về việc hoạch định cho tương lai, cẩm nang này sẽ là quyển sách tham khảo không thể thiếu, giúp suy nghĩ của bạn đi đúng hướng.
Xin trân trọng giới thiệu cuốn sách cùng bạn. ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 28, 3, CAST(N'2003-09-19T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (17, N'Quản Lý Dự Án (Quản Lý - Tại Sao? Thế Nào?) ', 61000.0000, N'Cuốn', N'Để thành công trong môi trường kinh doanh cạnh tranh hiện nay, các giám đốc dự án phải đạt được kết quả trong phạm thời gian và ngân sách đưa ra. Biết cách áp dụng các quy trình, phương pháp và kỹ thuật chỉ dẫn trong cuốn Quản Lý Dự Án này, bạn sẽ tăng tối đa khả năng thực hiện công việc và đảm bảo đạt kết quả tối ưu khi thực hiện dự án.
Được thiết kế phù hợp với tất cả các nhà quản lý ở đủ mọi trình độ, cẩm nang này sẽ trang bị cho bạn những kiến thức cần thiết trong việc quản lý mọi dự án, dù lớn hay nhỏ, để đạt đến thành công. Từ việc khởi xướng một dự án, thúc đẩy, phát triển nhóm dự án đến việc vượt qua những khó khăn, trở ngại; mỗi một khía cạnh của quản lý dự án chuyện nghiệp đều được trình bày một cách rõ nét. Cẩm nang bao gồm các hướng dẫn từng bước về hoạch định dự án và 101 mẹo vặt cung cấp cho bạn những lời khuyên thực tế. 
', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 4, 8, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (18, N'Điều Chỉnh Một Số Chính Sách Kinh Tế Ở Trung Quốc (Giai Đoạn 1992 - 2010)', 21000.0000, N'Cuốn', N'Cuốn sách này tập trung vào một số nội dung chính sau đây:

Tìm hiểu về những nhân tố đòi hỏi Trung Quốc phải điều chỉnh chính sách kinh tế.

Tìm hiểu về những nội dung chính trong điều chỉnh kinh tế ở Trung Quốc giai đoạn từ năm 1992 - 2010.

Tìm hiểu về tác động của việc điều chỉnh chính sách kinh tế của Trung Quốc đối với thế giới và khu vực trong đó có Việt Nam, sau đó rút tỉa một số kinh nghiệm của Trung Quốc trong quá trình điều chỉnh chính sách kinh tế mà Việt Nam có thể tham khảo.
Tập thể tác giả tham gia công trình này đều là những người chuyên nghiên cứu về Trung Quốc, hy vọng sẽ đem lại cho các bạn nhiều thông tin bổ ích.', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 5, 7, CAST(N'2004-05-15T00:00:00.000' AS DateTime), 19, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (19, N'Hợp Đồng Kinh Tế Trong Kinh Doanh ', 16800.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 14, 6, CAST(N'2004-08-16T00:00:00.000' AS DateTime), 46, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (20, N'Từ Xiatơn Đến Đôha - Toàn Cầu Hóa Và Tổ Chức Thương Mại Thế Giới (Tiếng Nói Bè Bạn)', 25000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 9, 5, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 99, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (21, N'Thương Hiệu Với Nhà Quản Lý - The Road To Success ', 61000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 15, 2, CAST(N'2003-02-11T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (22, N'Xuất Nhập Khẩu Hàng Hóa (International Merchandise Trade Vietnam 2002) ', 61000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 18, 3, CAST(N'2002-04-12T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (23, N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh', 85000.0000, N'Cuốn', N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh là một cuốn sách bài tập dành cho những học sinh/sinh viên nghiêm túc quan tâm đến tầm quan trọng của việc nâng cao những yếu tố kỹ thuật cho kỹ năng viết của mình. Rèn luyện để viết cho tốt chẳng khác gì tự trang bị cho mình một sức mạnh cần thiết để thành công - khi đi học cũng như khi ra ngoài xã hội. Trui rèn được một trình độ viết “cứng” không hề là chuyện bỗng nhiên trời cho mà có được; đó phải là kết quả của một quá trình phấn đấu bền bỉ và rèn luyện chăm chỉ.

Đặc nét của sách này là sử dụng cách tiếp cận những kỹ thuật kết hợp câu cơ bản, có nghĩa là, sách không chỉ quan tâm đến việc tránh những sai lỗi, mà còn đặt mục tiêu tạo dựng được những câu hay, linh hoạt, và thể hiện một phong cách riêng. Cạnh đó, sách còn có những điểm đáng lưu ý như: 

- Bàn thảo rõ ràng về những qui tắc và kỹ thuật giúp viết tốt.

- Giải thích súc tích, hạn chế dùng những thuật ngữ ngữ pháp.

- Lương bài tập phong phú, đa dạng, từ những câu hỏi điền vào chỗ trống với mục đích xác định các từ loại cho đến những câu hỏi kết hợp những câu ngắn thành những câu văn dài hơn, ý tứ “duyên” hơn.

- Đáp án cuối sách nhằm giúp học sinh/sinh viên học và nghiên cứu nhanh chậm theo trình độ và ý thích của mình, đồng thời kiểm tra được bài làm trong quá trình học tập.

Học sinh/sinh viên tiếp thu tốt nhất khi họ tham gia tích cực và quá trình học. Họ rất thích những bài tập nào rèn cho họ được những kỹ năng viết họ cần đồng thời có giá trị thông tin nào đó hoặc vui vui. Đó chính là lý do cuốn sách này sử dụng đủ loại chủ đề thú vị trong các bài tập. Cũng vì lý do tương tự, sách có phần trình bày và giảng giải rất ngắn gọn những đưa ra rất nhiều những ví dụ và minh họa mở rộng.

Sử dụng cuốn 30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh này sẽ giúp học sinh/sinh viên viết “có nghề” và tự tin hơn".', N'http://192.168.1.26/webapidemo/Images/TiengAnh01.jpg', 4, 1, CAST(N'2000-09-20T00:00:00.000' AS DateTime), 7, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (24, N' Tiền Tệ, Ngân Hàng, Thị Trường Tài Chính  
 ', 16800.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 9, 6, CAST(N'2007-07-15T00:00:00.000' AS DateTime), 7, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (25, N' Khác Biệt Hay Là Chết (Để Thiết Lập, Xây Dựng Và Bảo Vệ Một Thương Hiệu Vững Mạnh)  
 ', 18000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 9, 4, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (26, N'Quản Lý Đấu Thầu - Thực Trạng Ở Việt Nam Và Kinh Nghiệm Quốc Tế ', 16800.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 9, 4, CAST(N'2002-07-16T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (27, N' Tỷ Giá Hối Đoái - Những Vấn Đề Lý Luận Và Thực Tiễn Điều Hành Ở Việt Nam  
 ', 18000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 10, 8, CAST(N'2004-09-11T00:00:00.000' AS DateTime), 98, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (28, N' Thành Ngữ Thương Mại Quốc Tế Anh - Việt  
 ', 61000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/KT0001.jpg', 10, 3, CAST(N'2004-08-12T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (29, N'Tin Học Ứng Dụng: Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu (Tập 1) ', 21000.0000, N'Cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn. ', N'http://192.168.1.26/webapidemo/Images/TH001.jpg', 5, 2, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 28, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (30, N'Mạng Máy Tính Và Hệ Thống Bảo Mật ', 23000.0000, N'Cuốn', N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu. 
', N'http://192.168.1.26/webapidemo/Images/TH001.jpg', 5, 1, CAST(N'2002-07-16T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (31, N'Thủ Thuật Lập Trình Visual Basic 6 ', 18000.0000, N'Cuốn', N'Mục Lục:
Chương 1: Multimedia.
Chương 2: String.
Chương 3: Form.
Chương 4:Windows Control.
Chương 5: Common Control.
Chương 6: System.
Chương 7: Disk - File.
Chương 8: Graphics.
Chương 9: Internet.
Chương 10: Microsoft Office.
Chương 11: Database.
Chương 12: Clipboard.
Chương 13: Các vấn đề khác.
Phụ lục A: Giới thiệu một số ActiveX Control.
Phụ lục B: Một số tiện ích hỗ trợ lập trình Win32 API.
Phụ lục C: Một số vấn đề về đóng gói phần mềm.
Phụ lục D: Giới thiệu một số Website về Visual Basic.
Trân trọng giới thiệu. 
', N'http://192.168.1.26/webapidemo/Images/TH001.jpg', 5, 2, CAST(N'2004-09-11T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (32, N'Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên) ', 16800.0000, N'Cuốn', N'Chào mừng đến với "Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên)". Quyển sách này sẽ hướng dẫn bạn sử dụng một cách hiệu quả bao gồm một số lượng lớn và đa dạng các hàm mạng sẵn có trong Windows 95, Windows 98, Windows NT 4, Windows CE, và Windows 2000/XP/. NET. Sách được chủ định viết dành cho những lập trình viên từ trung cấp đến cao cấp, tuy nhiên những lập trình viên mới bắt đầu tìm hiểu lập trình mạng cũng sẽ nhận thấy đây là một quyển sách không thể thiếu cho các bước xây dựng ứng dụng mạng sau này.
', N'http://192.168.1.26/webapidemo/Images/TH001.jpg', 5, 5, CAST(N'2004-05-15T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (33, N'Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu ', 25000.0000, N'Cuốn', N'"Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu" gồm 12 chương:
Chương 1: Những điểm cơ bản.
Chương 2: Màu Photoshop.
Chương 3: Các tác vụ xử lý ảnh căn bản.
Chương 4: Các điểm cơ bản về pixel.
Chương 5: Các điểm cơ bản về lớp.
Chương 6: Làm việc với các công cụ chọn.
Chương 7: Ghép ảnh.
Chương 8: Làm việc với các palette History.
Chương 9: Các kỹ thuật điều chỉnh hình ảnh.
Chương 10: Chọn các màu.
Chương 11: Tô màu lại.
Chương 12: Làm việc với các công cụ tô vẽ.
Xin trân trọng giới thiệu. ', N'http://192.168.1.26/webapidemo/Images/TH002.jpg', 5, 6, CAST(N'2004-08-16T00:00:00.000' AS DateTime), 56, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (34, N' Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)  
 ', 16800.0000, N'Cuốn', N'"Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)" bao gồm 6 phần, 23 chương:
Phần I: Bắt đầu với Norton AntiVirus 2004.
Chương 1: Bắt đầu với Norton AntiVirus 2004.
Chương 2: Cài đặt Norton System Works Professional.
Chương 3: Các điểm cơ bản về Norton AntiVirus 2004.
Chương 4: Các tùy chọn trong Norton SystemWorks.
Chương 5: Cải tiến sự trình duyệt Web và phục hồi đĩa cứng.
Chương 6: Duy trì tính bảo mật password và cập nhật với LiveUpdate.
Phần II: Làm việc với Norton AntiVirus 2004.
Chương 7: Bảo vệ đĩa, file và dữ liệu để tránh bị nhiễm Virus.
Chương 8: Những điều cần làm nếu phát hiện virus.
', N'http://192.168.1.26/webapidemo/Images/TH002.jpg', 5, 7, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (35, N'Tin Học Văn Phòng - Microsoft Word 2000 (Tái Bản Lần Thứ Nhất) ', 15600.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH002.jpg', 5, 8, CAST(N'2003-02-11T00:00:00.000' AS DateTime), 6, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (36, N'Adobe Photoshop 6.0 và ImageReady 3.0 ', 21000.0000, N'Cuốn', N'Cuốn sách Adobe Photoshop 6.0 và ImageReady 3.0 này sẽ giúp bạn tìm hiểu những tính năng tuyệt vời của phiên bản 6.0, nó cũng là con đường ngắn nhất cho những người mới sử dụng Photoshop lần đầu. Với bạn đọc đã sử dụng cuốn sách "Adobe Photoshop 5.5 và ImageReady 2.0" do MK.PUB biên soạn trước đây, cuốn sách này là một cách cập nhật nhanh chóng nhất.
Adobe Photoshop 6.0 và ImageReady 3.0 gồm hai phần chính, đan xen nhau: 

Adobe Photoshop 6.0: trình bày các kỹ thuật xử lý ảnh cao cấp, các tính năng mới, giúp bạn tạo được các ảnh đẹp, rõ nét và mang tính mỹ thuật cao, hỗ trợ đắc lực cho các chương trình dàn trang và tách màu điện tử. Đặc biệt trong phiên bản này, để đáp ứng cho mong mỏi từ lâu của người dùng, các hình thể vector bắt đầu được đưa vào sử dụng trong môi trường Photoshop.

', N'http://192.168.1.26/webapidemo/Images/TH002.jpg', 5, 5, CAST(N'2002-04-12T00:00:00.000' AS DateTime), 8, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (37, N'Tự Học Linux ', 25000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH002.jpg', 5, 2, CAST(N'2001-09-16T00:00:00.000' AS DateTime), 6, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (38, N'Hoàn Thiện Công Việc Văn Phòng Với Excel 2003 ', 25000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH003.jpg', 5, 1, CAST(N'2003-07-15T00:00:00.000' AS DateTime), 74, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (39, N'Hướng Dẫn Tự Học Photoshop CS (Photoshop 8.0) ', 25000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH003.jpg', 5, 4, CAST(N'2006-09-16T00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (40, N'Tin Học Văn Phòng - Microsoft Excel 2000 (Tái Bản Lần Thứ Nhất)  
 
 
', 16800.0000, N'Cuốn', N'Cuốn sách này gồm những nội dung chính sau:
Chương 1: Giới thiệu
Chương 2: Soạn thảo văn bản
Chương 3: Trình bày Font chữ
Chương 4: Trình bày Paragraph
Chương 5: Trình bày trang in
Chương 6: Bảng biểu - Table
Chương 7: Cột chữ - Column
Chương 8: Hình vẽ
Chương 9: Microsoft Equation
Chương 10: Trình bày văn bản nhanh
Chương 11: Bài tập mẫu
Xin trân trọng giới thiệu. 
', N'http://192.168.1.26/webapidemo/Images/TH003.jpg', 5, 5, CAST(N'2003-05-24T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (41, N'Các Thủ Thuật Truy Cập Nhanh Internet Explore Mail - Chat ', 21000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH004.jpg', 5, 4, CAST(N'2003-09-16T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (42, N'Macromedia FlashMX 2004 (Ấn Bản Dành Cho Sinh Viên - Có CD Bài Tập Kèm Theo Sách) ', 23000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH004.jpg', 5, 2, CAST(N'2002-07-16T00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (43, N'Tạo Các Hiệu Ứng Đặc Biệt Để Trang Trí Ảnh Trong Photoshop CS ', 18000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH004.jpg', 5, 6, CAST(N'2004-09-11T00:00:00.000' AS DateTime), 9, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (44, N'Tin Học Ứng Dụng Lập Trình Mạng Trên Windows ', 23000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH004.jpg', 5, 8, CAST(N'2004-08-12T00:00:00.000' AS DateTime), 79, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (45, N'Tự Học SQL (Hãy dành 10 phút mỗi ngày bạn sẽ thành công với SQL) ', 21000.0000, N'Cuốn', N' ', N'http://192.168.1.26/webapidemo/Images/TH005.jpg', 5, 7, CAST(N'2004-07-16T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (62, N'Nhập Môn Microsoft Windows XP', 12000.0000, N'Cuốn', N'Microsoft Windows XP đang là một trong những hệ điều hành được ưa chuộng nhất hiện nay, và nhu cầu tìm hiểu sử dụng hệ điều hành này ngày càng nhiều. Để đáp ứng nhu cầu đó, cuốn sách "Nhập Môn Microsoft Windows XP" được biên soạn nhằm giúp các bạn mới học có thêm tài liệu học tập.
Sách được các tác giả chọn lối viết thực dụng, học lý thuyết đi đôi với thực hành nên đạt được hiệu quả tối đa trong học tập. Bạn nên đọc tập sách này ngay bên cạnh chiếc máy tính của mình, học đến đâu thực hành đến đó. Như thế bạn sẽ dễ cảm nhận được công dụng của từng công trình, từng tính năng...', N'http://192.168.1.26/webapidemo/Images/130318.jpg', 5, 2, CAST(N'2005-06-07T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (63, N'Thai Nghén Và Sinh Nở (Cẩm Nang Dành Cho Người Làm Mẹ) ', 29000.0000, N'Cuốn', N'Cuốn sách "Thai Nghén Và Sinh Nở (Cẩm Nang Dành Cho Người Làm Mẹ)" được chia làm 12 chương, với nội dung như sau:
Chương 1: Bạn thực sự sẵn sàng có em bé.
Chương 2: Chuẩn bị trước khi mang thai.
Chương 3: Sự hội ngộ giữa tinh trùng và trứng.
Chương 4: Không thụ thai.
Chương 5: Thụ thai.
Chương 6: Sứ mệnh bé khỏe.
Chương 7: Những lo âu khi mang thai.
Chương 8: Các chứng chứng nhức mỏi trong thời kỳ thai nghén.
Chương 9: Xét nghiệm hay không xét nghiệm.
Chương 10: Thời khắc khai hoa nở nhụy.
Chương 11: Những rủi ro thường gặp khi thai nghén.
Chương 12: Sau khi sinh.
', N'http://192.168.1.26/webapidemo/Images/Me.jpg', 36, 14, CAST(N'2005-06-07T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (64, N'Hướng Dẫn Kế Toán Doanh Nghiệp Vừa Và Nhỏ Theo Luật, Nghị Định, Các Chuẩn Mực', 198000.0000, N'Cuốn', N'Nội dung của cuốn sách chia làm 4 chương như sau:
Chương 1: Kế toán và vai trò của nó trong quá trình quản lý doanh nghiệp.
Chương 2: Kế toán tài chính và các nguyên tắc kế toán cơ bản.
Chương 3: Hướng dẫn thực hiện các chế độ chứng từ, tài khoản, sổ kế toán và báo cáo tài chính theo luật và nghị định kế toán.
Chương 4: Hướng dẫn quy trình kế toán hoạt động kinh doanh của doanh nghiệp.
', N'http://192.168.1.26/webapidemo/Images/Kt.jpg', 37, 13, CAST(N'2001-06-07T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[SACH] ([Ms], [Ten_sach], [Don_gia], [Don_vi_tinh], [Mo_ta], [Hinh_minh_hoa], [Mcd], [Mnxb], [Ngay_cap_nhat], [So_luong_ban], [So_lan_xem]) VALUES (65, N'Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu', 22000.0000, N'Cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
', N'http://192.168.1.26/webapidemo/Images/Oracle.jpg', 5, 2, CAST(N'2005-06-10T00:00:00.000' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[TAC_GIA] ON 

INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (1, N'Phạm Công Anh', N'197 Trần Hưng Đạo', N'98877668')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (2, N'Nguyễn Thế Giang', N'179 Chánh hưng - F.4 - Q.8 Tp.HCM', N'19001611')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (3, N'Lê Việt Nhân', N'', N'19001570')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (5, N'Hồng Phúc', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (6, N'Ks.Phạm Quang Huy', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (7, N'Nguyễn Bá Tiến', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (8, N'Phạm Hữu Khang', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (10, N'Nguyễn Minh Đức', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (11, N'Nguyễn Văn Hòa', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (12, N'Trần Văn Thắng', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (13, N'Trần Văn Lăng', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (14, N'Quách Tuấn Ngọc', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (15, N'Nguyễn Xuân Huy', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (16, N'Đoàn Khắc Độ', NULL, NULL)
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (17, N'Nguyễn Tấn Tín', N'179 Chánh Hưng F.4 Q.8 Tp.HCM', N'8504122')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (25, N'Phạm Phan Trung', N'124 Bắc Hải P.6 Q.TB', N'0918121188')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (27, N'Hồ Trọng Long', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (29, N'Nguyễn Phước Đại', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (31, N'Nguyễn Duy Hoàng Mỹ', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (32, N'TS. Nguyễn Phương Liên', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (33, N'BS. Vũ Thị Uyên Thanh', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (34, N'Nguyễn Ngọc Minh', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (35, N'Nguyễn Thiên Bằng', N'', N'')
INSERT [dbo].[TAC_GIA] ([Mtg], [Ten_tac_gia], [Dia_chi], [Dien_thoai]) VALUES (36, N'Hoàng Đức Hải', N'', N'')
SET IDENTITY_INSERT [dbo].[TAC_GIA] OFF
GO
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 1, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 3, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 27, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (1, 29, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (2, 3, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (2, 15, NULL)
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (3, 5, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (3, 6, N'Hiệu đính')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (4, 5, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (5, 6, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (5, 12, N'Chủ biên')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (6, 14, N'Sưu tầm và biên soạn')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (7, 8, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (8, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (9, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (10, 11, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (11, 6, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (13, 13, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (13, 16, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (14, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (15, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (16, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (17, 14, N'Chủ biên')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (17, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (18, 16, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (19, 5, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (20, 8, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (21, 13, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (22, 10, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (23, 11, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (24, 2, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (25, 10, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (26, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (27, 11, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (28, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (29, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (30, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (31, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (32, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (33, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (34, 6, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (35, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (36, 1, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (36, 12, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (37, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (38, 13, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (39, 3, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (39, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (40, 10, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (41, 15, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (42, 2, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (43, 7, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (43, 8, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (44, 14, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (62, 27, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (62, 29, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (62, 31, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (63, 33, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (64, 32, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (65, 34, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (65, 35, N'Tác giả')
INSERT [dbo].[THAM_GIA] ([Ms], [Mtg], [Vai_tro]) VALUES (65, 36, N'Tác giả')
GO
/****** Object:  StoredProcedure [dbo].[Proc_AddSubject]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Proc_AddSubject](@tenchude nvarchar(100),@currentid int output)
as
begin try
 insert into CHU_DE(Ten_chu_de) values(@tenchude)
 set @currentid=@@IDENTITY
end try
begin catch
set @currentid=-1
end catch
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAllCustomer]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetAllCustomer]
as
select Mkh, Ho_ten from KHACH_HANG
union select 0,N'Tất Cả'
order by Mkh
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetAllSubject]			Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetAllSubject]
as
select * from CHU_DE
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetBooksBySubjectID]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetBooksBySubjectID](@macd int)
as
select * from SACH where Mcd=@macd
GO
/****** Object:  StoredProcedure [dbo].[Proc_GetOrderInfo]    Script Date: 11/28/2020 3:08:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Proc_GetOrderInfo](@makh int=0)
as
SELECT     KHACH_HANG.Mkh,   dbo.KHACH_HANG.Ho_ten, dbo.KHACH_HANG.Dia_chi, dbo.DON_DAT_HANG.Sdh, dbo.DON_DAT_HANG.Ngay_dat_hang, dbo.SACH.Ten_sach, dbo.CT_DAT_HANG.So_luong, dbo.CT_DAT_HANG.Don_gia, 
                         dbo.CT_DAT_HANG.Thanh_tien, dbo.SACH.Don_vi_tinh,Ten_chu_de
FROM            dbo.KHACH_HANG INNER JOIN
                         dbo.DON_DAT_HANG ON dbo.KHACH_HANG.Mkh = dbo.DON_DAT_HANG.Mkh INNER JOIN
                         dbo.CT_DAT_HANG ON dbo.DON_DAT_HANG.Sdh = dbo.CT_DAT_HANG.Sdh INNER JOIN
                         dbo.SACH ON dbo.CT_DAT_HANG.Ms = dbo.SACH.Ms
						 JOIN CHU_DE on SACH.Mcd=CHU_DE.Mcd
						 where KHACH_HANG.Mkh=@makh or(isnull(@makh,0)=0)
GO

SELECT * FROM CHU_DE
SELECT * FROM SACH
SELECT DISTINCT Mcd FROM SACH

UPDATE SACH 
SET Hinh_minh_hoa = 'http://172.20.14.98' + SUBSTRING(Hinh_minh_hoa, 20, LEN(Hinh_minh_hoa))

--SELECT SUBSTRING(Hinh_minh_hoa, 19, LEN(Hinh_minh_hoa))
--FROM SACH

Select Hinh_minh_hoa FROM SACH

drop database QLBANSACH

create database QLBANSACH
