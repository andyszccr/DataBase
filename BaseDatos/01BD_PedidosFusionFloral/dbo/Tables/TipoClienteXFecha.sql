CREATE TABLE [dbo].[TipoClienteXFecha] (
    [IDClienteFecha] INT IDENTITY (1, 1) NOT NULL,
    [IdTipoFecha]    INT NOT NULL,
    [IdTipoCliente]  INT NOT NULL,
    CONSTRAINT [PK_TipoClienteXFecha] PRIMARY KEY CLUSTERED ([IDClienteFecha] ASC),
    CONSTRAINT [FKTipoClienteFecha] FOREIGN KEY ([IdTipoCliente]) REFERENCES [dbo].[TipoCliente] ([IdTipoCliente]),
    CONSTRAINT [FKTipoFecha] FOREIGN KEY ([IdTipoFecha]) REFERENCES [dbo].[TipoFechas] ([IdTipoFecha])
);

