USE [estoqueti]
GO

/****** Objeto:  Table [dbo].[movimentacoes]    Data do Script: 28/08/2026 19:08:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[movimentacoes](
	[movimentacaoid] [int] IDENTITY(1,1) NOT NULL,
	[tonerid] [int] NULL,
	[funcionarioid] [int] NOT NULL,
	[setorid] [int] NOT NULL,
	[datamovimentacao] [date] NOT NULL,
	[quantidade] [int] NOT NULL,
	[tipomovimentacao] [varchar](10) NOT NULL,
	[cilindroid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[movimentacaoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[movimentacoes]  WITH CHECK ADD  CONSTRAINT [fk_cilindro_movimentacoes] FOREIGN KEY([cilindroid])
REFERENCES [dbo].[cilindros] ([cilindroid])
GO

ALTER TABLE [dbo].[movimentacoes] CHECK CONSTRAINT [fk_cilindro_movimentacoes]
GO

ALTER TABLE [dbo].[movimentacoes]  WITH CHECK ADD  CONSTRAINT [fk_movimentacoes_funcionario] FOREIGN KEY([funcionarioid])
REFERENCES [dbo].[funcionarios] ([funcionarioid])
GO

ALTER TABLE [dbo].[movimentacoes] CHECK CONSTRAINT [fk_movimentacoes_funcionario]
GO

ALTER TABLE [dbo].[movimentacoes]  WITH CHECK ADD  CONSTRAINT [fk_movimentacoes_funcionarioid] FOREIGN KEY([funcionarioid])
REFERENCES [dbo].[funcionarios] ([funcionarioid])
GO

ALTER TABLE [dbo].[movimentacoes] CHECK CONSTRAINT [fk_movimentacoes_funcionarioid]
GO

ALTER TABLE [dbo].[movimentacoes]  WITH CHECK ADD  CONSTRAINT [fk_movimentacoes_setor] FOREIGN KEY([setorid])
REFERENCES [dbo].[setores] ([setorid])
GO

ALTER TABLE [dbo].[movimentacoes] CHECK CONSTRAINT [fk_movimentacoes_setor]
GO

ALTER TABLE [dbo].[movimentacoes]  WITH CHECK ADD  CONSTRAINT [fk_movimentacoes_setores] FOREIGN KEY([setorid])
REFERENCES [dbo].[setores] ([setorid])
GO

ALTER TABLE [dbo].[movimentacoes] CHECK CONSTRAINT [fk_movimentacoes_setores]
GO

ALTER TABLE [dbo].[movimentacoes]  WITH CHECK ADD  CONSTRAINT [fk_movimentacoes_toner] FOREIGN KEY([tonerid])
REFERENCES [dbo].[toners] ([tonerid])
GO

ALTER TABLE [dbo].[movimentacoes] CHECK CONSTRAINT [fk_movimentacoes_toner]
GO


