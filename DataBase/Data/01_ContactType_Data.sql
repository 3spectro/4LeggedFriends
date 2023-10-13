USE [4LeggedFriends]
GO
SET IDENTITY_INSERT [dbo].[ContactType] ON
INSERT INTO [dbo].[ContactType]
           ([id_contact_type], 
		    [contact_type])
     VALUES
           (1,
		   'Mobile')
INSERT INTO [dbo].[ContactType]
           ([id_contact_type], 
		    [contact_type])
     VALUES
           (2,
		   'Home')
INSERT INTO [dbo].[ContactType]
           ([id_contact_type], 
		    [contact_type])
     VALUES
           (3,
		   'Office')
INSERT INTO [dbo].[ContactType]
           ([id_contact_type], 
		    [contact_type])
     VALUES
           (4,
		   'Email')
SET IDENTITY_INSERT [dbo].[ContactType] OFF
GO


