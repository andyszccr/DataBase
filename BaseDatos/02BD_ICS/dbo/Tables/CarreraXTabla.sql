CREATE TABLE [dbo].[CarreraXTabla] (
    [IDCarreraArea] INT IDENTITY (1, 1) NOT NULL,
    [IdArea]        INT NULL,
    [IdCarrera]     INT NULL,
    PRIMARY KEY CLUSTERED ([IDCarreraArea] ASC),
    CONSTRAINT [FK_CarreraXTabla_AreaAplicacion] FOREIGN KEY ([IdArea]) REFERENCES [dbo].[AreaAplicacion] ([IdArea]),
    CONSTRAINT [FK_CarreraXTabla_Carrera] FOREIGN KEY ([IdCarrera]) REFERENCES [dbo].[Carrera] ([IdCarrera])
);

