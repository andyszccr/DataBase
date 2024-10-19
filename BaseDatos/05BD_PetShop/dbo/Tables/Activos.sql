CREATE TABLE [dbo].[Activos] (
    [IdActivo]                 INT           IDENTITY (1, 1) NOT NULL,
    [NumeroActivo]             VARCHAR (60)  NOT NULL,
    [Placa]                    VARCHAR (60)  NOT NULL,
    [Estado]                   VARCHAR (150) NOT NULL,
    [Categoria]                VARCHAR (150) NOT NULL,
    [UbicacionD]               INT           NOT NULL,
    [DescripcionCorta]         VARCHAR (200) NOT NULL,
    [DescripcionLarga]         VARCHAR (400) NOT NULL,
    [Modelo]                   VARCHAR (150) NOT NULL,
    [Marca]                    VARCHAR (150) NOT NULL,
    [NumeroSerie]              VARCHAR (150) NOT NULL,
    [ObservacionesAdicionales] VARCHAR (450) NOT NULL,
    [EstadoLevantamiento]      INT           NOT NULL,
    [UsuarioLevanta]           INT           NOT NULL,
    [FechaLevanta]             DATETIME      NULL,
    [IdLogicaB]                INT           NULL,
    [IdEmpleado]               INT           NULL,
    CONSTRAINT [PK_Activos] PRIMARY KEY CLUSTERED ([Placa] ASC),
    FOREIGN KEY ([UbicacionD]) REFERENCES [dbo].[UbicacionD] ([IdUbicacionD]),
    FOREIGN KEY ([UsuarioLevanta]) REFERENCES [dbo].[Usuario] ([IdUsuario])
);

