CREATE TABLE [dbo].[UbicacionC] (
    [IdUbicacionC]  INT           IDENTITY (1, 1) NOT NULL,
    [IdUbicacionB]  INT           NOT NULL,
    [Nombre]        VARCHAR (100) NOT NULL,
    [Descripcion]   VARCHAR (150) NOT NULL,
    [FechaRegistro] DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([IdUbicacionC] ASC),
    CONSTRAINT [FK__Ubicacion__IdUbi__48CFD27E] FOREIGN KEY ([IdUbicacionB]) REFERENCES [dbo].[UbicacionB] ([IdUbicacionB])
);

