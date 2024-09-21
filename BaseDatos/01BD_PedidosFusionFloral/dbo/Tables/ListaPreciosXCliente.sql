CREATE TABLE [dbo].[ListaPreciosXCliente] (
    [IdLista]        INT          NOT NULL,
    [IdTipoFecha]    INT          NOT NULL,
    [IdTipoCliente]  INT          NOT NULL,
    [idProducto]     INT          NOT NULL,
    [PrecioProducto] DECIMAL (18) NOT NULL,
    CONSTRAINT [PK_ListaPreciosXCliente] PRIMARY KEY CLUSTERED ([IdLista] ASC),
    CONSTRAINT [FK_ListaPreciosXCliente_Articulos] FOREIGN KEY ([idProducto]) REFERENCES [dbo].[Articulos] ([IdProducto])
);

