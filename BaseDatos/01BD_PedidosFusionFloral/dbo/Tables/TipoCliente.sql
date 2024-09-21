CREATE TABLE [dbo].[TipoCliente] (
    [IdTipoCliente] INT          IDENTITY (1, 1) NOT NULL,
    [TipoCliente]   VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdTipoCliente] ASC)
);

