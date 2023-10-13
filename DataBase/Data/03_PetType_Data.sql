USE [4LeggedFriends]
GO
SET IDENTITY_INSERT [dbo].[PetType] ON
INSERT INTO [dbo].[PetType]
           ([id_pet_type],
		    [pet_type])
     VALUES
           (1,
		    'Dog')
INSERT INTO [dbo].[PetType]
           ([id_pet_type],
		    [pet_type])
     VALUES
           (2,
		    'Cat')
INSERT INTO [dbo].[PetType]
           ([id_pet_type],
		    [pet_type])
     VALUES
           (3,
		    'Other')
SET IDENTITY_INSERT [dbo].[PetType] OFF
GO


