CREATE TABLE [dbo].[ProveedoresXProducto] (
    [IdProveedorProducto] INT NOT NULL,
    [IDProveedor]         INT NOT NULL,
    [IDProducto]          INT NOT NULL,
    CONSTRAINT [PK_ProveedoresXProducto] PRIMARY KEY CLUSTERED ([IdProveedorProducto] ASC),
    CONSTRAINT [FKProductosXProveedor] FOREIGN KEY ([IDProducto]) REFERENCES [dbo].[Articulos] ([IdProducto]),
    CONSTRAINT [FKProveedoresXProducto] FOREIGN KEY ([IDProveedor]) REFERENCES [dbo].[Proveedores] ([IdProveedor])
);

