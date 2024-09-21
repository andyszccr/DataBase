CREATE TABLE [dbo].[TipoFechas] (
    [IdTipoFecha] INT           IDENTITY (1, 1) NOT NULL,
    [TipoFecha]   VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_TipoFechas] PRIMARY KEY CLUSTERED ([IdTipoFecha] ASC)
);

