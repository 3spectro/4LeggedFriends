USE [4LeggedFriends]
GO

/****** Object:  Table [dbo].[ContactType]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ContactType](
	[id_contact_type] [int] IDENTITY(1,1) NOT NULL,
	[contact_type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED 
(
	[id_contact_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Event]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Event](
	[id_event] [int] IDENTITY(1,1) NOT NULL,
	[id_partner] [int] NOT NULL,
	[id_pet] [int] NULL,
	[creation_date] [smalldatetime] NOT NULL,
	[close_date] [smalldatetime] NULL,
	[description] [nvarchar](max) NOT NULL,
	[others] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[id_event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[EventImage]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EventImage](
	[id_event_image] [int] IDENTITY(1,1) NOT NULL,
	[id_event] [int] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EventImage] PRIMARY KEY CLUSTERED 
(
	[id_event_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[EventType]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EventType](
	[id_event_type] [int] IDENTITY(1,1) NOT NULL,
	[event_type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED 
(
	[id_event_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Partner]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Partner](
	[id_partner] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[birth_date] [smalldatetime] NOT NULL,
	[profile_image] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[id_partner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PartnerContact]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PartnerContact](
	[id_contact] [int] IDENTITY(1,1) NOT NULL,
	[id_contact_type] [int] NOT NULL,
	[id_partner] [int] NOT NULL,
	[contact] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_PartnerContact] PRIMARY KEY CLUSTERED 
(
	[id_contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Pet]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pet](
	[id_pet] [int] IDENTITY(1,1) NOT NULL,
	[id_pet_type] [int] NOT NULL,
	[id_partner] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[birth_date] [smalldatetime] NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pet] PRIMARY KEY CLUSTERED 
(
	[id_pet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PetImage]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PetImage](
	[id_pet_image] [int] IDENTITY(1,1) NOT NULL,
	[id_pet] [int] NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[is_primary] [bit] NULL,
 CONSTRAINT [PK_PetImage] PRIMARY KEY CLUSTERED 
(
	[id_pet_image] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PetType]    Script Date: 10/12/2023 4:28:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PetType](
	[id_pet_type] [int] IDENTITY(1,1) NOT NULL,
	[pet_type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PetType] PRIMARY KEY CLUSTERED 
(
	[id_pet_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id_partner])
GO

ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Partner]
GO

ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Pet] FOREIGN KEY([id_pet])
REFERENCES [dbo].[Pet] ([id_pet])
GO

ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Pet]
GO

ALTER TABLE [dbo].[EventImage]  WITH CHECK ADD  CONSTRAINT [FK_EventImage_Event] FOREIGN KEY([id_event])
REFERENCES [dbo].[Event] ([id_event])
GO

ALTER TABLE [dbo].[EventImage] CHECK CONSTRAINT [FK_EventImage_Event]
GO

ALTER TABLE [dbo].[PartnerContact]  WITH CHECK ADD  CONSTRAINT [FK_PartnerContact_ContactType] FOREIGN KEY([id_contact_type])
REFERENCES [dbo].[ContactType] ([id_contact_type])
GO

ALTER TABLE [dbo].[PartnerContact] CHECK CONSTRAINT [FK_PartnerContact_ContactType]
GO

ALTER TABLE [dbo].[PartnerContact]  WITH CHECK ADD  CONSTRAINT [FK_PartnerContact_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id_partner])
GO

ALTER TABLE [dbo].[PartnerContact] CHECK CONSTRAINT [FK_PartnerContact_Partner]
GO

ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_Partner] FOREIGN KEY([id_partner])
REFERENCES [dbo].[Partner] ([id_partner])
GO

ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_Partner]
GO

ALTER TABLE [dbo].[Pet]  WITH CHECK ADD  CONSTRAINT [FK_Pet_PetType] FOREIGN KEY([id_pet_type])
REFERENCES [dbo].[PetType] ([id_pet_type])
GO

ALTER TABLE [dbo].[Pet] CHECK CONSTRAINT [FK_Pet_PetType]
GO

ALTER TABLE [dbo].[PetImage]  WITH CHECK ADD  CONSTRAINT [FK_PetImage_Pet] FOREIGN KEY([id_pet])
REFERENCES [dbo].[Pet] ([id_pet])
GO

ALTER TABLE [dbo].[PetImage] CHECK CONSTRAINT [FK_PetImage_Pet]
GO


