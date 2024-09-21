CREATE TABLE [dbo].[Cursos] (
    [CodigoCurso]         CHAR (8)      NOT NULL,
    [Carrera]             CHAR (2)      NULL,
    [NombreCurso]         VARCHAR (150) NULL,
    [Creditos]            INT           NULL,
    [HorasClases]         INT           NULL,
    [HorasSemanales]      INT           NULL,
    [RequiereLaboratorio] BIT           NULL,
    CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED ([CodigoCurso] ASC),
    CONSTRAINT [FK_Cursos_Carreras] FOREIGN KEY ([Carrera]) REFERENCES [dbo].[Carreras] ([IdCarrera])
);

