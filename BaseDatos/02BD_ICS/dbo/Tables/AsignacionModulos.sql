CREATE TABLE [dbo].[AsignacionModulos] (
    [idAsignacionModulo] INT IDENTITY (1, 1) NOT NULL,
    [Identificacion]     INT NOT NULL,
    [idComponente]       INT NOT NULL,
    [idRol]              INT NOT NULL,
    PRIMARY KEY CLUSTERED ([idAsignacionModulo] ASC),
    CONSTRAINT [FK_AsignacionModulos_Componentes] FOREIGN KEY ([idComponente]) REFERENCES [dbo].[Componentes] ([idComponente]),
    CONSTRAINT [FK_AsignacionModulos_Roles] FOREIGN KEY ([idRol]) REFERENCES [dbo].[Roles] ([IdRol]),
    CONSTRAINT [FK_AsignacionModulos_Usuarios] FOREIGN KEY ([Identificacion]) REFERENCES [dbo].[Usuarios] ([Identificacion])
);

