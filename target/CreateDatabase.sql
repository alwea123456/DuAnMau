USE [EduSysData]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[ThematicID] [nchar](5) NOT NULL,
	[Tuition] [float] NOT NULL,
	[Times] [int] NOT NULL,
	[OpenDay] [date] NOT NULL,
	[CourseDescription] [nvarchar](50) NULL,
	[StaffID] [nvarchar](50) NOT NULL,
	[CreateDay] [date] NOT NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Learner]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learner](
	[LearnerID] [nchar](7) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Birth] [date] NOT NULL,
	[Gender] [bit] NOT NULL DEFAULT ((1)),
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[LearnerDescription] [nvarchar](max) NULL,
	[StaffID] [nvarchar](50) NOT NULL,
	[RegistDate] [date] NOT NULL DEFAULT (getdate()),
	[Picture] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LearnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [nvarchar](50) NOT NULL,
	[StaffPassword] [nvarchar](50) NOT NULL,
	[StaffName] [nvarchar](50) NOT NULL,
	[StaffRole] [bit] NOT NULL,
	[StaffEmail] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[LearnerID] [nchar](7) NOT NULL,
	[Mark] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thematic]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thematic](
	[ThematicID] [nchar](5) NOT NULL,
	[ThematicName] [nvarchar](50) NOT NULL,
	[tuition] [float] NOT NULL,
	[Times] [int] NOT NULL,
	[Picture] [nvarchar](50) NOT NULL,
	[ThematicDescription] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ThematicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (23, N'PRO02', 300, 90, CAST(N'2018-01-10' AS Date), N'Dự án với công nghệ Spring MVC', N'SangPV', CAST(N'2017-12-31' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (24, N'JAV04', 300, 90, CAST(N'2018-02-11' AS Date), N'Lập trình desktop với Swing', N'SangPV', CAST(N'2017-12-31' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (25, N'JAV04', 100, 50, CAST(N'2018-03-12' AS Date), N'Lập trình desktop với Swing', N'SangPV', CAST(N'2017-12-31' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (26, N'JAV04', 250, 80, CAST(N'2018-04-01' AS Date), N'Lập trình desktop với Swing', N'SangPV', CAST(N'2017-12-31' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (27, N'PRO04', 300, 90, CAST(N'2020-03-08' AS Date), N'Lập trình desktop với Swing', N'SangPV', CAST(N'2020-03-27' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (28, N'JAV03', 300, 90, CAST(N'2020-04-12' AS Date), N'Lập trình Java cơ bản', N'SangPV', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (29, N'JAV02', 300, 90, CAST(N'2021-09-11' AS Date), N'Lập trình Java nâng cao 1', N'SangPV', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (30, N'JAV03', 200, 70, CAST(N'2020-04-12' AS Date), N'Lập trình mạng với Java', N'SangPV', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (31, N'JAV04', 200, 70, CAST(N'2020-04-12' AS Date), N'Lập trình ứng dụng Desktop với Java', N'SangPV', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (33, N'PRO02', 300, 90, CAST(N'2020-04-12' AS Date), N'Lập trình Spring MVC', N'SangPV', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (34, N'PRO03', 300, 90, CAST(N'2020-04-12' AS Date), N'Làm dự án với Servlet và JSP', N'SangPV', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (35, N'PRO04', 300, 90, CAST(N'2020-04-12' AS Date), N'Làm dự án với REST API và AngularJS', N'SangPV', CAST(N'2020-05-02' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (36, N'JAV02', 300, 90, CAST(N'2020-04-10' AS Date), N'Lập trình Java cơ bản 2', N'SangPV', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (37, N'JAV02', 300, 90, CAST(N'2020-04-08' AS Date), N'Lập trình Java cơ bản 3', N'SangPV', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (38, N'JAV02', 300, 90, CAST(N'2021-10-15' AS Date), N'15-10-2021', N'SangPV', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (39, N'LOL10', 200, 20, CAST(N'2021-12-10' AS Date), N'LOL10 - Fixbug cùng thuốc trư sâu 15-10-2021', N'SangPV', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (40, N'LOL10', 200, 20, CAST(N'2021-10-15' AS Date), N'', N'SangPV', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (41, N'PRO04', 300, 90, CAST(N'2021-10-15' AS Date), NULL, N'SangPV', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (42, N'PRO04', 300, 90, CAST(N'2020-10-15' AS Date), NULL, N'SangPV', CAST(N'2021-10-15' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (43, N'WEB04', 250, 80, CAST(N'2021-10-16' AS Date), NULL, N'SangPV', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (44, N'WEB04', 250, 80, CAST(N'2021-10-16' AS Date), NULL, N'SangPV', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (45, N'JAV02', 300, 90, CAST(N'2021-10-15' AS Date), N'15-10-2021 4', N'SangPV', CAST(N'2021-10-16' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (1002, N'PRO02', 300, 90, CAST(N'2020-11-09' AS Date), N'PRO02 - Dự án với công nghệ Spring MVC', N'VuTH', CAST(N'2021-10-18' AS Date))
INSERT [dbo].[Course] ([CourseID], [ThematicID], [Tuition], [Times], [OpenDay], [CourseDescription], [StaffID], [CreateDay]) VALUES (1003, N'PRO01', 300, 900, CAST(N'2021-10-18' AS Date), N'PRO01 - Dự án với công nghệ MS.NET MVC', N'VuTH', CAST(N'2021-10-18' AS Date))
SET IDENTITY_INSERT [dbo].[Course] OFF
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS01638', N'LỮ HUY CƯỜNG', CAST(N'1991-05-08' AS Date), 0, N'0928768265', N'PS01638@fpt.edu.vn', N'0928768265 - LỮ HUY CƯỜNG', N'SangPV', CAST(N'2021-10-14' AS Date), N'black.png')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02037', N'ĐỖ VĂN MINH', CAST(N'1990-10-24' AS Date), 1, N'0968095685', N'PS02037@fpt.edu.vn', N'0968095685 - ĐỖ VĂN MINH', N'SangPV', CAST(N'2021-10-16' AS Date), N'2747726-XXL.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02771', N'NGUYỄN TẤN HIẾU', CAST(N'1998-09-15' AS Date), 1, N'0927594734', N'PS02771@fpt.edu.vn', N'0927594734 - NGUYỄN TẤN HIẾU', N'SangPV', CAST(N'2021-10-16' AS Date), N'simpleo.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02867', N'NGUYỄN HỮU TRÍ', CAST(N'1997-10-27' AS Date), 1, N'0946984711', N'PS02867@fpt.edu.vn', N'0946984711 - NGUYỄN HỮU TRÍ', N'SangPV', CAST(N'2021-10-16' AS Date), N'0994558001583504294.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02930', N'TRẦN VĂN NAM', CAST(N'2000-06-03' AS Date), 1, N'0924774498', N'PS02930@fpt.edu.vn', N'0924774498 - TRẦN VĂN NAM', N'SangPV', CAST(N'2021-10-16' AS Date), N'boombl4-profile-picture-4-225x300.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02979', N'ĐOÀN TRẦN NHẬT VŨ', CAST(N'1994-08-28' AS Date), 1, N'0912374818', N'PS02979@fpt.edu.vn', N'0912374818 - ĐOÀN TRẦN NHẬT VŨ', N'SangPV', CAST(N'2021-10-16' AS Date), N'20210705205842-2591.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02983', N'NGUYỄN HOÀNG THIÊN PHƯỚC', CAST(N'1993-04-04' AS Date), 1, N'0912499836', N'PS02983@fpt.edu.vn', N'0912499836 - NGUYỄN HOÀNG THIÊN PHƯỚC', N'SangPV', CAST(N'2021-10-16' AS Date), N'electronic-profile-picture-2-225x300.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS02988', N'HỒ HỮU HẬU', CAST(N'1993-02-08' AS Date), 1, N'0924984876', N'PS02988@fpt.edu.vn', N'0924984876 - HỒ HỮU HẬU', N'SangPV', CAST(N'2021-10-16' AS Date), N'forsaken.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03031', N'PHAN TẤN VIỆT', CAST(N'1990-04-05' AS Date), 1, N'0924832716', N'PS03031@fpt.edu.vn', N'0924832716 - PHAN TẤN VIỆT', N'SangPV', CAST(N'1990-04-05' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03046', N'NGUYỄN CAO PHƯỚC', CAST(N'1990-01-28' AS Date), 1, N'0977117727', N'PS03046@fpt.edu.vn', N'0977117727 - NGUYỄN CAO PHƯỚC', N'VuTH', CAST(N'2021-10-18' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03080', N'HUỲNH THANH HUY', CAST(N'1994-09-06' AS Date), 1, N'0916436052', N'PS03080@fpt.edu.vn', N'0916436052 - HUỲNH THANH HUY', N'SangPV', CAST(N'1994-09-06' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03088', N'NGUYỄN HOÀNG TRUNG', CAST(N'1991-09-02' AS Date), 1, N'0938101529', N'PS03088@fpt.edu.vn', N'0938101529 - NGUYỄN HOÀNG TRUNG', N'SangPV', CAST(N'1991-09-02' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03096', N'ĐOÀN HỮU KHANG', CAST(N'1994-02-21' AS Date), 1, N'0945196719', N'PS03096@fpt.edu.vn', N'0945196719 - ĐOÀN HỮU KHANG', N'SangPV', CAST(N'1994-02-21' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03104', N'LÊ THÀNH PHƯƠNG', CAST(N'1993-02-21' AS Date), 0, N'0922948096', N'PS03104@fpt.edu.vn', N'0922948096 - LÊ THÀNH PHƯƠNG', N'SangPV', CAST(N'1993-02-21' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03120', N'PHẠM NGỌC NHẬT TRƯỜNG', CAST(N'1999-06-24' AS Date), 1, N'0994296169', N'PS03120@fpt.edu.vn', N'0994296169 - PHẠM NGỌC NHẬT TRƯỜNG', N'SangPV', CAST(N'1999-06-24' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03130', N'ĐẶNG BẢO VIỆT', CAST(N'1990-02-14' AS Date), 1, N'0917749344', N'PS03130@fpt.edu.vn', N'0917749344 - ĐẶNG BẢO VIỆT', N'SangPV', CAST(N'1990-02-14' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03134', N'LÊ DUY BẢO', CAST(N'1996-08-08' AS Date), 1, N'0926714368', N'PS03134@fpt.edu.vn', N'0926714368 - LÊ DUY BẢO', N'SangPV', CAST(N'1996-08-08' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03172', N'NGUYỄN ANH TUẤN', CAST(N'1992-02-15' AS Date), 1, N'0920020472', N'PS03172@fpt.edu.vn', N'0920020472 - NGUYỄN ANH TUẤN', N'SangPV', CAST(N'1992-02-15' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03202', N'PHAN QUỐC QUI', CAST(N'1996-02-04' AS Date), 1, N'0930649274', N'PS03202@fpt.edu.vn', N'0930649274 - PHAN QUỐC QUI', N'SangPV', CAST(N'1996-02-04' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03203', N'ĐẶNG LÊ QUANG VINH', CAST(N'1990-01-02' AS Date), 1, N'0920197355', N'PS03203@fpt.edu.vn', N'0920197355 - ĐẶNG LÊ QUANG VINH', N'SangPV', CAST(N'1990-01-02' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03205', N'NGUYỄN MINH SANG', CAST(N'1995-05-02' AS Date), 1, N'0967006218', N'PS03205@fpt.edu.vn', N'0967006218 - NGUYỄN MINH SANG', N'SangPV', CAST(N'1995-05-02' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03222', N'TRẦM MINH MẪN', CAST(N'1997-02-09' AS Date), 1, N'0911183649', N'PS03222@fpt.edu.vn', N'0911183649 - TRẦM MINH MẪN', N'SangPV', CAST(N'1997-02-09' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03230', N'NGUYỄN PHẠM MINH HÂN', CAST(N'2000-10-14' AS Date), 1, N'0983469892', N'PS03230@fpt.edu.vn', N'0983469892 - NGUYỄN PHẠM MINH HÂN', N'SangPV', CAST(N'2000-10-14' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03233', N'LƯU KIM HOÀNG DUY', CAST(N'1996-07-04' AS Date), 1, N'0938357735', N'PS03233@fpt.edu.vn', N'0938357735 - LƯU KIM HOÀNG DUY', N'SangPV', CAST(N'1996-07-04' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03251', N'TRẦN QUANG VŨ', CAST(N'2000-03-10' AS Date), 1, N'0914531913', N'PS03251@fpt.edu.vn', N'0914531913 - TRẦN QUANG VŨ', N'SangPV', CAST(N'2000-03-10' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03304', N'BÙI NGỌC THUẬN', CAST(N'1995-01-26' AS Date), 1, N'0999794115', N'PS03304@fpt.edu.vn', N'0999794115 - BÙI NGỌC THUẬN', N'SangPV', CAST(N'1995-01-26' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03306', N'HỒ VĂN HÀNH', CAST(N'1992-04-15' AS Date), 1, N'0912277868', N'PS03306@fpt.edu.vn', N'0912277868 - HỒ VĂN HÀNH', N'SangPV', CAST(N'1992-04-15' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03308', N'TRẦN VIẾT HÙNG', CAST(N'1999-02-24' AS Date), 1, N'0916050164', N'PS03308@fpt.edu.vn', N'0916050164 - TRẦN VIẾT HÙNG', N'SangPV', CAST(N'1999-02-24' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03325', N'NGUYỄN HOÀNG MINH ĐỨC', CAST(N'1996-12-11' AS Date), 1, N'0912234437', N'PS03325@fpt.edu.vn', N'0912234437 - NGUYỄN HOÀNG MINH ĐỨC', N'SangPV', CAST(N'1996-12-11' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03346', N'PHAN THANH PHONG', CAST(N'1990-01-21' AS Date), 1, N'0937891282', N'PS03346@fpt.edu.vn', N'0937891282 - PHAN THANH PHONG', N'SangPV', CAST(N'1990-01-21' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03383', N'TRẦN VŨ LUÂN', CAST(N'1998-04-08' AS Date), 1, N'0962030316', N'PS03383@fpt.edu.vn', N'0962030316 - TRẦN VŨ LUÂN', N'SangPV', CAST(N'1998-04-08' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03389', N'VŨ ĐỨC TUẤN', CAST(N'1993-02-24' AS Date), 1, N'0911637415', N'PS03389@fpt.edu.vn', N'0911637415 - VŨ ĐỨC TUẤN', N'SangPV', CAST(N'1993-02-24' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03410', N'TRẦN  NHẠT', CAST(N'1992-06-08' AS Date), 1, N'0946219377', N'PS03410@fpt.edu.vn', N'0946219377 - TRẦN  NHẠT', N'SangPV', CAST(N'1992-06-08' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03411', N'TRƯƠNG THÀNH ĐẠT', CAST(N'1993-11-05' AS Date), 1, N'0991509408', N'PS03411@fpt.edu.vn', N'0991509408 - TRƯƠNG THÀNH ĐẠT', N'SangPV', CAST(N'1993-11-05' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03425', N'TÔ VĂN NĂNG', CAST(N'1992-07-28' AS Date), 1, N'0915134551', N'PS03425@fpt.edu.vn', N'0915134551 - TÔ VĂN NĂNG', N'SangPV', CAST(N'1992-07-28' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03454', N'NGUYỄN NHẬT VĨNH', CAST(N'1999-07-09' AS Date), 1, N'0917886371', N'PS03454@fpt.edu.vn', N'0917886371 - NGUYỄN NHẬT VĨNH', N'SangPV', CAST(N'1999-07-09' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03472', N'NGUYỄN VĂN HUY', CAST(N'1990-01-22' AS Date), 1, N'0960620997', N'PS03472@fpt.edu.vn', N'0960620997 - NGUYỄN VĂN HUY', N'SangPV', CAST(N'1990-01-22' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03488', N'NGUYỄN NHƯ NGỌC', CAST(N'1995-05-09' AS Date), 0, N'0912880267', N'PS03488@fpt.edu.vn', N'0912880267 - NGUYỄN NHƯ NGỌC', N'SangPV', CAST(N'1995-05-09' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03530', N'PHẠM THÀNH TÂM', CAST(N'2000-03-11' AS Date), 1, N'0918161783', N'PS03530@fpt.edu.vn', N'0918161783 - PHẠM THÀNH TÂM', N'SangPV', CAST(N'2000-03-11' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03553', N'ĐINH TẤN CÔNG', CAST(N'2000-08-15' AS Date), 1, N'0918182551', N'PS03553@fpt.edu.vn', N'0918182551 - ĐINH TẤN CÔNG', N'SangPV', CAST(N'2000-08-15' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03561', N'LÊ MINH ĐIỀN', CAST(N'1995-01-05' AS Date), 1, N'0948199564', N'PS03561@fpt.edu.vn', N'0948199564 - LÊ MINH ĐIỀN', N'SangPV', CAST(N'1995-01-05' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03596', N'NGUYỄN THANH HIỀN', CAST(N'1991-07-09' AS Date), 1, N'0910545901', N'PS03596@fpt.edu.vn', N'0910545901 - NGUYỄN THANH HIỀN', N'SangPV', CAST(N'1991-07-09' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03603', N'LÊ PHẠM KIM THANH', CAST(N'1994-08-05' AS Date), 0, N'0924696779', N'PS03603@fpt.edu.vn', N'0924696779 - LÊ PHẠM KIM THANH', N'SangPV', CAST(N'1994-08-05' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03610', N'TRẦN ĐÌNH TRƯỜNG', CAST(N'1995-01-16' AS Date), 1, N'0941528106', N'PS03610@fpt.edu.vn', N'0941528106 - TRẦN ĐÌNH TRƯỜNG', N'SangPV', CAST(N'1995-01-16' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03614', N'NGUYỄN VĂN SÁU', CAST(N'1990-04-27' AS Date), 1, N'0940711328', N'PS03614@fpt.edu.vn', N'0940711328 - NGUYỄN VĂN SÁU', N'SangPV', CAST(N'1990-04-27' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03618', N'PHÍ ĐÌNH VIỆT HÙNG', CAST(N'1996-12-09' AS Date), 1, N'0939020097', N'PS03618@fpt.edu.vn', N'0939020097 - PHÍ ĐÌNH VIỆT HÙNG', N'SangPV', CAST(N'1996-12-09' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03638', N'PHẠM NHẬT MINH', CAST(N'1997-07-18' AS Date), 1, N'0927771672', N'PS03638@fpt.edu.vn', N'0927771672 - PHẠM NHẬT MINH', N'SangPV', CAST(N'1997-07-18' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03640', N'LƯU THANH NGỌC', CAST(N'1993-12-01' AS Date), 0, N'0918358164', N'PS03640@fpt.edu.vn', N'0918358164 - LƯU THANH NGỌC', N'SangPV', CAST(N'1993-12-01' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03662', N'NGUYỄN CAO NGỌC LỢI', CAST(N'1990-04-24' AS Date), 1, N'0930260679', N'PS03662@fpt.edu.vn', N'0930260679 - NGUYỄN CAO NGỌC LỢI', N'SangPV', CAST(N'1990-04-24' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS03674', N'TRẦN TUẤN ANH', CAST(N'1996-06-11' AS Date), 1, N'0914082094', N'PS03674@fpt.edu.vn', N'0914082094 - TRẦN TUẤN ANH', N'SangPV', CAST(N'1996-06-11' AS Date), N'No_image.jpg')
INSERT [dbo].[Learner] ([LearnerID], [Name], [Birth], [Gender], [PhoneNumber], [Email], [LearnerDescription], [StaffID], [RegistDate], [Picture]) VALUES (N'PS18851', N'Phạm Vĩnh Sang', CAST(N'2002-11-20' AS Date), 1, N'1234568974', N'sang0974907374@gmail.com', N'good', N'SangPV', CAST(N'2021-10-15' AS Date), N'cc.png')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'DatTD', N'123456788', N'Trịnh Đình Đạt', 1, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'LongPT', N'123456', N'Phạm Thanh Long', 0, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'NguyenLV', N'123456', N'Lê văn Nguyêm', 0, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'NoNT', N'123456', N'Nguyễn Thị Nở', 0, N'no@gmail.com')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'PheoNC', N'123456', N'Nguyễn Chí Phèo', 1, N'sang0974907374@gmail.com')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'PhuocVT', N'123456', N'Vũ Thiên Phước', 0, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'QuaCT', N'123456', N'Quạ Chia Tay', 0, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'QuangNT', N'123456', N'Quang Ngọc Trần', 0, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'SangPV', N'123456', N'phamvinhsang2002@gmail.com', 0, N'phamvinhsang2002@gmail.com')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'TrungNT', N'123456', N'Nguyễn Thành Trung', 0, N'sangpvps18851@fpt.edu.vn')
INSERT [dbo].[Staff] ([StaffID], [StaffPassword], [StaffName], [StaffRole], [StaffEmail]) VALUES (N'VuTH', N'123456', N'Vũ Thiên Hoa', 1, N'sangpvps18851@fpt.edu.vn')
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (2, 23, N'PS01638', 8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (3, 23, N'PS02037', 8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (7, 28, N'PS03674', 7.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (8, 28, N'PS18851', 5.2)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (10, 30, N'PS03383', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (11, 30, N'PS03389', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (12, 30, N'PS03454', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (15, 29, N'PS02867', 7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (16, 29, N'PS02930', 6)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (17, 29, N'PS02979', 8.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (18, 29, N'PS02983', 1)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (19, 29, N'PS02988', 8.4)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (20, 29, N'PS03080', 9)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (21, 29, N'PS03130', 8.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (22, 36, N'PS01638', 10)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (23, 36, N'PS02037', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (24, 36, N'PS02771', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (25, 36, N'PS02867', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (26, 36, N'PS02930', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (27, 36, N'PS02979', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (28, 36, N'PS02983', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (29, 36, N'PS02988', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (30, 29, N'PS18851', 9)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (31, 28, N'PS03172', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (32, 29, N'PS03134', 9)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (33, 29, N'PS03046', 8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (34, 39, N'PS01638', 7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (35, 39, N'PS02037', 8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (36, 39, N'PS02771', 1)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (37, 39, N'PS02867', 5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (38, 39, N'PS02930', 6)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (39, 39, N'PS02979', 9)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (40, 39, N'PS02983', 7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (41, 39, N'PS02988', 8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (42, 39, N'PS03031', 9)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (43, 39, N'PS03046', 4)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (44, 39, N'PS03080', 3)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (45, 39, N'PS03088', 9)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (46, 39, N'PS03096', 10)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (47, 29, N'PS01638', 7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (48, 29, N'PS02037', 3.2)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (49, 29, N'PS02771', 5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (50, 24, N'PS01638', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (51, 24, N'PS02037', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (52, 24, N'PS02771', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (53, 24, N'PS02867', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (54, 24, N'PS02930', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (55, 24, N'PS02979', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (56, 24, N'PS02983', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (57, 24, N'PS02988', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (58, 24, N'PS03031', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (59, 24, N'PS03046', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (60, 24, N'PS03080', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (61, 24, N'PS03088', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (62, 24, N'PS03096', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (63, 24, N'PS03104', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (64, 24, N'PS03120', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (65, 24, N'PS03130', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (66, 24, N'PS03134', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (67, 25, N'PS01638', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (68, 25, N'PS02037', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (69, 25, N'PS02771', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (70, 25, N'PS02867', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (71, 25, N'PS02930', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (72, 25, N'PS02979', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (73, 25, N'PS02983', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (74, 25, N'PS02988', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (75, 25, N'PS03031', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (76, 25, N'PS03046', 0)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (77, 23, N'PS02771', 4)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (78, 23, N'PS02867', 7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (79, 23, N'PS02930', 10)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (80, 23, N'PS02979', 4.7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (81, 23, N'PS02983', 3.2)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (82, 23, N'PS02988', 9.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (83, 23, N'PS03031', 6.8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (84, 23, N'PS03046', 7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (85, 23, N'PS03080', 8.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (86, 23, N'PS03088', 9.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (87, 23, N'PS03096', 1.2)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (88, 23, N'PS03104', 5.5)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (89, 23, N'PS03120', 6.8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (90, 23, N'PS03130', 8.7)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (91, 23, N'PS03134', 7.8)
INSERT [dbo].[Student] ([StudentID], [CourseID], [LearnerID], [Mark]) VALUES (92, 23, N'PS03172', 10)
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'JAV02', N'Lập trình Java nâng cao	                    ', 300, 90, N'java.png', N'JAV02 - Lập trình Java nâng cao')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'JAV03', N'Lập trình mạng với Java	                    ', 200, 70, N'No_image.jpg', N'JAV03 - Lập trình mạng với Java')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'JAV04', N'Lập trình desktop với Swing                	', 200, 70, N'study.jpg', N'JAV04 - Lập trình desktop với Swing')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'LOL10', N'FIx bug cùng thuốc trừ sâu', 200, 20, N'justice.png', N'LOL10 - Fixbug cùng thuốc trư sâu')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'PRO01', N'Dự án với công nghệ MS.NET MVC	                ', 300, 900, N'workshop1.drawio.png', N'PRO01 - Dự án với công nghệ MS.NET MVC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'PRO02', N'Dự án với công nghệ Spring MVC	                ', 300, 90, N'navi-3.jpg', N'PRO02 - Dự án với công nghệ Spring MVC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'PRO03', N'Dự án với công nghệ Servlet/JSP	            ', 300, 90, N'black.png', N'PRO03 - Dự án với công nghệ Servlet/JSP')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'PRO04', N'Dự án với AngularJS & WebAPI	                ', 300, 90, N'navi-3.jpg', N'PRO04 - Dự án với AngularJS & WebAPI')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'PRO05', N'Dự án với Swing & JDBC	                        ', 300, 90, N'INMA.jpg	', N'PRO05 - Dự án với Swing & JDBC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'PRO06', N'Dự án với WindowForm	                        ', 300, 90, N'LAYO.jpg	', N'PRO06 - Dự án với WindowForm')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'RDB01', N'Cơ sở dữ liệu SQL Server	                    ', 100, 50, N'MOWE.png	', N'RDB01 - Cơ sở dữ liệu SQL Server')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'RDB02', N'Lập trình JDBC	                                ', 150, 60, N'Subject.png	', N'RDB02 - Lập trình JDBC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'RDB03', N'Lập trình cơ sở dữ liệu Hibernate	            ', 250, 80, N'GAME.png	', N'RDB03 - Lập trình cơ sở dữ liệu Hibernate')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'SER01', N'Lập trình web với Servlet/JSP	                ', 350, 100, N'HTCS.jpg	', N'SER01 - Lập trình web với Servlet/JSP')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'SER02', N'Lập trình Spring MVC	                        ', 400, 110, N'INMA.jpg	', N'SER02 - Lập trình Spring MVC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'SER03', N'Lập trình MS.NET MVC	                        ', 400, 110, N'LAYO.jpg	', N'SER03 - Lập trình MS.NET MVC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'SER04', N'Xây dựng Web API với Spring MVC & ASP.NET MVC	', 200, 70, N'MOWE.png	', N'SER04 - Xây dựng Web API với Spring MVC & ASP.NET MVC')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'WEB01', N'Thiết kế web với HTML và CSS	                ', 200, 70, N'Subject.png', N'WEB01 - Thiết kế web với HTML và CSS')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'WEB02', N'Thiết kế web với Bootstrap	                    ', 0, 4, N'game8-quannet 1(2).jpg', N'WEB02 - Thiết kế web với Bootstrap')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'WEB03', N'Lập trình front-end với JavaScript và jQuery   ', 150, 60, N'HTCS.jpg    ', N'WEB03 - Lập trình front-end với JavaScript và jQuery')
INSERT [dbo].[Thematic] ([ThematicID], [ThematicName], [tuition], [Times], [Picture], [ThematicDescription]) VALUES (N'WEB04', N'Lập trình AngularJS	                        ', 250, 80, N'INMA.jpg	', N'WEB04 - Lập trình AngularJS')
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([ThematicID])
REFERENCES [dbo].[Thematic] ([ThematicID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Learner]  WITH CHECK ADD FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([LearnerID])
REFERENCES [dbo].[Learner] ([LearnerID])
ON UPDATE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[sp_Mark_statistical]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Mark_statistical]
AS BEGIN 
	SELECT ThematicName Thematic, 
			COUNT(St.StudentID) StudentNumber, 
			MIN(st.Mark) Logest, 
			Max(st.Mark) Highest, 
			AVG(st.Mark) Average
	FROM Course co 
		JOIN Student st ON co.CourseID = st.CourseID
		JOIN Thematic th ON co.ThematicID = th.ThematicID
	GROUP BY ThematicName
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MarkTable]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MarkTable](@CourseID INT) 
AS 
	BEGIN
		SELECT st.LearnerID, ln.Name, st.Mark
		FROM Student st JOIN Learner ln ON St.LearnerID = ln.LearnerID
		WHERE st.CourseID = @CourseID
		ORDER BY st.Mark DESC
	END
GO
/****** Object:  StoredProcedure [dbo].[sp_Student_Statistical]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Student_Statistical]
AS BEGIN
	SELECT 
		YEAR(le.RegistDate),
		COUNT(*) LearnerNumber,
		MIN(RegistDate) FirstDate,
		MAX(RegistDate) LastDate
	FROM Learner le
	GROUP BY YEAR(RegistDate)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tuition_Statistical]    Script Date: 10/21/2021 10:13:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Tuition_Statistical](@year INT)
AS BEGIN 
	SELECT ThematicName Thematic,
			ThematicName Thematic,
			COUNT(DISTINCT co.CourseID) CourseNumber,
			COUNT(St.StudentID) StudentNumber,
			SUM(Co.Tuition) Revenue,
			MIN(CO.Tuition) LowestTuition,
			Max(CO.Tuition) HighestTuition,
			AVG(CO.Tuition) TuitionAverage
	FROM Course co 
		JOIN Student st ON co.CourseID = st.CourseID
		JOIN Thematic th ON co.ThematicID = th.ThematicID
	WHERE YEAR(OpenDay) = @year
	GROUP BY ThematicName
END
GO
