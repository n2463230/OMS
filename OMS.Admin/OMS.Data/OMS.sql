/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_A__C93A4C98014935CB] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__17477DE40425A276] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__3091033107020F21] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationId], [ApplicationName], [LoweredApplicationName], [Description]) VALUES (N'8b97134a-1981-44cd-9090-f2413634cd79', N'OMS', N'oms', N'Online Medical Store')
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[RoleId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_R__8AFACE1B36B12243] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([RoleId], [ApplicationId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'98fca431-b50b-4d2f-8323-d20d8ba6a9d2', N'8b97134a-1981-44cd-9090-f2413634cd79', N'Admin', N'admin', N'administrator')
INSERT [dbo].[aspnet_Roles] ([RoleId], [ApplicationId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'53b30e7e-2b49-405a-a0c7-e18634bef53c', N'8b97134a-1981-44cd-9090-f2413634cd79', N'Purchaser', N'purchaser', N'Purchaser')
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D0BC6C43E] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([UserId], [ApplicationId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'4301c83e-cccc-4e36-92fb-b9f247834303', N'8b97134a-1981-44cd-9090-f2413634cd79', N'namrata', N'namrata', NULL, 0, CAST(0x0000A26100505D19 AS DateTime))
/****** Object:  Table [dbo].[Medicine]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [nvarchar](max) NULL,
	[GenericName] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedAt] [datetime] NOT NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[UpdatedAt] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsPrescriptionRequired] [bit] NOT NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Medicine] ON
INSERT [dbo].[Medicine] ([Id], [MedicineName], [GenericName], [CompanyName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [IsDeleted], [IsPrescriptionRequired]) VALUES (1, N'Crocin', N'Crocin', N'Jhonsons', N'4301c83e-cccc-4e36-92fb-b9f247834303', CAST(0x0000A260011D1C0B AS DateTime), NULL, NULL, 0, 1)
INSERT [dbo].[Medicine] ([Id], [MedicineName], [GenericName], [CompanyName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [IsDeleted], [IsPrescriptionRequired]) VALUES (2, N'Paracetamol', N'Jhonshons', NULL, N'4301c83e-cccc-4e36-92fb-b9f247834303', CAST(0x0000A260011D1C0B AS DateTime), NULL, NULL, 0, 1)
INSERT [dbo].[Medicine] ([Id], [MedicineName], [GenericName], [CompanyName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [IsDeleted], [IsPrescriptionRequired]) VALUES (3, N'Vicks', NULL, N'Cadilla', N'4301c83e-cccc-4e36-92fb-b9f247834303', CAST(0x0000A260011D1C0B AS DateTime), NULL, NULL, 0, 1)
INSERT [dbo].[Medicine] ([Id], [MedicineName], [GenericName], [CompanyName], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [IsDeleted], [IsPrescriptionRequired]) VALUES (4, N'Pudin hara', N'Pudin', N'Zydus', N'4301c83e-cccc-4e36-92fb-b9f247834303', CAST(0x0000A260011D1C0B AS DateTime), NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[Medicine] OFF
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'4301c83e-cccc-4e36-92fb-b9f247834303', N'98fca431-b50b-4d2f-8323-d20d8ba6a9d2')
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 10/24/2013 14:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[UserId] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
 CONSTRAINT [PK__aspnet_M__1788CC4D1FCDBCEB] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([UserId], [ApplicationId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'4301c83e-cccc-4e36-92fb-b9f247834303', N'8b97134a-1981-44cd-9090-f2413634cd79', N'GwqsNxqd1ODDHqC9B6UJdxizFIE=', 1, N'6fIsmjlWEprONBuBQS0i6g==', NULL, N'namratanshah123@gmail.com', N'namratanshah123@gmail.com', NULL, NULL, 1, 0, CAST(0x0000A260004EDD10 AS DateTime), CAST(0x0000A26100505D19 AS DateTime), CAST(0x0000A260004EDD10 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  Default [DF__aspnet_Ap__Appli__08EA5793]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__08EA5793]  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__239E4DCF]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__239E4DCF]  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__398D8EEE]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__398D8EEE]  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0EA330E9]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0EA330E9]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0F975522]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__0F975522]  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__108B795B]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__108B795B]  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF_Medicine_CreatedAt]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[Medicine] ADD  CONSTRAINT [DF_Medicine_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
/****** Object:  Default [DF_Medicine_IsDeleted]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[Medicine] ADD  CONSTRAINT [DF_Medicine_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Medicine_IsPrescriptionRequired]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[Medicine] ADD  CONSTRAINT [DF_Medicine_IsPrescriptionRequired]  DEFAULT ((1)) FOR [IsPrescriptionRequired]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__21B6055D]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__21B6055D] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__21B6055D]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__22AA2996]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__22AA2996] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__38996AB5]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__38996AB5] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__38996AB5]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0DAF0CB0]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__3F466844]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__3F466844] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__3F466844]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__3E52440B]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__3E52440B] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__3E52440B]
GO
/****** Object:  ForeignKey [FK_Medicine_aspnet_Users]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Medicine_aspnet_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Medicine] CHECK CONSTRAINT [FK_Medicine_aspnet_Users]
GO
/****** Object:  ForeignKey [FK_Medicine_aspnet_Users1]    Script Date: 10/24/2013 14:06:08 ******/
ALTER TABLE [dbo].[Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Medicine_aspnet_Users1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Medicine] CHECK CONSTRAINT [FK_Medicine_aspnet_Users1]
GO
