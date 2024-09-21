CREATE TABLE [dbo].[Docentes] (
    [Identificacion]  CHAR (15)     NOT NULL,
    [Nacionalidad]    CHAR (3)      NOT NULL,
    [Nombre]          VARCHAR (50)  NULL,
    [PrimerApellido]  VARCHAR (50)  NULL,
    [SegundoApellido] VARCHAR (50)  NULL,
    [Telefono]        CHAR (8)      NULL,
    [Email]           VARCHAR (100) NULL,
    CONSTRAINT [PK_Docentes] PRIMARY KEY CLUSTERED ([Identificacion] ASC, [Nacionalidad] ASC)
);

