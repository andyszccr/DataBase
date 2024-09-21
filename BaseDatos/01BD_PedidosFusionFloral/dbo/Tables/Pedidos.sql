CREATE TABLE [dbo].[Pedidos] (
    [CodigoPedido]  NCHAR (10) NOT NULL,
    [IdCliente]     INT        NOT NULL,
    [FechaRecibido] DATETIME   NOT NULL,
    [FechaEntrega]  DATETIME   NOT NULL,
    [TipoEntrega]   INT        NOT NULL,
    CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED ([CodigoPedido] ASC)
);

