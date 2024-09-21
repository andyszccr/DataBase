CREATE TABLE [dbo].[Usuarios] (
    [Identificacion]    INT           NOT NULL,
    [NombreFuncionario] VARCHAR (300) NOT NULL,
    [Direccion]         VARCHAR (300) NOT NULL,
    [LugarResidencia]   VARCHAR (50)  NOT NULL,
    [Email]             VARCHAR (100) NOT NULL,
    [Telefono]          INT           NOT NULL,
    [IdArea]            INT           NULL,
    CONSTRAINT [PK__Usuarios__D6F931E4506F7B8D] PRIMARY KEY CLUSTERED ([Identificacion] ASC),
    CONSTRAINT [FK_Usuarios_AreaAplicacion] FOREIGN KEY ([IdArea]) REFERENCES [dbo].[AreaAplicacion] ([IdArea])
);

