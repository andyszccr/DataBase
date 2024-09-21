CREATE TABLE [dbo].[GradoMadurez] (
    [IdGrado] INT          IDENTITY (1, 1) NOT NULL,
    [Nivel]   VARCHAR (50) NOT NULL,
    [Puntaje] INT          NOT NULL,
    [Termino] CHAR (1)     NOT NULL,
    CONSTRAINT [PK_GradoMadurez] PRIMARY KEY CLUSTERED ([IdGrado] ASC)
);

