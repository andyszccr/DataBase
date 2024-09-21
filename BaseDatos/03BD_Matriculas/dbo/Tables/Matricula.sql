CREATE TABLE [dbo].[Matricula] (
    [IdHorario]         INT       NOT NULL,
    [Identificacion]    CHAR (15) NOT NULL,
    [Nacionalidad]      CHAR (3)  NOT NULL,
    [FechaHoraRegistro] DATETIME  NULL,
    [Estado]            CHAR (1)  NULL,
    [SituacionCurso]    CHAR (1)  NULL,
    [MontoCancelado]    MONEY     NULL,
    [Nota]              INT       NULL,
    CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED ([IdHorario] ASC, [Identificacion] ASC, [Nacionalidad] ASC),
    CONSTRAINT [CK_Matricula] CHECK ([nota]>(10) AND [nota]<=(100)),
    CONSTRAINT [FK_Matricula_Estudiantes] FOREIGN KEY ([Identificacion], [Nacionalidad]) REFERENCES [dbo].[Estudiantes] ([Identificacion], [Nacionalidad]),
    CONSTRAINT [FK_Matricula_HorarioCursos] FOREIGN KEY ([IdHorario]) REFERENCES [dbo].[HorarioCursos] ([IdHorario])
);

