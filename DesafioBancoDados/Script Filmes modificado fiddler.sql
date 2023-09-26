SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrimeiroNome] [varchar](20) NULL,
	[UltimoNome] [varchar](20) NULL,
	[Genero] [varchar](1) NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ElencoFilme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdAtor] [int] NOT NULL,
	[IdFilme] [int] NULL,
	[Papel] [varchar](30) NULL,
 CONSTRAINT [PK_ElencoFilme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Filmes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Ano] [int] NULL,
	[Duracao] [int] NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmesGenero]    Script Date: 08/05/2022 23:14:01 ******/

CREATE TABLE [dbo].[FilmesGenero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGenero] [int] NULL,
	[IdFilme] [int] NULL,
 CONSTRAINT [PK_FilmesGenero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Generos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](20) NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Atores] ON 
GO
INSERT [dbo].[Atores] ([Id], [PrimeiroNome], [UltimoNome], [Genero]) VALUES
	(1, N'James', N'Stewart', N'M'),
	(2, N'Deborah', N'Kerr', N'F'),
	(3, N'Peter', N'OToole', N'M'),
	(4, N'Robert', N'DeNiro', N'M'),
	(6, N'Harrison', N'Ford', N'M'),
	(7, N'Stephen', N'Baldwin', N'M'),
	(8, N'Jack', N'Nicholson', N'M'),
	(9, N'Mark', N'Wahlberg', N'M'),
	(10, N'Woody', N'Allen', N'M'),
	(11, N'Claire', N'Danes', N'F'),
	(12, N'Tim', N'Robbins', N'M'),
	(13, N'Kevin', N'Spacey', N'M'),
	(14, N'Kate', N'Winslet', N'F'),
	(15, N'Robin', N'Williams', N'M'),
	(16, N'Jon', N'Voight', N'M'),
	(17, N'Ewan', N'McGregor', N'M'),
	(18, N'Christian', N'Bale', N'M'),
	(19, N'Maggie', N'Gyllenhaal', N'F'),
	(20, N'Dev', N'Patel', N'M'),
	(21, N'Sigourney', N'Weaver', N'F'),
	(22, N'David', N'Aston', N'M'),
	(23, N'Ali', N'Astin', N'F'),
GO
SET IDENTITY_INSERT [dbo].[Atores] OFF
GO
SET IDENTITY_INSERT [dbo].[ElencoFilme] ON 
GO
INSERT [dbo].[ElencoFilme] ([Id], [IdAtor], [IdFilme], [Papel]) VALUES 
	(1, 1, 1, N'John Scottie Ferguson'),
	(2, 2, 2, N'Miss Giddens'),
	(3, 3, 3, N'T.E. Lawrence'),
	(4, 4, 4, N'Michael'),
	(5, 6, 6, N'Rick Deckard'),
	(6, 7, 8, N'McManus'),
	(7, 9, 10, N'Eddie Adams'),
	(8, 10, 11, N'Alvy Singer'),
	(9, 11, 12, N'San'),
	(10, 12, 13, N'Andy Dufresne'),
	(11, 13, 14, N'Lester Burnham'),
	(12, 14, 15, N'Rose DeWitt Bukater'),
	(13, 15, 16, N'Sean Maguire'),
	(14, 16, 17, N'Ed'),
	(15, 17, 18, N'Renton'),
	(16, 19, 20, N'Elizabeth Darko'),
	(17, 20, 21, N'Older Jamal'),
	(18, 21, 22, N'Ripley'),
	(19, 13, 23, N'Bobby Darin'),
	(20, 8, 9, N'J.J. Gittes'),
	(21, 18, 19, N'Alfred Borden'),
GO
SET IDENTITY_INSERT [dbo].[ElencoFilme] OFF
GO
SET IDENTITY_INSERT [dbo].[Filmes] ON 
GO
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES 
	(1, N'Um Corpo que Cai', 1958, 128),
	(2, N'Os Inocentes', 1961, 100),
	(3, N'Lawrence da Arábia', 1962, 216),
	(4, N'O Franco Atirador', 1978, 183),
	(5, N'Amadeus', 1984, 160),
	(6, N'Blade Runner', 1982, 117),
	(7, N'De Olhos Bem Fechados', 1999, 159),
	(8, N'Os Suspeitos', 1995, 106),
	(9, N'Chinatown', 1974, 130),
	(10, N'Boogie Nights - Prazer Sem Limites', 1997, 155),
	(11, N'Noivo Neurótico, Noiva Nervosa', 1977, 93),
	(12, N'Princesa Mononoke', 1997, 134),
	(13, N'Um Sonho de Liberdade', 1994, 142),
	(14, N'Beleza Americana', 1999, 122),
	(15, N'Titanic', 1997, 194),
	(16, N'Gênio Indomável', 1997, 126),
	(17, N'Amargo pesadelo', 1972, 109),
	(18, N'Trainspotting - Sem Limites', 1996, 94),
	(19, N'O Grande Truque', 2006, 130),
	(20, N'Donnie Darko', 2001, 113),
	(21, N'Quem Quer Ser um Milionário?', 2008, 120),
	(22, N'Aliens, O Resgate', 1986, 137),
	(23, N'Uma Vida sem Limites', 2004, 118),
	(24, N'Avatar', 2009, 162),
	(25, N'Coração Valente', 1995, 178),
	(26, N'Os Sete Samurais', 1954, 207),
	(27, N'A Viagem de Chihiro', 2001, 125),
	(28, N'De Volta para o Futuro', 1985, 116),
GO
SET IDENTITY_INSERT [dbo].[Filmes] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmesGenero] ON 
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES 
	(1, 1, 22),
	(2, 2, 17),
	(3, 2, 3),
	(4, 3, 12),
	(5, 5, 11),
	(6, 6, 8),
	(7, 6, 13),
	(8, 7, 26),
	(9, 7, 28),
	(10, 7, 18),
	(11, 7, 21),
	(12, 8, 2),
	(13, 9, 23),
	(14, 10, 7),
	(15, 10, 27),
	(16, 10, 1),
	(17, 11, 14),
	(18, 12, 6),
	(19, 13, 4),
GO
SET IDENTITY_INSERT [dbo].[FilmesGenero] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES
	(1, N'Ação'),
	(2, N'Aventura'),
	(3, N'Animação'),
	(4, N'Biografia'),
	(5, N'Comédia'),
	(6, N'Crime'),
	(7, N'Drama'),
	(8, N'Horror'),
	(9, N'Musical'),
	(10, N'Mistério'),
	(11, N'Romance'),
	(12, N'Suspense'),
	(13, N'Guerra'),
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0] FOREIGN KEY([IdAtor])
REFERENCES [dbo].[Atores] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0]
GO
ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdFil__2D27B809] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdFil__2D27B809]
GO
ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdFil__2F10007B] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdFil__2F10007B]
GO
ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Generos] ([Id])
GO
ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42]
GO
