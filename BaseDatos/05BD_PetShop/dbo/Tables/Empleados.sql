CREATE TABLE [dbo].[Empleados] (
    [IdEmpleado]     INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]         VARCHAR (200) NOT NULL,
    [Apellidos]      VARCHAR (350) NOT NULL,
    [Identificacion] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdEmpleado] ASC)
);

