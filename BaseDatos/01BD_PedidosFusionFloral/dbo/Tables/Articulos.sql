CREATE TABLE [dbo].[Articulos] (
    [IdProducto]      INT           IDENTITY (1, 1) NOT NULL,
    [CodigoProducto]  VARCHAR (5)   NOT NULL,
    [NombreArticulo]  VARCHAR (150) NOT NULL,
    [Presentacion]    VARCHAR (30)  NOT NULL,
    [DetalleProducto] VARCHAR (100) NULL,
    [Precio]          DECIMAL (18)  NOT NULL,
    CONSTRAINT [PK__Articulo__85A9F8F06809C9BF] PRIMARY KEY CLUSTERED ([IdProducto] ASC)
);

