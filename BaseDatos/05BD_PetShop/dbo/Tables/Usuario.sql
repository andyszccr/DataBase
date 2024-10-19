CREATE TABLE [dbo].[Usuario] (
    [IdUsuario] INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]    VARCHAR (150) NOT NULL,
    [Apellidos] VARCHAR (200) NOT NULL,
    [Correo]    VARCHAR (200) NOT NULL,
    [Estado]    INT           NOT NULL,
    [Password]  VARCHAR (200) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdUsuario] ASC)
);

