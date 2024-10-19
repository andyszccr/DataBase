CREATE TABLE [dbo].[ActivosUsuario] (
    [IdActivosUsuario] INT           IDENTITY (1, 1) NOT NULL,
    [IdUsuario]        INT           NOT NULL,
    [FechaRegistro]    DATETIME      NOT NULL,
    [Placa]            VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_ActivosUsuario] PRIMARY KEY CLUSTERED ([Placa] ASC),
    FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuario] ([IdUsuario])
);

