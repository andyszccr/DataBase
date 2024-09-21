CREATE TABLE [dbo].[Carreras] (
    [IdCarrera]      CHAR (2)      NOT NULL,
    [Nombre]         VARCHAR (200) NULL,
    [GradoAcademico] VARCHAR (50)  NULL,
    CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED ([IdCarrera] ASC)
);

