CREATE TABLE [dbo].[Reserva] (
    [idReserva]        INT             IDENTITY (1, 1) NOT NULL,
    [IdCliente]        INT             NOT NULL,
    [idLugar]          INT             NOT NULL,
    [Costo]            DECIMAL (18, 3) NOT NULL,
    [CantidadPersonas] INT             NULL,
    [IdSitio]          INT             NOT NULL,
    [FechaEntrada]     DATETIME        NOT NULL,
    [FechaSalida]      DATETIME        NOT NULL,
    [DetalleReserva]   INT             NOT NULL,
    [Estampa]          ROWVERSION      NOT NULL,
    PRIMARY KEY CLUSTERED ([idReserva] ASC),
    CONSTRAINT [FK_Reserva_Clientes] FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Clientes] ([IdCliente]),
    CONSTRAINT [FK_Reserva_Lugares] FOREIGN KEY ([idLugar]) REFERENCES [dbo].[Lugares] ([IdLugar]),
    CONSTRAINT [FK_Reserva_ReporteCliente] FOREIGN KEY ([idReserva]) REFERENCES [dbo].[ReporteCliente] ([IdReporte])
);

