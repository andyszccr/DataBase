CREATE TABLE [dbo].[FechaEvaluacion] (
    [idEvaluacionFEcha] INT      IDENTITY (1, 1) NOT NULL,
    [FechaIncio]        DATE     NOT NULL,
    [Fechafin]          DATE     NULL,
    [idEje]             CHAR (4) NOT NULL,
    [Identificacion]    INT      NULL,
    CONSTRAINT [PK_FechaEvaluacion] PRIMARY KEY CLUSTERED ([idEvaluacionFEcha] ASC),
    CONSTRAINT [FK_FechaEvaluacion_Eje] FOREIGN KEY ([idEje]) REFERENCES [dbo].[Eje] ([Ideje]),
    CONSTRAINT [FK_FechaEvaluacion_Usuarios] FOREIGN KEY ([Identificacion]) REFERENCES [dbo].[Usuarios] ([Identificacion])
);

