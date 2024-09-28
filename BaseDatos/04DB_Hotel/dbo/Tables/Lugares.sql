CREATE TABLE [dbo].[Lugares] (
    [IdLugar]              INT             IDENTITY (1, 1) NOT NULL,
    [NombreLugar]          VARCHAR (100)   NOT NULL,
    [Foto]                 VARCHAR (200)   NOT NULL,
    [Ubicacion]            VARCHAR (300)   NOT NULL,
    [CantidadHabitaciones] INT             NOT NULL,
    [CantidadCamas]        INT             NOT NULL,
    [MontoXNoche]          DECIMAL (18, 1) NOT NULL,
    [IDTipoLugar]          INT             NOT NULL,
    [DetalleLugar]         VARCHAR (200)   NOT NULL,
    [IdProveedor]          INT             NULL,
    [Estampa]              ROWVERSION      NOT NULL,
    CONSTRAINT [PK__Lugares__35F8CED0C39238B6] PRIMARY KEY CLUSTERED ([IdLugar] ASC),
    CONSTRAINT [FK_Lugares_Proveedores] FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Proveedores] ([IdProveedor]),
    CONSTRAINT [FK_Lugares_TipoLugar] FOREIGN KEY ([IDTipoLugar]) REFERENCES [dbo].[TipoLugar] ([IDTipoLugar])
);

