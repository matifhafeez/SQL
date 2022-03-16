USE [MBC]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/16/2022 5:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[event_date] [date] NULL,
	[visitors] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/16/2022 5:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [smallint] NULL,
	[pay_month] [smallint] NULL,
	[salary] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matches]    Script Date: 3/16/2022 5:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matches](
	[match_id] [smallint] NULL,
	[host_team] [smallint] NULL,
	[guest_team] [smallint] NULL,
	[host_goals] [smallint] NULL,
	[guest_goals] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/16/2022 5:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [smallint] NULL,
	[customer_id] [smallint] NULL,
	[product_id] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/16/2022 5:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [smallint] NULL,
	[name] [nchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 3/16/2022 5:59:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[team_id] [smallint] NULL,
	[team_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-01' AS Date), 10)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-04' AS Date), 109)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-05' AS Date), 150)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-06' AS Date), 99)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-07' AS Date), 145)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-08' AS Date), 1455)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-11' AS Date), 199)
GO
INSERT [dbo].[Attendance] ([event_date], [visitors]) VALUES (CAST(N'2020-01-12' AS Date), 188)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (1, 1, 20)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (2, 1, 20)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (1, 2, 30)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (2, 2, 30)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (3, 2, 40)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (1, 3, 40)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (3, 3, 60)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (1, 4, 60)
GO
INSERT [dbo].[Employee] ([id], [pay_month], [salary]) VALUES (3, 4, 70)
GO
INSERT [dbo].[Matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (1, 1, 2, 3, 0)
GO
INSERT [dbo].[Matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (2, 2, 3, 2, 4)
GO
INSERT [dbo].[Matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (3, 3, 4, 4, 3)
GO
INSERT [dbo].[Matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (4, 4, 5, 1, 1)
GO
INSERT [dbo].[Matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (5, 5, 6, 2, 1)
GO
INSERT [dbo].[Matches] ([match_id], [host_team], [guest_team], [host_goals], [guest_goals]) VALUES (6, 6, 1, 1, 2)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (1, 1, 2)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (1, 1, 3)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (2, 2, 1)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (2, 2, 2)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (2, 2, 4)
GO
INSERT [dbo].[Orders] ([order_id], [customer_id], [product_id]) VALUES (3, 1, 5)
GO
INSERT [dbo].[Products] ([id], [name]) VALUES (1, N'A')
GO
INSERT [dbo].[Products] ([id], [name]) VALUES (2, N'B')
GO
INSERT [dbo].[Products] ([id], [name]) VALUES (3, N'C')
GO
INSERT [dbo].[Products] ([id], [name]) VALUES (4, N'D')
GO
INSERT [dbo].[Products] ([id], [name]) VALUES (5, N'E')
GO
INSERT [dbo].[Teams] ([team_id], [team_name]) VALUES (1, N'New York')
GO
INSERT [dbo].[Teams] ([team_id], [team_name]) VALUES (2, N'Atlanta')
GO
INSERT [dbo].[Teams] ([team_id], [team_name]) VALUES (3, N'Chicago')
GO
INSERT [dbo].[Teams] ([team_id], [team_name]) VALUES (4, N'Toronto')
GO
INSERT [dbo].[Teams] ([team_id], [team_name]) VALUES (5, N'Los Angeles')
GO
INSERT [dbo].[Teams] ([team_id], [team_name]) VALUES (6, N'Seattle')
GO
