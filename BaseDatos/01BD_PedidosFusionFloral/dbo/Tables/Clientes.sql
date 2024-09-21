CREATE TABLE [dbo].[Clientes] (
    [IdCliente]       INT           IDENTITY (1, 1) NOT NULL,
    [CodigoCliente]   VARCHAR (5)   NULL,
    [Nombre]          VARCHAR (200) NOT NULL,
    [PrimerApellido]  VARCHAR (100) NOT NULL,
    [SegundoApellido] VARCHAR (100) NULL,
    [Telefono]        INT           NOT NULL,
    [Direccion]       VARCHAR (400) NOT NULL,
    [Lugar]           VARCHAR (200) NOT NULL,
    [Email]           VARCHAR (150) NOT NULL,
    [IdTipocliente]   INT           NOT NULL,
    CONSTRAINT [PK__Clientes__D59466421C1844CE] PRIMARY KEY CLUSTERED ([IdCliente] ASC),
    CONSTRAINT [FKClientesXTipo] FOREIGN KEY ([IdTipocliente]) REFERENCES [dbo].[TipoCliente] ([IdTipoCliente])
);

