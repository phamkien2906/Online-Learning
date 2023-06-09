USE [master]
GO
/****** Object:  Database [SWP-Project]    Script Date: 3/15/2023 11:49:47 PM ******/
CREATE DATABASE [SWP-Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP-Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP-Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP-Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP-Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP-Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP-Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP-Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP-Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP-Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP-Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP-Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP-Project] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP-Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP-Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP-Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP-Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP-Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP-Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP-Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP-Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP-Project] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP-Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP-Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP-Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP-Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP-Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP-Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP-Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP-Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP-Project] SET  MULTI_USER 
GO
ALTER DATABASE [SWP-Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP-Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP-Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP-Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP-Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP-Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP-Project] SET QUERY_STORE = OFF
GO
USE [SWP-Project]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[Chapter_id] [int] NOT NULL,
	[course_id] [int] NULL,
	[chapter_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Chapter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentCourse]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentCourse](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[course_id] [int] NULL,
	[comment_detail] [nvarchar](max) NULL,
	[comment_date] [date] NULL,
	[comment_repply] [int] NULL,
	[comment_like] [int] NULL,
	[comment_image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentLesson]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentLesson](
	[Comment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[lesson_id] [int] NULL,
	[comment_repply] [int] NULL,
	[comment_like] [int] NULL,
	[comment_detail] [nvarchar](max) NULL,
	[comment_date] [date] NULL,
	[comment_image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_id] [int] NOT NULL,
	[course_name] [nvarchar](50) NULL,
	[course_description] [nvarchar](max) NULL,
	[course_price] [float] NULL,
	[course_number_lesson] [int] NULL,
	[course_image] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discussion]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discussion](
	[discussion_Id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[discussion_detail] [nvarchar](max) NULL,
	[discussion_date] [date] NULL,
	[discussion_reply] [int] NULL,
	[discussion_like] [int] NULL,
	[discussion_image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[discussion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[Enroll_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[course_id] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[rate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Enroll_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[image_id] [int] NOT NULL,
	[lesson_id] [int] NULL,
	[image_link] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] NOT NULL,
	[lesson_video] [varchar](max) NULL,
	[lesson_level] [varchar](1) NULL,
	[chapter_id] [int] NULL,
	[image_id] [int] NULL,
	[lesson_content] [varchar](max) NULL,
	[lesson_number] [int] NULL,
	[course_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[course_id] [int] NULL,
	[payment_icome] [int] NULL,
	[payment_content] [varchar](50) NULL,
	[payment_time] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Percentage]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Percentage](
	[User_Id] [int] NULL,
	[lesson_id] [int] NULL,
	[percentage] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Question_id] [int] NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Choice1] [nvarchar](max) NULL,
	[Choice2] [nvarchar](max) NULL,
	[Choice3] [nvarchar](max) NULL,
	[Choice4] [nvarchar](max) NULL,
	[Choice5] [nvarchar](max) NULL,
	[Question_correct] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quizz]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quizz](
	[Quizz_id] [int] NOT NULL,
	[Course_id] [int] NULL,
	[Question_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Quizz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[record_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[Course_id] [int] NULL,
	[record_date] [varchar](max) NULL,
	[record_mark] [varchar](20) NULL,
	[recod_quizz] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/15/2023 11:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](max) NULL,
	[user_mail] [varchar](50) NULL,
	[user_password] [varchar](20) NULL,
	[user_role] [tinyint] NULL,
	[user_gender] [tinyint] NULL,
	[user_address] [nvarchar](50) NULL,
	[user_phone] [int] NULL,
	[user_avatar] [varchar](max) NULL,
	[user_status] [int] NULL,
	[user_fullname] [nvarchar](100) NULL,
	[user_birthday] [date] NULL,
	[user_country] [varchar](50) NULL,
	[user_facebook] [varchar](50) NULL,
	[user_linkedln] [varchar](50) NULL,
	[user_twitter] [varchar](50) NULL,
	[user_summary] [nvarchar](max) NULL,
	[user_achievement] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (1, 1, N'First program and comments')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (2, 1, N'Variables and Types')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (3, 1, N'Operators')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (4, 1, N'Selection statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (5, 1, N'Loop statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (6, 1, N'Loops: while and do-while')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (7, 1, N'Arrays')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (8, 1, N'Strings')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (9, 1, N'Method')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (10, 2, N'Git Tutoral')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (11, 2, N'Git and Github')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (12, 2, N'Git Contribute')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (13, 2, N'Git Advanced')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (14, 2, N'Git Undo')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (15, 2, N'Git Exercises')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (16, 3, N'SQL Tutorial')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (17, 3, N'Basic SQL statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (18, 3, N'Advanced SQL statements')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (19, 3, N'Basic command of database')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (20, 3, N'Database intensive commands')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (21, 3, N'SQL References')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (22, 3, N'SQL Examples')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (23, 4, N'Node.js Tutorial')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (24, 4, N'Node.js MySQL')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (25, 4, N'Node.js MongoDB')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (26, 4, N'Raspberry Pi')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (27, 4, N'Node.js Reference')
INSERT [dbo].[Chapter] ([Chapter_id], [course_id], [chapter_name]) VALUES (28, 4, N'Node.js Editor')
GO
SET IDENTITY_INSERT [dbo].[CommentCourse] ON 

INSERT [dbo].[CommentCourse] ([comment_id], [user_id], [course_id], [comment_detail], [comment_date], [comment_repply], [comment_like], [comment_image]) VALUES (1, 1, 1, N'Course rất hay', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
INSERT [dbo].[CommentCourse] ([comment_id], [user_id], [course_id], [comment_detail], [comment_date], [comment_repply], [comment_like], [comment_image]) VALUES (2, 2, 1, N'Tuyệt vời', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[CommentCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[CommentLesson] ON 

INSERT [dbo].[CommentLesson] ([Comment_id], [user_id], [lesson_id], [comment_repply], [comment_like], [comment_detail], [comment_date], [comment_image]) VALUES (1, 1, 1, 0, 0, N'Comment1', CAST(N'2023-01-26' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[CommentLesson] OFF
GO
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (1, N'Java', N'Tìm hiểu cơ bản về ngôn ngữ lập trình Java thông qua các tác vụ mã hóa tương tác. Sau khi kết thúc khóa học, học viên có được nhiều kinh nghiệm thực hành về viết, biên dịch và thực thi các chương trình Java.', 0, 43, N'https://codelearn.io/CodeCamp/CodeCamp/Upload/Course/1e746fe3cbe448bda850d8b953a78954.jpg')
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (2, N'Git', N'Git là một hệ thống quản lý phiên bản phân tán (Distributed Version Control System – DVCS), nó là một trong những hệ thống quản lý phiên bản phân tán phổ biến nhất hiện nay. Git cung cấp cho mỗi lập trình viên kho lưu trữ (repository) riêng chứa toàn bộ lịch sử thay đổi.', 0, 29, N'https://fireship.io/courses/git/img/featured.png')
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (3, N'SQL', N'SQL là viết tắt của Structured Query Language – ngôn ngữ truy vấn mang tính cấu trúc. Nó được thiết kế để quản lý dữ liệu trong một hệ thống quản lý cơ sở dữ liệu quan hệ (RDBMS). SQL là ngôn ngữ cơ sở dữ liệu, được dùng để tạo, xóa, lấy các hàng và sửa đổi các hàng.', 0, 69, N'https://gisgeography.com/wp-content/uploads/2021/12/Learn-SQL-Online-Courses.png')
INSERT [dbo].[Course] ([Course_id], [course_name], [course_description], [course_price], [course_number_lesson], [course_image]) VALUES (4, N'Node.js', N'NodeJS là một nền tảng được xây dựng trên V8 JavaScript Engine – trình thông dịch thực thi mã JavaScript, giúp xây dựng các ứng dụng web một cách đơn giản và dễ dàng mở rộng. NodeJS được phát triển bởi Ryan Dahl vào năm 2009 và có thể chạy trên nhiều hệ điều hành khác nhau: OS X, Microsoft Windows, Linux.', 1000000, 45, N'https://i.ytimg.com/vi/Oe421EPjeBE/maxresdefault.jpg')
GO
SET IDENTITY_INSERT [dbo].[Discussion] ON 

INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (1, 1, N'Rất đẹp rất tuyệt vời', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (2, 2, N'Ahihihihi', CAST(N'2023-01-26' AS Date), 0, 0, NULL)
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (3, 2, N'neww', CAST(N'2023-03-01' AS Date), 0, 0, N'52.jpg')
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (6, 2, N'Course rất hay', CAST(N'2023-03-01' AS Date), 0, 0, N'Not found file')
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (10, 2, N'123', CAST(N'2023-03-01' AS Date), 6, 0, NULL)
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (11, 2, N'course rất hay ', CAST(N'2023-03-01' AS Date), 0, 0, N'Screenshot (71).png')
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (12, 2, N'hay', CAST(N'2023-03-01' AS Date), 11, 0, NULL)
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (13, 2, N'dung dep traii', CAST(N'2023-03-01' AS Date), 11, 0, NULL)
INSERT [dbo].[Discussion] ([discussion_Id], [user_id], [discussion_detail], [discussion_date], [discussion_reply], [discussion_like], [discussion_image]) VALUES (14, 1, N'abc', CAST(N'2023-03-15' AS Date), 0, 0, N'Not found file')
SET IDENTITY_INSERT [dbo].[Discussion] OFF
GO
SET IDENTITY_INSERT [dbo].[Enroll] ON 

INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (1, 1, 1, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (2, 2, 1, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (3, 3, 1, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (4, 2, 2, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (5, 2, 3, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (6, 2, 4, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (7, 1, 4, NULL, NULL, 0)
INSERT [dbo].[Enroll] ([Enroll_id], [user_id], [course_id], [start_date], [end_date], [rate]) VALUES (8, 1, 2, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Enroll] OFF
GO
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (1, N'', N'1', 1, 0, N'lesson1.jsp', 1, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (2, N'', N'1', 1, 0, N'lesson2.jsp', 2, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (3, N'', N'1', 1, 0, N'lesson3.jsp', 3, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (4, N'', N'1', 1, 0, N'lesson4.jsp', 4, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (5, N'', N'1', 1, 0, N'lesson5.jsp', 5, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (6, N'', N'1', 1, 0, N'lesson6.jsp', 6, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (7, N'', N'1', 1, 0, N'lesson7.jsp', 7, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (8, N'', N'1', 1, 0, N'lesson8.jsp', 8, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (9, N'', N'1', 2, 0, N'lesson9.jsp', 9, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (10, N'', N'1', 2, 0, N'lesson10.jsp', 10, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (11, N'', N'1', 2, 0, N'lesson11.jsp', 11, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (12, N'', N'1', 2, 0, N'lesson12.jsp', 12, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (13, N'', N'1', 2, 0, N'lesson13.jsp', 13, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (14, N'', N'1', 2, 0, N'lesson14.jsp', 14, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (15, N'', N'1', 3, 0, N'lesson15.jsp', 15, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (16, N'', N'1', 3, 0, N'lesson16.jsp', 16, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (17, N'', N'1', 3, 0, N'lesson17.jsp', 17, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (18, N'', N'1', 3, 0, N'lesson18.jsp', 18, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (19, N'', N'1', 3, 0, N'lesson19.jsp', 19, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (20, N'', N'1', 4, 0, N'lesson20.jsp', 20, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (21, N'', N'1', 4, 0, N'lesson21jsp', 21, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (22, N'', N'1', 4, 0, N'lesson22.jsp', 22, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (23, N'', N'1', 4, 0, N'lesson23.jsp', 23, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (24, N'', N'1', 4, 0, N'lesson24.jsp', 24, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (25, N'', N'1', 4, 0, N'lesson25.jsp', 25, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (26, N'', N'1', 5, 0, N'lesson26.jsp', 26, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (27, N'', N'1', 5, 0, N'lesson27.jsp', 27, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (28, N'', N'1', 5, 0, N'lesson28.jsp', 28, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (29, N'', N'1', 6, 0, N'lesson29.jsp', 29, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (30, N'', N'1', 6, 0, N'lesson30.jsp', 30, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (31, N'', N'1', 6, 0, N'lesson31.jsp', 31, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (32, N'', N'1', 6, 0, N'lesson32.jsp', 32, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (33, N'', N'1', 7, 0, N'lesson33.jsp', 33, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (34, N'', N'1', 7, 0, N'lesson34.jsp', 34, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (35, N'', N'1', 7, 0, N'lesson35.jsp', 35, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (36, N'', N'1', 7, 0, N'lesson36.jsp', 36, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (37, N'', N'1', 7, 0, N'lesson37.jsp', 37, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (38, N'', N'1', 8, 0, N'lesson38.jsp', 38, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (39, N'', N'1', 8, 0, N'lesson39.jsp', 39, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (40, N'', N'1', 8, 0, N'lesson40.jsp', 40, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (41, N'', N'1', 8, 0, N'lesson41.jsp', 41, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (42, N'', N'1', 8, 0, N'lesson42.jsp', 42, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (43, N'', N'1', 8, 0, N'lesson43.jsp', 43, 1)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (44, N'', N'1', 10, 0, N'lesson1.jsp', 1, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (45, N'', N'1', 10, 0, N'lesson2.jsp', 2, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (46, N'', N'1', 10, 0, N'lesson3.jsp', 3, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (47, N'', N'1', 10, 0, N'lesson4.jsp', 4, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (48, N'', N'1', 10, 0, N'lesson5.jsp', 5, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (49, N'', N'1', 10, 0, N'lesson6.jsp', 6, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (50, N'', N'1', 10, 0, N'lesson7.jsp', 7, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (51, N'', N'1', 10, 0, N'lesson8.jsp', 8, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (52, N'', N'1', 10, 0, N'lesson9.jsp', 9, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (53, N'', N'1', 11, 0, N'lesson10.jsp', 10, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (54, N'', N'1', 11, 0, N'lesson11.jsp', 11, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (55, N'', N'1', 11, 0, N'lesson12.jsp', 12, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (56, N'', N'1', 11, 0, N'lesson13.jsp', 13, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (57, N'', N'1', 11, 0, N'lesson14.jsp', 14, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (58, N'', N'1', 11, 0, N'lesson15.jsp', 15, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (59, N'', N'1', 11, 0, N'lesson16.jsp', 16, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (60, N'', N'1', 11, 0, N'lesson17.jsp', 17, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (61, N'', N'1', 11, 0, N'lesson18.jsp', 18, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (62, N'', N'1', 12, 0, N'lesson19.jsp', 19, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (63, N'', N'1', 12, 0, N'lesson20.jsp', 20, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (64, N'', N'1', 12, 0, N'lesson21.jsp', 21, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (65, N'', N'1', 13, 0, N'lesson22.jsp', 22, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (66, N'', N'1', 13, 0, N'lesson23.jsp', 23, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (67, N'', N'1', 13, 0, N'lesson24.jsp', 24, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (68, N'', N'1', 14, 0, N'lesson25.jsp', 25, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (69, N'', N'1', 14, 0, N'lesson26.jsp', 26, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (70, N'', N'1', 14, 0, N'lesson27.jsp', 27, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (71, N'', N'1', 15, 0, N'lesson28.jsp', 28, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (72, N'', N'1', 15, 0, N'lesson29.jsp', 29, 2)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (73, N'', N'1', 16, 0, N'lesson1.jsp', 1, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (74, N'', N'1', 16, 0, N'lesson2.jsp', 2, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (75, N'', N'1', 16, 0, N'lesson3.jsp', 3, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (76, N'', N'1', 16, 0, N'lesson4.jsp', 4, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (77, N'', N'1', 16, 0, N'lesson5.jsp', 5, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (78, N'', N'1', 16, 0, N'lesson6.jsp', 6, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (79, N'', N'1', 16, 0, N'lesson7.jsp', 7, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (80, N'', N'1', 16, 0, N'lesson8.jsp', 8, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (81, N'', N'1', 16, 0, N'lesson9.jsp', 9, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (82, N'', N'1', 16, 0, N'lesson10.jsp', 10, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (83, N'', N'1', 16, 0, N'lesson11.jsp', 11, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (84, N'', N'1', 16, 0, N'lesson12.jsp', 12, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (85, N'', N'1', 16, 0, N'lesson13.jsp', 13, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (86, N'', N'1', 16, 0, N'lesson14.jsp', 14, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (87, N'', N'1', 17, 0, N'lesson15.jsp', 15, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (88, N'', N'1', 17, 0, N'lesson16.jsp', 16, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (89, N'', N'1', 17, 0, N'lesson17.jsp', 17, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (90, N'', N'1', 17, 0, N'lesson18.jsp', 18, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (91, N'', N'1', 17, 0, N'lesson19.jsp', 19, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (92, N'', N'1', 17, 0, N'lesson20.jsp', 20, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (93, N'', N'1', 17, 0, N'lesson21.jsp', 21, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (94, N'', N'1', 17, 0, N'lesson22.jsp', 22, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (95, N'', N'1', 17, 0, N'lesson23.jsp', 23, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (96, N'', N'1', 17, 0, N'lesson24.jsp', 24, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (97, N'', N'1', 17, 0, N'lesson25.jsp', 25, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (98, N'', N'1', 17, 0, N'lesson26.jsp', 26, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (99, N'', N'1', 18, 0, N'lesson27.jsp', 27, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (100, N'', N'1', 18, 0, N'lesson28.jsp', 28, 3)
GO
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (101, N'', N'1', 18, 0, N'lesson29.jsp', 29, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (102, N'', N'1', 18, 0, N'lesson30.jsp', 30, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (103, N'', N'1', 18, 0, N'lesson31.jsp', 31, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (104, N'', N'1', 18, 0, N'lesson32.jsp', 32, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (105, N'', N'1', 18, 0, N'lesson33.jsp', 33, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (106, N'', N'1', 18, 0, N'lesson34.jsp', 34, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (107, N'', N'1', 18, 0, N'lesson35.jsp', 35, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (108, N'', N'1', 18, 0, N'lesson36.jsp', 36, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (109, N'', N'1', 18, 0, N'lesson37.jsp', 37, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (110, N'', N'1', 18, 0, N'lesson38.jsp', 38, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (111, N'', N'1', 19, 0, N'lesson39.jsp', 39, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (112, N'', N'1', 19, 0, N'lesson40.jsp', 40, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (113, N'', N'1', 19, 0, N'lesson41.jsp', 41, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (114, N'', N'1', 19, 0, N'lesson42.jsp', 42, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (115, N'', N'1', 19, 0, N'lesson43.jsp', 43, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (116, N'', N'1', 19, 0, N'lesson44.jsp', 44, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (117, N'', N'1', 19, 0, N'lesson45.jsp', 45, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (118, N'', N'1', 19, 0, N'lesson46.jsp', 46, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (119, N'', N'1', 19, 0, N'lesson47.jsp', 47, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (120, N'', N'1', 19, 0, N'lesson48.jsp', 48, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (121, N'', N'1', 20, 0, N'lesson49.jsp', 49, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (122, N'', N'1', 20, 0, N'lesson50.jsp', 50, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (123, N'', N'1', 20, 0, N'lesson51.jsp', 51, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (124, N'', N'1', 20, 0, N'lesson52.jsp', 52, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (125, N'', N'1', 20, 0, N'lesson53.jsp', 53, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (126, N'', N'1', 20, 0, N'lesson54.jsp', 54, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (127, N'', N'1', 20, 0, N'lesson55.jsp', 55, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (128, N'', N'1', 20, 0, N'lesson56.jsp', 56, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (129, N'', N'1', 20, 0, N'lesson57.jsp', 57, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (130, N'', N'1', 20, 0, N'lesson58.jsp', 58, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (131, N'', N'1', 20, 0, N'lesson59.jsp', 59, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (132, N'', N'1', 20, 0, N'lesson60.jsp', 60, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (133, N'', N'1', 21, 0, N'lesson61.jsp', 61, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (134, N'', N'1', 21, 0, N'lesson62.jsp', 62, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (135, N'', N'1', 21, 0, N'lesson63.jsp', 63, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (136, N'', N'1', 21, 0, N'lesson64.jsp', 64, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (137, N'', N'1', 21, 0, N'lesson65.jsp', 65, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (138, N'', N'1', 22, 0, N'lesson66.jsp', 66, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (139, N'', N'1', 22, 0, N'lesson67.jsp', 67, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (140, N'', N'1', 22, 0, N'lesson68.jsp', 68, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (141, N'', N'1', 22, 0, N'lesson69.jsp', 69, 3)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (142, N'https://youtu.be/OR0hBEUk4wI', N'1', 23, 0, N'lesson1.jsp', 1, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (143, N'https://youtu.be/-iyVGz-0Fpc', N'1', 23, 0, N'lesson2.jsp', 2, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (144, N'https://youtu.be/illPEfNegm0', N'1', 23, 0, N'lesson3.jsp', 3, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (145, N'https://youtu.be/fPf88MxlnEQ', N'1', 23, 0, N'lesson4.jsp', 4, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (146, N'https://youtu.be/x8rlNT-gaBs', N'1', 23, 0, N'lesson5.jsp', 5, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (147, N'https://youtu.be/mSgJQlKVzxM', N'1', 23, 0, N'lesson6.jsp', 6, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (148, N'https://youtu.be/BfwbQxIJz4Q', N'1', 23, 0, N'lesson7.jsp', 7, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (149, N'https://youtu.be/WjW65qVKByI', N'1', 23, 0, N'lesson8.jsp', 8, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (150, N'https://youtu.be/uuR2vvcAftM', N'1', 23, 0, N'lesson9.jsp', 9, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (151, N'https://youtu.be/RQ0Wacx6Q7k', N'1', 23, 0, N'lesson10.jsp', 10, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (152, N'', N'1', 23, 0, N'lesson11.jsp', 11, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (153, N'https://youtu.be/gQinIyWfuuk', N'1', 24, 0, N'lesson12.jsp', 12, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (154, N'', N'1', 24, 0, N'lesson13.jsp', 13, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (155, N'', N'1', 24, 0, N'lesson14.jsp', 14, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (156, N'https://youtu.be/RrJcj68cIvo', N'1', 24, 0, N'lesson15.jsp', 15, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (157, N'', N'1', 24, 0, N'lesson16.jsp', 16, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (158, N'', N'1', 24, 0, N'lesson17.jsp', 17, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (159, N'', N'1', 24, 0, N'lesson18.jsp', 18, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (160, N'https://youtu.be/4zfF0cNlhz8', N'1', 24, 0, N'lesson19.jsp', 19, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (161, N'', N'1', 24, 0, N'lesson20.jsp', 20, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (162, N'', N'1', 24, 0, N'lesson21.jsp', 21, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (163, N'', N'1', 24, 0, N'lesson22.jsp', 22, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (164, N'', N'1', 24, 0, N'lesson23.jsp', 23, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (165, N'', N'1', 25, 0, N'lesson24.jsp', 24, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (166, N'', N'1', 25, 0, N'lesson25.jsp', 25, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (167, N'', N'1', 25, 0, N'lesson26.jsp', 26, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (168, N'', N'1', 25, 0, N'lesson27.jsp', 27, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (169, N'https://youtu.be/JKBurpy_hfs', N'1', 25, 0, N'lesson28.jsp', 28, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (170, N'', N'1', 25, 0, N'lesson29.jsp', 29, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (171, N'', N'1', 25, 0, N'lesson30.jsp', 30, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (172, N'https://youtu.be/ZEpiQcb5xJ0', N'1', 25, 0, N'lesson31.jsp', 31, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (173, N'', N'1', 25, 0, N'lesson32.jsp', 32, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (174, N'', N'1', 25, 0, N'lesson33.jsp', 33, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (175, N'', N'1', 25, 0, N'lesson34.jsp', 34, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (176, N'', N'1', 25, 0, N'lesson35.jsp', 35, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (177, N'https://youtu.be/oFdlRcRl5aQ', N'1', 26, 0, N'lesson36.jsp', 36, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (178, N'', N'1', 26, 0, N'lesson37.jsp', 37, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (179, N'', N'1', 26, 0, N'lesson38.jsp', 38, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (180, N'', N'1', 26, 0, N'lesson39.jsp', 39, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (181, N'', N'1', 26, 0, N'lesson40.jsp', 40, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (182, N'https://youtu.be/6S3pW2q0WK8', N'1', 26, 0, N'lesson41.jsp', 41, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (183, N'', N'1', 26, 0, N'lesson42.jsp', 42, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (184, N'', N'1', 26, 0, N'lesson43.jsp', 43, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (185, N'https://youtu.be/kRG8QpOKZE4', N'1', 27, 0, N'lesson44.jsp', 44, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (186, N'https://youtu.be/3y8FnQ_k0-0', N'1', 28, 0, N'lesson45.jsp', 45, 4)
INSERT [dbo].[Lesson] ([lesson_id], [lesson_video], [lesson_level], [chapter_id], [image_id], [lesson_content], [lesson_number], [course_id]) VALUES (201, NULL, N'1', 1, NULL, N'sgsgs', 57, 1)
GO
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 1, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 2, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 3, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 5, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 4, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 6, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 7, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 10, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 8, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 15, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 9, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (1, 11, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 1, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 2, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 3, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 6, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 7, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 4, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 5, 1)
INSERT [dbo].[Percentage] ([User_Id], [lesson_id], [percentage]) VALUES (2, 149, 1)
GO
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (1, N'Đâu không phải là một kiểu dữ liệu nguyên thủy trong Java?', N'double', N'int', N'long', N'long float', N'char', N'long float')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (2, N'Đâu không phải thành phần trong cấu trúc lớp trong java?', N'Tên lớp', N'Thuộc tính', N'Phươg thức', N'Biến', N'Tất cả đều sai', N'Biến')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (3, N'Với giá trị nào của x, biểu thức sau trả về giá trị true(x thuộc kiểu int). x%3==0', N'2', N'3', N'7', N'4', N'9', N'9')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (4, N'Kiểu dữ liệu nào trong java chứa giá trị bao gồm cả chữ và số?', N'int', N'byte', N'char', N'String', N'float', N'String')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (5, N'Gói nào trong java chứa lớp Scanner dùng để nhập dữ liệu từ bàn phím?', N'java.net', N'java.io', N'java.util', N'java.awt', N'java.lang', N'java.util')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (6, N'Biểu thức nào có giá trị khác các biểu thức còn lại trong các biểu thức sau? Cho x=true thuộc kiểu boolean.', N'true', N'x==true', N'1==1', N'!x', N'Tất cả đều sai', N'!x')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (7, N'Đâu là câu sai về ngôn ngữ lập trình java?', N'Ngôn ngữ lập trình java phân biệt chữ hoa-chữ thường', N'java là ngôn ngữ lập trình hướng đối tượng', N'Dấu chấm phẩy được sử dụng để kết thúc lệnh trong java', N'Chương trình viết bằng java chỉ có thể chạy trên hệ điều hành window', N'Ngôn ngữ java được dùng trong phát triển phần mềm', N'Chương trình viết bằng java chỉ có thể chạy trên hệ điều hành window')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (8, N'Phương thức Next() của lớp Scanner dùng để làm gì?', N'Nhập một số nguyên', N'Nhâp một ký tự', N'Nhập một chuỗi', N'Nhập một mảng', N'Không có phương thức này', N'Nhập một chuỗi')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (9, N'Muốn chạy được chương trình java, cần cài đặt phần mềm nào sau đây?', N'Netbeans', N'Eclipse', N'JDK', N'java platform', N'Visual Studio', N'java platform')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (10, N'Phương thức nextLine() thuộc lớp nào?', N'String', N'Scanner', N'Integer', N'System', N'Float', N'Scanner')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (11, N'Câu lệnh khai báo chuẩn cho cách main như thế nào?', N'public static void main(String[] args{}', N'public static int main(String[] args{}', N'public void main(String[] args{}', N'public static final void main(String[] args{}', N'public static void main(Int[] args{}', N'public static void main(String[] args{}')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (12, N'Câu nào sau đây sai?', N'/** chú thích */', N'/* chú thích */', N'/* chú thích', N'// chú thích', N'c? A, B, D d?u dúng', N'/* chú thích')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (13, N'Cách đặt tên nào sau đây là sai?', N'2word', N'*word', N'main', N'2main', N'Tất cả đều sai', N'Tất cả đều sai')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (14, N'Một chương trình gồm 2 class sẽ có bao nhiêu cách main?', N'1', N'2', N'3', N'4', N'5', N'4')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (15, N'Một lớp trong java có thể bao nhiêu lớp cha?', N'1', N'2', N'3', N'4', N'5', N'1')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (16, N'Một lớp trong java có bao nhiêu lớp con?', N'1`', N'2', N'3', N'4', N'Vô số', N'Vô số')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (17, N'Có bao nhiêu loại biến trong java?', N'1', N'2', N'3', N'4', N'5', N'4')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (18, N'Để khai báo lớp Xedap1 kế thừa lớp Xedap phải làm như thế nào?', N'class Xedap1 extend Xedap{}', N'public class Xedap1 extend Xedap{}', N'class Xedap1 extends Xedap{}', N'class Xedap1 extend Xedap{}', N'Tất cả đều sai', N'class Xedap1 extends Xedap{}')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (19, N'Trường dữ liệu là các biến dạng nào sau đây?', N'Biến thay mặt và tham số', N'Biến thay mặt và biến lớp', N'Biến thay mặt và biến cục bộ', N'Biến lớp và tham số', N'Biến lớp và biến cục bộ', N'Biến thay mặt và biến lớp')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (20, N'Khai báo nào sau đây là khai báo biến lớp', N'final double d;', N'volatile int sleepTime', N'private static id;', N'private static id', N'Không có đáp án đúng', N'private static id;')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (21, N'Cho xâu kí tự s = "ABCDEF". Để lấy ký tự thứ E của xâu ký tự s(String) dùng câu lệnh nào sau đây?', N's.charAt(5)', N's.charAt(4)', N's[5]', N's[4]', N's.charAt(3)', N's.charAt(4)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (22, N'Phát biểu nào sau đây là đúng: Chọn một câu trả lời', N'Mảng có thể lưu giữ các phần tử thuộc nhiều kiểu dữ liệu khác nhau', N'Chỉ số của mảng có thể sử dụng kiểu số thực (float, double)', N'Biểu thức array.length được sử dụng để trả về số phần tử trong mảng', N'Một phần tử của mảng không thể truyền vào trong một phương thức', N'Không có đáp án đúng', N'Biểu thức array.length được sử dụng để trả về số phần tử trong mảng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (23, N'Trong các khai báo sau đâu là khai báo không hợp lệ?', N'int a1[][] = new int[][3];', N'int a2[][] = new int[2][3];', N'int a3[][] = new int[2][];', N'int a4[][] = {{},{},{}}', N'int a5[][] = new int[4][]', N'int a1[][] = new int[][3];')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (24, N'Đoạn lệnh nào sẽ đưa ra lỗi biên dịch?', N'class A{public A(int x){}}', N'class A{} class B extends A{B(){}}', N'Class A{A(){}} class B{public B(){}}', N'class Z{public Z(int){}} class A extends Z{}', N'class A{} class B extends A{}', N'class Z{public Z(int){}} class A extends Z{}')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (25, N'Phát biểu nào sau đây sai?', N'mảng có kích thước không đổi trong toàn bộ chương trình', N'mảng là cấu trúc dữ liệu có khả năng lưu trữ nhiều thành phần dữ liệu với kiểu khác nhau', N'mảng N phần tử được đánh chỉ số từ 0 đến N -1', N'chỉ số mảng bắt đầu bằng 0', N'tất cả đều sai', N'mảng là cấu trúc dữ liệu có khả năng lưu trữ nhiều thành phần dữ liệu với kiểu khác nhau')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (26, N'Phương thức nào của class String trả về index của chuỗi ký tự con xuất hiện đầu tiên trong chuỗi ký tự char', N'concat()', N'charAt()', N'indexOf()', N'firstChar()', N'Không có đáp án đúng', N'indexOf()')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (27, N'Phương thức nào dùng để tìm kiếm một chuỗi trong một chuỗi khác trong class String của java?', N'lastIndexOf()', N'substring()', N'toString', N'StringToString()', N'không có đáp án đúng', N'lastIndexOf()')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (28, N'Trong java, kiểu dữ liệu nào là một địa chỉ của đối tượng hoặc một mảng được tạo ra trong bộ nhớ?', N'Kiểu primitive', N'Kiểu reference', N'Kiểu format', N'Kiểu Address', N'Không có đáp án', N'Kiểu reference')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (29, N'Chức năng của vòng lặp while là gì?', N'Kiểm tra kết quả của biểu thức boolean', N'Tránh mâu thuẫn giữa bên trong và bên ngoài switch', N'Lặp lại khối lệnh chừng nào điều kiện là đúng', N'Kiểm tra kết quả của biểu thức String', N'Không có đáp án đúng', N'Lặp lại khối lệnh chừng nào điều kiện là đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (30, N'Java cung cấp một số câu lệnh làm thay đổi dòng điều khiển dựa trên các điều kiện. Lệnh nào dừng việc hoạt động của vòng lòng trong cùng và bắt đầu câu lệnh tiếp theo ngay sau khối lệnh?', N'break', N'continue', N'change', N'jump', N'next', N'break')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (31, N'Để đảo vị trí boolean ta dùng toán tử nào?', N'!', N'>>', N'>>>', N'<<<', N'<<', N'!')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (32, N'Lệnh charAt(n) có tác dụng gì?', N'Tìm kiếm ký tự thứ n', N'Trả về ký tự thứ n - 1', N'Trả về ký tự thứ n', N'Trả về ký tự có vị trí chỉ mục n', N'Trả về ký tự thứ n - 2', N'Trả về ký tự có vị trí chỉ mục n')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (33, N'Trong javascript sự kiện OnUnload thực hiện khi nào?', N'Khi bắt đầu chương trình chạy', N'Khi click chuột', N'Khi kết thúc một chương trình', N'Khi di chuyển chuột qua', N'Khi lăn chuột', N'Khi kết thúc một chương trình')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (34, N'Thẻ<textarea></textarea> dùng để làm gì?', N'Tạo một ô text để nhập dữ liệu 1 dòng', N'Tạo một ô password', N'Tạo một textbox cho phép nhập liệu nhiều dòng', N'tạo một ô viết nội dung văn bản', N'Tất cả ý trên', N'Tạo một textbox cho phép nhập liệu nhiều dòng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (35, N'Thẻ<input type="Submit" dùng để làm gì?>', N'Tạo một ô text để nhập dữ liệu', N'Tạo một nút lệnh để gửi tin trong form đi', N'Tạo một nút lệnh để xoá thông tin trong form đi', N'tạo một nút lệnh để thêm thông tin vào form', N'tất cả đều đúng', N'Tạo một nút lệnh để gửi tin trong form đi')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (36, N'Lệnh lặp for có dnagj như thế nào?', N'for(biến = Giá trị đầu; Điều kiện; Giá trị tăng)', N'for(biến = Giá trị đầu, Giá trị tăng; Điều kiện)', N'for(biến = Điều kiện; Giá trị đầu; Giá trị tăng)', N'for(biến = Điều kiện; Giá trị tăng)', N'Tất cả đều đúng', N'for(biến = Giá trị đầu; Điều kiện; Giá trị tăng)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (37, N'Lệnh break kết hợp vói ưvòng for dùng để?', N'Ngưng vòng for nếu gặp lệnh này', N'Không có ý nghĩa trong vòng lặp', N'Nhảy đến một tệp lệnh khác', N'Nhảy đến chương trình khác', N'Không kết hợp được', N'Ngưng vòng for nếu gặp lệnh này')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (38, N'Thực hiện kiểm tra nếu biến i không bằng 5, câu lệnh nào đúng?', N'if (i!=5)', N'if i<>5', N'if i!=5 then', N'if (i<>5)', N'if (i<5)', N'if (i!=5)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (39, N'Một lớp kế thừa từ lớp Abstract thì từ khoá nào sau đây được sử dụng để cài đặt các phương thức của lớp kế thừa này?', N'static', N'public', N'private', N'abstract', N'void', N'abstract')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (40, N'Có mấy cách để truyền tham số vào cho một phương thức? Chọn một câu trả lời đúng.', N'2', N'1', N'3', N'4', N'5', N'2')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (41, N'Kích thước của 1 Char là bao nhiêu?', N'4 bit', N'6 bit', N'7 bit', N'8 bit', N'18 bit', N'4 bit')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (42, N'1 class không thể được khai báo ở chế độ?', N'Static', N'Private', N'Default', N'Cả Private và Default', N'Cả ba đều sai', N'Static')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (43, N'Kết quả sau khi biên dịch mã int a = 3.5', N'Compilation error', N'Runtime error', N'3.5', N'3', N'2.5', N'Compilation error')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (44, N'Kết quả khi biên dịch mã int a1 = 5; double a2 = (float)a1', N'Compilation error', N'Runtime error', N'No error', N'3', N'5', N'No error')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (45, N'Kết quả sau khi biên dịch mã int a = 9/0', N'Compilatinon error: Phép tính chia phải nằm trong cú pháp try', N'Compilation error: DivideByZeroException', N'Runtime Exception', N'No Error: kết quả là NaN', N'9', N'Runtime Exception')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (46, N'Kết quả sau khi biên dịch mã: float a = 9/0', N'Compilation error: Phép tính chia phải nằm trong cú pháp try', N'Compilation error: DivideByZeroException', N'Runtime Exception', N'No Error: Kết quả là NaN', N'9', N'Runtime Exception')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (47, N'Kết quả sau khi biên dịch mã: Class A{int b = 1; public static void main(String[] args) {System.out.println(“b is” + b);}}', N'Compilation error', N'Runtime Error', N'Runtime Exception', N'Kết quả của b là 1', N'No Error', N'Compilation error')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (48, N'Kết quả sau khi biên dịch mã class A { public static void main(String [] args) {B b = new A(); }} class B extends A {}', N'Compile error', N'Runtime Exception', N'No error', N'Kết quả của b là 1', N'Runtime Error', N'Compile error')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (49, N'Kết quả sau khi biên dịch mã: class A { public static void main(String[] args) {A a = new B();}} class B extends A{}', N'Compile error', N'Runtime Exception', N'No error', N'Kết quả của b là 1', N'Runtime Error', N'No error')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (50, N'Integer a = new Integer(2); Integer b = new Integer(2). Chuyện gì sẽ xảy ra nếu chúng ta áp dụng cú pháp if (a==b)?', N'Compiler error', N'Runtime Exception', N'Đúng', N'Sai', N'Runtime Exception', N'Sai')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (51, N' Làm thế nào để ngăn chặn 1 biến - variable trở thành serialized - có khả năng nối tiếp?', N'Đánh dấu là private', N'Đánh dấu là volatile', N'Đánh dấu là transient', N'Cả ba ý trên', N'Không thể làm được', N'Đánh dấu là transient')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (52, N'Lệnh if CONDITION { Khối lệnh } có tác dụng gì?', N'Nếu CONDITION đúng thì thực hiện Khối lệnh, nếu sai thì bỏ qua', N'Nếu CONDITION sai thì thực hiện Khối lệnh, nếu đúng thì bỏ qua', N' Tất cả đều sai.', N'Không có đáp án đúng', N'cả hai đều đúng', N'Nếu CONDITION đúng thì thực hiện Khối lệnh, nếu sai thì bỏ qua')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (53, N'Lệnh if CONDITION {Khối lệnh 1} else {Khối lệnh 2} có tác dụng gì?', N'Nếu CONDITION đúng thì thực hiện Khối lệnh 1, nếu sai thì thực hiện Khối lệnh 2', N'Nếu CONDITION sai thì thực hiện Khối lệnh 1, nếu đúng thì thực hiện Khối lệnh 2', N'Nếu CONDITION sai thì thực hiện Khối lệnh 1, nếu đúng thì bỏ qua.', N'Nếu CONDITION đúng thì thực hiện Khối lệnh 2, nếu sai thì bỏ qua', N'Tất cả đều sai', N'Nếu CONDITION đúng thì thực hiện Khối lệnh 1, nếu sai thì thực hiện Khối lệnh 2')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (54, N'Tùy chọn nào sau đây dẫn đến tính di động và bảo mật của Java?', N'Bytecode được thực thi bởi JVM', N'Applet làm cho mã Java an toàn và di động', N'Sử dụng xử lý ngoại lệ', N'Liên kết động giữa các đối tượng', N'Tất cả đều đúng', N'Bytecode được thực thi bởi JVM')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (55, N'Tính năng nào không phải là tính năng của Java? ', N'Dynamic (Động)', N'Architecture Neutral (Độc lập với cấu trúc)', N'Use of pointers (Sử dụng các điểm trỏ)', N'Object-oriented (Hướng đối tượng)', N'Tất cả ý trên', N'Use of pointers (Sử dụng các điểm trỏ)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (56, N' _____ được sử dụng để tìm và sửa lỗi trong các chương trình Java.', N'JVM', N'JRE', N'JDK', N'JDB', N'JAC', N'JDK')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (57, N'Điều nào sau đây là một khai báo hợp lệ của một char?', N'char ch = ‘\utea’;', N'char ca = ‘tea’;', N'char cr = \u0223;', N'char cc = ‘\itea’;', N'char ch = ‘\ute0’;', N'char ch = ‘\utea’;')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (58, N'Kiểu trả về của phương thức hashCode () trong lớp Object là gì?', N'object', N'int', N'long', N'void ', N'Tất cả đều được', N'int')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (59, N'Đâu là một “long literal” hợp lệ?', N'ABH8097', N'0xnf029L', N'L990023', N'904423', N'9044L38', N'0xnf029L')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (60, N'Biểu thức float a = 35/0 trả về kết quả gì?', N'0', N'Not a Number', N'Infinity', N'Runtime exception', N'Runtime error', N'Infinity')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (61, N'Công cụ nào sau đây được sử dụng để tạo tài liệu API ở định dạng HTML từ doc comments trong source code?', N'javap tool', N'javaw command', N'avadoc tool', N'javah command', N'jav tool', N'avadoc tool')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (62, N' Điều nào sau đây tạo danh sách gồm 3 mục hiển thị và nhiều lựa chọn được kết hợp?', N'new List(false, 3)', N'new List(3, true)', N'new List(true, 3)', N'new List(3, false)', N'new List(3, 3)', N'new List(3, true)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (63, N'Trong quá trình nào, một biến cục bộ có cùng tên với một trong các biến cá thể?', N'Serialization', N'Variable Shadowing', N'Abstraction', N'Multi-threading', N'Không có đáp án', N'Abstraction')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (64, N'File chứa mã nguồn java sau khi được biên dịch có đuôi là gì?', N'java', N'class', N'javas', N'exe', N'jakar', N'class')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (65, N'Java Virtual Machine là gì?', N'Là một thành phần của Java platform dùng để đọc mã bytecode trong file .class', N'Là chương trình biên dịch của java dùng để biên dịch file nguồn java thành mã bytecode', N'Là chương trình chạy cho java', N'Tất cả các đáp án đều đúng', N'Tất cả các đáp án đều sai', N'Là một thành phần của Java platform dùng để đọc mã bytecode trong file .class')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (66, N'Java chạy trên hệ điều hành nào sau đây:', N'Microsoft Windows', N'Linux', N' Solaris', N'Mac OS', N'Tất cả đều đúng', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (67, N'API là gì?', N'Thư viện mã nguồn của Java.', N'Là thư viện chứa các thành phần phần mềm tạo sẵn cung cấp các chức năng cho chương trình Java', N'Thư viện cung cấp giao diện đồ họa cho chương trình Java.', N'Cả hai đáp án trên', N'Tất cả đều sai', N'Là thư viện chứa các thành phần phần mềm tạo sẵn cung cấp các chức năng cho chương trình Java')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (68, N'Ngôn ngữ lập trình Java cung cấp các tính năng nào sau đây?', N'Giao diện lập trình ứng dụng', N'Bộ công cụ giao diện người dùng', N'Thư viện tích hợp', N'Giao diện lập trình ứng dụng, thư viện tích hợp', N'T?t c? d?u dúng', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (69, N' Có bao nhiêu cách viết chú thích trong Java?', N'1', N'2', N'3', N'4', N'5', N'3')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (70, N'Lệnh str.charat(n) có tác dụng gì?', N'Lấy ký tự bất kỳ trong chuỗi str', N'Lấy độ dài chuỗi str', N'Lấy ký tự có số chỉ mục n trong chuỗi k', N'Lấy ký tự thứ n', N'Không có lệnh này', N'Không có lệnh này')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (71, N'Trong các kiểu giá trị số thực đặc biệt dưới đây, kiểu nào là đúng', N'Dương vô cực', N'Âm vô cực', N'NaN', N'Cả ba giá trị trên', N'Không có đáp án', N'Cả ba giá trị trên')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (72, N'Trong Java, kiểu char biểu diễn bộ mã code nào dưới đây?', N' UTF-8', N' UTF-32', N' UTF-28', N' UTF-16', N' UTF-6', N' UTF-16')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (73, N'Giá trị mặc định của một biến kiểu char là?', N'u0000', N'\uFFFF', N'0F', N'0X', N'Không có đáp án', N'u0000')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (74, N'Kiểu enum là gì?', N'Là kiểu dữ liệu gồm các trường chứa một tập hợp cố định các hằng số.', N'Là kiểu dữ liệu liệt kê các biến số.', N'Là một kiểu dữ liệu trong java.', N'Không tồn tại', N'Tất cả đều sai', N'Là kiểu dữ liệu gồm các trường chứa một tập hợp cố định các hằng số.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (75, N'Có bao nhiêu loại quyền truy cập trong JAVA?', N'1', N'2', N'3', N'4', N'5', N'4')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (76, N'Nếu không khai báo từ khóa chỉ phạm vi truy cập, phạm vi truy cập của đối tượng là gì?', N'Có thể truy cập từ các lớp trong cùng package', N'Có thể truy cập đối tượng từ các lớp trong cùng package và lớp con nằm trong package khác', N'Có thể truy cập đối tượng từ các phương thức khác trong lớp đó', N'Có thể truy cập đối tượng từ bất kỳ vị trí nào của chương trình', N'Không có đáp đúng', N'Có thể truy cập từ các lớp trong cùng package')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (77, N'Phạm vi truy cập của một đối tượng khi khai báo private là gì?', N'Có thể được truy cập bất kỳ vị trí nào trong chương trình.', N'Có thể được truy cập từ các lớp trong cùng package.', N'Có thể được truy cập từ các lớp trong cùng package và lớp con nằm trong package khác.', N'Chỉ có thể truy cập từ các phương thức khác trong class đó.', N'Không có đáp án', N'Chỉ có thể truy cập từ các phương thức khác trong class đó.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (78, N'Phạm vi truy cập của một đối tượng khi được khai bao protected là gì?', N'Có thể được truy cập từ bất kỳ vị trí nào trong chương trình', N'Có thể được truy cập từ các lớp trong cùng package.', N'Có thể được truy cập từ các lớp trong cùng package và lớp con nằm trong package khác.', N'Chỉ có thể truy cập từ các phương thức khác trong class đó.', N'Không có đáp án đúng', N'Có thể được truy cập từ các lớp trong cùng package và lớp con nằm trong package khác.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (79, N'Phạm vi truy cập của một đối tượng khi được khai bao public là gì?', N'Có thể được truy cập từ bất kỳ vị trí nào trong chương trình', N'Có thể được truy cập từ các lớp trong cùng package.', N'Có thể được truy cập từ các lớp trong cùng package và lớp con nằm trong package khác.', N'Chỉ có thể truy cập từ các phương thức khác trong class đó.', N'Không có đáp án đúng', N'Có thể được truy cập từ bất kỳ vị trí nào trong chương trình')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (80, N'Để kiểm tra 2 chuỗi có bằng nhau hay không, sử dụng phương thức nào?', N'string1== string2', N'string1 = string2', N'string1.equals(string2)', N'string1.equal(string2)', N'Không có đáp án', N'string1.equals(string2)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (81, N'Git là cái gì?', N'Một nickname của GitHub', N'Một nền tảng phản hồi từ xa', N'Một hệ thống quản lý version', N'Một ngôn ngữ lập trình', N'tất cả ý trên', N'Một hệ thống quản lý version')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (82, N'Lệnh để tải phiên bản Git đã cài đặt là gì?', N'git help version', N'gitVersion', N'git--version', N'getGitVersion', N'tât scả ý trên', N'git--version')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (83, N'Git cũng giống như GitHub.', N'Đúng', N'Sai', N'', N'', N'', N'Đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (84, N'Bạn nên sử dụng tùy chọn nào để đặt tên người dùng mặc định cho mọi kho lưu trữ trên máy tính của mình?', N'A', N'global', N'all', N'Không cần spectify, đó là mặc định sẵn', N'Tất cả', N'global')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (85, N'Lệnh đặt email người dùng cho kho lưu trữ hiện tại là gì?', N'git config user.email', N'git config email', N'git email.user', N'git config.email', N'email.user', N'git config user.email')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (86, N'Lệnh thêm tất cả các tệp và thay đổi của thư mục hiện tại vào môi trường dàn dựng của kho lưu trữ Git là gì?', N'git add', N'git add --all', N'git add --files', N'add git', N'add file.git', N'git add --all')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (87, N'Lệnh để có được trạng thái hiện tại của kho Git là gì?', N'git status', N'git getStatusgit config --status', N'--status', N'status git-- ', N'', N'git status')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (88, N'Lệnh khởi tạo Git trên kho lưu trữ hiện tại là gì?', N'git start', N'git init', N'start git', N'initialize git', N'begin git', N'git init')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (89, N'Git tự động thêm các tệp mới vào kho lưu trữ và bắt đầu theo dõi chúng.', N'Đúng', N'Sai', N'', N'', N'', N'Sai')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (90, N'Lịch sử cam kết Git sẽ tự động bị xóa:', N'Mỗi năm.', N'Mỗi 2 tuần.', N'Mỗi tháng.', N'Lịch sử cam kết không bao giờ tự động bị xóa.', N'Tất cả đều sai', N'Lịch sử cam kết không bao giờ tự động bị xóa.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (91, N'Lệnh để thực hiện các thay đổi theo giai đoạn cho kho lưu trữ Git là gì?', N'git commit', N'git snapshot', N'git save', N'git com', N'git dele', N'git commit')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (92, N'Lệnh cam kết với thông báo "Email mới" là gì:', N'git commit message "New email"', N'git commit -log "New email"', N'git commit -mess "New email"', N'git commit -m "New email"', N'git commit -mes "New email"', N'git commit -m "New email"')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (93, N'Lệnh để xem lịch sử xác nhận cho kho lưu trữ là gì?', N'git log', N'git --full-log', N'git commits', N'git history', N'git check history', N'git log')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (94, N'Lệnh để xem các tùy chọn có sẵn cho lệnh cam kết là gì?', N'git commit -help', N'git commitHelp', N'gitHelp commit', N'git commit readme', N'help git commit', N'git commit -help')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (95, N'Trong Git, một nhánh là:', N'Một thanh gỗ nhỏ bạn có thể dùng để gõ lệnh.', N'Một phần bí mật của cấu hình Git.', N'Một phiên bản riêng biệt của kho lưu trữ chính.', N'Không có gì, đó là một từ vô nghĩa.', N'Tất cả đều sai', N'Một phiên bản riêng biệt của kho lưu trữ chính.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (96, N'Lệnh tạo một nhánh mới có tên "email mới" là gì?', N'git branch new "new-email"', N'git newBranch "new-email"', N'git branch new-email', N'git add branch "new-email"', N'git new branch"email"', N'git branch new-email')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (97, N'Lệnh di chuyển đến nhánh có tên "email mới" là gì?', N'git branch new-email', N'git checkout new-email', N'git branch -move new-email', N'git checkout branch new-email', N'git check move brach e-mail', N'git checkout new-email')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (98, N'Tùy chọn nào, khi chuyển đến một nhánh, để tạo nhánh đó nếu nó không tồn tại?', N'-b', N'-all', N'-new', N'-newbranch', N'Không có đáp án đúng', N'-b')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (99, N'Lệnh hợp nhất nhánh hiện tại với nhánh "email mới" là gì?', N'git add new-emai', N'git merge new-email', N'git commit -merge new-email', N'git addition e-mail', N'commit new e-mail by add git', N'git merge new-email')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (100, N'Lệnh xóa nhánh "email mới" là gì', N'git gone new-email', N'git branch -d new-email', N'git delete new-email', N'git delete branch new-email', N'git delete away brach new e-mail', N'git branch -d new-email')
GO
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (101, N'Lệnh thêm kho lưu trữ từ xa "https://abc.xyz/d/e.git" làm "xuất xứ" là gì?', N'git add origin https://abc.xyz/d/e.git', N'git remote add origin https://abc.xyz/d/e.git', N'git origin=https://abc.xyz/d/e.git', N'git remote https://abc.xyz/d/e.git', N'git add remote https://abc.xyz/d/e.git', N'git remote add origin https://abc.xyz/d/e.git')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (102, N'Lệnh đẩy kho lưu trữ hiện tại đến nguồn gốc từ xa là gì?', N'git remote commit', N'git push origin', N'git merge remote', N'git remote push', N'git remote object', N'git push origin')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (103, N'Lệnh để lấy tất cả lịch sử thay đổi của "nguồn gốc" kho lưu trữ từ xa là gì?', N'git origin help', N'git status remote origin', N'git fetch origin', N'git get log origin', N'Tất cả đều sai', N'git fetch origin')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (104, N'Hiển thị trợ giúp ', N'Git help', N'Git show', N'Git log', N'Git reflog', N'Git brache', N'Git help')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (105, N'Git Pull là sự kết hợp của:', N'branch and checkout', N'fetch and merge', N'add and commit', N'add and merge', N'brach and commit', N'fetch and merge')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (106, N'Hãy chọn phương án ứng với cú pháp câu lệnh xoá dữ liệu trong các phương án dưới đây:', N'DROP', N'DELETE WHERE', N'DROP WHERE', N'DELETE', N'DROP AWAY', N'DELETE WHERE')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (107, N'Trong Cú pháp câu lệnh ràng buộc Forein Key, từ khoá On Update có nghĩa gì? Hãy chọn phương án đung trong các phương án dưới đây:', N'Là ràng buộc được phép cập nhật khoá Forein Key', N'Là ràng buộc được phép cập nhật khoá Primary Key', N'Là ràng buộc được phép cập nhật Check Key', N'Là ràng buộc được phép xóa khoá Forein Key', N'Tất cả', N'Là ràng buộc được phép cập nhật khoá Forein Key')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (108, N'Cho bảng Khoa gồm (makhoa char (10), tenkhoa char (30), dienthoai char (11)). Để tạo bảng GiangVien gồm (magv int, hotengv char (30), luong decimal (5,2), makhoa char (10)) trong đó magv là khóa chính, makhoa là khóa phụ ta thực hiện lệnh nào dưới đây:', N'Create table GiangVien (magv int not null primary key, hotengv char (30), luong decimal (5,2), makhoa char (10), constraint fk_makhoa foreign key (makhoa) references Khoa(makhoa))', N'Create table GiangVien (magv int not null primary key, hotengv char (30), luong decimal (5,2), makhoa char (10), constraint fk_makhoa khoaphu (makhoa) references Khoa(makhoa))', N'Create table GiangVien (magv int not null primary key, hotengv char (30), luong decimal (5,2), makhoa char (10), constraint fk_makhoa primary key(makhoa) references Khoa(makhoa))', N'Create table GiangVien (magv int not null primary key, hotengv char (30), luong decimal (5,2), makhoa char (10), constraint fk_makhoa foreign key(makhoa) references Giangvien (makhoa))', N'Không có đáp án', N'Create table GiangVien (magv int not null primary key, hotengv char (30), luong decimal (5,2), makhoa char (10), constraint fk_makhoa foreign key (makhoa) references Khoa(makhoa))')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (109, N'Hãy chọn phương án ứng với câu lệnh được sử dụng để tạo Database trong SQL:', N'Create database tên_database', N' Update database tên_database', N'Create table tên_database', N'Create data tên_database', N'Tất cả đều sai', N'Create database tên_database')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (110, N'Hãy chọn phương án ứng với cú pháp được sử dụng để tạo ràng buộc Check:', N'CONSTRAINT tên ràng buộc CHK (điều kiện)', N'CONSTRAINT thuộc tính CHECK (điều kiện)', N'CONSTRAINT tên ràng buộc CHECK (điều kiện)', N'CHECK tên ràng buộc CONSTRAINT (điều kiện)', N'Tất cả đều sai', N'CONSTRAINT tên ràng buộc CHECK (điều kiện)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (111, N'Hãy chọn phương án ứng với ý nghĩa của nhóm lệnh BEGIN TRAN KHỐI LỆNH COMMIT.', N'Đê thực hiện mở transaction bằng lệnh BEGIN TRAN và kết thúc bằng lệnh COMMIT – sau lệnh này những cập nhật dữ liệu sẽ được xác nhận vào trong database, transaction được đóng lại và các khóa (lock) trên các bảng được cập nhật được thả ra ta thực hiện lệnh', N'Không có lệnh này trong SQL SERVER', N'Đê thực hiện mở transaction bằng lệnh COMMIT và kết thúc bằng lệnh BEGIN – sau lệnh này những cập nhật dữ liệu sẽ được xác nhận vào trong database, transaction được đóng lại và các khóa (lock) trên các bảng được cập nhật được thả ra ta thực hiện lệnh', N'Đê thực hiện đóng transaction bằng lệnh BEGIN TRAN và mở bằng lệnh COMMIT – sau lệnh này những cập nhật dữ liệu sẽ được xác nhận vào trong database, transaction được đóng lại và các khóa (lock) trên các bảng được cập nhật được thả ra ta thực hiện lệnh', N'Tất cả đều sai', N'Đê thực hiện mở transaction bằng lệnh BEGIN TRAN và kết thúc bằng lệnh COMMIT – sau lệnh này những cập nhật dữ liệu sẽ được xác nhận vào trong database, transaction được đóng lại và các khóa (lock) trên các bảng được cập nhật được thả ra ta thực hiện lệnh')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (112, N'Hãy chọn phương án ứng với cú pháp được sử dụng để xóa bảng trong các phương án sau:', N'ALTER TABLE', N'DROP TABLE', N'DROP COLUMN', N'DELETE TABLE', N'DROP TABLE AWAY', N'DROP TABLE')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (113, N'Để hiển thị bảng theo thứ tự tăng dần của cột ‘‘Ten’’, trong câu lệnh select ta sử mệnh đề nào trong các mệnh đề sau:', N'Having ten asc', N'Group by ten asc', N'Order by ten desc', N'Order by ten asc', N'Tất cả đều sai', N'Order by ten asc')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (114, N'Hãy chọn phương án ứng với tác dụng của câu lệnh ALTER TABLE trong các phương án sau:', N'Xóa một bảng trong một cơ sở dữ liệu', N'Tất cả đáp án đều đúng', N'Thêm, sửa, xóa các cột trong bảng hiện tại', N'Tạo ra một bảng trong một cơ sở dữ liệu', N'Tất cả đếu sai', N'Thêm, sửa, xóa các cột trong bảng hiện tại')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (115, N'Trong toán tử Like, kí tự [ ] biểu thị điều gì? Hãy chọn phương án đúng trong các phương án dưới đây:', N'Kí tự đơn bất kì trong giới hạn', N'Bắt buộc chỉ được 1 kí tự', N'Bắt buộc chỉ được 1 kí tự', N'Kí tự không nằm trong các giới hạn', N'Tất cả đều đúng', N'Kí tự đơn bất kì trong giới hạn')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (116, N'Trong toán tử Like, kí tự % biểu thị điều gì? Hãy chọn phương án đúng trong các phương án dưới đây:', N'Kí tự đơn bất kì trong giới hạn', N'Thể hiện nhiều kí tự trong xâu', N'Kí tự không nằm trong các giới hạn', N'Bắt buộc chỉ được 1 kí tự', N'Tất cả đều sai', N'Thể hiện nhiều kí tự trong xâu')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (117, N'Hãy chọn câu lệnh Select thực hiện đứng trong các câu lệnh Select dưới đây:', N'SELECT * FROM t1 ORDER BY id DESC;', N'SELECT * FROM t1 WHERE BY id;', N'SELECT * WHERE t1 ORDER BY id ASC;', N'SELECT % FROM t1 WHERE BY id;', N'Không có đáp án đúng', N'SELECT * FROM t1 ORDER BY id DESC;')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (118, N'Trong câu lệnh Select, sau từ khoá ‘‘Having ’’ là gì? Hãy chọn phương án đúng trong các phương án dưới đây:', N'Biểu thức điều kiện của lệnh select', N'Biểu thức điều kiện của nhóm', N'Ràng buộc cột trong nhóm', N'Ràng buộc bản ghi trong bảng', N'Không có đáp án đúng', N'Biểu thức điều kiện của nhóm')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (119, N'Hãy chọn phương án đúng ứng với kết quả của câu lệnh sau đây: Select Right(N‘Hà Nội’,3)', N'Câu lệnh lỗi không chạy được', N'Hiển thị ra màn hình chuỗi: NHà', N'Hiển thị ra màn hình chuỗi: Hà', N'Hiển thị ra màn hình chuỗi: Nội', N'Câu lệnh in ra màn hình chuỗi:à Nộ', N'Hiển thị ra màn hình chuỗi: Nội')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (120, N'DELETE TRIGGER dùng để:', N'Kiểm tra sự không tồn tại dữ liệu bên các bảng con. Tùy theo yêu cầu mà hệ thống sẽ thông báo hoặc tự động xóa dữ liệu bên trong các bảng con khi dữ liệu bảng cha bị mất', N'Kiểm tra sự tồn tại dữ liệu bên các bảng con. Tùy theo yêu cầu mà hệ thống sẽ thông báo hoặc tự động xóa dữ liệu bên trong các bảng con khi dữ liệu bảng cha bị mất', N'Tạo sự tồn tại dữ liệu bên các bảng con. Tùy theo yêu cầu mà hệ thống sẽ thông báo hoặc tự động xóa dữ liệu bên trong các bảng con khi dữ liệu bảng cha bị mất', N'Kiểm tra sự tồn tại dữ liệu bên các bảng ch*Tùy theo yêu cầu mà hệ thống sẽ thông báo hoặc tự động xóa dữ liệu bên trong các bảng con khi dữ liệu bảng cha bị mất', N'Không có đáp án nào đúng', N'Kiểm tra sự tồn tại dữ liệu bên các bảng con. Tùy theo yêu cầu mà hệ thống sẽ thông báo hoặc tự động xóa dữ liệu bên trong các bảng con khi dữ liệu bảng cha bị mất')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (121, N'Trong lệnh Create trigger, sau mệnh đề ON là gì?', N'Là một kết nối của các bảng mà trigger cần tạo sẽ tác động đến', N'Là tên của bảng mà trigger cần tạo sẽ tác động đến', N'Là tên của cơ sở dữ liệu mà trigger cần tạo sẽ tác động đến', N'Là tên của bảng mà trigger cần tạo sẽ không tác động đến', N'Tất cả đều sai', N'Là tên của bảng mà trigger cần tạo sẽ tác động đến')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (122, N'Để xóa trigger ta sử dụng cấu trúc:', N'DROP TRIGGER table_name.trigger_name', N'DEL TRIGGER table_name.trigger_name', N'DEL TRIGGER table_name.trigger_name', N'DRO TRIGGER table_name.trigger_name', N'DROP TRIGGER table_trigger_name', N'DROP TRIGGER table_name.trigger_name')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (123, N'Để vô hóa trigger bằng lệnh DISABLE TRIGGER có cấu trúc như sau:', N'DISABLE TRIGGER tên_trigger IN { tên_đối_tượng | DATABASE | SERVER }', N'DISABLE TRIGGER tên_trigger ON { tên_đối_tượng | DATABASE | SERVER }', N'DEL TRIGGER tên_trigger ON { tên_đối_tượng | DATABASE | SERVER }', N'DRO TRIGGER tên_trigger ON { tên_đối_tượng | DATABASE | SERVER }', N'DROP TRIGGER tên_trigger ON { tên_đối_tượng | DATABASE | SERVER }', N'DISABLE TRIGGER tên_trigger ON { tên_đối_tượng | DATABASE | SERVER }')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (124, N'Sau khi tạo Trigger, bảng Deleted được tạo:', N'Được Tạo Bởi Sau Khi Chạy Trigger Bởi Lệnh Exec', N'Tự Động Sau Khi Biên Dịch Trigger Vừa Tạo', N'Bởi Lệnh create Delete', N'Bởi Lệnh Create Trigger', N'Tất cả đều sai', N'Tự Động Sau Khi Biên Dịch Trigger Vừa Tạo')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (125, N'Để gán giá trị cho biến ta thực hiện lệnh:', N'Set @ biến = giá trị Hoặc Select @ biến = tên_cột From tên_bảng', N'Se @ biến = giá trị Hoặc Select @ biến = tên_cột From tên_bảng', N'Gán @ biến = giá trị Hoặc Select @ biến = tên_cột From tên_bảng', N'Set @ biến = giá trị Hoặc Sel @ biến = tên_cột From tên_bảng', N'Không có câu lệnh nào đúng', N'Set @ biến = giá trị Hoặc Select @ biến = tên_cột From tên_bảng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (126, N'Lệnh DROP PROCEDURE tên_thủ_tục dùng để:', N'Sửa một thủ tục theo điều kiện nào đó', N'Thêm mới một thủ tục', N'Cập nhật đi một thủ tục', N'Xóa đi một thủ tục đã có', N'Sửa thủ tục hiện có', N'Xóa đi một thủ tục đã có')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (127, N'Khi khai báo thủ tục lưu trữ tên thủ thủ tục phải tuân theo:', N'Qui tắc định danh và không được vượt quá 128 ký tự.', N'Qui tắc định danh và không được vượt quá 255 ký tự.', N'Qui tắc định danh và lớn hơn 128 ký tự.', N'Qui tắc đặt tên biến và không được vượt quá 128 ký tự', N'Tất cả đều sai.', N'Qui tắc định danh và không được vượt quá 128 ký tự.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (128, N'An toàn dữ liệu trong SQL Server là gì? Đâu là phương án đúng trong các phương án dưới đây:', N'Ngăn chặn các truy nhập trái phép, sai quy định từ trong ra ngoài hoặc từ ngoài vào', N'Dễ dàng cho công việc bảo trì dữ liệu.', N'Thống nhất các tiêu chuẩn, thủ tục và các biện pháp bảo vệ, an toàn dữ liệu', N'Tính nhất quán và toàn vẹn dữ liệu.', N'Tất cả đáp án đều đúng', N'Ngăn chặn các truy nhập trái phép, sai quy định từ trong ra ngoài hoặc từ ngoài vào')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (129, N'Trong SQL ta có 3 thành phần: Column Name, Data Type, Allow Nulls để tạo cấu trúc bảng. Cho biết phương án nào dưới đây là tác dụng của Allow Nulls?', N'Người dùng không được để trống tất cả các cột trong bảng.', N'Không bắt buộc người dùng nhập dữ liệu.', N'Ràng buộc người dùng bắt buộc nhập dữ liệu cho cột tương ứng hoặc không.', N'Bắt buộc người dùng nhập dữ liệu.', N'Tất cả đều sai', N'Ràng buộc người dùng bắt buộc nhập dữ liệu cho cột tương ứng hoặc không.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (130, N'Tạo cấu trúc bảng trong SQL, nếu tại Data Type của cột tương ứng người dùng chọn kiểu ‘‘Datetime’’ thì dữ liệu của cột đó nhận giá trị dạng thế nào trong các phương án dưới đây?', N'Thời gian (mm/dd/yyyy).', N'Thời gian(dd/mm/yyyy).', N'Thời gian (mm/dd/yyyy:hh:mm:ss).', N'Thời gian (hh:mm:ss).', N'Thời gian(ngng//tt/nn)', N'Thời gian (mm/dd/yyyy:hh:mm:ss).')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (131, N'NodeJS là gì', N'một mã nguồn được xây dựng trên Javascript Engine (V8 Engine)', N'Một cơ sở dữ liệu giống với SQL ', N'Một máy ảo để chạy C sharp', N'Một công cụ hỗ trợ viết web', N'Một ngôn ngữ máy được phát triển năm 2000', N'một mã nguồn được xây dựng trên Javascript Engine (V8 Engine)')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (132, N'Tại sao nên sử dụng NodeJS?', N'giúp dễ dàng xây dựng các chương trình mạng có thể mở rộng.', N'xây dựng cơ sở dữ liệu tốt hơn SQL', N'xây dựng một trang web', N'xây dựng môi trường tạo code', N'xây dựng các chương trình mạng không mở rộng', N'giúp dễ dàng xây dựng các chương trình mạng có thể mở rộng.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (133, N'Nhược điểm khi sử dụng NodeJS là gì?', N'Không phù hợp với các tác vụ tính toán nặng.', N'Sử dụng cấu trúc callback rất phức tạp vì bạn kết thúc với một số callback lồng nhau.', N'Xử lý cơ sở dữ liệu quan hệ không phải là một lựa chọn tốt cho NodeJS.', N'Vì Node.js là đơn luồng nên các tác vụ sử dụng nhiều CPU không phải là thế mạnh của nó.', N'Tất cả đều đúng', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (134, N'Ưu điểm khi sử dụng NodeJS là gì?', N'Xử lý nhanh và mô hình dựa trên sự kiện.', N'Sử dụng ngôn ngữ JavaScript phổ biến.', N'Node Package Manager có hơn 50.000 gói cung cấp chức năng cho một ứng dụng.', N'Phù hợp nhất để truyền trực tuyến lượng dữ liệu khổng lồ và các hoạt động chuyên sâu I/O.', N'Tất cả đều đúng', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (135, N'Nêu ​​các kiểu dữ liệu trong Node.js', N'String', N'Number', N'Boolean', N'Bigint', N'Tất cả đều đúng', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (136, N'NodeJs đơn luồng hay đa luồng?', N'Đơn luồng', N'Đa luồng', N'Cả hai đều đúng', N'', N'', N'Cả hai đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (137, N'Tính năng chính Node.js là gì?', N'TÍnh năng không đồng bộ: Cho phép thực hiện các yêu cầu ở chế độ nền mà vẫn có thể xử lý những yêu cầu khác cùng lúc. ', N'Thực thi mã một cách nhanh chóng: V8 JavaScript Runtime giúp cho tốc độ tiếp nhận và xử lý thông tin trở nên cực kỳ nhanh.  ', N'Không có vùng nhớ tạm ( Buffer ): Dữ liệu được xuất theo khối và Node.js không có đệm dữ liệu bất kỳ.', N'Có khả năng mở rộng dù chỉ sử dụng mô hình một luồng. ', N'Tất cả đều đúng', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (138, N'REPL trong Nodejs là gì?', N'là một môi trường máy tính giống với màn hình console của Shell (Unix - Linux).', N'tên viết tắt từ Read Eval Print Loop', N'Cả hai đáp án trên', N'Là tên viết tắt của Replyment', N'Tất cả đều sai', N'Cả hai đáp án trên')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (139, N'EventEmitter là gì trong nodejs?', N'một lớp thuộc Module event và tất cả mà phát ra event được được xem là một phần của EventEmitter. ', N'tạo và xử lý các sự kiện một cách dễ dàng.', N'EventEmitter là một lớp thuộc Events ', N'phát ra một sự kiện, toàn bộ những hàm gắn liền với sự kiện sẽ được gọi đồng bộ', N'', N'một lớp thuộc Module event và tất cả mà phát ra event được được xem là một phần của EventEmitter. ')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (140, N'“Callback” là gì trong Node.js?', N'là hàm gọi lại, nó được tiến hành sau khi thực hiện một tác vụ nhất định.', N'Là hàm trả về giá trị nhất định', N'Là hàm tạm dừng các tác vụ đang thực hiện', N'Là hàm gọi lại các giá triị người dùng nhập', N'', N'là hàm gọi lại, nó được tiến hành sau khi thực hiện một tác vụ nhất định.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (141, N'“Stubs” là gì trong Node.js?', N'chức năng bắt chước hành vi của các module nhất định', N'thường được dùng khi thử nghiệm bởi nó có khả năng cung cấp câu trả lời cần thiết khi giải quyết những vấn đề phát sinh bất ngờ trong module', N'chức năng bắt chước hành vi của các module nhất định, thường được dùng khi thử nghiệm bởi nó có khả năng cung cấp câu trả lời cần thiết khi giải quyết những vấn đề phát sinh bất ngờ trong module. ', N'Cả ba đều đúng', N'Không có đáp án đúng', N'chức năng bắt chước hành vi của các module nhất định, thường được dùng khi thử nghiệm bởi nó có khả năng cung cấp câu trả lời cần thiết khi giải quyết những vấn đề phát sinh bất ngờ trong module. ')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (142, N'“Event” là gì trong Node.js?', N'“Event” tượng trưng cho một số hoạt động được thực hiện hoặc sự di chuyển trên trang web. Đây là một trong những chức năng chính trong Node.js.', N'Là chức năng cơ bản của NodeJS', N'Là một sự kiện', N'', N'', N'“Event” tượng trưng cho một số hoạt động được thực hiện hoặc sự di chuyển trên trang web. Đây là một trong những chức năng chính trong Node.js.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (143, N'Vấn đề “Single-threaded” của Node JS nghĩa là gì?', N'“Single-threading” cho phép Node JS tiến hành xử lý async.', N'single-threading sẽ giúp bạn làm việc dễ dàng và mượt mà hơn trên một tải web nhất định. ', N'Cả hai đều đúng', N'', N'', N'Cả hai đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (144, N'Chức năng Node Package Manager bên trong Node JS là gì?', N'là công cụ được sử dụng để quản lý trong Node JS.', N'là làm kho lưu trữ trực tuyến của các gói Node JS. ', N'à tiện ích dòng lệnh để có thể cài đặt các phiên bản, quản lý phụ thuộc đối với các gói Node JS.', N'Tất cả đều đúng', N'', N'Tất cả đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (145, N'Chức năng Chaining là gì trong Node.js?', N'là cơ chế mà khi đó đầu ra của dòng này kết nối với một dòng khác tạo ra chuỗi các hoạt động xuyên suốt. ', N'Một mắt xích giữa các dòng kết nối', N'Nối hai dòng kết nối với nhau', N'Đầu vào của dòng kết nối này kết nối với dòng khác', N'Hoạt động liên tục giữa hai đầu dòng kết nối ', N'là cơ chế mà khi đó đầu ra của dòng này kết nối với một dòng khác tạo ra chuỗi các hoạt động xuyên suốt. ')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (146, N'Node JS có sở hữu chức năng “child threads” không?', N'Có ', N'Không', N'', N'', N'', N'Có')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (147, N'Các triển khai bảo mật chính trong Node.js là gì?', N'authentications ', N'error handling', N'Cả hai đều đúng', N'', N'', N'Cả hai đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (148, N'Định nghĩa thuật ngữ I/O như thế nào?', N'là thuật ngữ dùng để mô tả bất kỳ chương trình, hoạt động hoặc thiết bị nào truyền dữ liệu đến hoặc từ một phương tiện và đến một phương tiện khác.', N'Input và Out put', N'Mọi chuyển giao là một đầu ra từ một phương tiện này và một đầu vào cho một phương tiện khác.', N'Tất cả đều đúng', N'Tất cả đều sai', N'là thuật ngữ dùng để mô tả bất kỳ chương trình, hoạt động hoặc thiết bị nào truyền dữ liệu đến hoặc từ một phương tiện và đến một phương tiện khác.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (149, N'Mô tả “callback hell” trong Node.js?', N'“Callback hell” xảy ra khi một lượng lớn các callback lồng vào nhau ở một vị trí cụ thể, do đó không thể đọc và nhìn chung không thể làm việc được với chúng.', N'Gọi lại luồng dữ liệu khi khi lồng vào nhau', N'Giúp các luồng dữ liệu có thể đọc được, làm việc chung với nhau', N'', N'', N'“Callback hell” xảy ra khi một lượng lớn các callback lồng vào nhau ở một vị trí cụ thể, do đó không thể đọc và nhìn chung không thể làm việc được với chúng.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (150, N'Lập trình “event-driven” là gì trong Node.js?', N'là lập trình hướng sự kiện, đây là một hình thức lập trình được quan tâm và dựa trên các sự kiện.', N'là lập trình dựa trên event', N'là lập trình phụ thuộc vào callback', N'kết hợp cả callback và event', N'', N'là lập trình hướng sự kiện, đây là một hình thức lập trình được quan tâm và dựa trên các sự kiện.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (151, N'Giải thích “worker processes” là gì?', N'“Worker processes” là một thuật ngữ đơn giản hơn, chúng là các quy trình đang chạy trên nền trong khi bạn đang làm một cái khác.', N'Chúng có thể gửi email, đặt biến và rất hữu ích vì tiết kiệm cho các nhà phát triển web rất nhiều thời gian và năng lượng.', N'Cả Hai đều đúng', N'', N'', N'Cả Hai đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (152, N'“stream” là gì?', N'là một đối tượng cho phép đọc dữ liệu từ nguồn và ghi dữ liệu đến đích dưới dạng một quá trình liên tục.', N'Là dòng dữ liệu', N'là một đối tượng cho phép đọc dòng dữ liệu', N'Là toàn bộ dữ liệu được luân chuyển liên tục ', N'Tất cả đều đúng', N'là một đối tượng cho phép đọc dữ liệu từ nguồn và ghi dữ liệu đến đích dưới dạng một quá trình liên tục.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (153, N'Giải thích “demultiplexer” là gì?', N'là một thuật ngữ nâng cao dành cho các nhà phát triển web đã có kinh nghiệm trong Node.js.', N'là giao diện phát hành thông báo trong Node.js được sử dụng để thu thập thông tin từ các sự kiện và mẫu ques, từ đó cung cấp Event Que.', N'Cả hai đều đúng', N'', N'', N'Cả hai đều đúng')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (154, N'Cách xây dựng ứng dụng Nodejs ngay từ ban đầu là gì?', N'chúng ta sẽ tạo một project mới rồi di chuyển đến folder trong dòng lệnh và chạy npm init. Tiếp tục làm các bước để nhập đủ các thông tin cần thiết.', N'xây dựng package', N'xây dựng đối tượng', N'xây dựng folder', N'', N'chúng ta sẽ tạo một project mới rồi di chuyển đến folder trong dòng lệnh và chạy npm init. Tiếp tục làm các bước để nhập đủ các thông tin cần thiết.')
INSERT [dbo].[Question] ([Question_id], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [Choice5], [Question_correct]) VALUES (155, N'Npm nghĩa là gì?', N'là viết tắt của Node.js Package Manager.', N'Bao gồm giao diện dòng lệnh cho phép chúng ta truy cập gói đã được đăng ký public và private online.', N'Nó dùng để cài đặt các thư viện phụ thuộc trong file package.json', N'Tất cả đều đúng', N'', N'Tất cả đều đúng')
GO
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (1, 1, 1)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (2, 1, 2)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (3, 1, 3)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (4, 1, 4)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (5, 1, 5)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (6, 1, 6)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (7, 1, 7)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (8, 1, 8)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (9, 1, 9)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (10, 1, 10)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (11, 1, 11)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (12, 1, 12)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (13, 1, 13)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (14, 1, 14)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (15, 1, 15)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (16, 1, 16)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (17, 1, 17)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (18, 1, 18)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (19, 1, 19)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (20, 1, 20)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (21, 1, 21)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (22, 1, 22)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (23, 1, 23)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (24, 1, 24)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (25, 1, 25)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (26, 1, 26)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (27, 1, 27)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (28, 1, 28)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (29, 1, 29)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (30, 1, 30)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (31, 1, 31)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (32, 1, 32)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (33, 1, 33)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (34, 1, 34)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (35, 1, 35)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (36, 1, 36)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (37, 1, 37)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (38, 1, 38)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (39, 1, 39)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (40, 1, 40)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (41, 1, 41)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (42, 1, 42)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (43, 1, 43)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (44, 1, 44)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (45, 1, 45)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (46, 1, 46)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (47, 1, 47)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (48, 1, 48)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (49, 1, 49)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (50, 1, 50)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (51, 1, 51)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (52, 1, 52)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (53, 1, 53)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (54, 1, 54)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (55, 1, 55)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (56, 1, 56)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (57, 1, 57)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (58, 1, 58)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (59, 1, 59)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (60, 1, 60)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (61, 1, 61)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (62, 1, 62)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (63, 1, 63)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (64, 1, 64)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (65, 1, 65)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (66, 1, 66)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (67, 1, 67)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (68, 1, 68)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (69, 1, 69)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (70, 1, 70)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (71, 1, 71)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (72, 1, 72)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (73, 1, 73)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (74, 1, 74)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (75, 1, 75)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (76, 1, 76)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (77, 1, 77)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (78, 1, 78)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (79, 1, 79)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (80, 1, 80)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (81, 2, 81)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (82, 2, 82)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (83, 2, 83)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (84, 2, 84)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (85, 2, 85)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (86, 2, 86)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (87, 2, 87)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (88, 2, 88)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (89, 2, 89)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (90, 2, 90)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (91, 2, 91)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (92, 2, 92)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (93, 2, 93)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (94, 2, 94)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (95, 2, 95)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (96, 2, 96)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (97, 2, 97)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (98, 2, 98)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (99, 2, 99)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (100, 2, 100)
GO
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (101, 2, 101)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (102, 2, 102)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (103, 2, 103)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (104, 2, 104)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (105, 2, 105)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (106, 3, 106)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (107, 3, 107)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (108, 3, 108)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (109, 3, 109)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (110, 3, 110)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (111, 3, 111)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (112, 3, 112)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (113, 3, 113)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (114, 3, 114)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (115, 3, 115)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (116, 3, 116)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (117, 3, 117)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (118, 3, 118)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (119, 3, 119)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (120, 3, 120)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (121, 3, 121)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (122, 3, 122)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (123, 3, 123)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (124, 3, 124)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (125, 3, 125)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (126, 3, 126)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (127, 3, 127)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (128, 3, 128)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (129, 3, 129)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (130, 3, 130)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (131, 4, 131)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (132, 4, 132)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (133, 4, 133)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (134, 4, 134)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (135, 4, 135)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (136, 4, 136)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (137, 4, 137)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (138, 4, 138)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (139, 4, 139)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (140, 4, 140)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (141, 4, 141)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (142, 4, 142)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (143, 4, 143)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (144, 4, 144)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (145, 4, 145)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (146, 4, 146)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (147, 4, 147)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (148, 4, 148)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (149, 4, 149)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (150, 4, 150)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (151, 4, 151)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (152, 4, 152)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (153, 4, 153)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (154, 4, 154)
INSERT [dbo].[Quizz] ([Quizz_id], [Course_id], [Question_id]) VALUES (155, 4, 155)
GO
SET IDENTITY_INSERT [dbo].[Record] ON 

INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (1, 2, 1, N'Wed,Feb 15,2023 at 05:54:51 GMT+07:00', N'2', N'48-0 68-5 49-0 3-0 45-0 61-0 75-0 41-0 78-0 76-0 14-4 37-0 32-0 50-0 1-4 5-0 65-0 51-0 28-0 57-0 53-0 29-0 71-0 64-0 13-0 23-0 8-0 20-0 69-0 21-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (2, 2, 1, N'Wed,Feb 15,2023 at 05:59:54 GMT+07:00', N'1', N'14-4 47-0 16-0 51-0 54-0 40-0 79-0 31-0 52-0 63-0 22-0 19-0 10-0 20-0 42-0 46-0 29-0 6-0 24-0 13-0 18-0 70-0 50-0 33-0 21-0 7-0 3-0 45-0 80-0 8-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (3, 2, 1, N'Wed,Feb 15,2023 at 08:07:27 GMT+07:00', N'2', N'45-0 26-3 15-1 7-0 21-0 23-0 47-0 54-0 35-0 61-0 46-0 32-0 22-0 28-0 20-0 59-0 57-0 48-0 69-0 25-0 53-0 49-0 9-0 34-0 3-0 79-0 43-0 65-0 55-0 74-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (4, 2, 1, N'Wed,Mar 01,2023 at 15:54:03 GMT+07:00', N'3', N'46-3 74-2 60-3 51-3 8-0 47-0 61-0 37-0 15-0 64-0 57-0 27-0 38-0 54-0 36-0 26-0 7-0 42-0 39-0 14-0 13-0 79-0 29-0 71-0 48-0 76-0 43-0 17-0 41-0 66-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (5, 1, 1, N'Wed,Mar 15,2023 at 04:06:06 GMT+07:00', N'0', N'48-0 32-0 43-0 56-0 16-0 41-0 70-0 57-0 58-0 10-0 12-0 49-0 36-0 23-0 9-0 69-0 59-0 67-0 38-0 5-0 74-0 45-0 63-0 31-0 47-0 60-0 7-0 53-0 44-0 27-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (6, 1, 1, N'Wed,Mar 15,2023 at 14:08:15 ICT', N'0', N'45-0 49-0 78-0 42-0 24-0 19-0 21-0 1-0 40-0 32-0 39-0 7-0 2-0 5-0 69-0 33-0 37-0 57-0 53-0 9-0 16-0 13-0 64-0 56-0 26-0 72-0 60-0 63-0 31-0 80-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (7, 1, 2, N'Wed,Mar 15,2023 at 14:19:58 ICT', N'0', N'85-0 97-0 81-0 104-0 87-0 93-0 98-0 95-0 103-0 90-0 102-0 89-0 99-0 100-0 88-0 96-0 83-0 86-0 91-0 82-0 105-0 84-0 94-0 92-0 101-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (8, 1, 2, N'Wed,Mar 15,2023 at 14:26:38 ICT', N'0', N'103-0 95-0 96-0 85-0 101-0 94-0 87-0 105-0 89-0 98-0 100-0 99-0 84-0 91-0 88-0 81-0 93-0 83-0 82-0 90-0 92-0 86-0 97-0 102-0 104-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (9, 1, 3, N'Wed,Mar 15,2023 at 14:31:36 ICT', N'2', N'128-3 122-2 108-1 121-1 117-1 106-4 110-2 129-2 116-4 119-5 111-3 124-3 118-0 127-0 113-0 107-0 126-0 123-0 112-0 125-0 120-0 130-0 109-0 115-0 114-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (10, 1, 4, N'Wed,Mar 15,2023 at 15:24:17 ICT', N'0', N'133-0 146-0 144-0 135-0 154-0 145-0 138-0 140-0 147-0 131-0 148-0 137-0 141-0 151-0 155-0 134-0 132-0 136-0 143-0 153-0 152-0 150-0 149-0 142-0 139-0 ')
INSERT [dbo].[Record] ([record_id], [user_id], [Course_id], [record_date], [record_mark], [recod_quizz]) VALUES (11, 1, 4, N'Wed,Mar 15,2023 at 15:27:35 ICT', N'1', N'140-0 154-0 148-0 131-0 139-0 155-0 143-0 145-0 136-0 152-0 137-0 133-0 144-0 150-0 147-0 135-0 146-0 151-0 142-0 134-0 141-0 132-0 138-3 153-0 149-0 ')
SET IDENTITY_INSERT [dbo].[Record] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar], [user_status], [user_fullname], [user_birthday], [user_country], [user_facebook], [user_linkedln], [user_twitter], [user_summary], [user_achievement]) VALUES (1, N'kienpt', N'kienpt@gmail.com', N'123', 1, 0, N'VietNam', 123456789, N'654247.jpg', 1, N'Kien', CAST(N'2023-02-09' AS Date), N'Viet Nam', N'abc', N'bcd', N'efg', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa                                                                            
                                                                            ', N'                                                                            
                                                                            ')
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar], [user_status], [user_fullname], [user_birthday], [user_country], [user_facebook], [user_linkedln], [user_twitter], [user_summary], [user_achievement]) VALUES (2, N'ABC', N'kienpt2@gmail.com', N'1234', 0, 0, NULL, NULL, N'user-default.svg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar], [user_status], [user_fullname], [user_birthday], [user_country], [user_facebook], [user_linkedln], [user_twitter], [user_summary], [user_achievement]) VALUES (3, N'BCD', N'BCD@gmail.com', N'1234', 1, 0, NULL, NULL, N'user-default.svg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar], [user_status], [user_fullname], [user_birthday], [user_country], [user_facebook], [user_linkedln], [user_twitter], [user_summary], [user_achievement]) VALUES (6, N'admin', NULL, N'123', 1, 0, NULL, NULL, N'user-default.svg', 1, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar], [user_status], [user_fullname], [user_birthday], [user_country], [user_facebook], [user_linkedln], [user_twitter], [user_summary], [user_achievement]) VALUES (7, N'Kiên Phạm', NULL, N'12345678A', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([User_Id], [user_name], [user_mail], [user_password], [user_role], [user_gender], [user_address], [user_phone], [user_avatar], [user_status], [user_fullname], [user_birthday], [user_country], [user_facebook], [user_linkedln], [user_twitter], [user_summary], [user_achievement]) VALUES (8, N'Pham Trung Kien (K16_HL)', NULL, N'12345678A', 1, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[CommentCourse] ADD  DEFAULT ((0)) FOR [comment_repply]
GO
ALTER TABLE [dbo].[CommentCourse] ADD  DEFAULT ((0)) FOR [comment_like]
GO
ALTER TABLE [dbo].[CommentLesson] ADD  DEFAULT ((0)) FOR [comment_repply]
GO
ALTER TABLE [dbo].[CommentLesson] ADD  DEFAULT ((0)) FOR [comment_like]
GO
ALTER TABLE [dbo].[Discussion] ADD  DEFAULT ((0)) FOR [discussion_reply]
GO
ALTER TABLE [dbo].[Discussion] ADD  DEFAULT ((0)) FOR [discussion_like]
GO
ALTER TABLE [dbo].[Enroll] ADD  DEFAULT ((0)) FOR [rate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [user_role]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [user_gender]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_User]  DEFAULT ('user-default.svg') FOR [user_avatar]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_status]  DEFAULT ((1)) FOR [user_status]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_CourseChapter] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_CourseChapter]
GO
ALTER TABLE [dbo].[CommentCourse]  WITH CHECK ADD  CONSTRAINT [FK_CommentCourse] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[CommentCourse] CHECK CONSTRAINT [FK_CommentCourse]
GO
ALTER TABLE [dbo].[CommentCourse]  WITH CHECK ADD  CONSTRAINT [FK_UserCommentCourse] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[CommentCourse] CHECK CONSTRAINT [FK_UserCommentCourse]
GO
ALTER TABLE [dbo].[CommentLesson]  WITH CHECK ADD  CONSTRAINT [FK_CommentOfChapter] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[CommentLesson] CHECK CONSTRAINT [FK_CommentOfChapter]
GO
ALTER TABLE [dbo].[CommentLesson]  WITH CHECK ADD  CONSTRAINT [FK_UserCommentLesson] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[CommentLesson] CHECK CONSTRAINT [FK_UserCommentLesson]
GO
ALTER TABLE [dbo].[Discussion]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscussion] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Discussion] CHECK CONSTRAINT [FK_UserDiscussion]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_CourseEnroll] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_CourseEnroll]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_UserEnroll] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_UserEnroll]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_ImageOfChapter] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_ImageOfChapter]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_LessonOfChapter] FOREIGN KEY([chapter_id])
REFERENCES [dbo].[Chapter] ([Chapter_id])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_LessonOfChapter]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_PaymentOfCourse] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_PaymentOfCourse]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_PaymentOfUser] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_PaymentOfUser]
GO
ALTER TABLE [dbo].[Percentage]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[Lesson] ([lesson_id])
GO
ALTER TABLE [dbo].[Percentage]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Quizz]  WITH CHECK ADD  CONSTRAINT [FK_QuestionOfQuizz] FOREIGN KEY([Question_id])
REFERENCES [dbo].[Question] ([Question_id])
GO
ALTER TABLE [dbo].[Quizz] CHECK CONSTRAINT [FK_QuestionOfQuizz]
GO
ALTER TABLE [dbo].[Quizz]  WITH CHECK ADD  CONSTRAINT [FK_QuizzOfCourse] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Quizz] CHECK CONSTRAINT [FK_QuizzOfCourse]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_RecordOfCoursr] FOREIGN KEY([Course_id])
REFERENCES [dbo].[Course] ([Course_id])
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_RecordOfCoursr]
GO
ALTER TABLE [dbo].[Record]  WITH CHECK ADD  CONSTRAINT [FK_RecordOfUser] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([User_Id])
GO
ALTER TABLE [dbo].[Record] CHECK CONSTRAINT [FK_RecordOfUser]
GO
USE [master]
GO
ALTER DATABASE [SWP-Project] SET  READ_WRITE 
GO
