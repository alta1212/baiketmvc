USE [master]
GO
/****** Object:  Database [a]    Script Date: 11/23/2020 11:28:14 AM ******/
CREATE DATABASE [a]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'a', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\a.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'a_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\a_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [a] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [a].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [a] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [a] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [a] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [a] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [a] SET ARITHABORT OFF 
GO
ALTER DATABASE [a] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [a] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [a] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [a] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [a] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [a] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [a] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [a] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [a] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [a] SET  DISABLE_BROKER 
GO
ALTER DATABASE [a] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [a] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [a] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [a] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [a] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [a] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [a] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [a] SET RECOVERY FULL 
GO
ALTER DATABASE [a] SET  MULTI_USER 
GO
ALTER DATABASE [a] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [a] SET DB_CHAINING OFF 
GO
ALTER DATABASE [a] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [a] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [a] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [a] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'a', N'ON'
GO
ALTER DATABASE [a] SET QUERY_STORE = OFF
GO
USE [a]
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 11/23/2020 11:28:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[maloaisanpham] [nchar](10) NOT NULL,
	[tenloaisanpham] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaisanpham] PRIMARY KEY CLUSTERED 
(
	[maloaisanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 11/23/2020 11:28:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[maloaisanpham] [nchar](10) NULL,
	[masanpham] [nvarchar](20) NOT NULL,
	[tensanpham] [nvarchar](50) NULL,
	[giaban] [nchar](10) NULL,
	[mota] [nvarchar](500) NULL,
	[hinhanh] [nvarchar](50) NULL,
	[tacgia] [nvarchar](500) NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (N'lsp001    ', N'sách kinh tế')
GO
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (N'lsp002    ', N'sách ngoại ngữ')
GO
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (N'lsp003    ', N'sách văn học')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0001', N'Reading on the World', N'30000     ', N'giúp bạn hiểu về thế giới xung quanh', N'01.jpg', N'nguyễn tuấn anh')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp002    ', N'sp0002', N'The Catcher in the Rye', N'30000     ', N'giúp bạn hiểu rõ hơn về vùng quê', N'02.jpg', N'nguyễn thị nga')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0003', N'Little Black Book', N'20000     ', N'1 cuốn sách về sự huyền bé', N'03.jpg', N'nguyễn sơn dương')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp002    ', N'sp0004', N'Take On The Risk', N'30000     ', N'cuốn sách giúp bạn rút kinh nghệ từ rủi ro', N'04.jpg', N'hàn thị kim dung')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0005', N'Absteact On Background', N'31300     ', N'cuốn sách về sự tâm linh', N'05.jpg', N'nguyễn thị vân anh')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0006', N'Find The Wave Book', N'20000     ', N'cách đọc sách hiệu quả', N'06.jpg', N'đào thị ánh ngọc')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0007', N'See the More Story', N'32000     ', N'giúp bạn hiểu người ấy hơn', N'07.jpg', N'nguyễn tuấn anh')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp002    ', N'sp0008', N'The Wikde Book', N'21000     ', N'cuốn sách về wike', N'08.jpg', N'nguyễn thị nga')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0009', N'Conversion Erik Routley', N'30000     ', N'cuốn sách khoa học về Erik Routley', N'09.jpg', N'hàn thị kim dung')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0010', N'The Leo Dominica', N'30000     ', N'cuốn sách kể về The Leo Dominica', N'10.jpg', N'nguyễn tuấn anh')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp002    ', N'sp0011', N'By The Editbeth Jat', N'21000     ', N'VÔ GIÁ TRỊ', N'11.jpg', N'hàn thị kim dung')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0012', N'The Crucial Decade', N'21000     ', N'cuốn sách về lịch sử', N'12.jpg', N'nguyễn thị nga')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0013', N'đắc nhân tâm', N'100000    ', N'cuốn sách giúp bnaj nắm được tâm lý người khác', N'13.jpg', N'hàn thị kim dung')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0014', N'harry poter', N'40000     ', N'câu chuyện về thế giới phù thuỷ', N'14.jpg', N'nguyễn tuấn anh')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp002    ', N'sp0015', N'Cội nguồn', N'10000     ', N'Đây không phải một cuốn sách lịch sử văn minh nhân loại hay nhân học, địa chất học, xã hội học…', N'15.jpg', N'nguyễn sơn dương')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp002    ', N'sp0016', N'Đường Mây Trên Đất Hoa', N'20000     ', N'Có lẽ biết rõ chúng sanh thời Mạt pháp nghiệp dày, trí mỏng, tín tâm yếu kém nên một vài thiền sư đã để lại tài liệu tu tập như một chứng tích cho chúng sanh đời sau theo gương đó mà tu hành. Hiếm hoi trong đó có tập sách “Đường mây trên đất hoa” của Hòa thượng Hư Vân ghi chép lại chi tiết, cặn kẽ về cuộc đời tu hành và hoằng pháp của Ngài.', N'16.jpg', N'nguyễn sơn dương')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp001    ', N'sp0017', N'Bí Quyết Bấm Huyệt Chữa Bệnh', N'145500    ', N'Với sơ đồ thể hiện vị trí chính thức của 200 huyệt đạo trên cơ thể, cuốn sách như một công trình khoa học chuyên sâu, hữu ích và giá trị – một bí huyết thực hành bấm huyệt rất thực tế và sinh động', N'17.jpg', N'nguyễn sơn dương')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0018', N'Muôn Kiếp Nhân Sinh', N'145600    ', N'“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm,', N'18.jpg', N'nguyễn tuấn anh')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0019', N'Con Chim Xanh Biếc Bay Về', N'200000    ', N'Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam).', N'19.jpg', N'nguyễn sơn dương')
GO
INSERT [dbo].[sanpham] ([maloaisanpham], [masanpham], [tensanpham], [giaban], [mota], [hinhanh], [tacgia]) VALUES (N'lsp003    ', N'sp0020', N'Hiểu Về Trái Tim', N'30000     ', N'Xuất bản lần đầu tiên vào năm 2011, Hiểu Về Trái Tim trình làng cũng lúc với kỷ lục: cuốn sách có số lượng in lần đầu lớn nhất: 100.000 bản. Trung tâm sách kỷ lục Việt Nam công nhận kỳ tích ấy nhưng đến nay, con số phát hành của Hiểu về trái tim vẫn chưa có dấu hiệu chậm lại. ', N'20.jpg', N'nguyễn thị nga')
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisanpham] FOREIGN KEY([maloaisanpham])
REFERENCES [dbo].[loaisanpham] ([maloaisanpham])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisanpham]
GO
USE [master]
GO
ALTER DATABASE [a] SET  READ_WRITE 
GO
