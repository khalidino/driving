USE [DRIVING_SCHOOL_MANAGEMENT_SYSTEM]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ATTENDENCE]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATTENDENCE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[STID] [int] NULL,
	[DATES] [date] NULL,
	[TIME_IN] [time](7) NULL,
	[TIME_OUT] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CAR_DETAIL]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAR_DETAIL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CARNAME] [varchar](100) NOT NULL,
	[CARMODEL] [varchar](100) NOT NULL,
	[CARGEAR] [varchar](100) NOT NULL,
	[ENGINE_CC] [varchar](100) NOT NULL,
	[INSTRUCTOR_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONTACT]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTACT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[TELEPHONE] [int] NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[SUBJECTS] [varchar](100) NOT NULL,
	[MESSAAGE] [varchar](100) NOT NULL,
	[CURRENTTIME] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DURATION]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DURATION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DurationTime] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FULLNAME] [varchar](200) NOT NULL,
	[Telephone] [int] NULL,
	[ADDRES] [varchar](200) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[SALARY] [decimal](5, 2) NOT NULL,
	[DOB] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INSTRUCTOR]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INSTRUCTOR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FULLNAME] [varchar](100) NOT NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[ADDRES] [varchar](100) NOT NULL,
	[TELEPHONE] [int] NULL,
	[LISENCES] [varchar](100) NOT NULL,
	[GENDER] [varchar](100) NOT NULL,
	[EDUCATIONAL_LEVEL] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NEWS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [varchar](100) NOT NULL,
	[BODY] [varchar](max) NOT NULL,
	[picture] [image] NULL,
	[PostTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FULLNAME] [varchar](100) NOT NULL,
	[TELEPHONE] [int] NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[SERVICE_DRIVER] [varchar](100) NOT NULL,
	[MESSAAGE] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHIFTS]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHIFTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WhichShift] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 1/5/2021 11:56:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](200) NOT NULL,
	[LastName] [varchar](200) NOT NULL,
	[Addres] [varchar](200) NOT NULL,
	[Telephone] [int] NULL,
	[Email] [varchar](100) NULL,
	[gender] [varchar](7) NOT NULL,
	[Duration_ID] [int] NULL,
	[SHIFT_ID] [int] NULL,
	[CAR_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202012211000077_InitialCreate', N'Driving_School_Management_System.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC16A993B4413717ACB345DF025AA21D61254A95A86C82A25FD6877E527FA143DDC58B44D9F225C5020B4B24CF0C8787E47034CCBF7FFF33FEF1D9F78C271CC56E4026E6D1E8D03430B103C725CB8999D0C5B7EFCC1F7FF8F28BF185E33F1BBF15F54E583D6849E289F94869786A59B1FD887D148F7CD78E823858D0911DF8167202EBF8F0F07BEBE8C8C200610296618C3F2484BA3E4E1FE0711A101B873441DE75E0602FCEDF43C92C45356E908FE310D978629E47EE1328F7002541E03D5C238296D8C7843ECC5E628AFD5106611A679E8B40BD19F616A681080928A2A0FCE9C718CF681490E52C8417C8BB7F0931D45B202FC679A74EABEABAFD3B3C66FDB3AA8605949DC434F07B021E9DE406B3F8E62B99DD2C0D0A26BD00D3D317D6EBD4AC13F3CAC1E9AB0F810706E0059E4EBD88559E98D7A588B338BCC17454341C65909711C07D0EA24FA33AE281A1DDEEA024D8F1E890FD3B30A6894793084F084E6884BC03E32E997BAEFD2B7EB90F3E613239399A2F4EDEBD798B9C93B7DFE19337F59E425FA15EE305BCBA8B821047A01B5E94FD370DABD9CEE21B96CD6A6D32AB0097808EA6718D9EDF63B2A48F308B8EDF99C6A5FB8C9DE24D4EAE8FC485A9058D6894C0E34DE27968EEE1B2DC6A95C9FE6F917AFCE6ED20526FD093BB4C879E930F13278279F5017B6969FCE886D9F46A8CF7435EED320A7CF6DCE45756FA300B92C8669D099455EE51B4C4B4A9DDD8AAC8AB456906353CAD0BD4FDA736D354A4B7B42AEBD02A33A110B1EDD950E8BB59B9DA8C3B0B4318BC945ACC226D84D3DCC1461CE481D1D5B022D9912EC90874FEFFBC665EF8C8F506583435A48013B370231F97BDFC09060923D25BE73B14C7B06638BFA0F8B14575F83980EA336C2711507946911F6E5CDADD6340F04DE2CFD90CD99EACC186E6FE7370896C1A441784B55A1BEF7D607F0A127A419C7344F1476A1780ECF1DEF5F5010651E7CCB6711C5F0299B1330DC0472F00AF083D39EE0DC756AD5D3B2D530FB9BEDC6BE1D6D787A26AE5B9C86B08DE8BA29ACC836953F57DB074899EAA4555B5AA598D4E55F36A7D5565607A9AE635D58AA6153AF5CC6A0DE613A62334BC5398C2EEBF57B8DEE6AD5A0B6A669CC10A897FC60447B08C397788521C916A0474D68D5D380BE9F031A11BDF9B5249BF212F195AD44AB3215D04869F0D29ECFECF86544D78FDE43ACC2BD1382A1595015EABBEFC14D63DE738CDB63D1D1ADDDCB6F0EDAC01AAE97216C781EDA6B3401224CB431C4DFDC18733BAE31D596FF89809740C88EEB22D0FDE40DF4C9E54B7E41C7B9862E3CCCE82885314DBC811CD081D727A2856ECA812C5AAD84953B96F0499C0741CB146881D826298A92EA1E2B47089ED86C8EBB412D752730B637D2F65F025E738C48409ECB4848E7079A8842950CAE106A5CB4263ABC6B876222ABC56D59877B9B0D5B80B118CAD70B2C37756F032F7DF3642CC768B6D819CED26D1514019F6DB0541F3B38A2E01F883CBBE11943B3129089ABB545B2168D3623B2068D324AF8EA0D9115577FCB9F3EABED1B37950DEFEB6DE6AAE1D70B3618F3DA366E67B421B0A2D7024D2F37CCE0AF133951CCE40CFFC7C16E7AE2E4F11063EC3B419B2A9FC5DA91F6AB583F0246A03AC88D6019A7F3014808409D543B92296D7AA5DEE45F4802DE26EADB0F9DACFC1D6382062D73F9CD62AAA3FAFF2E4D43A7D943D2BD920905CEBB050C39110825FBC9A1DD7308A2A2E2B1A46C717EEE30DD73A960F468B813A3C5785918ACE0C6EA5829ADD569239647D5CB2B5ACC4B94F0A2B159D19DC4A3947BB8D24710A7AB8056B99A8B9850F34D98A4847B9DB9465632B4BB2CA5F8C2D4536D6F81A85A14B96B5ECACFC8D31CB52B3A6DFCEFAA727F9198665C7922CA552DB52120D22B4C45C2988064D2FDD28A6E788A23962719EA9E30BD5A47BAB62F92F44D6B74F71108B7DA0A8CD7E672D743FF3373660D143C9812FA1DBAC716A012C2185BCB9C152E890872249387F1A78894FD45E97BA75F651AFDE3E7B23228C2D4E7FC1AB124C28F8BECDF1D01A2D71A66C72E44A4F67F5D15343A8C6A0F053EBA3A0F25DD5284528AB8EA20A6FED6C34552ECFFA23C8BB98FD07B01361333330CF6BA903E4AF7A62D4522304B05A993E6A337BA58ED92CD147E45254EA905C510F2DEB89280D25EB052BE1292C2AAFA12F414C3DA9A38BA5FAC89224943AB4A478056C89CE7C993EAA244FA50E2C29D6C7AE9256F895758FF738E5C167D84D2E3B30AFB7CB293036B34C0EB349D6F202EA40B5D73DB1F22FFF0258FE7E2F29A63C350E4BB12C78B21EC51418EA35AAF199BDB944B5E606A8311BDFCE1BDB405BEE801AAF1F91374A17E124C95729A597274AEEE438CE4F71DD977D84635D56C5340A33820B9051895518CDFEF0A69E8BD9825F5400D2B90B1CD32C5FC43C3E3C3AE6AE06EDCF351D2B8E1D4F720A56DDD5698ED91652BFC8138AEC47148989186B5C65A9408518F71571F0F3C4FC336D759A864BD8AFF4F58171157F24EE1F0914DC470936FE12134B8749EDD7B84C522AFAD7ABB8A5A16FF2ABDF1FB2A607C66D04D3E9D438E40CBDCAF037EF6EF4D2266BBA86362BDFE878BDB3AD7109428ACACD96D5EF3CCC5D3AC87D8742CBAF7CF4FC755FD5A4771AD64294DC5B180A6F1013AAEE25AC82A5BC93E0C0234DEF24F4EBACFC8EC22AAA29EF27B8A43F187F3B417F192A5AEE701F929CA2B6B124A576EECCEE5E2BD573D77B939004BED6441713BD7BC00D9ACCBD9E8BF2CA92A407DB3A2539D08361EF92F71B4F7CDE975CE7CA69DF6D8AF336B39A5BBE47FDAF9299F720FD4E924EB4FB94E56D734D1516DEF3BCCF7E89C97B46B67C9BDF7DFAF1B6C9A60A10EF39D97A2519EF19D776B57FEE9869DA5BE8CE5386C5EC27C5E71D5914B92B25380BB9C3F17F1E0009328F32BBC929CF415309ABC8A2145855510B5527BFF182858923C8156AB48BEDD7D77CC36FED6C5EA75DAC2265B44D76BEFEB7CACEEBB4CB562462EE2299599A0A294B30EF58C7DAB2AF5E53F272A3271DB9F25D3E6BEBB7FAD794AB3C88511AB347F175F9F5A4260F629221A74E8F5464F14331EC9DB5BF1D09FB77EC2E2B08F6972409B61BBB6659E78A2C8262F3E6342AAA70119A6B4C91035BEA5944DD05B22914B300747A153D0DEAB1CF2073EC5C91DB848609852E637FEE35025ECC0968939FE65B37751EDF86EC291EA20BA0A6CB02F7B7E4A7C4F59C52EF4B494C4801C1BC8B3CDCCBC692B2B0EFF2A544BA098826506EBED229BAC77EE801587C4B66E809AFA21BD0EF3D5E22FBA58A00AA40BA07A269F6F1B98B9611F2E31CA36A0F8FC061C77FFEE13FE91E3D9D42550000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2f0dd73e-4e1b-497e-ad38-13b77addc48c', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'790fa995-65d7-4c24-bea1-94587174f7cb', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a58a028e-27da-422f-b488-7689eca6fe3e', N'2f0dd73e-4e1b-497e-ad38-13b77addc48c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b19a0b8c-9bfa-40cd-8229-c3a702607f8d', N'790fa995-65d7-4c24-bea1-94587174f7cb')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a58a028e-27da-422f-b488-7689eca6fe3e', N'kamaalxuuto990@gmail.com', 0, N'AKkHRvr82ePNRC1xqTIEl6jUtJZM5X+gDGf1FFrkHXJL22KQ1PjZ+2UetQP+RDHbbQ==', N'e0429eb4-1bba-4677-ba21-4e0f88763b2d', NULL, 0, 0, NULL, 1, 0, N'kamaalxuuto990@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b19a0b8c-9bfa-40cd-8229-c3a702607f8d', N'khaliditman@gmail.com', 0, N'ABaZft3GuJeTlz6xsNdp50naHSZb/mS1JAd9jYJaAtd6deayBaXx5iz3Eu87wIj0Bg==', N'4dd02955-43e7-4351-aed9-e9152db0b31e', NULL, 0, 0, NULL, 1, 0, N'khaliditman@gmail.com')
SET IDENTITY_INSERT [dbo].[ATTENDENCE] ON 

INSERT [dbo].[ATTENDENCE] ([ID], [STID], [DATES], [TIME_IN], [TIME_OUT]) VALUES (2, 4, CAST(N'2020-12-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
INSERT [dbo].[ATTENDENCE] ([ID], [STID], [DATES], [TIME_IN], [TIME_OUT]) VALUES (3, 5, CAST(N'2020-12-23' AS Date), CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[ATTENDENCE] OFF
SET IDENTITY_INSERT [dbo].[CAR_DETAIL] ON 

INSERT [dbo].[CAR_DETAIL] ([ID], [CARNAME], [CARMODEL], [CARGEAR], [ENGINE_CC], [INSTRUCTOR_ID]) VALUES (1, N'Crown', N'2004 Model Car', N'Manual', N'cc2004 Engine', 2)
INSERT [dbo].[CAR_DETAIL] ([ID], [CARNAME], [CARMODEL], [CARGEAR], [ENGINE_CC], [INSTRUCTOR_ID]) VALUES (2, N'Vits', N'vits00', N'Automatic', N'2008 CC Engine', 2)
SET IDENTITY_INSERT [dbo].[CAR_DETAIL] OFF
SET IDENTITY_INSERT [dbo].[CONTACT] ON 

INSERT [dbo].[CONTACT] ([ID], [NAME], [TELEPHONE], [EMAIL], [SUBJECTS], [MESSAAGE], [CURRENTTIME]) VALUES (1, N'khalid', 634377778, N'khaliditman@gmail.com', N'Hello Matter', N'somaliland Guul inshalah', NULL)
INSERT [dbo].[CONTACT] ([ID], [NAME], [TELEPHONE], [EMAIL], [SUBJECTS], [MESSAAGE], [CURRENTTIME]) VALUES (2, N'Khalidino hussein', 634377778, N'kamaalxuuto@gmail.com', N'Hello Matter', N'somaliland Guul inshalah', NULL)
SET IDENTITY_INSERT [dbo].[CONTACT] OFF
SET IDENTITY_INSERT [dbo].[DURATION] ON 

INSERT [dbo].[DURATION] ([ID], [DurationTime]) VALUES (3, N'30 Days')
INSERT [dbo].[DURATION] ([ID], [DurationTime]) VALUES (4, N'15 Days')
INSERT [dbo].[DURATION] ([ID], [DurationTime]) VALUES (5, N'7 Days')
SET IDENTITY_INSERT [dbo].[DURATION] OFF
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([ID], [FULLNAME], [Telephone], [ADDRES], [Gender], [SALARY], [DOB]) VALUES (1, N'Salmaan Maadow', 634156889, N'jigjiga yar', N'Male', CAST(200.00 AS Decimal(5, 2)), CAST(N'1998-05-05' AS Date))
INSERT [dbo].[employee] ([ID], [FULLNAME], [Telephone], [ADDRES], [Gender], [SALARY], [DOB]) VALUES (2, N'ciise yousuf dheere', 633003001, N'xaarka', N'Male', CAST(180.00 AS Decimal(5, 2)), CAST(N'1993-02-02' AS Date))
SET IDENTITY_INSERT [dbo].[employee] OFF
SET IDENTITY_INSERT [dbo].[INSTRUCTOR] ON 

INSERT [dbo].[INSTRUCTOR] ([ID], [FULLNAME], [EMAIL], [ADDRES], [TELEPHONE], [LISENCES], [GENDER], [EDUCATIONAL_LEVEL]) VALUES (1, N'Cabdiraxmaan Jaamac Faarax', N'cabdi101@gmail.com', N'150 Streat', 634105254, N'Yes', N'Male', N'Secondary')
INSERT [dbo].[INSTRUCTOR] ([ID], [FULLNAME], [EMAIL], [ADDRES], [TELEPHONE], [LISENCES], [GENDER], [EDUCATIONAL_LEVEL]) VALUES (2, N'Omer ', N'Mohamoud@gmail.com', N'xero awr', 634830000, N'no', N'Male', N'Degree')
SET IDENTITY_INSERT [dbo].[INSTRUCTOR] OFF
SET IDENTITY_INSERT [dbo].[SHIFTS] ON 

INSERT [dbo].[SHIFTS] ([ID], [WhichShift]) VALUES (3, N'Morning')
INSERT [dbo].[SHIFTS] ([ID], [WhichShift]) VALUES (4, N'Afternoon')
INSERT [dbo].[SHIFTS] ([ID], [WhichShift]) VALUES (5, N'Evening')
SET IDENTITY_INSERT [dbo].[SHIFTS] OFF
SET IDENTITY_INSERT [dbo].[STUDENTS] ON 

INSERT [dbo].[STUDENTS] ([ID], [FirstName], [LastName], [Addres], [Telephone], [Email], [gender], [Duration_ID], [SHIFT_ID], [CAR_ID]) VALUES (4, N'Khalid', N'Hussein', N'jigjiga yar', 634377778, N'khaliditman@gmail.com', N'Male', 3, 3, 1)
INSERT [dbo].[STUDENTS] ([ID], [FirstName], [LastName], [Addres], [Telephone], [Email], [gender], [Duration_ID], [SHIFT_ID], [CAR_ID]) VALUES (5, N'Mohamud', N'Maxamed', N'Cabaaye', 634729042, N'kamaalxuuto990@gmail.com', N'Male', 4, 4, 1)
INSERT [dbo].[STUDENTS] ([ID], [FirstName], [LastName], [Addres], [Telephone], [Email], [gender], [Duration_ID], [SHIFT_ID], [CAR_ID]) VALUES (6, N'Salman Fariz', N'Ugaas', N'Pepsi', 634156889, N'salman1202@gmail.com', N'Male', 4, 4, 2)
SET IDENTITY_INSERT [dbo].[STUDENTS] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ATTENDENCE]  WITH CHECK ADD FOREIGN KEY([STID])
REFERENCES [dbo].[STUDENTS] ([ID])
GO
ALTER TABLE [dbo].[CAR_DETAIL]  WITH CHECK ADD FOREIGN KEY([INSTRUCTOR_ID])
REFERENCES [dbo].[INSTRUCTOR] ([ID])
GO
ALTER TABLE [dbo].[STUDENTS]  WITH CHECK ADD FOREIGN KEY([CAR_ID])
REFERENCES [dbo].[CAR_DETAIL] ([ID])
GO
ALTER TABLE [dbo].[STUDENTS]  WITH CHECK ADD FOREIGN KEY([Duration_ID])
REFERENCES [dbo].[DURATION] ([ID])
GO
ALTER TABLE [dbo].[STUDENTS]  WITH CHECK ADD FOREIGN KEY([SHIFT_ID])
REFERENCES [dbo].[SHIFTS] ([ID])
GO
