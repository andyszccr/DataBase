CREATE TABLE [dbo].[AgnicacionRoles] (
    [IdAsignación]   INT IDENTITY (1, 1) NOT NULL,
    [Identificacion] INT NOT NULL,
    [idArea]         INT NOT NULL,
    [idCarrera]      INT NOT NULL,
    [idRol]          INT NOT NULL,
    CONSTRAINT [PK_AgnicacionRoles] PRIMARY KEY CLUSTERED ([IdAsignación] ASC),
    CONSTRAINT [FK_AgnicacionRoles_AreaAplicacion] FOREIGN KEY ([idArea]) REFERENCES [dbo].[AreaAplicacion] ([IdArea]),
    CONSTRAINT [FK_AgnicacionRoles_Carrera] FOREIGN KEY ([idCarrera]) REFERENCES [dbo].[Carrera] ([IdCarrera]),
    CONSTRAINT [FK_AgnicacionRoles_Roles] FOREIGN KEY ([idRol]) REFERENCES [dbo].[Roles] ([IdRol]),
    CONSTRAINT [FK_AgnicacionRoles_Usuarios] FOREIGN KEY ([Identificacion]) REFERENCES [dbo].[Usuarios] ([Identificacion])
);

