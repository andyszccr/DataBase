CREATE TABLE [dbo].[HorarioCursos] (
    [IdHorario]             INT          IDENTITY (1, 1) NOT NULL,
    [CodigoCurso]           CHAR (8)     NULL,
    [Grupo]                 INT          NULL,
    [Dias]                  CHAR (1)     NULL,
    [HoraInicio]            VARCHAR (50) NULL,
    [HoraFin]               VARCHAR (50) NULL,
    [Modalidad]             CHAR (1)     NULL,
    [Periodo]               CHAR (4)     NULL,
    [Anno]                  INT          NULL,
    [CantidadMaxima]        INT          NULL,
    [CantidadMinima]        INT          NULL,
    [CantidadMatriculada]   INT          NULL,
    [IdentificacionDocente] CHAR (15)    NULL,
    [NacionalidadDocente]   CHAR (3)     NULL,
    CONSTRAINT [PK_HorarioCursos] PRIMARY KEY CLUSTERED ([IdHorario] ASC),
    CONSTRAINT [FK_HorarioCursos_Cursos] FOREIGN KEY ([CodigoCurso]) REFERENCES [dbo].[Cursos] ([CodigoCurso]),
    CONSTRAINT [FK_HorarioCursos_Docentes] FOREIGN KEY ([IdentificacionDocente], [NacionalidadDocente]) REFERENCES [dbo].[Docentes] ([Identificacion], [Nacionalidad])
);

