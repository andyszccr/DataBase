CREATE TABLE [dbo].[UbicacionD] (
    [IdUbicacionD]  INT           IDENTITY (1, 1) NOT NULL,
    [IdUbicacionC]  INT           NOT NULL,
    [Nombre]        VARCHAR (100) NOT NULL,
    [Descripcion]   VARCHAR (150) NOT NULL,
    [FechaRegistro] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([IdUbicacionD] ASC),
    FOREIGN KEY ([IdUbicacionC]) REFERENCES [dbo].[UbicacionC] ([IdUbicacionC])
);

