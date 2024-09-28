CREATE TABLE [dbo].[Sitios] (
    [IdSitios]    INT           IDENTITY (1, 1) NOT NULL,
    [IdProveedor] INT           NOT NULL,
    [NombreSitio] VARCHAR (250) NOT NULL,
    [Estado]      VARCHAR (100) NOT NULL,
    CONSTRAINT [PK__Sitios__1042AD43059F3F13] PRIMARY KEY CLUSTERED ([IdSitios] ASC),
    CONSTRAINT [FK_Sitios_Proveedores] FOREIGN KEY ([IdProveedor]) REFERENCES [dbo].[Proveedores] ([IdProveedor])
);

