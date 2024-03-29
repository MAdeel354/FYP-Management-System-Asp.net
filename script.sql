USE [SELAB]
GO
/****** Object:  Table [dbo].[advisor]    Script Date: 12/15/2019 9:12:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[advisor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Department] [nvarchar](max) NOT NULL,
	[CNIC] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_info_advisor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deliever]    Script Date: 12/15/2019 9:12:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deliever](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Student] [nchar](100) NOT NULL,
	[Advisor] [nchar](100) NOT NULL,
	[Project] [nchar](100) NOT NULL,
 CONSTRAINT [PK_deliever] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[finalEvaluation]    Script Date: 12/15/2019 9:12:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[finalEvaluation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Project] [nchar](100) NOT NULL,
	[TotMarks] [nchar](100) NOT NULL,
	[ObtMarks] [nchar](100) NOT NULL,
 CONSTRAINT [PK_finalEvaluation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 12/15/2019 9:12:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Project] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_info_project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/15/2019 9:12:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Father_Name] [nvarchar](max) NOT NULL,
	[DOB] [nvarchar](max) NOT NULL,
	[CNIC] [nvarchar](max) NOT NULL,
	[Degree] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_info_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[advisor] ON 

INSERT [dbo].[advisor] ([id], [Name], [Department], [CNIC]) VALUES (1, N'Sikandar', N'CS', N'1234567891')
INSERT [dbo].[advisor] ([id], [Name], [Department], [CNIC]) VALUES (3, N'Asad', N'CS', N'3630223231167')
INSERT [dbo].[advisor] ([id], [Name], [Department], [CNIC]) VALUES (1002, N'Butt', N'CS', N'123456789')
SET IDENTITY_INSERT [dbo].[advisor] OFF
SET IDENTITY_INSERT [dbo].[deliever] ON 

INSERT [dbo].[deliever] ([id], [Student], [Advisor], [Project]) VALUES (1, N'Zeeshan,Ahmad                                                                                       ', N'Asad                                                                                                ', N'new                                                                                                 ')
INSERT [dbo].[deliever] ([id], [Student], [Advisor], [Project]) VALUES (2, N'Zeeshan,Ahmad                                                                                       ', N'Asad                                                                                                ', N'new                                                                                                 ')
INSERT [dbo].[deliever] ([id], [Student], [Advisor], [Project]) VALUES (1002, N'Adeel,Zeeshan                                                                                       ', N'Asad                                                                                                ', N'BST                                                                                                 ')
INSERT [dbo].[deliever] ([id], [Student], [Advisor], [Project]) VALUES (1003, N'Adeel,Zeeshan                                                                                       ', N'Sikandar                                                                                            ', N'new                                                                                                 ')
SET IDENTITY_INSERT [dbo].[deliever] OFF
SET IDENTITY_INSERT [dbo].[finalEvaluation] ON 

INSERT [dbo].[finalEvaluation] ([id], [Project], [TotMarks], [ObtMarks]) VALUES (1, N'new                                                                                                 ', N'120                                                                                                 ', N'80                                                                                                  ')
INSERT [dbo].[finalEvaluation] ([id], [Project], [TotMarks], [ObtMarks]) VALUES (2, N'new                                                                                                 ', N'120                                                                                                 ', N'80                                                                                                  ')
INSERT [dbo].[finalEvaluation] ([id], [Project], [TotMarks], [ObtMarks]) VALUES (1002, N'BST                                                                                                 ', N'10                                                                                                  ', N'5                                                                                                   ')
INSERT [dbo].[finalEvaluation] ([id], [Project], [TotMarks], [ObtMarks]) VALUES (1003, N' Market                                                                                             ', N'30                                                                                                  ', N'10                                                                                                  ')
SET IDENTITY_INSERT [dbo].[finalEvaluation] OFF
SET IDENTITY_INSERT [dbo].[project] ON 

INSERT [dbo].[project] ([id], [Project], [Description]) VALUES (1, N'new', N'Not Required')
INSERT [dbo].[project] ([id], [Project], [Description]) VALUES (3, N'BST', N'not necessary')
INSERT [dbo].[project] ([id], [Project], [Description]) VALUES (1002, N'Genome', N'Dna Checking of two sequences')
INSERT [dbo].[project] ([id], [Project], [Description]) VALUES (1004, N' Market', N'Not Required')
INSERT [dbo].[project] ([id], [Project], [Description]) VALUES (1005, N'', N'')
SET IDENTITY_INSERT [dbo].[project] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [Name], [Father_Name], [DOB], [CNIC], [Degree]) VALUES (1, N'Adeel', N'ijaz', N'06-04-2001', N'3630223230167', N'CS')
INSERT [dbo].[student] ([id], [Name], [Father_Name], [DOB], [CNIC], [Degree]) VALUES (2, N'Zeeshan', N'Ramzan', N'17-01-1998', N'3630223234231', N'CS')
INSERT [dbo].[student] ([id], [Name], [Father_Name], [DOB], [CNIC], [Degree]) VALUES (6, N'Ahmad', N'Khalid', N'13-12-1999', N'3633323230167', N'CS')
INSERT [dbo].[student] ([id], [Name], [Father_Name], [DOB], [CNIC], [Degree]) VALUES (1004, N'Waleed', N'Asad', N'12-12-1998', N'3630223850167', N'CS')
INSERT [dbo].[student] ([id], [Name], [Father_Name], [DOB], [CNIC], [Degree]) VALUES (1005, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[student] OFF
