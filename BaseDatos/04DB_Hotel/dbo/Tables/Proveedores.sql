CREATE TABLE [dbo].[Proveedores] (
    [IdProveedor]     INT           NOT NULL,
    [Nombre]          VARCHAR (100) NOT NULL,
    [PrimerApellido]  VARCHAR (100) NOT NULL,
    [SegundoApellido] VARCHAR (100) NULL,
    [Correo]          VARCHAR (100) NOT NULL,
    [Direccion]       VARCHAR (300) NOT NULL,
    [IdNacionalidad]  INT           NOT NULL,
    [Estado]          CHAR (10)     NOT NULL,
    [Contrasena]      VARCHAR (100) NULL,
    [Estampa]         ROWVERSION    NOT NULL,
    CONSTRAINT [PK_Proveedores_1] PRIMARY KEY CLUSTERED ([IdProveedor] ASC),
    CONSTRAINT [FK_Proveedores_Nacionalidades] FOREIGN KEY ([IdNacionalidad]) REFERENCES [dbo].[Nacionalidades] ([IdNacionalidad])
);

