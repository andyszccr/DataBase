CREATE TABLE [dbo].[UsuarioXRol] (
    [IdUsarioRol]    INT IDENTITY (1, 1) NOT NULL,
    [Identificacion] INT NOT NULL,
    [IdRol]          INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdUsarioRol] ASC),
    CONSTRAINT [FK_UsuarioXRol_Roles] FOREIGN KEY ([IdRol]) REFERENCES [dbo].[Roles] ([IdRol]),
    CONSTRAINT [FK_UsuarioXRol_Usuarios] FOREIGN KEY ([Identificacion]) REFERENCES [dbo].[Usuarios] ([Identificacion])
);

