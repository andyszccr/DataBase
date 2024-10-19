CREATE TABLE [dbo].[UbicacionB] (
    [IdUbicacionB]  INT           IDENTITY (1, 1) NOT NULL,
    [IdUbicacionA]  INT           NOT NULL,
    [Nombre]        VARCHAR (100) NOT NULL,
    [Descripcion]   VARCHAR (150) NOT NULL,
    [FechaRegistro] DATETIME      NOT NULL,
    CONSTRAINT [PK__Ubicacio__035DC594D85B45B5] PRIMARY KEY CLUSTERED ([IdUbicacionB] ASC),
    CONSTRAINT [FK__Ubicacion__IdUbi__47DBAE45] FOREIGN KEY ([IdUbicacionA]) REFERENCES [dbo].[UbicacionA] ([IdUbicacionA])
);

