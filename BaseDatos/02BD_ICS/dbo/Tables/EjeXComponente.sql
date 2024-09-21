CREATE TABLE [dbo].[EjeXComponente] (
    [IdEjeComponente] INT      IDENTITY (1, 1) NOT NULL,
    [idComponente]    INT      NOT NULL,
    [Ideje]           CHAR (4) NOT NULL,
    CONSTRAINT [PK_EjeXComponente_1] PRIMARY KEY CLUSTERED ([IdEjeComponente] ASC),
    CONSTRAINT [FK_EjeXComponente_Componentes] FOREIGN KEY ([idComponente]) REFERENCES [dbo].[Componentes] ([idComponente]),
    CONSTRAINT [FK_EjeXComponente_Eje] FOREIGN KEY ([Ideje]) REFERENCES [dbo].[Eje] ([Ideje])
);

