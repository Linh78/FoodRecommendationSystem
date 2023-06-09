USE [FoodSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/25/2023 3:44:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BabyAge]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BabyAge](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeGroup] [nvarchar](max) NOT NULL,
	[FromAge] [int] NOT NULL,
	[ToAge] [int] NOT NULL,
	[AmountOfMainMeal] [int] NOT NULL,
	[AmountOfSnackMeal] [int] NOT NULL,
	[WeightF] [real] NOT NULL,
	[WeightG] [real] NOT NULL,
	[WeightP] [real] NOT NULL,
 CONSTRAINT [PK_BabyAge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommentMsg] [nvarchar](max) NOT NULL,
	[CreatAt] [datetime2](7) NOT NULL,
	[Rate] [int] NOT NULL,
	[Id_User] [nvarchar](450) NOT NULL,
	[Id_Food] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food_Ingredients]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food_Ingredients](
	[Id_Food] [int] NOT NULL,
	[Id_Ingredient] [int] NOT NULL,
	[Quantity] [real] NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Food_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id_Food] ASC,
	[Id_Ingredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodDetail]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Recipe] [nvarchar](max) NOT NULL,
	[MakingProcess] [nvarchar](max) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[BabyAge] [nvarchar](max) NOT NULL,
	[Thumbnail] [nvarchar](max) NOT NULL,
	[Protein] [real] NOT NULL,
	[Fat] [real] NOT NULL,
	[Glucin] [real] NOT NULL,
	[Energy] [real] NOT NULL,
 CONSTRAINT [PK_FoodDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Thumbnail] [nvarchar](max) NOT NULL,
	[MakingProcess] [nvarchar](max) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
	[Id_Category] [int] NOT NULL,
	[Id_BabyAge] [int] NOT NULL,
	[Protein] [real] NOT NULL,
	[Fat] [real] NOT NULL,
	[Glucin] [real] NOT NULL,
	[Recipe] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Foods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Img] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/25/2023 3:44:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Thumbnail] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Href_param] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[ShortContent] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230413174409_FoodRecommendation', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230417161910_AddTableNews', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424172728_CreateTb_IngredientTb_FoodIngredients', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230424190234_AddForeignKeyForTbFoods', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230426155819_AddForeignKeyForTbBabyAge', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230427083005_ChangeTypeValueOfMakingProcessInTbFoods', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230427085421_ChangeTypeValueOfMakingProcessInTbFoods1', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230429013146_DropTbNutrient_Food', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230502170710_AddColumnRecipeForTbFoods', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230515004915_changeTbBabyAge', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230520160540_ChangeDbContext', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230520200845_addAttributeClassUser', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230521174330_addIndentity', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230523174243_CreateTbComment', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230523180232_UpdateTbComment', N'7.0.5')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator]) VALUES (N'27ae9f28-59b1-4e2e-8234-d9f1a9be6132', N'thuylinh@gmail.com', N'THUYLINH@GMAIL.COM', N'thuylinh@gmail.com', N'THUYLINH@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEECkN8thU/or22LTQ00gT0QWynXIwLnhBBQxs1+szSXk0VCbXXy0Nm9W4B9Zd8DA6Q==', N'B6JW7COTGRKQORMJHJDQE5KLOSVISDEO', N'65f52ac8-4a10-4ab7-8fc2-fca30ee3081c', NULL, 0, 0, NULL, 1, 0, N'')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator]) VALUES (N'fe2a781e-2cdb-47c4-9999-83ba6730ac0e', N'thuylinh7801@gmail.com', N'THUYLINH7801@GMAIL.COM', N'thuylinh7801@gmail.com', N'THUYLINH7801@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELlpTdJkFNJ60qPP6TI0D0+K7qZs5m/qEQaBkejhJDF6Gd37fPGtEL3BfMypq7TGcg==', N'OIAHR53JND7J7EYCINWR5DY2EEHU4RPJ', N'14c5f8e3-c231-4f81-9e2e-d932385a7d85', NULL, 0, 0, NULL, 1, 0, N'')
SET IDENTITY_INSERT [dbo].[BabyAge] ON 

INSERT [dbo].[BabyAge] ([Id], [AgeGroup], [FromAge], [ToAge], [AmountOfMainMeal], [AmountOfSnackMeal], [WeightF], [WeightG], [WeightP]) VALUES (1, N'6 tháng', 6, 7, 2, 0, 0.0140170427, 0.826375246, 0.159607723)
INSERT [dbo].[BabyAge] ([Id], [AgeGroup], [FromAge], [ToAge], [AmountOfMainMeal], [AmountOfSnackMeal], [WeightF], [WeightG], [WeightP]) VALUES (2, N'7-8 tháng', 7, 8, 3, 0, 0.0140170427, 0.826375246, 0.159607723)
INSERT [dbo].[BabyAge] ([Id], [AgeGroup], [FromAge], [ToAge], [AmountOfMainMeal], [AmountOfSnackMeal], [WeightF], [WeightG], [WeightP]) VALUES (3, N'9-11 tháng', 9, 11, 3, 1, 0.0596460663, 0.7873925, 0.152961463)
INSERT [dbo].[BabyAge] ([Id], [AgeGroup], [FromAge], [ToAge], [AmountOfMainMeal], [AmountOfSnackMeal], [WeightF], [WeightG], [WeightP]) VALUES (4, N'12-24 tháng', 12, 24, 3, 2, 0.122258104, 0.782398045, 0.09534383)
SET IDENTITY_INSERT [dbo].[BabyAge] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Món chính', N'Muốn đảm bảo một bữa ăn đủ chất dinh dưỡng và cân đối, chúng ta cần thực hiện đa dạng hóa bữa ăn, sử dụng nhiều loại thực phẩm khác nhau. Phói hợp thực phẩm nguồn động vật và nguồn thực vật.
')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (5, N'Món phụ', N'Bên cạnh bữa chính, bữa phụ cho trẻ ăn dặm rất cần thiết để giúp bé phát triển toàn diện, phục vụ nhu cầu học tập và vui chơi hàng ngày. 
')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (6, N'Smoothie', N'Smoothies')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Foods] ON 

INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (24, N'Bột rau cải', N'/uploads/Food/bot-cai-ngot.png', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10<br/> 2. Rau cải luộc chín, cắt rồi nghiền nhỏ<br/> 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)
', 70, N'ml', 4, 1, 4, 5, 12, N'- Bột gạo tẻ: 5g (1 thìa cà phê)<br/>  - Rau cải: 10g (2 thìa cà phê)<br/> - Nước dùng dashi: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (25, N'Bột rau ngót', N'/uploads/Food/bot-rau-ngot-thit-lon.png', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10<br/> 2. Rau ngót luộc chín, cắt rồi nghiền nhỏ<br/> 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)
', 70, N'ml', 4, 1, 5, 6, 9, N'- Bột gạo tẻ: 5g (1 thìa cà phê)<br/> - Rau ngót: 10g (2 thìa cà phê)<br/> - Nước dùng dashi: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (26, N'Bột cà rốt', N'/uploads/Food/ho-carot.png', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10<br/> 2. Cà rốt luộc chín, nghiền nhỏ<br/> 
								3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 3, 7, 10, N'- Bột gạo tẻ: 5g (1 thìa cà phê)<br/> - Cà rốt: 10g (2 thìa cà phê)<br/> - Nước dùng dashi: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (27, N'Bột bông cải xanh', N'/uploads/Food/bot-bong-cai-xanh-dalatis.png', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10<br/> 2. Bông cải xanh luộc chín, cắt rồi nghiền nhỏ<br/> 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 5, 6, 8, N'- Bột gạo tẻ: 5g (1 thìa cà phê)<br/>  - Bông cải xanh: 10g (2 thìa cà phê)<br/>  - Nước dùng dashi: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (28, N'Cháo bí ngô nấu sữa', N'/uploads/Food/Chao-bi-do.png', N'1. Cháo nấu theo tỉ lệ 1:10<br/> 2. Bí ngô bỏ vỏ và hạt, luộc mềm, nghiền nhỏ<br/> 3. Thêm sữa vào (2) và đánh nhuyễn', 70, N'ml', 4, 1, 7, 5, 6, N'1. Cháo: 5g (1 thìa cà phê)<br/> 2. Bí ngô: 10g<br/> 3. Sữa bột đã pha hoặc sữa mẹ: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (29, N'Cháo rau cải bó xôi', N'/uploads/Food/chao-cai-bo-xoi.png', N'1. Nấu cháo gạo tẻ tỉ lệ là 1:10<br/> 2. Rau cải luộc mềm, ngâm vào nước để loại bỏ vị đắng rồi vắt nước, nghiền nhỏ<br/> 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 4, 5, 6, N'- Bột gạo tẻ: 5g (1 thìa cà phê)<br/>  - Rau cải bó xôi: 10g (2 thìa cà phê)<br/> - Nước dùng dashi: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (30, N'Cháo đậu phụ', N'/uploads/Food/chao-dau-hu.png', N'1. Nấu cháo gạo tẻ tỉ lệ là 1:10<br/> 2. Đậu bọc giấy quay trong lò vi sóng khoảng 20 giây, sau đó nghiền nhỏ<br/> 3. Thêm nước cà chua (bỏ vỏ và hạt lọc qua rây) vào (2) và đánh nhuyễn<br/> 4. Trộn (1) và (3)', 70, N'ml', 4, 1, 3, 6, 7, N'1. Cháo: 5g (1 thìa cà phê)<br/> 2. Đậu phụ: 10g<br/> 3. Nước cà chua: 5g (1 thìa nhỏ)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (31, N'Bột rau cải bắp', N'/uploads/Food/bot-cai-bap.png', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10<br/> 2. Rau cải bắp luộc chín, cắt rồi nghiền nhỏ<br/> 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 4, 5, 5, N'- Bột gạo tẻ: 5g (1 thìa cà phê)<br/>  - Rau cải bắp: 10g (2 thìa cà phê)<br/> - Nước dùng dashi: 15ml (1 thìa lớn)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (32, N'Cháo cá thịt trắng', N'/uploads/Food/chao-ca.png', N'1. Nấu cháo gạo tẻ tỉ lệ là 1:10<br/> 2. Bọc cá thịt trắng, quay trong lò vi sóng khoảng 20 giây rồi nghiền nhỏ<br/> 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn<br/>  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 3, 5, 6, N'1. Cháo: 5g (1 thìa cà phê)<br/> 2. Cá thịt trắng: 10g<br/> 3. Nước dùng dashi: 5ml (1 thìa nhỏ)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (33, N'Cháo cá ngừ', N'/uploads/Food/chao-ca-thu-bi-do.png', N'Cháo nấu theo tỉ lệ 1:7 trộn với cá ngừ và cà chua', 120, N'ml', 4, 2, 8, 4, 19, N'1. Cháo tỉ lệ 1:7: 70g (5 thìa lớn)<br/> 2. Cá ngừ đóng hộp (nấu súp): 2 thìa lớn<br/> 3. Cà chua (hấp bỏ vỏ và nghiền nhỏ): 2 thìa to
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (34, N'Salad trứng + cháo', N'/uploads/Food/chao-trung-sup-lo.png', N'1. Cắt nhỏ trứng luộc<br/> 2. Trộn trứng với súp lơ', 120, N'ml', 4, 2, 7, 5, 14, N'1. Trứng luộc: 1/3 quả; 2. Phần đầu súp lơ (luộc mềm và làm nhỏ): 1 thìa to; 3. Cháo tỷ lệ 1:7: 70g (5 thìa to)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (35, N'Cải bó xôi luộc hòa bột mỳ + cháo', N'/uploads/Food/chao-cai-bo-xoi.png', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 120, N'ml', 4, 2, 6, 6, 15, N'1. Bột mỳ: 2g<br/> 2. Cải bó xôi (luộc mềm, thái nhỏ): 1 thìa to<br/> 3. Nước dùng dashi: 1 thìa to<br/> 4. Cháo tỷ lệ 1:7: 70g (5 thìa to)
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (36, N'Cháo + Chuối gan gà', N'/uploads/Food/Chao-chuoi-gan.png', N'1. Luộc gan, rây qua rây<br/> 2. Nghiền thô chuối và trộn với gan vừa rây', 120, N'ml', 4, 2, 7, 5, 12, N'1. Cháo tỷ lệ 1:7: 70g (5 thìa to)<br/> 2. Gan gà: 15g<br/> 3. Chuối: 20g
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (37, N'Cháo + Cá hồi luộc xé nhỏ', N'/uploads/Food/chao-ca-hoi-ngon.png', N'1. Cắt nhỏ cá hồi và trộn với củ cải nạo<br/> 2. Cho vào hộp đựng chịu nhiệt, bọc bằng giấy bọc, quay trong lò vi sóng khoảng 20 giây', 120, N'ml', 4, 2, 8, 4, 14, N'1. Cháo tỷ lệ 1:7: 70g (5 thìa to)<br/> 2. Cá hồi tươi: 20g<br/> 3. Củ cải nạo: 20g
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (38, N'Cháo khoai tây cá thịt trắng', N'/uploads/Food/chao-ca-khoai-tay.png', N'1. Bọc cá thịt trắng bằng giấy bọc rồi quay trong lò vi sóng khoảng 20 giây<br/> 2. Trộn cá thịt trắng và khoai tây, cho thêm sữa và đánh nhuyễn', 120, N'ml', 4, 2, 4, 4, 12, N'1. Cháo tỷ lệ 1:7: 70g (5 thìa to)<br/> 2. Cá thịt trắng: 15g<br/> 3. Khoai tây (luộc mềm, nghiền nhỏ): 1 thìa to<br/> 4. Sữa bột đã pha hoặc sữa mẹ: 1 thìa to
')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (40, N'Smoothie chuối thanh long', N'\uploads\Food\Smoothie.jpg', N'1. Lượt hột 1/4 trái thanh long vì hột có thể làm bé đau bụng<br/> 2. Xay hỗn hợp chuối, thanh long và sữa công thức hoặc sữa mẹ rã đông. Thành phẩm sẽ được 50ml sinh tố.
<br/> 3. Có thể dùng ngay hoặc để lạnh cho bé dùng. Nên sử dụng trong ngày.', 50, N'ml', 6, 2, 2, 2, 3, N'1. 1/2 trái chuối sứ<br/> 2. 1/4 trái thanh long<br/> 3. 30 ml sữa công thức hoặc sữa mẹ ')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (41, N'Cháo yến mạch và khoai lang nghiền', N'/uploads/Food/pic1(2).jpg', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10; 2. Rau cải bắp luộc chín, cắt rồi nghiền nhỏ; 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn;  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 4, 2, 6, N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10; 2. Rau cải bắp luộc chín, cắt rồi nghiền nhỏ; 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn;  4. Trộn (1) và (3)')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (42, N'Cháo yến mạch và khoai lang nghiền', N'/uploads/Food/pic1(8).jpg', N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10; 2. Rau cải bắp luộc chín, cắt rồi nghiền nhỏ; 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn;  4. Trộn (1) và (3)', 70, N'ml', 4, 1, 4, 2, 6, N'1. Nấu bột gạo tẻ tỉ lệ bột và nước là 1:10; 2. Rau cải bắp luộc chín, cắt rồi nghiền nhỏ; 3. Cho nước dùng dashi vào (2) và nghiền nhuyễn;  4. Trộn (1) và (3)')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (43, N'Cháo cải bó xôi và mướp hương nghiền.', N'/uploads/Food/pic1(3).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 5, 4, 8, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (44, N'Soup bí đỏ nghiền.', N'/uploads/Food/pic1(4).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 6, 5, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (45, N'Cháo ngô nếp dẻo và khoai tây nghiền sữa.', N'/uploads/Food/pic1(5).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 7, 3, 8, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (46, N'Cháo bí đỏ mồng tơi.', N'/uploads/Food/pic1(6).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 4, 3, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (47, N'Cháo yến mạch - hạt sen - khoai lang.', N'/uploads/Food/pic1(7).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 5, 2, 8, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (48, N'Cháo gạo lứt - cà rốt - bí đỏ.', N'/uploads/Food/pic1(8).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 4, 4, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (49, N'Cháo mướp hương.', N'/uploads/Food/pic1(1).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 6, 6, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (50, N'Soup bí đỏ - cà rốt và 1/2 lòng đỏ trứng gà luộc.', N'/uploads/Food/pic1(2).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 4, 2, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (51, N'Cháo yến mạch táo trộn phô mai.', N'/uploads/Food/pic1(3).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 4, 5, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (52, N'Cháo gạo lứt cải ngọt rắc phô mai bột.', N'/uploads/Food/pic1(4).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 5, 5, 9, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (53, N'Cháo bí đỏ - hạt sen - bí xanh và 1 viên phô mai nhỏ.', N'/uploads/Food/pic1(5).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 7, 2, 8, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (54, N'Soup yến mạch - ngô ngọt - khoai lang.', N'/uploads/Food/pic1(6).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 7, 5, 9, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (55, N'Cháo mồng tơi - khoai lang và đậu hũ non yến mạch.', N'/uploads/Food/pic1(7).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 70, N'ml', 4, 1, 8, 5, 5, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (56, N'Cháo cá ngừ', N'/uploads/Food/pic1(8).jpg', N'Cháo nấu theo tỉ lệ 1:7 trộn với cá ngừ và cà chua', 100, N'ml', 4, 2, 8, 4, 19, N'Cháo nấu theo tỉ lệ 1:7 trộn với cá ngừ và cà chua')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (57, N'Salad trứng + cháo', N'/uploads/Food/pic1(1).jpg', N'1. Cắt nhỏ trứng luộc<br/> 2. Trộn trứng với súp lơ', 100, N'ml', 4, 2, 7, 5, 14, N'1. Cắt nhỏ trứng luộc<br/> 2. Trộn trứng với súp lơ')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (58, N'Cải bó xôi luộc hòa bột mỳ + cháo', N'/uploads/Food/pic1(2).jpg', N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây', 100, N'ml', 4, 2, 6, 6, 15, N'1. Hòa bột với nước<br/> 2. Cho bột mỳ, cải bó xôi, nước dùng dashi vào hộp đựng chịu nhiệt, bọc bằng giấy bọc và quay trong lò vi sóng khoảng 30 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (59, N'Cháo + Chuối gan gà', N'/uploads/Food/pic1(3).jpg', N'1. Luộc gan, rây qua rây<br/> 2. Nghiền thô chuối và trộn với gan vừa rây', 100, N'ml', 4, 2, 7, 5, 12, N'1. Luộc gan, rây qua rây<br/> 2. Nghiền thô chuối và trộn với gan vừa rây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (60, N'Cháo + Cá hồi luộc xé nhỏ', N'/uploads/Food/pic1(4).jpg', N'1. Cắt nhỏ cá hồi và trộn với củ cải nạo<br/> 2. Cho vào hộp đựng chịu nhiệt, bọc bằng giấy bọc, quay trong lò vi sóng khoảng 20 giây', 100, N'ml', 4, 2, 8, 4, 14, N'1. Cắt nhỏ cá hồi và trộn với củ cải nạo<br/> 2. Cho vào hộp đựng chịu nhiệt, bọc bằng giấy bọc, quay trong lò vi sóng khoảng 20 giây')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (61, N'Cháo + Khoai tây trộn cá thịt trắng', N'/uploads/Food/pic1(5).jpg', N'1. Bọc cá thịt trắng bằng giấy bọc rồi quay trong lò vi sóng khoảng 20 giây<br/> 2. Trộn cá thịt trắng và khoai tây, cho thêm sữa và đánh nhuyễn', 100, N'ml', 4, 2, 4, 4, 12, N'1. Bọc cá thịt trắng bằng giấy bọc rồi quay trong lò vi sóng khoảng 20 giây<br/> 2. Trộn cá thịt trắng và khoai tây, cho thêm sữa và đánh nhuyễn')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (62, N'Cháo thịt heo nấm rơm', N'/uploads/Food/pic1(6).jpg', N'Cho bột gạo vào với nước và trộn đều đến khi không còn vón cục với tỉ lệ 10g gạo với 70ml nước<br/>Nấm rơm, thịt heo rửa sạch, băm thật nhỏ và xào chín<br/>Cho nồi bột lên bếp đun lửa vừa, quấy bột chín thì cho hỗn hợp thịt và nấm rơm vừa xào vào và đun thêm 3 phút nữa.<br/>Múc bột ra bát, để nguội cho bé ăn.', 100, N'ml', 4, 2, 5, 4, 13, N'Cho bột gạo vào với nước và trộn đều đến khi không còn vón cục với tỉ lệ 10g gạo với 70ml nước<br/>Nấm rơm, thịt heo rửa sạch, băm thật nhỏ và xào chín<br/>Cho nồi bột lên bếp đun lửa vừa, quấy bột chín thì cho hỗn hợp thịt và nấm rơm vừa xào vào và đun thêm 3 phút nữa.<br/>Múc bột ra bát, để nguội cho bé ăn.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (63, N'Cháo thịt gà nấm hương', N'/uploads/Food/pic1(7).jpg', N'Ninh đùi gà lấy nước để nấu cháo, thịt gà băm hoặc xay nhuyễn để riêng.<br/>Nấm hương làm sạch thái nhuyễn.<br/>Khi cháo sôi, cho nấm hương vào đun cho đến khi cháo chín rồi cho thịt gà vào.', 100, N'ml', 4, 2, 6, 4, 12, N'Ninh đùi gà lấy nước để nấu cháo, thịt gà băm hoặc xay nhuyễn để riêng.<br/>Nấm hương làm sạch thái nhuyễn.<br/>Khi cháo sôi, cho nấm hương vào đun cho đến khi cháo chín rồi cho thịt gà vào.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (64, N'Cháo thịt heo rau cải ngọt', N'/uploads/Food/pic1(8).jpg', N'Thịt heo đem rửa sạch, băm nhỏ hoặc xay nhuyễn<br/>Rau cải ngọt rửa sạch, băm nhỏ<br/>Cháo chín mềm thì cho thịt vào nấu thêm 5 phút cho thịt chín.<br/>Sau đó cho thêm rau cải ngọt và nấu thêm 3 phút cho rau, thịt chín nhừ là được.', 100, N'ml', 4, 2, 7, 3, 11, N'Thịt heo đem rửa sạch, băm nhỏ hoặc xay nhuyễn<br/>Rau cải ngọt rửa sạch, băm nhỏ<br/>Cháo chín mềm thì cho thịt vào nấu thêm 5 phút cho thịt chín.<br/>Sau đó cho thêm rau cải ngọt và nấu thêm 3 phút cho rau, thịt chín nhừ là được.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (65, N'Cháo tôm rau dền', N'/uploads/Food/pic1(1).jpg', N'Tôm giã nhuyễn, rau dền băm nhuyễn.<br/>Cháo nấu nhừ.<br/>Cho tôm, rau dền vào nồi nước nấu sôi bùng lên, nêm nếm, trút vào cháo không đun lại.', 100, N'ml', 4, 2, 9, 3, 10, N'Tôm giã nhuyễn, rau dền băm nhuyễn.<br/>Cháo nấu nhừ.<br/>Cho tôm, rau dền vào nồi nước nấu sôi bùng lên, nêm nếm, trút vào cháo không đun lại.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (66, N'Cháo cá cà rốt', N'/uploads/Food/pic1(2).jpg', N'Gạo đem vò sạch, cho nước vào và đun trên lửa vừa cho chín nhừ<br/>Cà rốt đem hấp chín, nghiền nhuyễn<br/>Cá làm sạch, hấp chín và băm nhỏ<br/>Cháo chín thì cho thịt cá, cà rốt vào trộn đều và đun thêm 2 phút<br/>Múc cháo ra bát, cho ít dầu ăn vào và đảo đều chờ cháo nguội cho bé ăn.', 100, N'ml', 4, 2, 9, 2, 16, N'Gạo đem vò sạch, cho nước vào và đun trên lửa vừa cho chín nhừ<br/>Cà rốt đem hấp chín, nghiền nhuyễn<br/>Cá làm sạch, hấp chín và băm nhỏ<br/>Cháo chín thì cho thịt cá, cà rốt vào trộn đều và đun thêm 2 phút<br/>Múc cháo ra bát, cho ít dầu ăn vào và đảo đều chờ cháo nguội cho bé ăn.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (67, N'Cháo cá lóc khoai lang', N'/uploads/Food/pic1(3).jpg', N'Nấu nhuyễn cháo.<br/>Cá lóc hấp chín, gỡ bỏ xương, phần thịt tán nhuyễn để riêng.<br/>Khoai lang hấp chín, tán nhuyễn.<br/>Cho cháo trắng vào nồi, cho thêm nước dùng vào nấu sôi, khuấy đều, cho cá và khoai vào trộn đều, nêm thêm gia vị.<br/>Tắt bếp, nêm thêm ½ thìa dầu ăn.', 100, N'ml', 4, 2, 8, 5, 15, N'Nấu nhuyễn cháo.<br/>Cá lóc hấp chín, gỡ bỏ xương, phần thịt tán nhuyễn để riêng.<br/>Khoai lang hấp chín, tán nhuyễn.<br/>Cho cháo trắng vào nồi, cho thêm nước dùng vào nấu sôi, khuấy đều, cho cá và khoai vào trộn đều, nêm thêm gia vị.<br/>Tắt bếp, nêm thêm ½ thìa dầu ăn.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (68, N'Súp thịt bò bí đỏ', N'/uploads/Food/pic1(4).jpg', N'Thịt bò đem rửa sạch, để ráo nước và cho vào xay nhỏ<br/>Bí đỏ rửa sạch và cũng xay như thịt bò<br/>Bắc chảo lên bếp, cho bơ vào đun cho bơ nóng, cho hành tây cắt nhỏ vào đảo rồi cho thịt bò vào đảo nhanh<br/>Đến khi thịt chín thì cho bí đỏ xay vào đảo thêm khoảng 3 phút<br/>Cho ít nước vào sao cho vừa xâm xấp mặt và nấu thêm 10-15 phút cho súp chín là được.<br/>Nếu bé ăn được gia vị thì mẹ có thể cho thêm ít rau mùi hay hành lá vào cho thơm ngon.', 100, N'ml', 4, 2, 4, 5, 14, N'Thịt bò đem rửa sạch, để ráo nước và cho vào xay nhỏ<br/>Bí đỏ rửa sạch và cũng xay như thịt bò<br/>Bắc chảo lên bếp, cho bơ vào đun cho bơ nóng, cho hành tây cắt nhỏ vào đảo rồi cho thịt bò vào đảo nhanh<br/>Đến khi thịt chín thì cho bí đỏ xay vào đảo thêm khoảng 3 phút<br/>Cho ít nước vào sao cho vừa xâm xấp mặt và nấu thêm 10-15 phút cho súp chín là được.<br/>Nếu bé ăn được gia vị thì mẹ có thể cho thêm ít rau mùi hay hành lá vào cho thơm ngon.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (69, N'Cháo thịt heo bí đỏ', N'/uploads/Food/pic1(5).jpg', N'Đun sôi thịt với nước, sau đó cho bí đỏ vào. Sau khi chín, bạn vớt toàn bộ thịt và bí đỏ ra để nguội.<br/><br/>Nấu cháo theo tỉ lệ 1:5 (1 gạo, 5 nước).<br/><br/>Thịt sau khi nguội bạn xay nhỏ. Bí đỏ nghiền nhuyễn và thêm vào khi cháo gần được. Thêm 1 thìa dầu gấc sau đó tắt bếp.', 100, N'ml', 4, 2, 6, 6, 12, N'Đun sôi thịt với nước, sau đó cho bí đỏ vào. Sau khi chín, bạn vớt toàn bộ thịt và bí đỏ ra để nguội.<br/><br/>Nấu cháo theo tỉ lệ 1:5 (1 gạo, 5 nước).<br/><br/>Thịt sau khi nguội bạn xay nhỏ. Bí đỏ nghiền nhuyễn và thêm vào khi cháo gần được. Thêm 1 thìa dầu gấc sau đó tắt bếp.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (70, N'Cháo thịt bò bông cải xanh', N'/uploads/Food/pic1(6).jpg', N'Hấp sơ súp lơ và thịt bò. Sau khi chờ nguội, xay thịt bò và bông cải xanh thật nhỏ.<br/><br/>Nấu cháo theo tỉ lệ 1:5 (1 gạo, 5 nước). Thêm phần thịt và rau đã xay nhỏ khi cháo gần được.<br/><br/>Thêm 1 thìa dầu oliu sau đó tắt bếp.', 100, N'ml', 4, 2, 7, 4, 10, N'Hấp sơ súp lơ và thịt bò. Sau khi chờ nguội, xay thịt bò và bông cải xanh thật nhỏ.<br/><br/>Nấu cháo theo tỉ lệ 1:5 (1 gạo, 5 nước). Thêm phần thịt và rau đã xay nhỏ khi cháo gần được.<br/><br/>Thêm 1 thìa dầu oliu sau đó tắt bếp.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (71, N'Cháo cá hồi đậu xanh', N'/uploads/Food/pic1(7).jpg', N'Luộc cá khoảng 5-7 phút sau đó với ra.<br/><br/>Gạo và đỗ xanh nấu cháo theo tỉ lệ 1:5 (1 gạo, 5 nước). <br/><br/>Giã nát cá để thêm vào cháo. Tắt bếp, chờ nguội và cho bé thưởng thức.', 100, N'ml', 4, 2, 8, 4, 12, N'Luộc cá khoảng 5-7 phút sau đó với ra.<br/><br/>Gạo và đỗ xanh nấu cháo theo tỉ lệ 1:5 (1 gạo, 5 nước). <br/><br/>Giã nát cá để thêm vào cháo. Tắt bếp, chờ nguội và cho bé thưởng thức.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (72, N'Cháo cá dăm rong biển', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy cá dăm rửa sơ qua với nước để bớt mặn. Sau đó luộc khoảng 5 phút rồi băm nhỏ. <br/><br/>Tiếp theo lấy cho gạo vào nấu cháo. Sau khi cháo chín thì cho rong biển với cá dăm đã luộc vào đun sôi.<br/><br/>Sau khi cháo sôi lên thì tắt bếp lấy cháo ra và cho thêm một ít dầu oliu vào trước khi cho bé ăn bạn nhé.', 100, N'ml', 4, 2, 9, 3, 16, N'Đầu tiên bạn lấy cá dăm rửa sơ qua với nước để bớt mặn. Sau đó luộc khoảng 5 phút rồi băm nhỏ. <br/><br/>Tiếp theo lấy cho gạo vào nấu cháo. Sau khi cháo chín thì cho rong biển với cá dăm đã luộc vào đun sôi.<br/><br/>Sau khi cháo sôi lên thì tắt bếp lấy cháo ra và cho thêm một ít dầu oliu vào trước khi cho bé ăn bạn nhé.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (73, N'Súp đậu hũ, sữa trứng', N'/uploads/Food/pic1(1).jpg', N'Đầu tiên, bạn lấy sữa đổ vào nồi và cho thêm trứng vào sau đó đem đun sôi. Chú ý khi đun không nên để lửa quá lớn mà chỉ cho lửa vừa. Sau khi hỗn hợp sữa trứng sôi lên thì cho thêm bột gạo vào, chú ý cho lượng bột vừa đủ để tạo độ sánh. <br/><br/>Tiếp theo, lấy sốt sữa trứng bột gạo ra chén để nguội. Trong thời gian chờ bạn lấy đậu hũ non xay nhuyễn và cho lên trên. <br/><br/>Với thực đơn dặm cho bé 8 tháng tuổi này mẹ có thể cho bé ăn kèm cùng bánh mì.', 100, N'ml', 4, 2, 7, 4, 14, N'Đầu tiên, bạn lấy sữa đổ vào nồi và cho thêm trứng vào sau đó đem đun sôi. Chú ý khi đun không nên để lửa quá lớn mà chỉ cho lửa vừa. Sau khi hỗn hợp sữa trứng sôi lên thì cho thêm bột gạo vào, chú ý cho lượng bột vừa đủ để tạo độ sánh. <br/><br/>Tiếp theo, lấy sốt sữa trứng bột gạo ra chén để nguội. Trong thời gian chờ bạn lấy đậu hũ non xay nhuyễn và cho lên trên. <br/><br/>Với thực đơn dặm cho bé 8 tháng tuổi này mẹ có thể cho bé ăn kèm cùng bánh mì.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (74, N'Mì ống nấu cà chua', N'/uploads/Food/pic1(2).jpg', N'Với mì ống bạn cần phải đem luộc chín sau đó xả lại với nước lạnh để mi không bị dính vào nhau. <br/><br/>Tiếp theo bạn dùng kéo cắt nhỏ mì để cho bé dễ ăn, dễ nuốt hơn. <br/><br/>Sau đó lấy một chiếc nồi nhỏ cho mì ống vừa cắt vào cho thêm nước 170ml nước dùng vào đun sôi. <br/><br/>Khi sôi lên thì bạn lấy cà chua xay nhuyễn đã chuẩn bị và bột gạo cho vào. Sau đó, nấu sôi thêm 2 phút thì tắt bếp và lấy ra để nguội cho bé ăn.', 100, N'ml', 4, 2, 7, 3, 12, N'Với mì ống bạn cần phải đem luộc chín sau đó xả lại với nước lạnh để mi không bị dính vào nhau. <br/><br/>Tiếp theo bạn dùng kéo cắt nhỏ mì để cho bé dễ ăn, dễ nuốt hơn. <br/><br/>Sau đó lấy một chiếc nồi nhỏ cho mì ống vừa cắt vào cho thêm nước 170ml nước dùng vào đun sôi. <br/><br/>Khi sôi lên thì bạn lấy cà chua xay nhuyễn đã chuẩn bị và bột gạo cho vào. Sau đó, nấu sôi thêm 2 phút thì tắt bếp và lấy ra để nguội cho bé ăn.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (75, N'Cà rốt nấu sữa', N'/uploads/Food/pic1(3).jpg', N'Đầu tiên bạn lấy cà rốt gọt sạch bỏ sau đó cho vào nồi để luộc chín. <br/><br/>Tiếp theo lấy cà rốt nghiền nhỏ, mịn hoặc cho vào máy xay nhuyễn.<br/><br/>Lấy sữa bột pha với lượng nước vừa đủ để tránh quá ngọt và lạt<br/><br/>Tiếp theo, bạn lấy sữa với cà rốt xay nhuyễn trộn đều với nhau rồi bọc kín. Sau đó cho vào lò vi sóng quay lại khoảng 30s. Chú ý tỉ lệ sữa và cà rốt là 1:1 (cứ 1 muỗng sữa, 1 muỗng cà rốt)', 100, N'ml', 4, 2, 9, 4, 14, N'Đầu tiên bạn lấy cà rốt gọt sạch bỏ sau đó cho vào nồi để luộc chín. <br/><br/>Tiếp theo lấy cà rốt nghiền nhỏ, mịn hoặc cho vào máy xay nhuyễn.<br/><br/>Lấy sữa bột pha với lượng nước vừa đủ để tránh quá ngọt và lạt<br/><br/>Tiếp theo, bạn lấy sữa với cà rốt xay nhuyễn trộn đều với nhau rồi bọc kín. Sau đó cho vào lò vi sóng quay lại khoảng 30s. Chú ý tỉ lệ sữa và cà rốt là 1:1 (cứ 1 muỗng sữa, 1 muỗng cà rốt)')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (76, N'Khoai tây nghiền nấu cùng thịt trắng', N'/uploads/Food/pic1(4).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 100, N'ml', 4, 2, 5, 2, 19, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (77, N'Cháo cá ngừ', N'/uploads/Food/pic1(5).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 9, 5, 20, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (78, N'Salad trứng + cháo', N'/uploads/Food/pic1(6).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 8, 6, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (79, N'Cải bó xôi luộc hòa bột mỳ + cháo', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 7, 7, 16, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (80, N'Cháo + Chuối gan gà', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 7, 5, 12, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (81, N'Cháo + Cá hồi luộc xé nhỏ', N'/uploads/Food/pic1(6).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 9, 5, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (82, N'Cháo + Khoai tây trộn cá thịt trắng', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 5, 5, 13, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (83, N'Cháo thịt heo nấm rơm', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 6, 5, 14, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (84, N'Cháo thịt gà nấm hương', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 7, 5, 13, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (85, N'Cháo thịt heo rau cải ngọt', N'/uploads/Food/pic1(1).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 7, 3, 11, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (86, N'Cháo tôm rau dền', N'/uploads/Food/pic1(2).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 10, 4, 11, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (87, N'Cháo cá cà rốt', N'/uploads/Food/pic1(3).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 10, 3, 17, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (88, N'Cháo cá lóc khoai lang', N'/uploads/Food/pic1(4).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 9, 6, 16, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (89, N'Súp thịt bò bí đỏ', N'/uploads/Food/pic1(5).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 5, 6, 16, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (90, N'Cháo thịt heo bí đỏ', N'/uploads/Food/pic1(6).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 6, 6, 12, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (91, N'Cháo thịt bò bông cải xanh', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 8, 5, 11, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (92, N'Cháo cá hồi đậu xanh', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 9, 5, 14, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (93, N'Cháo cá dăm rong biển', N'/uploads/Food/pic1(1).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 10, 4, 17, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (94, N'Súp đậu hũ, sữa trứng', N'/uploads/Food/pic1(2).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 8, 5, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (95, N'Mì ống nấu cà chua', N'/uploads/Food/pic1(3).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 3, 8, 5, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (96, N'Cà rốt nấu sữa', N'/uploads/Food/pic1(4).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 4, 10, 5, 16, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (97, N'Khoai tây nghiền nấu cùng thịt trắng', N'/uploads/Food/pic1(5).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 150, N'ml', 4, 4, 6, 4, 21, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (98, N'Cháo cá lóc khoai lang', N'/uploads/Food/pic1(6).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 9, 6, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (99, N'Súp thịt bò bí đỏ', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 5, 6, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (100, N'Cháo thịt heo bí đỏ', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 7, 7, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (101, N'Cháo thịt bò bông cải xanh', N'/uploads/Food/pic1(6).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 8, 5, 14, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (102, N'Cháo cá hồi đậu xanh', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 9, 5, 13, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (103, N'Cháo cá dăm rong biển', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 10, 4, 17, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (104, N'Súp đậu hũ, sữa trứng', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 8, 5, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (105, N'Mì ống nấu cà chua', N'/uploads/Food/pic1(1).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 8, 5, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (106, N'Cà rốt nấu sữa', N'/uploads/Food/pic1(2).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 10, 6, 18, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (107, N'Khoai tây nghiền nấu cùng thịt trắng', N'/uploads/Food/pic1(3).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 6, 5, 20, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (108, N'Cháo cá ngừ', N'/uploads/Food/pic1(4).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 9, 5, 20, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (109, N'Salad trứng + cháo', N'/uploads/Food/pic1(5).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 8, 6, 15, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (110, N'Cải bó xôi luộc hòa bột mỳ + cháo', N'/uploads/Food/pic1(6).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 8, 8, 18, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (111, N'Cháo + Chuối gan gà', N'/uploads/Food/pic1(7).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 8, 4, 18, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (112, N'Cháo + Cá hồi luộc xé nhỏ', N'/uploads/Food/pic1(8).jpg', N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.', 160, N'ml', 4, 4, 10, 5, 19, N'Đầu tiên bạn lấy khoai tây rửa sạch với nước và nước muối. Sau đó lấy khoai tây cắt đôi và cho vào bọc nilon bọc kín rồi cho vào lò vi sóng quay cho chín. <br/><br/>Sau khi khoai tây chín bạn lấy ra và gọt sạch vỏ rồi cho vào máy nghiền nhỏ. <br/><br/>Tiếp theo lấy thịt gà trộn đều với nước tương và nước dashi rồi cho vào nồi nấu. <br/><br/>Cho thêm hành thái với khoai tây vào nấu cùng cho đến khi sôi đều thì hãy cho bột gạo vào tạo độ sánh cho món ăn. Sau đó tắt bếp và lấy ra chén cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (113, N'Bánh flan sữa mẹ', N'/uploads/Food/pic1(1).jpg', N'Đập vỏ trứng, tách lấy lòng đỏ và đánh tan <br/>Hòa tan sữa mẹ với lòng đỏ trứng, khuấy đều theo chiều kim đồng hồ rồi lọc qua rây 2 lần cho hỗn hợp thật mịn<br/>Lót bên dưới đáy nồi 1 chiếc khăn dày, đặt chén flan vào và đậy nắp lại<br/>Hấp trong 10 phút cho chín<br/>Lấy bánh ra, để nguội và cho bé dùng.<br/>', 90, N'ml', 5, 3, 3, 1, 3, N'Đập vỏ trứng, tách lấy lòng đỏ và đánh tan <br/>Hòa tan sữa mẹ với lòng đỏ trứng, khuấy đều theo chiều kim đồng hồ rồi lọc qua rây 2 lần cho hỗn hợp thật mịn<br/>Lót bên dưới đáy nồi 1 chiếc khăn dày, đặt chén flan vào và đậy nắp lại<br/>Hấp trong 10 phút cho chín<br/>Lấy bánh ra, để nguội và cho bé dùng.<br/>')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (114, N'Bánh táo yến mạch', N'/uploads/Food/pic1(2).jpg', N'Đập vỏ trứng, tách lấy ½ lòng đỏ trứng gà<br/>Gọt vỏ, cắt nhỏ táo rồi xay cùng lòng đỏ trứng, sữa, phô mai và yến mạch<br/>Cho các nguyên liệu trên vào chén và hấp cách thủy trong 15 phút cho chín<br/>Lấy bánh ra, bày ra bát, để ấm và cho bé ăn.', 90, N'ml', 5, 3, 4, 1, 5, N'Đập vỏ trứng, tách lấy ½ lòng đỏ trứng gà<br/>Gọt vỏ, cắt nhỏ táo rồi xay cùng lòng đỏ trứng, sữa, phô mai và yến mạch<br/>Cho các nguyên liệu trên vào chén và hấp cách thủy trong 15 phút cho chín<br/>Lấy bánh ra, bày ra bát, để ấm và cho bé ăn.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (115, N'Pudding bí đỏ', N'/uploads/Food/pic1(3).jpg', N'Gọt bỏ, rửa sạch rồi cắt thành miếng nhỏ<br/>Hấp chín bí đỏ rồi tán nhuyễn<br/>Thêm sữa công thức vào tô bí đỏ rồi đảo đều<br/>Đập vỏ trứng gà rồi cho lòng đỏ vào hỗn hợp trên, trộn đều <br/>Lọc hỗn hợp qua rây cho thật mịn<br/>Cho hỗn hợp pudding vào 2 hũ thủy tinh<br/>Hấp cách thủy pudding trong 20 phút rồi tắt bếp<br/>Lấy pudding ra, để nguội bớt và cho bé dùng.', 90, N'ml', 5, 3, 4, 1, 5, N'Gọt bỏ, rửa sạch rồi cắt thành miếng nhỏ<br/>Hấp chín bí đỏ rồi tán nhuyễn<br/>Thêm sữa công thức vào tô bí đỏ rồi đảo đều<br/>Đập vỏ trứng gà rồi cho lòng đỏ vào hỗn hợp trên, trộn đều <br/>Lọc hỗn hợp qua rây cho thật mịn<br/>Cho hỗn hợp pudding vào 2 hũ thủy tinh<br/>Hấp cách thủy pudding trong 20 phút rồi tắt bếp<br/>Lấy pudding ra, để nguội bớt và cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (116, N'Bánh chuối hạt chia', N'/uploads/Food/pic1(4).jpg', N'Bóc vỏ, dầm nát chuối<br/>Hòa tan bột gạo, bột năng, hạt chia và nước lọc với nhau<br/>Pha nước sôi với hoa đậu biếc để làm màu cho bánh<br/>Rây thật mịn hỗn hợp thu được và cho chuối dầm vào khuấy đều<br/>Bắc nồi nước nấu sôi để hấp bánh<br/>Thoa ít dầu oliu vào khuôn, đổ hỗn hợp vào khuôn<br/>Đặt bánh vào nồi, hấp bánh chín. Mẹ lưu ý dùng khăn phủ lên bánh để tránh hơi nước rơi vào bánh<br/>Khi hấp bánh được 20 phút, mẹ lấy tăm để thử bánh. Bánh chín bánh là không dính tăm<br/>Lấy bánh ra, để nguội và cho bé dùng.', 90, N'ml', 5, 3, 3, 1, 4, N'Bóc vỏ, dầm nát chuối<br/>Hòa tan bột gạo, bột năng, hạt chia và nước lọc với nhau<br/>Pha nước sôi với hoa đậu biếc để làm màu cho bánh<br/>Rây thật mịn hỗn hợp thu được và cho chuối dầm vào khuấy đều<br/>Bắc nồi nước nấu sôi để hấp bánh<br/>Thoa ít dầu oliu vào khuôn, đổ hỗn hợp vào khuôn<br/>Đặt bánh vào nồi, hấp bánh chín. Mẹ lưu ý dùng khăn phủ lên bánh để tránh hơi nước rơi vào bánh<br/>Khi hấp bánh được 20 phút, mẹ lấy tăm để thử bánh. Bánh chín bánh là không dính tăm<br/>Lấy bánh ra, để nguội và cho bé dùng.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (117, N'Bánh khoai tây nhân rau củ', N'/uploads/Food/pic1(5).jpg', N'Sơ chế rau củ và khoai tây<br/>Hấp chín khoai tây và nghiền cho mịn<br/>Băm nhuyễn rau củ rồi cho vào tô lớn<br/>Cho bột gạo, bột mì vào trộn đều. Nặn bột thành từng viên nhỏ để bé dễ ăn<br/>Thêm dầu oliu vào chảo rồi cho bánh vào chiên vàng đều 2 mặt<br/>Vớt bánh ra để lên dĩa có lót giấy thấm dầu<br/>Để bánh nguội bớt là mẹ có thể cho bé ăn rồi.', 90, N'ml', 5, 3, 2, 2, 5, N'Sơ chế rau củ và khoai tây<br/>Hấp chín khoai tây và nghiền cho mịn<br/>Băm nhuyễn rau củ rồi cho vào tô lớn<br/>Cho bột gạo, bột mì vào trộn đều. Nặn bột thành từng viên nhỏ để bé dễ ăn<br/>Thêm dầu oliu vào chảo rồi cho bánh vào chiên vàng đều 2 mặt<br/>Vớt bánh ra để lên dĩa có lót giấy thấm dầu<br/>Để bánh nguội bớt là mẹ có thể cho bé ăn rồi.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (118, N'Sinh tố táo', N'/uploads/Food/pic1(6).jpg', N'Ngâm táo với nước muối pha loãng để loại bỏ chất độc hại<br/>Gọt vỏ, loại bỏ hạt và cắt táo thành miếng nhỏ<br/>Cho táo và sữa công thức vào máy xay cho thật mịn<br/>Đổ sinh tố ra ly và cho bé thưởng thức.', 90, N'ml', 5, 3, 3, 1, 5, N'Ngâm táo với nước muối pha loãng để loại bỏ chất độc hại<br/>Gọt vỏ, loại bỏ hạt và cắt táo thành miếng nhỏ<br/>Cho táo và sữa công thức vào máy xay cho thật mịn<br/>Đổ sinh tố ra ly và cho bé thưởng thức.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (119, N'Sữa chua phô mai', N'/uploads/Food/pic1(7).jpg', N'Đun sữa mẹ đến khoảng 80 độ rồi để nguội xuống 60 độ<br/>Cho phô mai vào đánh tan<br/>Thêm sữa chua dùng làm men vào hỗn hợp sữa phô mai, đảo đều<br/>Lọc hỗn hợp qua rây cho thật mịn<br/>Đổ hỗn hợp trên vào từng hũ nhỏ đậy nắp kín hoặc bọc giấy chuyên dụng. Lưu ý không nên đổ quá đầy sẽ bị tràn sữa ra ngoài.<br/>Xếp các hũ sữa chua vào lòng nồi. Đổ nước ấm sao cho lượng nước cao bằng ⅔ chiều cao hũ. Nếu là ngày lạnh thì mẹ bật chế độ giữ ấm “Keep Warm/ Hâm nóng” lên để ủ tốt hơn.<br/>Ủ sữa khoảng 6 tiếng là có thể cho bé dùng được.', 90, N'ml', 5, 3, 4, 1, 2, N'Đun sữa mẹ đến khoảng 80 độ rồi để nguội xuống 60 độ<br/>Cho phô mai vào đánh tan<br/>Thêm sữa chua dùng làm men vào hỗn hợp sữa phô mai, đảo đều<br/>Lọc hỗn hợp qua rây cho thật mịn<br/>Đổ hỗn hợp trên vào từng hũ nhỏ đậy nắp kín hoặc bọc giấy chuyên dụng. Lưu ý không nên đổ quá đầy sẽ bị tràn sữa ra ngoài.<br/>Xếp các hũ sữa chua vào lòng nồi. Đổ nước ấm sao cho lượng nước cao bằng ⅔ chiều cao hũ. Nếu là ngày lạnh thì mẹ bật chế độ giữ ấm “Keep Warm/ Hâm nóng” lên để ủ tốt hơn.<br/>Ủ sữa khoảng 6 tiếng là có thể cho bé dùng được.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (120, N'Sinh tố táo và việt quất', N'/uploads/Food/pic1(8).jpg', N'Rửa sạch việt quất<br/>Gọt vỏ táo và cắt thành miếng nhỏ<br/>Cho sữa chua, táo và việt quất vào máy xay thật mịn<br/>Đổ sinh tố ra ly và cho bé thưởng thức.', 90, N'ml', 5, 3, 2, 1, 4, N'Rửa sạch việt quất<br/>Gọt vỏ táo và cắt thành miếng nhỏ<br/>Cho sữa chua, táo và việt quất vào máy xay thật mịn<br/>Đổ sinh tố ra ly và cho bé thưởng thức.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (121, N'Bánh khoai lang nhân phô mai', N'/uploads/Food/pic1(6).jpg', N'Gọt vỏ, rửa sạch khoai rồi đem hấp. Khoai chín thì mẹ tán mịn<br/>Đập vỏ trứng gà và cho lòng đỏ vào khoai lang, trộn đều rồi rây thật mịn<br/>Tiếp tục, trộn đều bột cho tới khi bột không dẻo và không dính tay nữa thì ngưng<br/>Chia đều các phần bột để làm vỏ bánh<br/>Dùng tay nặn bột thành miếng mỏng. Cho phô mai vào giữa bánh rồi vo tròn hoặc tạo hình dáng khác nhau để kích thích bé ăn hơn<br/>Làm nóng dầu oliu với lửa nhỏ, cho bánh vào chiên chín vàng đều 2 mặt thì vớt ra<br/>Lần lượt chiên cho hết bột<br/>Bày bánh ra dĩa, để bánh nguội bớt là mẹ có thể cho bé ăn rồi.', 90, N'ml', 5, 3, 3, 2, 3, N'Gọt vỏ, rửa sạch khoai rồi đem hấp. Khoai chín thì mẹ tán mịn<br/>Đập vỏ trứng gà và cho lòng đỏ vào khoai lang, trộn đều rồi rây thật mịn<br/>Tiếp tục, trộn đều bột cho tới khi bột không dẻo và không dính tay nữa thì ngưng<br/>Chia đều các phần bột để làm vỏ bánh<br/>Dùng tay nặn bột thành miếng mỏng. Cho phô mai vào giữa bánh rồi vo tròn hoặc tạo hình dáng khác nhau để kích thích bé ăn hơn<br/>Làm nóng dầu oliu với lửa nhỏ, cho bánh vào chiên chín vàng đều 2 mặt thì vớt ra<br/>Lần lượt chiên cho hết bột<br/>Bày bánh ra dĩa, để bánh nguội bớt là mẹ có thể cho bé ăn rồi.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (122, N'Sữa hạt sen với bí đỏ', N'/uploads/Food/pic1(7).jpg', N'Gọt vỏ, rửa sạch bí đỏ và cắt thành miếng nhỏ<br/>Loại bỏ vỏ và tim sen<br/>Ngâm hạt sen trong nước nóng khoảng 1 giờ cho mềm<br/>Bắc nồi lên bếp cho hạt sen và bí đỏ vào nấu chín<br/>Khi hai nguyên liệu trên mềm, mẹ cho vào máy xay nhuyễn<br/>Lọc hỗn hợp vừa xay bằng khăn vải hoặc rây mịn là có thể cho bé uống.', 90, N'ml', 5, 3, 2, 1, 3, N'Gọt vỏ, rửa sạch bí đỏ và cắt thành miếng nhỏ<br/>Loại bỏ vỏ và tim sen<br/>Ngâm hạt sen trong nước nóng khoảng 1 giờ cho mềm<br/>Bắc nồi lên bếp cho hạt sen và bí đỏ vào nấu chín<br/>Khi hai nguyên liệu trên mềm, mẹ cho vào máy xay nhuyễn<br/>Lọc hỗn hợp vừa xay bằng khăn vải hoặc rây mịn là có thể cho bé uống.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (123, N'Bánh táo đậu gà phô mai', N'/uploads/Food/pic1(7).jpg', N'Ngâm đậu khoảng 8 tiếng cho mềm rồi luộc đậu khoảng 30 phút cho chín<br/>Gọt vỏ táo, rửa sạch và cắt hạt lựu<br/>Cho đậu gà, táo, sữa và phô mai vào xay nhuyễn rồi lọc qua rây cho mịn<br/>Hấp bánh trong 20 phút cho chín, có thể dùng tăm để thử xem bánh chín chưa<br/>Lấy bánh ra, để nguội và cho bánh vào tủ lạnh. Mẹ có thể cho bé dùng lạnh hoặc ấm đều được hết.', 90, N'ml', 5, 3, 2, 1, 4, N'Ngâm đậu khoảng 8 tiếng cho mềm rồi luộc đậu khoảng 30 phút cho chín<br/>Gọt vỏ táo, rửa sạch và cắt hạt lựu<br/>Cho đậu gà, táo, sữa và phô mai vào xay nhuyễn rồi lọc qua rây cho mịn<br/>Hấp bánh trong 20 phút cho chín, có thể dùng tăm để thử xem bánh chín chưa<br/>Lấy bánh ra, để nguội và cho bánh vào tủ lạnh. Mẹ có thể cho bé dùng lạnh hoặc ấm đều được hết.')
GO
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (124, N'Panna cotta xoài', N'/uploads/Food/pic1(8).jpg', N'Làm phần nền Panna: <br/><br/>Cho 2,5g bột rau câu ngâm với 5ml nước để rau câu nở đều<br/>Khi bột rau câu nở ra, mẹ bắc nồi lên bếp, hấp cách thuỷ cho bột rau câu hòa tan hết<br/>Đổ hỗn hợp ra hũ thủy tinh đã chuẩn bị rồi đặt vào ngăn mát tủ lạnh.<br/>Làm phần Cotta xoài: <br/><br/>Ngâm 2,5g bột rau câu còn lại với 5ml nước cho nở ra<br/>Gọt vỏ xoài và ép lấy nước<br/>Khi bột rau câu đã nở, đem hấp cách thuỷ cho tan hết. Thêm xoài ép vào đảo đều<br/>Cho hỗn hợp này vào hũ sữa chua đã đông rồi để tủ lạnh khoảng 2 giờ là cho bé ăn được.', 90, N'ml', 5, 3, 3, 1, 3, N'Làm phần nền Panna: <br/><br/>Cho 2,5g bột rau câu ngâm với 5ml nước để rau câu nở đều<br/>Khi bột rau câu nở ra, mẹ bắc nồi lên bếp, hấp cách thuỷ cho bột rau câu hòa tan hết<br/>Đổ hỗn hợp ra hũ thủy tinh đã chuẩn bị rồi đặt vào ngăn mát tủ lạnh.<br/>Làm phần Cotta xoài: <br/><br/>Ngâm 2,5g bột rau câu còn lại với 5ml nước cho nở ra<br/>Gọt vỏ xoài và ép lấy nước<br/>Khi bột rau câu đã nở, đem hấp cách thuỷ cho tan hết. Thêm xoài ép vào đảo đều<br/>Cho hỗn hợp này vào hũ sữa chua đã đông rồi để tủ lạnh khoảng 2 giờ là cho bé ăn được.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (125, N'Trứng bánh mì', N'/uploads/Food/pic1(1).jpg', N'Đập vỏ trứng rồi tách lấy lòng đỏ trứng gà<br/>Pha sữa với nước ấm rồi cho lòng đỏ trứng gà vào đánh tan<br/>Cắt bỏ viền bánh sandwich rồi xé nhuyễn. Cho phần sữa vừa trộn vào, đảo đều<br/>Bật lò nóng trước 10 phút với 180 độ rồi hấp bánh trong 15 phút cho chín<br/>Rắc hạt chia lên phần bánh rồi hấp thêm 5 phút thì lấy bánh ra<br/>Để nguội và cho bé thưởng thức.', 90, N'ml', 5, 3, 3, 1, 3, N'Đập vỏ trứng rồi tách lấy lòng đỏ trứng gà<br/>Pha sữa với nước ấm rồi cho lòng đỏ trứng gà vào đánh tan<br/>Cắt bỏ viền bánh sandwich rồi xé nhuyễn. Cho phần sữa vừa trộn vào, đảo đều<br/>Bật lò nóng trước 10 phút với 180 độ rồi hấp bánh trong 15 phút cho chín<br/>Rắc hạt chia lên phần bánh rồi hấp thêm 5 phút thì lấy bánh ra<br/>Để nguội và cho bé thưởng thức.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (126, N'Đậu hũ non hạt sen ', N'/uploads/Food/pic1(2).jpg', N'Tách vỏ và loại bỏ tim sen<br/>Ngâm hạt sen với nước cho mềm<br/>Xay hạt sen với nước lọc cho nhuyễn<br/>Lọc hỗn hợp vừa xay với khăn mềm, lấy phần nước bỏ bã<br/>Đun nước hạt sen với lửa nhỏ, đảo đều để hỗn hợp sệt lại <br/>Khi nước sôi thì tắt bếp và đổ ra khuôn<br/>Để đậu hũ nguội và cho vào tủ lạnh<br/>Mẹ có thể ép nước trái cây rồi rưới lên để kích thích vị giác cho bé.', 90, N'ml', 5, 3, 2, 1, 5, N'Tách vỏ và loại bỏ tim sen<br/>Ngâm hạt sen với nước cho mềm<br/>Xay hạt sen với nước lọc cho nhuyễn<br/>Lọc hỗn hợp vừa xay với khăn mềm, lấy phần nước bỏ bã<br/>Đun nước hạt sen với lửa nhỏ, đảo đều để hỗn hợp sệt lại <br/>Khi nước sôi thì tắt bếp và đổ ra khuôn<br/>Để đậu hũ nguội và cho vào tủ lạnh<br/>Mẹ có thể ép nước trái cây rồi rưới lên để kích thích vị giác cho bé.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (127, N'Sinh tố chuối', N'/uploads/Food/Sinhto(3).jpg', N'Chuối mẹ xắt lát, rồi đem trộn đều với pho-mai/sữa chua và nước cam và cho vào máy xay sinh tố xay nhuyễn là có thể cho bé ăn.', 70, N'ml', 6, 3, 2, 0, 5, N'Chuối mẹ xắt lát, rồi đem trộn đều với pho-mai/sữa chua và nước cam và cho vào máy xay sinh tố xay nhuyễn là có thể cho bé ăn.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (128, N'Sinh tố xoài', N'/uploads/Food/Sinhto(2).jpg', N'Xoài mẹ xắt miếng, rồi chọ vào máy xay cùng pho-mai tươi/sữa chua và xay nhuyễn mịn. Đổ hỗn hợp ra cốc và cho bé thưởng thức.', 70, N'ml', 6, 3, 3, 1, 3, N'Xoài mẹ xắt miếng, rồi chọ vào máy xay cùng pho-mai tươi/sữa chua và xay nhuyễn mịn. Đổ hỗn hợp ra cốc và cho bé thưởng thức.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (129, N' Sinh tố bơ và chuối', N'/uploads/Food/Sinhto(1).jpg', N'Chuối và bơ, mẹ bỏ vỏ, rồi cắt miếng. Mẹ cho phần thịt bơ và chuối cho vào máy xay sinh tố xay nhuyễn.<br/><br/>Đổ hỗn hợp ra cốc và cho bé thưởng thức.', 70, N'ml', 6, 3, 3, 1, 2, N'Chuối và bơ, mẹ bỏ vỏ, rồi cắt miếng. Mẹ cho phần thịt bơ và chuối cho vào máy xay sinh tố xay nhuyễn.<br/><br/>Đổ hỗn hợp ra cốc và cho bé thưởng thức.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (130, N'Sinh tố xoài đu đủ', N'/uploads/Food/Sinhto(3).jpg', N'Xoài và đu đủ, mẹ gọt vỏ, rồi xắt thành miếng nhỏ. Chuối bóc vỏ, thái miếng. Rồi cho tất cả vào máy xay sinh tố, xay nhuyễn mịn là được.', 70, N'ml', 6, 3, 3, 1, 3, N'Xoài và đu đủ, mẹ gọt vỏ, rồi xắt thành miếng nhỏ. Chuối bóc vỏ, thái miếng. Rồi cho tất cả vào máy xay sinh tố, xay nhuyễn mịn là được.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (131, N' Sinh tố chuối, cam, bí đỏ', N'/uploads/Food/Sinhto(4).jpg', N'Cam mẹ vắt lấy nước, chuối bóc vỏ, thái lát mỏng, bí đỏ xắt miếng nhỏ hấp chín. Rồi mẹ cho tất cả nguyên liệu vào vào máy xay nhuyễn, sau đó cho ra cốc và để bé thưởng thức món sinh tố cho bé dưới 1 tuổi này!', 70, N'ml', 6, 3, 2, 2, 2, N'Cam mẹ vắt lấy nước, chuối bóc vỏ, thái lát mỏng, bí đỏ xắt miếng nhỏ hấp chín. Rồi mẹ cho tất cả nguyên liệu vào vào máy xay nhuyễn, sau đó cho ra cốc và để bé thưởng thức món sinh tố cho bé dưới 1 tuổi này!')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (132, N'Sinh tố chuối, bơ, và sữa chua', N'/uploads/Food/Sinhto(5).jpg', N'Chuối bóc vỏ, thái mỏng, xay nhuyễn. Bơ đun chảy, sau đó trộn chuối xay và bơ thật kỹ, rồi trộn<br/>lẫn với sữa chua và cho bé ăn ngay sau khi làm.', 70, N'ml', 6, 3, 2, 1, 4, N'Chuối bóc vỏ, thái mỏng, xay nhuyễn. Bơ đun chảy, sau đó trộn chuối xay và bơ thật kỹ, rồi trộn<br/>lẫn với sữa chua và cho bé ăn ngay sau khi làm.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (133, N'Bơ, xoài, sữa chua', N'/uploads/Food/Sinhto(1).jpg', N'Bơ và xoài, bỏ vỏ và hạt, thái miếng nhỏ, nghiền nhuyễn rồi trộn với nhau. Rồi thêm sữa chua (hoặc nước táo hay nước lê) vào hỗn hợp, trộn đều cho đến khi chúng sền sệt như kem.', 70, N'ml', 6, 3, 4, 1, 2, N'Bơ và xoài, bỏ vỏ và hạt, thái miếng nhỏ, nghiền nhuyễn rồi trộn với nhau. Rồi thêm sữa chua (hoặc nước táo hay nước lê) vào hỗn hợp, trộn đều cho đến khi chúng sền sệt như kem.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (134, N'Sinh tố Kiwi chuối', N'/uploads/Food/Sinhto(4).jpg', N'Kiwi, chuối, mẹ bỏ vỏ, rồi cắt miếng. Sau đó cho chuối, kiwi, sữa chua vào máy xay sinh tố và xay đến khi nhuyễn mịn, rồi rót ra cho bé uống.', 70, N'ml', 6, 3, 2, 1, 3, N'Kiwi, chuối, mẹ bỏ vỏ, rồi cắt miếng. Sau đó cho chuối, kiwi, sữa chua vào máy xay sinh tố và xay đến khi nhuyễn mịn, rồi rót ra cho bé uống.')
INSERT [dbo].[Foods] ([Id], [Name], [Thumbnail], [MakingProcess], [Quantity], [Unit], [Id_Category], [Id_BabyAge], [Protein], [Fat], [Glucin], [Recipe]) VALUES (135, N'Sinh tố cà rốt, táo', N'/uploads/Food/Sinhto(5).jpg', N'Táo mẹ gọt vỏ, thái nhỏ, xay nhuyễn, ép lấy nước.<br/><br/>Cà rốt bỏ vỏ, thái mỏng rồi cho vào luộc/hấp chín để nguội. Cho cà rốt vào máy xay sinh tố xay, thêm nước táo, xay đến nhuyễn là có thể rót ra cho bé thưởng thức.', 70, N'ml', 6, 3, 4, 1, 3, N'Táo mẹ gọt vỏ, thái nhỏ, xay nhuyễn, ép lấy nước.<br/><br/>Cà rốt bỏ vỏ, thái mỏng rồi cho vào luộc/hấp chín để nguội. Cho cà rốt vào máy xay sinh tố xay, thêm nước táo, xay đến nhuyễn là có thể rót ra cho bé thưởng thức.')
SET IDENTITY_INSERT [dbo].[Foods] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (4, N'/uploads/04/Anh1.jpg', N'12 quy tắc vàng khi cho trẻ ăn dặm', N'12-quy-tac-vang-khi-cho-tre-an-dam', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2), N'Cho con ăn dặm mà muốn con ăn ngon, tăng cân đều, không biếng ăn hãy tuân thủ 12 nguyên tắc vàng này')
INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (9, N'/uploads/04/Anh2.jpg', N'Sử dụng gia vị cho trẻ ở giai đoạn ăn dặm', N'Su-dung-gia-vi-cho-tre-o-giai-doan-an-dam', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), N'Khi nào thì sử dụng muối hay gia vị vào thức ăn dặm của trẻ, hàm lượng cụ thể như thế nào để đảm bảo sức khỏe cho trẻ… là điều cha mẹ cần nắm rõ.')
INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (12, N'/uploads/04/Anh3.jpg', N'6 loại thực phẩm quen thuộc gây dị ứng phổ biến nhất ở trẻ', N'6-loai-thuc-pham-gay-di-ung-pho-bien', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), N'Các nghiên cứu cho thấy từ 36% đến 44% trẻ em có thể bị ít nhất một lần dị ứng do nhiều tác nhân gây bệnh như thức ăn, phấn hoa, lông thú cưng, nấm mốc hoặc côn trùng, trong đó dị ứng thức ăn là một nguyên nhân khá phổ biến.')
INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (15, N'/uploads/04/Anh4.jpg', N'Các loại thực phẩm nên cho bé ăn để đáp ứng nhu cầu sắt hàng ngày', N'Cac-loai-thuc-pham-dap-ung-nhu-cau-sat', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), N'Sắt là một trong những khoáng chất thiếu yếu đối với con người. Một chế độ ăn uống cân bằng là đủ để đáp ứng nhu cầu sắt hàng ngày.')
INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (17, N'/uploads/04/Anh5.jpg', N'Lưu ý khi chế biến đồ ăn dặm ở trẻ', N'Luu-y-khi-che-bien-do-an-dam-o-tre', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), N'Trẻ sau 6 tháng tuổi cần được ăn bổ sung hay còn gọi ăn dặm. Chế biến đồ ăn bổ sung cho trẻ cần tuân thủ các nguyên tắc dinh dưỡng cơ bản đảm bảo phát triển tốt nhất cho trẻ.')
INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (18, N'/uploads/04/Anh6.jpg', N'Viêm mũi và viêm mũi dị ứng ở trẻ em', N'Viem-mui-va-viem-mui-di-ung-o-tre-em', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), N'Thời tiết thay đổi và lạnh khiến trẻ em rất hay bị các bệnh về đường hô hấp, thường gặp nhất là sổ mũi, hắt hơi, chảy nước mũi tái đi tái lại. Tất cả những dấu hiệu đó là triệu chứng của tình trạng viêm mũi.')
INSERT [dbo].[News] ([Id], [Thumbnail], [Title], [Href_param], [Content], [CreateAt], [UpdateAt], [ShortContent]) VALUES (20, N'/uploads/04/Anh7.jpg', N'Làm gì khi dị ứng thực phẩm?', N'Lam-gi-khi-bi-di-ung', N'<ul class="mb-30">
                                        <li><a href="#1" class="post-idea">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</a></li>
                                        <li><a href="#2" class="post-idea">Không nêm gia vị cho bé dưới 1 tuổi</a></li>
                                        <li><a href="#3" class="post-idea">Ăn từ loãng tới đặc</a></li>
                                        <li><a href="#4" class="post-idea">Bữa ăn kéo dài không quá 30 phút</a></li>
                                        <li><a href="#5" class="post-idea">Ăn từ ít đến nhiều</a></li>
                                        <li><a href="#6" class="post-idea">Không ép trẻ ăn</a></li>
                                        <li><a href="#7" class="post-idea">Khi ăn không đồ chơi, tivi, điện thoại</a></li>
                                        <li><a href="#8" class="post-idea">Khi ăn phải ngồi vào bàn</a></li>
                                        <li><a href="#9" class="post-idea">Không quát tháo, mắng con quá mức</a></li>
                                        <li><a href="#10" class="post-idea">Các bữa ăn không sát nhau</a></li>
                                        <li><a href="#11" class="post-idea">Không cho con ăn vặt</a></li>
                                        <li><a href="#12" class="post-idea">Đổi món cho con thường xuyên</a></li>
                                    </ul>
<img class="br-30 mb-30" src="/Page/img/blog-img/11.jpg" alt="">
<div><h5 id="1">Cho trẻ ăn dặm từ 5.5 - 6m tuổi</h5>



<p>Theo khuyến cáo của Tổ chức Y tế Thế giới (WHO) bé nên được cho ăn dặm từ khi được 5,5m - 6m, lý do là bởi lúc này hệ tiêu hóa của bé lúc này mới phát triển tương đối hoàn chỉnh để có thể hấpp thu những thực phẩm khắc ngoài sữa mẹ.</p>

<p>Việc cho bé ăn dặm khi nhỏ hơn 4 tháng có thể gây ra nhiều vấn đề như giảm lượng sữa mẹ, làm bé giảm sức đề kháng, tăng nguy cơ suy dinhh dưỡngg và ảnh hưởng nghiiêm trọg đến quá trình phát triển.</p>

<p>Bên cạnh đó bé cũng bị tăng nguy cơ mắc bệnhh béo phì vì quen ăn nhiều hay được bồi bổ quá mức. Việc cho ăn dặm quá sớm cũng khiến bé dễ bị dị ứng thực phẩm do hệ tiiêu hóaa vẫn chưa hoàn thiện, đặc biệt là những bé có ccơ địa nhạy cảm. Thậnn và dạa dàyy của bé sẽ dễ bị tổnn thươngg do phải hoạt động quá mức trong khi lại chưa phát triển hoàn thiện.</p>

<h5 id="2">Không nêm gia vị cho bé dưới 1 tuổi</h5>



<p>Trẻ dưới 1 tuổi vẫn đang trong quá trình hình thành đầy đủ và hoàn thiện dần các chức năng của từng bộ phận trên cơ thể, đặc biệt là thậnn. Nếu mẹ nêm gia vị vào bột ăn dặm, thậnn của bé có thể sẽ bị tổnn thươngg do làm việc quá tải.</p>

<h5 id="3">Ăn từ loãng tới đặc</h5>



<p>Từ lỏng đến đặc: Tương tự dạa dàyy bé từ trước đến nay chỉ quen hấp thụ sữa vì vậy nếu cho ăn đặc ngay sẽ khiến bé không kịp thích nghi. Hãyy cho bé ăn lỏng trước sau đó tăng dần độ đặc.</p>

<p>Bé 5,5 – 6 tháng: Cho bé ăn cháo loãng với củ quả xayy nhuyễn, rây mịn, tỷ lệ 1 gạo, 10 nước</p>

<p>Bé 7 – 9 tháng: Bé ăn được cháo đặc, lổn nhổn hơn, có thịt cá và rau củ băm nhỏ</p>

<p>Bé 10 – 12 tháng tuổi: Có thể ăn được cơm nát với thịt cá, rau củ tháii nhỏ</p>

<p>Bé trên 1 tuổi: Bé ăn được tất cả thức ăn cùng cả nhà</p>

<h5 id="4">Bữa ăn kéo dài không quá 30 phút</h5>



<p>Có những nhà để con ăn cả 1 tiếng, 2 tiếng đồng hồ mới xong chén cơm. Tuy nhiên các chuyên gia khuyến cáo mỗi bữa ăn của trẻ không nên quá 30'' và bạn chỉ nên mời bé ăn 1 món 3 lần. Hết thời hạn này các bạn cất đồ đi và để bé ăn vào bữa sau (Có thể bỏ cả bữa phụ vì bữa phụ thường là đồ ngọt, hoa quả nhiều đường. Nhiều bạn thấy con không ăn bữa chính lại cho con ăn bữa phụ nhiều lên, rồi bé no và lại bỏ bữa chính. Việc này vô tình tạo thành thói quen xấu cho trẻ)"   </p>

<h5 id="5">Ăn từ ít đến nhiều</h5>



<p>Nhiều mẹ muốn con tăng cânn nhanh, mau lớn nên cố gắng cho bé ăn dặm càng nhiều càng tốt tuy nhiên điều này hoàn toàn sai lầm. Bé cần được ăn 1 cách khoa học hợp lý và quan trọng là cần ăn từ ít đến nhiều để giúp cho bộ máy tiiêu hóaa còn non nớt của bé không bị quá tải cũng như khả năng hấpp thu chất dinhh dưỡngg được tốt hơn.</p>

<p>Lúc đầu mẹ có thể cho bé làm quen bằng 1 đến 2 thìa bột loãng, sau đó tăng lên 1/3 bát nhỏ, rồi đến nửa bát… Việc này sẽ giúp bé có thời gian thích nghi và hấp thụ tốt nhất.   </p>

<h5 id="6">Không ép trẻ ăn</h5>



<p>Việc ăn dặm phải trên sự tự nguyện của bé đây là nguyên tắc ăn dặm đúng cách mà mẹ cần lưu ý. Khi mới làm quen một thực phẩm mới, nếu bé đã "tỏ thái độ" không muốn ăn, mẹ không nên ép bé ăn mà thay vào đó có thể cho bé búu nhiều hơn và sau đó có thể tập làm quen lại từ từ. Việc bị épp ăn sẽ khiến bé hình thành tâm lý tiêu cực với ăn uống, làm bé sợ hãii việc ăn dặm.. Đây chính là một trong những nguyên nhân chủ yếu khiến bé biếngg ăn nên mẹ hãy thật lưu ý nhé."    </p>

<h5 id="7">Khi ăn không đồ chơi, tivi, điện thoại</h5>



<p>Cho trẻ nghịch đồ chơi và xem Tivi khi đang ăn có thể ảnh hưởng đến tiêu hóa của trẻ. Trẻ ăn nhiều hơn, nhưng không hề tập trung vào việc ăn, mà chỉ tiếp nhận thức ăn một cách thụ động.Lúc này, hệ tiiêu hóaa sẽ không tiết enzymm ăn ngon hiệu quả. Vì quá tập trung vào màn hình hay đồ chơi, nên bé không hề cảm nhận được mùi, được vị.      </p>

<h5 id="8">Khi ăn phải ngồi vào bàn</h5>



<p>Thay vì để bé ăn rong, ăn bế, hãy cho bé dùng ghế tập ăn dặm để thiết lập thói quen ăn uống khoa học, lành mạnh cho bé. Cho bé ngồi vào ghế ăn dặm cùng cả gia đình và bày đồ ăn trước mặt bé, để bé được lựa chọn và ăn món mình thích.       </p>

<h5 id="9">Không quát tháo, mắng con quá mức</h5>



<p>Những câu nói thường nghe trong bữa ăn của những gia đình có trẻ nhỏ: "Có há mồm ra không thì bảo!", "Nuốt nhanh không cô kia cô ý bắtt bây giờ" hay "Con nuốt hết rồi à, giỏi quá".</p>

<p>Đây đều là biểu hiện của việc trách mắng hoặc khen ngợi con quá mức trong giờ ăn. Cách épp ăn này khiến bé hình thành thói quen ăn chống đối hoặc phải dỗ dành con mới chịu ăn. Tốt nhất các bạn hãy tỏ ra bình thường dù bé ăn hay không.    </p>

<h5 id="10">Các bữa ăn không sát nhau</h5>



<p>Các bé ăn dặm cần khoảng 4 – 5 tiếng để tiêu hóa hết bữa chính nên chúng ta cần sắp xếp khoảng cách giữa các bữa chính của bé cho phù hợp với việc tiêuu hóaa. Các bữa phụ có thể để cách bữa chính khoảng 2 tiếng.</p>

<p>VD: Cho bé ăn cháo từ 6h sáng, 8h ăn sữa chua, 10h-11h ăn bữa cháo tiếp theo "    </p>

<h5 id="11">Không cho con ăn vặt</h5>



<p>Khi bé ăn vặt vào bữa xế quá nhiều sẽ dẫn đến tình trạng no căng bụng trong bữa chính và trẻ sẽ bỏ bữa. Các món ăn vặt thường tiềm tàng nhiều nguy hại sức khỏe tiềm ẩn, ví dụ như món ăn vặt phổ biến mà bé thích là bánh kẹo, snack, khoai tây chiên... Những món ăn này nhiều chấtt tạo ngọt nhân tạo, nhiều dầu mỡ và tinh bột, sẽ gây hại về thể chất và trí não của bé. Nếu như ăn quá nhiều sẽ gây sâu răng, rối loạn tiêu hoá, táo bón, béo phì, loãng xương và các vấn đề về tim mạch.</p>

<h5 id="12"> Đổi món cho con thường xuyên</h5>



<p>Cũng như người lớn, trẻ nhỏ không thích ăn đi ăn lại 1 món trong thời gian dài. Việc đa dạng thực đơn sẽ khiến trẻ có hứng thú với bữa ăn hơn và ăn ngon miệng hơn.</p>

<p>Bạn có thể thiết lập cho bé thực đơn hàng tuần với nhiều món khác nhau, nhưng cần đảm bảo đầy đủ 4 nhóm chấtt: tinhh bột (gạo, khoai tây,…), đạmm (gà, heo nạc, bò,…), chất béo (các loại dầu thực vật), vtm (rau bina, cải xoăn, hồng xiêm, chuối,…) </p>

<p><i>Tác giả: Thạc sĩ Dược sĩ Trương Minh Đạt - Giám đốc trung tâm sức khỏe nhi khoa Cenica<i></i></i></p><i><i>
</i></i></div>
', CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2), N' Làm thế nào để nhận biết thực phẩm nào gây dị ứng? Nếu bị dị ứng thực phẩm, cần phải xử trí thế nào, thưa bác sĩ?')
SET IDENTITY_INSERT [dbo].[News] OFF
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[BabyAge] ADD  DEFAULT (CONVERT([real],(0))) FOR [WeightF]
GO
ALTER TABLE [dbo].[BabyAge] ADD  DEFAULT (CONVERT([real],(0))) FOR [WeightG]
GO
ALTER TABLE [dbo].[BabyAge] ADD  DEFAULT (CONVERT([real],(0))) FOR [WeightP]
GO
ALTER TABLE [dbo].[Foods] ADD  DEFAULT (CONVERT([real],(0))) FOR [Protein]
GO
ALTER TABLE [dbo].[Foods] ADD  DEFAULT (CONVERT([real],(0))) FOR [Fat]
GO
ALTER TABLE [dbo].[Foods] ADD  DEFAULT (CONVERT([real],(0))) FOR [Glucin]
GO
ALTER TABLE [dbo].[Foods] ADD  DEFAULT (N'') FOR [Recipe]
GO
ALTER TABLE [dbo].[Ingredient] ADD  DEFAULT (N'') FOR [Img]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Foods] FOREIGN KEY([Id_Food])
REFERENCES [dbo].[Foods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comment_Foods]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([Id_User])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Food_Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_Food_Ingredients_Foods_Id_Food] FOREIGN KEY([Id_Food])
REFERENCES [dbo].[Foods] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Food_Ingredients] CHECK CONSTRAINT [FK_Food_Ingredients_Foods_Id_Food]
GO
ALTER TABLE [dbo].[Food_Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_Food_Ingredients_Ingredient_Id_Ingredient] FOREIGN KEY([Id_Ingredient])
REFERENCES [dbo].[Ingredient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Food_Ingredients] CHECK CONSTRAINT [FK_Food_Ingredients_Ingredient_Id_Ingredient]
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD  CONSTRAINT [FK_Foods_BabyAge] FOREIGN KEY([Id_BabyAge])
REFERENCES [dbo].[BabyAge] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Foods] CHECK CONSTRAINT [FK_Foods_BabyAge]
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD  CONSTRAINT [FK_Foods_Category] FOREIGN KEY([Id_Category])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Foods] CHECK CONSTRAINT [FK_Foods_Category]
GO
