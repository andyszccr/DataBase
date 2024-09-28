CREATE TABLE [dbo].[ReporteCliente] (
    [IdReporte]    INT           IDENTITY (1, 1) NOT NULL,
    [idReserva]    INT           NOT NULL,
    [IdProveedor]  INT           NOT NULL,
    [idSitio]      INT           NOT NULL,
    [Comentario]   VARCHAR (300) NULL,
    [Calificacion] INT           NOT NULL,
    [Estampa]      ROWVERSION    NOT NULL,
    PRIMARY KEY CLUSTERED ([IdReporte] ASC),
    CONSTRAINT [FK_ReporteCliente_Proveedores] FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Proveedores] ([IdProveedor]),
    CONSTRAINT [FK_ReporteCliente_Sitios] FOREIGN KEY ([idSitio]) REFERENCES [dbo].[Sitios] ([IdSitios])
);

