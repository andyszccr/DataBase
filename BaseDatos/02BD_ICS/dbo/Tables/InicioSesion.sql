CREATE TABLE [dbo].[InicioSesion] (
    [IdInicioSesion] INT       IDENTITY (1, 1) NOT NULL,
    [Identificacion] INT       NOT NULL,
    [Contrasena]     CHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([IdInicioSesion] ASC),
    CONSTRAINT [FK_InicioSesion_Usuarios] FOREIGN KEY ([Identificacion]) REFERENCES [dbo].[Usuarios] ([Identificacion])
);

