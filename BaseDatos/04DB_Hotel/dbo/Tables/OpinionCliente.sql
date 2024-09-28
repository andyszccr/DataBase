CREATE TABLE [dbo].[OpinionCliente] (
    [IdOpinion]    INT           IDENTITY (1, 1) NOT NULL,
    [idReserva]    INT           NOT NULL,
    [IdCliente]    INT           NOT NULL,
    [Comentario]   VARCHAR (300) NULL,
    [Calificacion] INT           NOT NULL,
    [Estampa]      ROWVERSION    NOT NULL,
    PRIMARY KEY CLUSTERED ([IdOpinion] ASC),
    CONSTRAINT [FK_OpinionCliente_Clientes] FOREIGN KEY ([IdCliente]) REFERENCES [dbo].[Clientes] ([IdCliente]),
    CONSTRAINT [FK_OpinionCliente_Reserva] FOREIGN KEY ([idReserva]) REFERENCES [dbo].[Reserva] ([idReserva])
);

