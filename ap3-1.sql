USE [AP3]
GO
/****** Object:  Table [dbo].[CalendrierEntrainement]    Script Date: 08/06/2024 15:23:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalendrierEntrainement](
	[idCalendrier] [int] IDENTITY(1,1) NOT NULL,
	[dateCalendrier] [date] NULL,
	[heureCalendrier] [time](7) NULL,
	[idCategorie] [int] NOT NULL,
	[seance] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[idCategorie] [int] IDENTITY(1,1) NOT NULL,
	[nomCategorie] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntrainementJoueur]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntrainementJoueur](
	[idCalendrier] [int] NOT NULL,
	[idPersonne] [int] NOT NULL,
	[idEntrainement] [nchar](10) NOT NULL,
	[dureeTotal] [time](7) NULL,
	[nombreSeances] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entraineur]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entraineur](
	[idPersonne] [int] NOT NULL,
	[formation] [varchar](50) NULL,
	[tauxHorraire] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evenement_]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evenement_](
	[idEvenement_] [int] IDENTITY(1,1) NOT NULL,
	[nomEvenement] [varchar](50) NULL,
	[dateEvenement] [date] NULL,
	[resultat] [varchar](50) NULL,
	[idPersonne] [int] NOT NULL,
	[idCategorie] [int] NOT NULL,
	[idLieu] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfoPersonne]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoPersonne](
	[idInfo] [int] NOT NULL,
	[dateInfo] [date] NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[identifiant] [varchar](50) NULL,
	[mdp] [varchar](50) NULL,
	[dateAdhesion] [date] NULL,
	[nb_evenemnt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Joueur]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Joueur](
	[idPersonne] [int] NOT NULL,
	[numero] [varchar](50) NULL,
	[poste] [varchar](50) NULL,
	[idCategorie] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lieu]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lieu](
	[idLieu] [int] IDENTITY(1,1) NOT NULL,
	[nomLieu] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdreDuJour]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdreDuJour](
	[idRéunion] [int] NOT NULL,
	[idOrdre] [int] IDENTITY(1,1) NOT NULL,
	[nomOrdre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organiser]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organiser](
	[idCalendrier] [int] NOT NULL,
	[idPersonne] [int] NOT NULL,
	[Absence] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participer]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participer](
	[idPersonne] [int] NOT NULL,
	[idCalendrier] [int] NOT NULL,
	[travailRealisé] [varchar](50) NULL,
	[Abs] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personne]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personne](
	[idPersonne] [int] IDENTITY(1,1) NOT NULL,
	[nomPersonne] [varchar](50) NULL,
	[prenomPersonne] [varchar](50) NULL,
	[Age] [varchar](255) NULL,
	[email] [varchar](50) NULL,
	[identifiant] [varchar](50) NULL,
	[mot_de_passe] [varchar](255) NULL,
	[idTarif] [int] NULL,
	[Date_Adhesion] [date] NULL,
	[nb_evenement] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plannifier]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plannifier](
	[idPersonne] [int] NOT NULL,
	[idRéunion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remplacer]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remplacer](
	[idPersonne] [int] NOT NULL,
	[idPersonne_1] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserver]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserver](
	[idPersonne] [int] NOT NULL,
	[idEvenement_] [int] NOT NULL,
	[placeReservation] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Réunions]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Réunions](
	[idRéunion] [int] IDENTITY(1,1) NOT NULL,
	[objet] [varchar](50) NULL,
	[date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifs]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifs](
	[idTarif] [int] IDENTITY(1,1) NOT NULL,
	[nomTarif] [varchar](50) NULL,
	[prixTarif] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CalendrierEntrainement] ON 

INSERT [dbo].[CalendrierEntrainement] ([idCalendrier], [dateCalendrier], [heureCalendrier], [idCategorie], [seance]) VALUES (1, CAST(N'2022-05-23' AS Date), CAST(N'02:00:00' AS Time), 1, NULL)
INSERT [dbo].[CalendrierEntrainement] ([idCalendrier], [dateCalendrier], [heureCalendrier], [idCategorie], [seance]) VALUES (6, CAST(N'2022-09-25' AS Date), NULL, 3, N'slsl')
INSERT [dbo].[CalendrierEntrainement] ([idCalendrier], [dateCalendrier], [heureCalendrier], [idCategorie], [seance]) VALUES (8, CAST(N'2022-05-12' AS Date), NULL, 1, N'Soleil')
INSERT [dbo].[CalendrierEntrainement] ([idCalendrier], [dateCalendrier], [heureCalendrier], [idCategorie], [seance]) VALUES (10, CAST(N'2022-02-20' AS Date), CAST(N'23:00:00' AS Time), 3, N'siro')
INSERT [dbo].[CalendrierEntrainement] ([idCalendrier], [dateCalendrier], [heureCalendrier], [idCategorie], [seance]) VALUES (11, CAST(N'2022-02-15' AS Date), CAST(N'16:00:00' AS Time), 1, N'Mar')
INSERT [dbo].[CalendrierEntrainement] ([idCalendrier], [dateCalendrier], [heureCalendrier], [idCategorie], [seance]) VALUES (12, NULL, NULL, 1, N'9alouch')
SET IDENTITY_INSERT [dbo].[CalendrierEntrainement] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorie] ON 

INSERT [dbo].[Categorie] ([idCategorie], [nomCategorie]) VALUES (1, N'Senior')
INSERT [dbo].[Categorie] ([idCategorie], [nomCategorie]) VALUES (2, N'Junior')
INSERT [dbo].[Categorie] ([idCategorie], [nomCategorie]) VALUES (3, N'Professionnel')
INSERT [dbo].[Categorie] ([idCategorie], [nomCategorie]) VALUES (4, N'Majeur')
SET IDENTITY_INSERT [dbo].[Categorie] OFF
GO
INSERT [dbo].[EntrainementJoueur] ([idCalendrier], [idPersonne], [idEntrainement], [dureeTotal], [nombreSeances]) VALUES (10, 13, N'1         ', NULL, NULL)
GO
INSERT [dbo].[Entraineur] ([idPersonne], [formation], [tauxHorraire]) VALUES (1, N'dsjgkdjgs', N'11')
INSERT [dbo].[Entraineur] ([idPersonne], [formation], [tauxHorraire]) VALUES (2, N'rkelr', N'35')
GO
SET IDENTITY_INSERT [dbo].[Evenement_] ON 

INSERT [dbo].[Evenement_] ([idEvenement_], [nomEvenement], [dateEvenement], [resultat], [idPersonne], [idCategorie], [idLieu]) VALUES (12, N'Soleil', CAST(N'2022-05-12' AS Date), N'1-1', 2, 2, 1)
INSERT [dbo].[Evenement_] ([idEvenement_], [nomEvenement], [dateEvenement], [resultat], [idPersonne], [idCategorie], [idLieu]) VALUES (14, N'Lune', CAST(N'2022-09-15' AS Date), N'05-12', 1, 3, 5)
INSERT [dbo].[Evenement_] ([idEvenement_], [nomEvenement], [dateEvenement], [resultat], [idPersonne], [idCategorie], [idLieu]) VALUES (17, N'Eté', CAST(N'2022-07-25' AS Date), N'19-02', 1, 3, 6)
SET IDENTITY_INSERT [dbo].[Evenement_] OFF
GO
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (1, N'360', N'dsve', 1)
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (2, N'15', N'skfsk', 1)
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (4, N'99', N'dlsf', 3)
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (5, N'22', N'jdsf', 2)
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (6, N'26', N'flskfls', 4)
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (10, N'25', N'bouuzelof', 3)
INSERT [dbo].[Joueur] ([idPersonne], [numero], [poste], [idCategorie]) VALUES (13, N'29', N'sisi', 3)
GO
SET IDENTITY_INSERT [dbo].[Lieu] ON 

INSERT [dbo].[Lieu] ([idLieu], [nomLieu]) VALUES (1, N'Nimes')
INSERT [dbo].[Lieu] ([idLieu], [nomLieu]) VALUES (2, N'Saint Gilles')
INSERT [dbo].[Lieu] ([idLieu], [nomLieu]) VALUES (3, N'Fournes')
INSERT [dbo].[Lieu] ([idLieu], [nomLieu]) VALUES (4, N'Remoulin')
INSERT [dbo].[Lieu] ([idLieu], [nomLieu]) VALUES (5, N'Marseille')
INSERT [dbo].[Lieu] ([idLieu], [nomLieu]) VALUES (6, N'Toulouse')
SET IDENTITY_INSERT [dbo].[Lieu] OFF
GO
SET IDENTITY_INSERT [dbo].[OrdreDuJour] ON 

INSERT [dbo].[OrdreDuJour] ([idRéunion], [idOrdre], [nomOrdre]) VALUES (1, 3, N'jnkjsjkd')
INSERT [dbo].[OrdreDuJour] ([idRéunion], [idOrdre], [nomOrdre]) VALUES (2, 1, N'jfksjf')
INSERT [dbo].[OrdreDuJour] ([idRéunion], [idOrdre], [nomOrdre]) VALUES (2, 2, NULL)
SET IDENTITY_INSERT [dbo].[OrdreDuJour] OFF
GO
INSERT [dbo].[Organiser] ([idCalendrier], [idPersonne], [Absence]) VALUES (6, 1, 1)
INSERT [dbo].[Organiser] ([idCalendrier], [idPersonne], [Absence]) VALUES (6, 2, 0)
INSERT [dbo].[Organiser] ([idCalendrier], [idPersonne], [Absence]) VALUES (8, 2, 0)
GO
INSERT [dbo].[Participer] ([idPersonne], [idCalendrier], [travailRealisé], [Abs]) VALUES (1, 1, N'sjfksjf', 0)
INSERT [dbo].[Participer] ([idPersonne], [idCalendrier], [travailRealisé], [Abs]) VALUES (1, 6, N'CKDLDC', 1)
INSERT [dbo].[Participer] ([idPersonne], [idCalendrier], [travailRealisé], [Abs]) VALUES (2, 8, N'rsfs', 1)
INSERT [dbo].[Participer] ([idPersonne], [idCalendrier], [travailRealisé], [Abs]) VALUES (5, 6, N'jnsjds', 0)
GO
SET IDENTITY_INSERT [dbo].[Personne] ON 

INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (1, N'MESSI', N'Lionel', NULL, N'dkjjzsdj@kfjs.fr', N'lmessi', N'6a+qøb˜jhóÔÚÞh–ÈVp¹r¥ØU''^¸8òi§ U|v?³K ú;NÁRj‹''Jqd:z›9S7Åm', 3, CAST(N'2022-10-10' AS Date), NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (2, N'RONALDO', N'Cristiano', N'40', N'fjsds@ndjsfs.com', N'cronaldo', N'7iñVHÁôª$ãëÌÈq Fqö
¡w~,`J<ýŠ6ÆŠ(}]5ýKûÝÌû9)IGÿ•m”LKÊ', 3, CAST(N'2021-12-05' AS Date), N'0')
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (4, N'Ziyech', N'Amine', N'29', N'fkskfs@jfksj.fr', N'Ziyechdls', N'Ziyehsd23', 4, CAST(N'2000-05-06' AS Date), NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (5, N'Mazraoui', N'Karim', N'18', N'dhsfhs@jdisj.fr', N'Maz17', N'Maz!45', 2, CAST(N'1999-06-12' AS Date), NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (6, N'Ben Arfa', N'Fati', N'12', N'djshfs@fsjf.com', N'BenBzn', N'Benss556', 1, CAST(N'2022-07-01' AS Date), NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (7, N'BEVE', N'Hehe', N'25', N'', N'hbeve', N'ìýOÃùBßè.ÚíZg†£˜XîŠTÎYÎ°ÛŒÊÖ&\R®‡çªåØº€¯ÎÿƒrAñ´8y''2°ÙÊ', 2, CAST(N'2002-01-01' AS Date), N'0')
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (8, N'COUCOU', N'Bebe', N'16', N'bengbengdsanssachneckzer@gmail.com', N'bcoucou', N'÷Q3Ågk_owð9ì³ž­Ô&uX Ù·#à—qÇ>:<ÑÉ)¢®^”ý\²N''¸,D;ycT]´sÈLp', 2, CAST(N'2002-01-01' AS Date), NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (9, N'ABDERRAHIM EL BOURIMI', N'Abderrahimbourimi@hotmail.fr', N'2022-05-02', N'abderrahimbourimi@hotmail.fr', N'aabderrahim el bourimi', N'„8zVtÍ£áÖ×sL¬Û{ZRíò»''Äþþ%½OƒœèBÆÍW0Ö¦³˜}Â7¬Í!;˜×QÃ™', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (10, N'YAKOUB', N'Bo9bo9', N'2023-05-03', N'yaya@gmail.com', N'byakoub', N'âT‹ˆ¢üy%~œ¨a¯·6©N¸¡î½“OªH‡WC‰ã½´Ëög¾ÒU~{ˆ(vuE¥xlÚÁ‡ï5ôÒ', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (11, N'SAM', N'Sam', N'5555-05-05', N'Aa@gmail.com', N'ssam', N'ëæ3Ãù”¦Ül‹©!ÿ°,|¤LP«4ÕÉ)ó…ð$’ü—¡\4ìIŠyébtƒút4CaºÓñ;äIP–:ñ', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (12, N'MAM', N'Tat', N'2002-04-05', N'abde@gmail.com', N'tmam', N'ÛÎ–H´s7¬`=4ÓÝŒÐö0cÁ……cÊvBöL¢k!|]MhàÔ&Cv`ô‰ØóÐ ¾x˜ FQ', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (13, N'MOM', N'Nin', N'2022-02-20', N'abdee@gmail.com', N'nmom', N'&WãìÿßÉ/–ð)39	øÝ5²äËÂi Á(ú°¶õË»v—iÔÎÎrt»—-R{ÓÈ™£O÷Í\I¼n@`', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (14, N'YY', N'Aa', N'0001-01-01', N'yz@gmail.fr', N'ayy', N'T4'')â@»lX\[0>°PACb$ƒi¶‰×|cÜøå$Š›''žl‚Cój;mrÈ¨˜À®X¤VÈµœ¾O"’c', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (15, N'AR', N'Ra', N'0001-01-01', N'aaaa@g.com', N'rar', N'„z¼ÇPqÇ™¦1 oŽâèßÔÅßÛ÷xèö6Knù–À§Esƒ—¬®R}KiËx]¡
Ö¶', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (16, N'TEST', N'Nonhacher', N'0001-01-01', N'hash@gmail.com', N'ntest', N'L2…ï¾"þK¤ª–
i×æ€É;íý%Fãg:”G7¯dhW´ XÙOø¤ˆ«ð“©S5ÿ“Áè"¡mü', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (17, N'TESTA', N'Ateste', N'0001-01-01', N'test@g.coma', N'atesta', N'²5’‡kGò?0Ëž¬÷–lˆQ?á¾ýŒ¥;Žrbš¨P•¹A/QßôîžöÆlc‚êvim`Ç”r+Š	Å', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (18, N'ABDEL', N'Tes', N'2002-02-20', N'Abdeee@gmail.com', N'tabdel', N'c¥&˜C\%µªáe8óTÌÕb„ŽC“ëmr´¬åkõ÷ÞpiÕŒ¥£¨`*Ñðá`KY¦ÔXÔÑi;j', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (19, N'AAAA', N'Aaaa', N'2000-11-11', N'TestTest@Test.fr', N'aaaaa', N'ÖöD±˜é{]‡XÖÓ@ÍG‡úë›‰Áç`‚ˆfKçrWJXÐ3¼ñ à”_ðdhëå>-ÿ6âHBLrs}¬	', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (20, N'TEST', N'Test', N'2002-12-19', N'abderrahimeb3@gmail.com', N'ttest', N'õ6êNf¸ù”ùÑ&E
‘¼Ñ½dÑv–‚ÇÀ$ÀYË²ñ1+dçÜçúÚ•}Œ‚à¹Þ?äçlTv>1', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (21, N'EL BOURIMI', N'Abdel', N'2002-12-19', N'abderrahimeb@gmail.com', N'ael bourimi', N'ÀLJ0F 0·{mãk”+ˆTaÑ{>†ÌÅÆMgq]oòí:ETµòÌ$jËÅÈ>h©.éÏ‘ª’‰’‚ŒÌe', NULL, NULL, NULL)
INSERT [dbo].[Personne] ([idPersonne], [nomPersonne], [prenomPersonne], [Age], [email], [identifiant], [mot_de_passe], [idTarif], [Date_Adhesion], [nb_evenement]) VALUES (22, N'EL BOURIMI', N'Abdel', N'2002-12-19', N'abderrahimeb@gmail.com', N'ael bourimi', N'ÀLJ0F 0·{mãk”+ˆTaÑ{>†ÌÅÆMgq]oòí:ETµòÌ$jËÅÈ>h©.éÏ‘ª’‰’‚ŒÌe', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Personne] OFF
GO
INSERT [dbo].[Plannifier] ([idPersonne], [idRéunion]) VALUES (1, 1)
INSERT [dbo].[Plannifier] ([idPersonne], [idRéunion]) VALUES (1, 2)
INSERT [dbo].[Plannifier] ([idPersonne], [idRéunion]) VALUES (2, 1)
GO
INSERT [dbo].[Remplacer] ([idPersonne], [idPersonne_1]) VALUES (2, 1)
GO
INSERT [dbo].[Reserver] ([idPersonne], [idEvenement_], [placeReservation]) VALUES (1, 12, CAST(N'2022-05-15' AS Date))
INSERT [dbo].[Reserver] ([idPersonne], [idEvenement_], [placeReservation]) VALUES (5, 14, CAST(N'2022-09-24' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Réunions] ON 

INSERT [dbo].[Réunions] ([idRéunion], [objet], [date]) VALUES (1, N'Entrainnement', CAST(N'2000-05-12' AS Date))
INSERT [dbo].[Réunions] ([idRéunion], [objet], [date]) VALUES (2, N'Buvette', CAST(N'2016-06-13' AS Date))
SET IDENTITY_INSERT [dbo].[Réunions] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarifs] ON 

INSERT [dbo].[Tarifs] ([idTarif], [nomTarif], [prixTarif]) VALUES (1, N'Trf', 75)
INSERT [dbo].[Tarifs] ([idTarif], [nomTarif], [prixTarif]) VALUES (2, N'trc', 100)
INSERT [dbo].[Tarifs] ([idTarif], [nomTarif], [prixTarif]) VALUES (3, N'cbc', 120)
INSERT [dbo].[Tarifs] ([idTarif], [nomTarif], [prixTarif]) VALUES (4, N'msn', 90)
SET IDENTITY_INSERT [dbo].[Tarifs] OFF
GO
/****** Object:  StoredProcedure [dbo].[EvenementPersonne]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EvenementPersonne]
	@nomPers [varchar](50)
WITH EXECUTE AS CALLER
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SELECT nomPersonne, prenomPersonne, Abs, travailRealisé, C.idCalendrier
    FROM Personne A, Participer P, CalendrierEntrainement C
    WHERE A.idPersonne = P.idPersonne 
    AND C.idCalendrier = p.idCalendrier 
    AND nomPersonne = @nomPers;

    -- Insert statements for procedure here

END
GO
/****** Object:  StoredProcedure [dbo].[Heure_Entrainement]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Heure_Entrainement]
WITH EXECUTE AS CALLER
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.


    -- Insert statements for procedure here
    SELECT nomPersonne, prenomPersonne, count(*)*2 AS 'Heure Entrainement'
FROM Personne Pe, Participer P, CalendrierEntrainement C
WHERE Pe.idPersonne = P.idPersonne and C.idCalendrier = p.idCalendrier
group by nomPersonne, prenomPersonne
END
GO
/****** Object:  StoredProcedure [dbo].[ListAdherentsAdhesions]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListAdherentsAdhesions]
WITH EXECUTE AS CALLER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT Date_Adhesion 
FROM Personne
WHERE Year(Date_Adhesion) = '2022';
END
GO
/****** Object:  StoredProcedure [dbo].[NbEntrainement]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NbEntrainement]
	@nomPers [varchar](50),
	@dateDeb [date],
	@dateFin [date]
WITH EXECUTE AS CALLER
AS
BEGIN
    select nomPersonne, count(C.idCalendrier) as Entrainements
    from Personne Pe, Participer P, CalendrierEntrainement C
    WHERE Pe.idPersonne = P.idPersonne and C.idCalendrier = p.idCalendrier
    and C.dateCalendrier between @dateDeb and @dateFin
    and nomPersonne = @nomPers
    group by nomPersonne
END
GO
/****** Object:  StoredProcedure [dbo].[OrdreReunion]    Script Date: 08/06/2024 15:23:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrdreReunion]
	@dateReu [date]
WITH EXECUTE AS CALLER
AS
BEGIN


    -- Insert statements for procedure here
    select nomOrdre, objet, R.date
From OrdreDuJour O, Réunions R
Where R.idRéunion = O.idRéunion and R.date = @dateReu
END
GO
