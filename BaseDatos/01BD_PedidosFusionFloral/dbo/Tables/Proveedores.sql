CREATE TABLE [dbo].[Proveedores] (
    [IdProveedor]     INT           IDENTITY (1, 1) NOT NULL,
    [NombreProveedor] VARCHAR (200) NOT NULL,
    [PrimerApellido]  VARCHAR (100) NOT NULL,
    [SegundoApellido] VARCHAR (100) NULL,
    [NombreEmpresa]   VARCHAR (100) NOT NULL,
    [Telefono]        INT           NOT NULL,
    [Direccion]       VARCHAR (400) NOT NULL,
    [Email]           VARCHAR (200) NOT NULL,
    CONSTRAINT [PK__Proveedo__E8B631AFADF74F5A] PRIMARY KEY CLUSTERED ([IdProveedor] ASC)
);

