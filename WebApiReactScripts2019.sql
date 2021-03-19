USE [jctdev3]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 03/17/2021 11:11:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Salary] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (1, N'Pranaya', N'Rout', N'Male', 60000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (2, N'Anurag', N'Mohanty', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (3, N'Preety', N'Tiwari', N'Female', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (4, N'Sambit', N'Mohanty', N'Male', 70000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (5, N'Shushanta', N'Jena', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (6, N'Priyanka', N'Dewangan', N'Female', 30000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (7, N'Sandeep', N'Kiran', N'Male', 45000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (8, N'Shudhansshu', N'Nayak', N'Male', 30000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (9, N'Hina', N'Sharma', N'Female', 35000)
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (10, N'Preetiranjan', N'Sahoo', N'Male', 80000)
SET IDENTITY_INSERT [dbo].[Employees] OFF
/****** Object:  StoredProcedure [dbo].[EmployeesAllFetch]    Script Date: 03/17/2021 11:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Exec   EmployeesAllFetch  
CREATE PROC   [dbo].[EmployeesAllFetch]  
AS  
BEGIN  

SELECT * FROM  dbo.Employees   
  
--SELECT * FROM  dbo.Employees   WHERE id		= '11' 
END
GO
