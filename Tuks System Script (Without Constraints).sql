create Database Tuks_Athletics_System
go
use Tuks_Athletics_System
go
CREATE TABLE [dbo].[Access](
	[Access_ID] [int] IDENTITY(1,1) NOT NULL,
	[Function_ID] [int] NOT NULL,
	[Access_Level] [int] NOT NULL,
	[Authorised] [varchar](10) NULL,
	[UnAuthorised] [varchar](10) NULL,
 CONSTRAINT [PK_Access] PRIMARY KEY CLUSTERED 
(
	[Access_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Access_Level](
	[Access_Level] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Access_Level] PRIMARY KEY CLUSTERED 
(
	[Access_Level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Admin.](
	[Admin_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Name] [varbinary](50) NULL,
	[Surname] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[ID_Number] [nchar](13) NULL,
 CONSTRAINT [PK_Admin._1] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Age_Group](
	[Age_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Age_Group] PRIMARY KEY CLUSTERED 
(
	[Age_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Athlete](
	[Athlete_ID] [int] IDENTITY(1,1) NOT NULL,
	[Club_ID] [int] NOT NULL,
	[Gender_ID] [int] NOT NULL,
	[Status_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Profile Description] [varchar](225) NULL,
 CONSTRAINT [PK_Athlete] PRIMARY KEY CLUSTERED 
(
	[Athlete_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Athlete Event](
	[Athlete_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Athlete Test Result](
	[Test_ID] [int] NOT NULL,
	[Athlete_ID] [int] NOT NULL,
	[Description] [varchar](225) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Athlete_Event_Heat_Performance](
	[Athlete_ID] [int] NOT NULL,
	[Heat_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL,
	[Med_ID] [int] NOT NULL,
	[Age_ID] [int] NOT NULL,
	[Points] [varchar](225) NULL,
	[Performance_Result] [varchar](225) NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Athlete_Event_Program](
	[Program_ID] [int] NOT NULL,
	[Athlete_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Banned Substance Test Result](
	[Substabce_ID] [int] NOT NULL,
	[Test_ID] [int] NOT NULL,
	[Description] [varchar](225) NULL
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Banned Substances](
	[Substance_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Banned Substances] PRIMARY KEY CLUSTERED 
(
	[Substance_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Competition](
	[Competition_ID] [int] IDENTITY(1,1) NOT NULL,
	[Club_ID] [int] NOT NULL,
	[District_ID] [int] NOT NULL,
	[Venue_ID] [int] NOT NULL,
	[CompetitionType_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Competition] PRIMARY KEY CLUSTERED 
(
	[Competition_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Club](
	[Club_ID] [int] IDENTITY(1,1) NOT NULL,
	[District_ID] [int] NOT NULL,
	[Federation_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Club] PRIMARY KEY CLUSTERED 
(
	[Club_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Competition League Season](
	[Competition_ID] [int] NOT NULL,
	[League_ID] [int] NOT NULL,
	[Season_ID] [int] NOT NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Competition_Event](
	[Event_ID] [int] IDENTITY(1,1) NOT NULL,
	[Competition_ID] [int] NOT NULL,
	[Season_ID] [int] NOT NULL,
	[League_ID] [int] NOT NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[Competition Type](
	[CompetitionType_ID] [int] IDENTITY(1,1) NOT NULL,
	[Athletics] [bit] NULL,
	[Paraplegic-Athletics] [bit] NULL,
 CONSTRAINT [PK_Competition Type] PRIMARY KEY CLUSTERED 
(
	[CompetitionType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Event_Program_Exercise](
	[Program_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL,
	[Coach_ID] [int] NOT NULL,
	[Exercise_ID] [int] NOT NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[District](
	[District_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[District_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Event](
	[Event_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rules_ID] [int] NOT NULL,
	[EventType_ID] [int] NOT NULL,
	[Unit_ID] [int] NOT NULL,
	[Event_Name] [varchar](225) NULL,
	[Event_Description] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[Event_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Event_Heat](
	[Heat_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL,
	[Competition_ID] [int] NOT NULL,
	[Age_ID] [int] NOT NULL,
	[Points] [varchar](225) NULL
) ON [PRIMARY]

GO

GO
CREATE TABLE [dbo].[Event_Type](
	[EventType_ID] [int] IDENTITY(1,1) NOT NULL,
	[Unit_ID] [int] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Event_Type] PRIMARY KEY CLUSTERED 
(
	[EventType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Exercise](
	[Exercise_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](70) NULL,
	[Exercise_Descrption] [varchar](225) NULL,
	[Sets_Reps] [varchar](20) NULL,
	[Cardio] [bit] NULL,
	[Strength] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Exercise_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Federation](
	[Federation_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Federation] PRIMARY KEY CLUSTERED 
(
	[Federation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Federation_Event](
	[Federation_ID] [int] NOT NULL,
	[Record_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL,
	[Rules_ID] [int] NOT NULL
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Functionality](
	[Function_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Functionality] PRIMARY KEY CLUSTERED 
(
	[Function_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Gender](
	[Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Male] [varchar](10) NULL,
	[Female] [varchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Gender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Heat](
	[Heat_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Heat] PRIMARY KEY CLUSTERED 
(
	[Heat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[League](
	[League_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Descrption] [varchar](225) NULL,
 CONSTRAINT [PK_League] PRIMARY KEY CLUSTERED 
(
	[League_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Medal](
	[Medal_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gold] [bit] NULL,
	[Silver] [bit] NULL,
	[Bronze] [bit] NULL,
 CONSTRAINT [PK_Medal] PRIMARY KEY CLUSTERED 
(
	[Medal_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Record](
	[Record_ID] [int] IDENTITY(1,1) NOT NULL,
	[Event_ID] [int] NOT NULL,
	[Athlete_ID] [int] NOT NULL,
	[Unit_ID] [int] NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Record] PRIMARY KEY CLUSTERED 
(
	[Record_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Rules_and_Regulation](
	[Rules_ID] [int] IDENTITY(1,1) NOT NULL,
	[Federation_ID] [int] NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Rules_and_Regulation] PRIMARY KEY CLUSTERED 
(
	[Rules_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Season](
	[Season_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](225) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[Season_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Status](
	[Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Banned] [bit] NULL,
	[Active] [bit] NULL,
	[Retired] [bit] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Test Result](
	[Test_ID] [int] IDENTITY(1,1) NOT NULL,
	[Type Description] [varchar](225) NULL,
	[Result Description] [varchar](225) NULL,
 CONSTRAINT [PK_Test Result] PRIMARY KEY CLUSTERED 
(
	[Test_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Test Type](
	[Test_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](225) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Unit](
	[Unit_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Unit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[User](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](10) NULL,
	[UserName] [varchar](50) NULL,
	[Type_ID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Program](
	[Program_ID] [int] IDENTITY(1,1) NOT NULL,
	[Coach_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[Excercise Name] [varchar](50) NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Program_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[User Type](
	[Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[Access_Level] [int] NOT NULL,
 CONSTRAINT [PK_User Type] PRIMARY KEY CLUSTERED 
(
	[Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Venue](
	[Venue_ID] [int] IDENTITY(1,1) NOT NULL,
	[District_ID] [int] NOT NULL,
	[Club_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Capacity] [nvarchar](100) NULL,
 CONSTRAINT [PK_Venue] PRIMARY KEY CLUSTERED 
(
	[Venue_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Event_Program](
	[Program_ID] [int] NOT NULL,
	[Event_ID] [int] NOT NULL,
	[Age_ID] [int] NOT NULL,
	[EventProgram_Descrption] [varchar](225) NULL
) ON [PRIMARY]

GO
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Coach](
	[Coach_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Email] [varchar](70) NULL,
	[User_ID] [int] NOT NULL,
	[Description] [varchar](225) NULL,
 CONSTRAINT [PK_Coach] PRIMARY KEY CLUSTERED 
(
	[Coach_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_PADDING OFF
GO

use Tuks_Athletics_System

select * from Program