USE [4LeggedFriends]
GO
SET IDENTITY_INSERT [dbo].[EventType] ON
INSERT INTO [dbo].[EventType]
           ([id_event_type],
		    [event_type])
     VALUES
           (1,
		    'Missing Pet')
INSERT INTO [dbo].[EventType]
           ([id_event_type],
		    [event_type])
     VALUES
           (2,
		    'Wanted Pet')
INSERT INTO [dbo].[EventType]
           ([id_event_type],
		    [event_type])
     VALUES
           (3,
		    'Pet for Adoption')
SET IDENTITY_INSERT [dbo].[EventType] OFF
GO


