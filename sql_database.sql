USE [api_quanlynhahang]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/1/2021 8:48:49 PM ******/
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
/****** Object:  Table [dbo].[approles]    Script Date: 23/1/2021 8:48:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[mieuta] [nvarchar](200) NULL,
 CONSTRAINT [PK_approles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appusers]    Script Date: 23/1/2021 8:48:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appusers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Day] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_appusers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[banans]    Script Date: 23/1/2021 8:48:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[soghe] [int] NOT NULL,
	[tinhtrang] [int] NOT NULL,
	[makh] [int] NULL,
 CONSTRAINT [PK_banans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[binhluans]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[binhluans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[iduser] [int] NOT NULL,
	[ngaybinhluan] [datetime2](7) NOT NULL,
	[noidung] [nvarchar](4000) NOT NULL,
	[rate] [int] NOT NULL,
	[trangthai] [int] NOT NULL,
	[idsp] [int] NOT NULL,
 CONSTRAINT [PK_binhluans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bophans]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bophans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenbp] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_bophans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calams]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenca] [nvarchar](max) NULL,
	[giobd] [nvarchar](100) NULL,
	[giokt] [nvarchar](100) NULL,
	[ghichu] [nvarchar](255) NULL,
 CONSTRAINT [PK_calams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietdonhangs]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietdonhangs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[iddh] [int] NOT NULL,
	[idmon] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[gia] [int] NOT NULL,
 CONSTRAINT [PK_chitietdonhangs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietgoimons]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietgoimons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idpgm] [int] NOT NULL,
	[idmon] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[gia] [int] NOT NULL,
 CONSTRAINT [PK_chitietgoimons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donhang]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donhang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idkhach] [int] NULL,
	[tinhtrang] [int] NOT NULL,
	[sdtgiao] [nvarchar](10) NOT NULL,
	[diachigiao] [nvarchar](4000) NOT NULL,
	[tongtien] [int] NOT NULL,
	[tenkhach] [nvarchar](4000) NULL,
	[ngaydat] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_donhang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityRoleClaims]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_IdentityRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityUserClaims]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_IdentityUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityUserLogins]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_IdentityUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityUserRoles]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_IdentityUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentityUserTokens]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentityUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_IdentityUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhangs]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhangs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](255) NOT NULL,
	[sdt] [nvarchar](10) NOT NULL,
	[diachi] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_khachhangs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachthanhtoans]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachthanhtoans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idphieu] [int] NOT NULL,
	[idkhach] [int] NULL,
	[idnv] [int] NOT NULL,
	[giott] [datetime2](7) NOT NULL,
	[hinhthuctt] [nvarchar](500) NULL,
	[sotien] [int] NOT NULL,
 CONSTRAINT [PK_khachthanhtoans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaimons]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaimons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenloai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_loaimons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monans]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenmon] [nvarchar](255) NOT NULL,
	[donvitinh] [nvarchar](100) NOT NULL,
	[gia] [int] NOT NULL,
	[mota] [nvarchar](4000) NULL,
	[hinhanh] [nvarchar](4000) NOT NULL,
	[idloaimon] [int] NOT NULL,
	[ngaynhap] [datetime2](7) NOT NULL,
	[rate] [float] NOT NULL,
 CONSTRAINT [PK_monans] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanviens]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanviens](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idbophan] [int] NOT NULL,
	[hoten] [nvarchar](255) NOT NULL,
	[sdt] [nvarchar](10) NOT NULL,
	[ngaysinh] [datetime2](7) NOT NULL,
	[gioitinh] [int] NOT NULL,
	[diachi] [nvarchar](4000) NOT NULL,
	[gianhap] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_nhanviens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nvcas]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nvcas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idnv] [int] NOT NULL,
	[idca] [int] NOT NULL,
	[ngaydk] [datetime2](7) NOT NULL,
	[nhanvienid] [int] NULL,
 CONSTRAINT [PK_nvcas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieugoimons]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieugoimons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[soban] [int] NOT NULL,
	[idkhach] [int] NOT NULL,
	[giogoi] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_phieugoimons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sliders]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sliders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[td1] [nvarchar](500) NULL,
	[td2] [nvarchar](500) NULL,
	[url] [nvarchar](4000) NULL,
 CONSTRAINT [PK_sliders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tintucs]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintucs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tieude] [nvarchar](500) NULL,
	[hinhanh] [nvarchar](max) NULL,
	[tomtat] [nvarchar](500) NULL,
	[noidung] [nvarchar](4000) NULL,
	[luotxem] [int] NOT NULL,
	[ngaydang] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tintucs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 23/1/2021 8:48:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](max) NULL,
	[ngaysinh] [datetime2](7) NOT NULL,
	[sdt] [nvarchar](10) NOT NULL,
	[diachi] [nvarchar](500) NOT NULL,
	[email] [nvarchar](4000) NOT NULL,
	[password] [nvarchar](4000) NOT NULL,
	[chucvu] [int] NOT NULL,
	[hinhanh] [nvarchar](4000) NULL,
	[idFb] [nvarchar](max) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201006135903_Itatial', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201006145018_seeddata', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201006145957_seeddata', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201007145032_AspNetCore', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201008055234_SeedIdentityUser', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015010519_newdatabase', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015012447_update201015', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015015306_update201015528', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201021033520_update20201021', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201021033820_update20201021v2', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201031144533_change20201031', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201031150319_change20201031_ver2', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201031173221_change20201031_ver3', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110134346_update201110', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110185833_update20201111', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210111092259_20210111update', N'3.1.8')
INSERT [dbo].[approles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [mieuta]) VALUES (N'dde4ba55-808e-479f-be8b-72f69913442f', N'admin', N'admin', N'b43b7087-0a30-4950-877a-eb0a8a2a166c', NULL)
INSERT [dbo].[appusers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Day]) VALUES (N'06e12df2-49ec-4f5a-9d45-fd714ebca62e', N'admin', N'admin', N'trangchatrang98@gmail.com', N'trangchatrang98@gmail.com', 1, N'AQAAAAEAACcQAAAAEBkbOc1KSGvGckeCMUVwcnqDh/KxjkKjfuu/ImFG3AYVjx+j5nu9kSFwyNMexEmkWw==', N'', N'74d7ec1d-ee64-4018-851f-aae390a78d05', NULL, 0, 0, NULL, 0, 0, CAST(N'1999-01-30T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[banans] ON 

INSERT [dbo].[banans] ([id], [soghe], [tinhtrang], [makh]) VALUES (1, 12, 0, NULL)
INSERT [dbo].[banans] ([id], [soghe], [tinhtrang], [makh]) VALUES (2, 12, 0, NULL)
INSERT [dbo].[banans] ([id], [soghe], [tinhtrang], [makh]) VALUES (3, 12, 0, NULL)
INSERT [dbo].[banans] ([id], [soghe], [tinhtrang], [makh]) VALUES (4, 12, 0, NULL)
INSERT [dbo].[banans] ([id], [soghe], [tinhtrang], [makh]) VALUES (5, 8, 0, NULL)
SET IDENTITY_INSERT [dbo].[banans] OFF
SET IDENTITY_INSERT [dbo].[binhluans] ON 

INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (1, 1, CAST(N'2020-10-31T23:01:11.8902166' AS DateTime2), N'món ăn rất ngon và rẻ', 3, 2, 1)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (2, 1, CAST(N'2020-11-01T01:42:25.8572042' AS DateTime2), N'Lẩu rất đậm vị ngon lắm', 4, 1, 23)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (3, 5, CAST(N'2020-11-12T01:02:16.5295792' AS DateTime2), N'Nước nẩu không đậm lắm', 2, 1, 23)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (4, 5, CAST(N'2020-11-12T08:40:43.7406595' AS DateTime2), N'món ăn rất ngon và rẻ', 4, 1, 1)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (5, 5, CAST(N'2020-11-12T10:58:45.6161388' AS DateTime2), N'món ăn không ngon lắm', 2, 1, 18)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (6, 1, CAST(N'2020-11-30T01:18:37.5165302' AS DateTime2), N'Đồ ăn rất ngon :v', 5, 1, 1)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (7, 10, CAST(N'2021-01-12T08:52:23.9696657' AS DateTime2), N'Món ăn rất ngon 5 sao nhá', 5, 1, 2)
INSERT [dbo].[binhluans] ([id], [iduser], [ngaybinhluan], [noidung], [rate], [trangthai], [idsp]) VALUES (8, 11, CAST(N'2021-01-12T08:57:58.7185427' AS DateTime2), N'Món ăn không ngon, vỏ bánh quấn thì mềm, giò thì lạc quá', 0, 1, 2)
SET IDENTITY_INSERT [dbo].[binhluans] OFF
SET IDENTITY_INSERT [dbo].[bophans] ON 

INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (1, N'Quản lý nhà hàng')
INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (2, N'Bộ phận Lễ tân')
INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (3, N'Bộ phận Phục Vụ')
INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (4, N'Bộ phận Bếp')
INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (5, N'Khách hàng')
INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (8, N'Khách hàng')
INSERT [dbo].[bophans] ([id], [tenbp]) VALUES (9, N'Lao công')
SET IDENTITY_INSERT [dbo].[bophans] OFF
SET IDENTITY_INSERT [dbo].[chitietdonhangs] ON 

INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (5, 6, 23, 1, 299000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (9, 7, 1, 2, 20000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (10, 7, 6, 1, 25000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (17, 11, 2, 2, 20000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (18, 12, 1, 1, 20000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (19, 13, 23, 1, 299000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (20, 14, 23, 1, 299000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (21, 14, 1, 1, 20000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (22, 14, 18, 1, 40000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (23, 15, 23, 1, 299000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (24, 15, 1, 1, 20000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (25, 16, 2, 1, 20000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (26, 17, 23, 1, 299000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (27, 18, 23, 1, 299000)
INSERT [dbo].[chitietdonhangs] ([id], [iddh], [idmon], [soluong], [gia]) VALUES (28, 19, 1, 1, 20000)
SET IDENTITY_INSERT [dbo].[chitietdonhangs] OFF
SET IDENTITY_INSERT [dbo].[donhang] ON 

INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (6, 1, 3, N'0914557400', N'Đồng Tiến - Khoái Châu - Hưng Yên', 299000, N'Nguyễn Thị Tuyền', CAST(N'2020-10-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (7, 1, 2, N'0914557400', N'Đồng Tiến - Khoái Châu - Hưng Yên', 65000, N'Nguyễn Thị Tuyền', CAST(N'2020-10-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (11, 5, 2, N'0914557402', N'Đồng Tiến - Khoái Châu- Hưng Yên', 40000, N'Triệu Tiểu Đường', CAST(N'2020-11-11T01:37:54.2182842' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (12, 5, 3, N'0914557402', N'Đồng Tiến - Khoái Châu- Hưng Yên', 20000, N'Triệu Tiểu Đường', CAST(N'2020-11-11T02:04:12.3628726' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (13, 5, 3, N'0914557402', N'Đồng Tiến - Khoái Châu- Hưng Yên', 299000, N'Triệu Tiểu Đường', CAST(N'2020-11-12T10:49:23.9285585' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (14, 9, 3, N'0914557400', N'Đồng Tiến - Khoái Châu - Hưng Yên', 359000, N'Heng Kong', CAST(N'2021-01-19T16:14:18.2287682' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (15, 9, 1, N'0914557400', N'Đồng Tiến  - Khoái Châu -Hưng Yên', 319000, N'Heng Kong', CAST(N'2021-01-19T17:11:04.2448851' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (16, 9, 0, N'0914557400', N'Đồng Tiến - Khoái Châu - Hưng Yên', 20000, N'Heng Kong', CAST(N'2021-01-20T09:33:01.2917556' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (17, 9, 0, N'0914557400', N'Đồng Tiến - Khoái Châu - Hưng Yên', 299000, N'Heng Kong', CAST(N'2021-01-20T09:36:12.3981325' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (18, 5, 0, N'0914557402', N'Bắc Kinh - Trung Quốc', 299000, N'Triệu Tiểu Đường', CAST(N'2021-01-20T09:38:35.5664459' AS DateTime2))
INSERT [dbo].[donhang] ([id], [idkhach], [tinhtrang], [sdtgiao], [diachigiao], [tongtien], [tenkhach], [ngaydat]) VALUES (19, 5, 0, N'0914557402', N'Bắc Kinh - Trung Quốc', 20000, N'Triệu Tiểu Đường', CAST(N'2021-01-20T09:41:24.9504012' AS DateTime2))
SET IDENTITY_INSERT [dbo].[donhang] OFF
INSERT [dbo].[IdentityUserRoles] ([UserId], [RoleId]) VALUES (N'06e12df2-49ec-4f5a-9d45-fd714ebca62e', N'dde4ba55-808e-479f-be8b-72f69913442f')
SET IDENTITY_INSERT [dbo].[khachhangs] ON 

INSERT [dbo].[khachhangs] ([id], [tenkh], [sdt], [diachi]) VALUES (1, N'Triệu Tiểu Đường', N'0914557400', N'Bắc Kinh')
INSERT [dbo].[khachhangs] ([id], [tenkh], [sdt], [diachi]) VALUES (2, N'Ngu Thư Hân', N'0914557401', N'Thượng Hải')
SET IDENTITY_INSERT [dbo].[khachhangs] OFF
SET IDENTITY_INSERT [dbo].[loaimons] ON 

INSERT [dbo].[loaimons] ([id], [tenloai]) VALUES (1, N'Món chính')
INSERT [dbo].[loaimons] ([id], [tenloai]) VALUES (2, N'Món phụ')
INSERT [dbo].[loaimons] ([id], [tenloai]) VALUES (3, N'Món khai vị')
INSERT [dbo].[loaimons] ([id], [tenloai]) VALUES (4, N'Món tráng miệng')
SET IDENTITY_INSERT [dbo].[loaimons] OFF
SET IDENTITY_INSERT [dbo].[monans] ON 

INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (1, N'Bạch tuộc nướng', N'đĩa', 20000, N'Cập nhật sau', N'bach-tuoc-nuong-900x600.jpg', 2, CAST(N'2021-01-11T16:22:57.2434282' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (2, N'Bánh cuốn', N'đĩa', 20000, N'Cập nhật sau', N'banh-cuon-900x587.jpg', 2, CAST(N'2021-01-11T16:22:57.2434935' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (3, N'Caramen', N'đĩa', 20000, N'Cập nhật sau', N'anh-caramen.jpg', 4, CAST(N'2021-01-11T16:22:57.2434950' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (4, N'bulgogi vị dâu', N'đĩa', 20000, N'Cập nhật sau', N'bulgogi1.jpg', 4, CAST(N'2021-01-11T16:22:57.2434952' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (5, N'bulgogi vị cam', N'đĩa', 20000, N'Cập nhật sau', N'bulgogi2.jpg', 4, CAST(N'2021-01-11T16:22:57.2434954' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (6, N'Sụn gà rang muối', N'đĩa', 25000, N'Cập nhậu sau', N'sun-ga-rang-muoi.jpg', 1, CAST(N'2020-10-15T23:40:26.8600000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (7, N'Súp gạ nấm cô', N'bát', 15000, N'Cập nhật sau', N'mon-ngon-dai-tiec-don-gian.jpg', 3, CAST(N'2020-10-15T23:47:26.1933333' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (8, N'Súp cua', N'bát', 17000, N'Cập nhật sau', N'cac-mon-ngon-dai-tiec-de-lam.jpg', 3, CAST(N'2020-10-15T23:48:30.4266667' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (9, N'Chả giò hải sản', N'đĩa', 30000, N'Cập nhật sau', N'mon-ngon-dai-tiec-tan-gia.jpg', 3, CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (10, N'Nem nướng bánh hỏi', N'mẹt', 50000, N'Cập nhật sau', N'cac-mon-ngon-dai-tiec-tu-thit-heo.jpg', 1, CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (11, N'Súp gà nấm hướng', N'bát', 15000, N'Cập nhật sau', N'mon-ngon-dai-tiec-thoi-noi.jpg', 3, CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (12, N'Tôm chiên xù', N'đĩa', 50000, N'Cập nhật sau', N'cac-mon-goi-ngon-dai-tiec.jpg', 1, CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (13, N'Món bò né', N'đĩa', 45000, N'Cập nhật sau', N'mon-ngon-dai-tiec-de-lam.jpg', 1, CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (14, N'Gà bó xôi', N'con', 99000, N'Cạp nhật sau', N'cac-mon-ngon-dai-tiec.jpg', 1, CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (15, N'Lẩu cá thác lác', N'nồi', 450000, N'Cập nhật sau', N'mon-ngon-dai-tiec-sinh-nhat.jpg', 1, CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (16, N'Mực hấp gừng', N'đĩa', 30000, N'Cập  nhật sau', N'cac-mon-dai-tiec-ngon.jpg', 3, CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (17, N'Mực xào sa tế', N'đĩa', 35000, N'Cập nhật sau', N'mon-an-ngon-dai-tiec.jpg', 1, CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (18, N'Cá lóc hấp bầu', N'đĩa', 40000, N'Cập nhật sau', N'mon-an-dai-tiec-ngon.jpg', 1, CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (20, N'Lẩu gà lá giang', N'nồi', 500000, N'Cập nhật sau', N'nhung-mon-dai-tiec-ngon.jpg', 1, CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (21, N'Bít tết bò', N'đĩa', 50000, N'<p>Cập nhật sau</p>
', N'2231983bit_tet_bo_fuji.jpg', 1, CAST(N'2020-10-31T11:17:15.3963838' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (22, N'Khoai lang kén', N'đĩa', 30000, N'<p>Cập nhật sau</p>
', N'cach-lam-khoai-lang-ken.png', 1, CAST(N'2020-10-31T11:28:00.1675427' AS DateTime2), 0)
INSERT [dbo].[monans] ([id], [tenmon], [donvitinh], [gia], [mota], [hinhanh], [idloaimon], [ngaynhap], [rate]) VALUES (23, N'Lẩu riêu thuần chay', N'nồi', 299000, N'<p>Nếu bạn l&agrave; một t&iacute;n đồ ăn chay đang muốn thưởng thức một m&oacute;n ăn mang đậm hương vị cổ truyền, th&igrave; lẩu ri&ecirc;u thuần chay của ch&uacute;ng t&ocirc;i chắc chắn l&agrave;&nbsp;<strong>m&oacute;n ch&iacute;nh</strong>&nbsp;d&agrave;nh ri&ecirc;ng cho bạn.</p>

<p>Vị chua thanh thanh từ giấm bỗng kết hợp c&ugrave;ng vị cay d&igrave;u dịu của ớt cay c&ugrave;ng với nhiều nguy&ecirc;n liệu được phối hợp h&agrave;i h&ograve;a ch&iacute;nh l&agrave; những yếu tố gi&uacute;p lẩu ri&ecirc;u thuần chay ghi điểm trong mắt thực kh&aacute;ch.</p>
', N'tải xuống.jpg', 1, CAST(N'2020-11-01T01:38:57.0677928' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[monans] OFF
SET IDENTITY_INSERT [dbo].[nhanviens] ON 

INSERT [dbo].[nhanviens] ([id], [idbophan], [hoten], [sdt], [ngaysinh], [gioitinh], [diachi], [gianhap]) VALUES (1, 1, N'Triệu Tiểu Đường', N'0914557400', CAST(N'1995-03-24T00:00:00.0000000' AS DateTime2), 1, N'Đồng Tiến - Khoái Châu - Hưng Yên', CAST(N'2021-01-11T16:22:57.2417984' AS DateTime2))
INSERT [dbo].[nhanviens] ([id], [idbophan], [hoten], [sdt], [ngaysinh], [gioitinh], [diachi], [gianhap]) VALUES (2, 2, N'Ngu Thư Hân', N'0914557401', CAST(N'1997-03-24T00:00:00.0000000' AS DateTime2), 1, N'Hồng Hà - Yên Bái - Yên Bái', CAST(N'2021-01-11T16:22:57.2427972' AS DateTime2))
INSERT [dbo].[nhanviens] ([id], [idbophan], [hoten], [sdt], [ngaysinh], [gioitinh], [diachi], [gianhap]) VALUES (3, 3, N'Dụ Ngôn', N'0914557402', CAST(N'1997-05-25T00:00:00.0000000' AS DateTime2), 1, N'Đồng Tiến - Khoái Châu - Hưng Yên', CAST(N'2021-01-11T16:22:57.2428006' AS DateTime2))
INSERT [dbo].[nhanviens] ([id], [idbophan], [hoten], [sdt], [ngaysinh], [gioitinh], [diachi], [gianhap]) VALUES (4, 1, N'Lục Khả Nhiên', N'0914557403', CAST(N'1995-12-12T00:00:00.0000000' AS DateTime2), 1, N'Đồng Tiến - Khoái Châu - Hưng Yên', CAST(N'2021-01-11T16:22:57.2428009' AS DateTime2))
SET IDENTITY_INSERT [dbo].[nhanviens] OFF
SET IDENTITY_INSERT [dbo].[tintucs] ON 

INSERT [dbo].[tintucs] ([id], [tieude], [hinhanh], [tomtat], [noidung], [luotxem], [ngaydang]) VALUES (5, N'Giới thiệu hệ thống King''s Buffet', N'mon-ngon-han-quoc-4-900x655.jpg', N'Bạn ăn đồ nướng nhiều, nhưng với đồ nướng Hàn Quốc – xứ sở ẩm thực được nâng tầm lên thành văn hóa quốc gia, liệu bạn có chắc mình ăn đúng cách? Hãy để King BBQ giúp bạn.', N'<p>BUFFET L&Agrave; G&Igrave;? Ra đời tại Ph&aacute;p từ thế kỷ 17, kh&aacute;i niệm buffet hay c&ograve;n gọi l&agrave; &ldquo;tiệc đứng&rdquo; l&agrave; h&igrave;nh thức người ăn tự phục vụ m&igrave;nh, tự đi chọn những m&oacute;n ăn ưa th&iacute;ch bằng c&aacute;ch lấy đồ ăn được b&agrave;y sẵn tr&ecirc;n c&aacute;c quầy, kệ của nh&agrave; h&agrave;ng. Th&ocirc;ng thường c&oacute; 3 loại tiệc Buffet ch&iacute;nh đ&oacute; l&agrave;: Sitdown buffet, Cooktail buffet v&agrave; Standing buffet.</p>
', 0, CAST(N'2020-10-22T00:19:14.0100000' AS DateTime2))
INSERT [dbo].[tintucs] ([id], [tieude], [hinhanh], [tomtat], [noidung], [luotxem], [ngaydang]) VALUES (6, N'Giới thiệu về KIng''s BBQ', N'mg_3245-a-900x600.jpg', N'Trong nghệ thuật ẩm thực, hương vị lạ luôn là một trong những điểm hấp dẫn người sành ăn. Với thực đơn phong phú hơn 100 món đặc sắc, được chế biến bởi bàn tay khéo léo và tỉ mỉ, kết hợp với kỹ thuật tẩm ướp gia vị đặc biệt của một trong những đầu bếp nổi tiếng Hàn Quốc, có trên 30 năm kinh nghiệm – Park Sung Min, Nhà hàng King BBQ Buffet là điểm hẹn lý tưởng cho những ai đam mê món nướng Hàn Quốc đậm đà tròn vị.', N'<p>King BBQ Buffet phục vụ thực kh&aacute;ch 22 m&oacute;n nướng H&agrave;n Quốc hảo hạng, gi&uacute;p bạn kh&aacute;m ph&aacute; trọn vẹn tinh hoa ẩm thực nướng xứ sở kim chi: M&ocirc;ng b&ograve; Mỹ, nầm nướng, ba chỉ heo cay, lưỡi b&ograve; nướng muối, sườn Los Angeles, cổ b&ograve; ướp sốt King BBQ, bạch tuộc nướng, mực nướng sốt cay&hellip; c&ugrave;ng với hơn 200 loại panchan miễn ph&iacute; thay đổi theo ng&agrave;y cho thực kh&aacute;ch thỏa sức lựa chọn. Bếp trưởng Park Sung Min người H&agrave;n Quốc đ&atilde; d&agrave;y c&ocirc;ng nghi&ecirc;n cứu v&agrave; chế biến ra c&aacute;c loại nước sốt kh&aacute;c nhau để tẩm ướp cho từng loại nguy&ecirc;n liệu, để mỗi m&oacute;n nướng tại đ&acirc;y đều được mệnh danh l&agrave; &ldquo;King BBQ&rdquo;- Vua nướng xứ H&agrave;n.Thưởng thức m&oacute;n nướng H&agrave;n Quốc kh&ocirc;ng thể thiếu m&oacute;n panchan chua ngọt mang hương vị đậm đ&agrave; đặc trưng. Những loại rau ăn k&egrave;m n&agrave;y c&oacute; c&ocirc;ng dụng l&agrave;m c&acirc;n bằng cho m&oacute;n ăn, k&iacute;ch th&iacute;ch tỳ vị, gi&uacute;p người thưởng thức kh&ocirc;ng bị ng&aacute;n cho d&ugrave; ăn nhiều thịt. C&aacute;c loại rau tại King BBQ Buffet được nhập trực tiếp từ c&aacute;c n&ocirc;ng trại Đ&agrave; Lạt, đảm bảo nguồn rau sạch v&agrave; an to&agrave;n đến tận tay thực kh&aacute;ch</p>
', 0, CAST(N'2020-10-22T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[tintucs] ([id], [tieude], [hinhanh], [tomtat], [noidung], [luotxem], [ngaydang]) VALUES (7, N'Ngập tràn ưu đãi', N'ct-thang-10_post-fb_ngap-tran-uu-dai-900x600.png', N'ừ ngày 8/10/2020 – 30/11/2020, King BBQ Buffet áp dụng các chương trình khuyến mãi tại các nhà hàng', N'<p>Từ ng&agrave;y 8/10/2020 &ndash; 30/11/2020, King BBQ Buffet &aacute;p dụng c&aacute;c chương tr&igrave;nh khuyến m&atilde;i tại c&aacute;c nh&agrave; h&agrave;ng như sau:</p><ul><li>King Buffet Lotte Tay Sơn</li><li>King Buffet Big C H&agrave; Đ&ocirc;ng</li><li>King Buffet Big C Thăng Long</li><li>King Buffet Big C Hải Ph&ograve;ng</li><li>King Buffet Vincom Th&aacute;i Nguy&ecirc;n</li></ul><p><img alt="🔥" src="https://static.xx.fbcdn.net/images/emoji.php/v9/t50/1/16/1f525.png" style="height:16px; width:16px" />&nbsp;Tặng 01 suất buffet MIỄN PH&Iacute; cho nh&oacute;m 4 người</p>
', 0, CAST(N'2020-10-22T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tintucs] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (1, N'Nguyễn Thị Tuyền', CAST(N'1999-01-30T00:00:00.0000000' AS DateTime2), N'0914557400', N'Đồng Tiến - Khoái Châu - Hưng Yên', N'trangchatrang98@gmail.com', N'123456789', 1, N'7909f94d2488a8963f13852f2fa2fb8b.jpg', NULL)
INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (2, N'Tạ Thị Tâm', CAST(N'2001-01-24T00:00:00.0000000' AS DateTime2), N'0914557401', N'Đồng Tiến - Khoái Châu - Hưng Yên', N'lananh24_01@gmail.com', N'123456789', 2, N'7909f94d2488a8963f13852f2fa2fb8b.jpg', NULL)
INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (5, N'Triệu Tiểu Đường', CAST(N'1997-03-12T00:00:00.0000000' AS DateTime2), N'0914557402', N'Bắc Kinh - Trung Quốc', N'dacata98@gmail.com', N'12345Tuyen', 2, N'avatar_trieu_tieu_duong.jpg', NULL)
INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (9, N'Heng Kong', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'dacata98@gmail.com', N'123456', 2, N'https://graph.facebook.com/948276769036821/picture?type=normal', N'948276769036821')
INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (10, N'Yến Hi Hi', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'dthyen2412@gmail.com', N'123456', 2, N'https://graph.facebook.com/879587906108170/picture?type=normal', N'879587906108170')
INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (11, N'Tuyền Nguyễn', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'', N'', N'trangchatrang98@gmail.com', N'123456', 2, N'https://graph.facebook.com/1323126498070262/picture?type=normal', N'1323126498070262')
INSERT [dbo].[users] ([id], [hoten], [ngaysinh], [sdt], [diachi], [email], [password], [chucvu], [hinhanh], [idFb]) VALUES (12, N'SoonLess', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0914557400', N'An Lạc -Khoái Châu -Hưng Yên', N'soonless98@gmail.com', N'123456789', 2, N'avatar_macdinh.jpg', NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[banans] ADD  DEFAULT ((0)) FOR [soghe]
GO
ALTER TABLE [dbo].[banans] ADD  DEFAULT ((0)) FOR [tinhtrang]
GO
ALTER TABLE [dbo].[binhluans] ADD  DEFAULT (getdate()) FOR [ngaybinhluan]
GO
ALTER TABLE [dbo].[binhluans] ADD  DEFAULT ((0)) FOR [rate]
GO
ALTER TABLE [dbo].[binhluans] ADD  DEFAULT ((0)) FOR [trangthai]
GO
ALTER TABLE [dbo].[binhluans] ADD  DEFAULT ((0)) FOR [idsp]
GO
ALTER TABLE [dbo].[chitietdonhangs] ADD  DEFAULT ((0)) FOR [soluong]
GO
ALTER TABLE [dbo].[chitietdonhangs] ADD  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[donhang] ADD  DEFAULT ((0)) FOR [tinhtrang]
GO
ALTER TABLE [dbo].[donhang] ADD  DEFAULT ((0)) FOR [tongtien]
GO
ALTER TABLE [dbo].[khachthanhtoans] ADD  DEFAULT (getdate()) FOR [giott]
GO
ALTER TABLE [dbo].[khachthanhtoans] ADD  DEFAULT ((0)) FOR [sotien]
GO
ALTER TABLE [dbo].[monans] ADD  DEFAULT ((0)) FOR [gia]
GO
ALTER TABLE [dbo].[monans] ADD  DEFAULT (N'Đang cập nhật') FOR [mota]
GO
ALTER TABLE [dbo].[monans] ADD  DEFAULT (getdate()) FOR [ngaynhap]
GO
ALTER TABLE [dbo].[monans] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [rate]
GO
ALTER TABLE [dbo].[nhanviens] ADD  DEFAULT (getdate()) FOR [gianhap]
GO
ALTER TABLE [dbo].[nvcas] ADD  DEFAULT (getdate()) FOR [ngaydk]
GO
ALTER TABLE [dbo].[tintucs] ADD  DEFAULT ((0)) FOR [luotxem]
GO
ALTER TABLE [dbo].[tintucs] ADD  DEFAULT (getdate()) FOR [ngaydang]
GO
ALTER TABLE [dbo].[chitietdonhangs]  WITH CHECK ADD  CONSTRAINT [FK_chitietdonhangs_donhang_iddh] FOREIGN KEY([iddh])
REFERENCES [dbo].[donhang] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietdonhangs] CHECK CONSTRAINT [FK_chitietdonhangs_donhang_iddh]
GO
ALTER TABLE [dbo].[khachthanhtoans]  WITH CHECK ADD  CONSTRAINT [FK_khachthanhtoans_nhanviens_idnv] FOREIGN KEY([idnv])
REFERENCES [dbo].[nhanviens] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[khachthanhtoans] CHECK CONSTRAINT [FK_khachthanhtoans_nhanviens_idnv]
GO
ALTER TABLE [dbo].[khachthanhtoans]  WITH CHECK ADD  CONSTRAINT [FK_khachthanhtoans_phieugoimons_idphieu] FOREIGN KEY([idphieu])
REFERENCES [dbo].[phieugoimons] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[khachthanhtoans] CHECK CONSTRAINT [FK_khachthanhtoans_phieugoimons_idphieu]
GO
ALTER TABLE [dbo].[monans]  WITH CHECK ADD  CONSTRAINT [FK_monans_loaimons_idloaimon] FOREIGN KEY([idloaimon])
REFERENCES [dbo].[loaimons] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[monans] CHECK CONSTRAINT [FK_monans_loaimons_idloaimon]
GO
ALTER TABLE [dbo].[nhanviens]  WITH CHECK ADD  CONSTRAINT [FK_nhanviens_bophans_idbophan] FOREIGN KEY([idbophan])
REFERENCES [dbo].[bophans] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nhanviens] CHECK CONSTRAINT [FK_nhanviens_bophans_idbophan]
GO
ALTER TABLE [dbo].[nvcas]  WITH CHECK ADD  CONSTRAINT [FK_nvcas_calams_idca] FOREIGN KEY([idca])
REFERENCES [dbo].[calams] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nvcas] CHECK CONSTRAINT [FK_nvcas_calams_idca]
GO
ALTER TABLE [dbo].[nvcas]  WITH CHECK ADD  CONSTRAINT [FK_nvcas_nhanviens_nhanvienid] FOREIGN KEY([nhanvienid])
REFERENCES [dbo].[nhanviens] ([id])
GO
ALTER TABLE [dbo].[nvcas] CHECK CONSTRAINT [FK_nvcas_nhanviens_nhanvienid]
GO
