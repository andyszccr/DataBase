CREATE TABLE [dbo].[UbicacionA] (
    [IdUbicacionA]  INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]        VARCHAR (100) NOT NULL,
    [Descripcion]   VARCHAR (150) NOT NULL,
    [FechaRegistro] DATETIME      NOT NULL,
    CONSTRAINT [PK__Ubicacio__035DC595B67C7F19] PRIMARY KEY CLUSTERED ([IdUbicacionA] ASC)
);

