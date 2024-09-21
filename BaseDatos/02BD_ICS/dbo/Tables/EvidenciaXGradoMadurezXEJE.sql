CREATE TABLE [dbo].[EvidenciaXGradoMadurezXEJE] (
    [IDGM]      INT          IDENTITY (1, 1) NOT NULL,
    [Ideje]     CHAR (4)     NOT NULL,
    [Evidencia] VARCHAR (20) NOT NULL,
    [IdGrado]   INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([IDGM] ASC),
    CONSTRAINT [FK_EvidenciaXGradoMadurezXEJE_Eje] FOREIGN KEY ([Ideje]) REFERENCES [dbo].[Eje] ([Ideje]),
    CONSTRAINT [FK_EvidenciaXGradoMadurezXEJE_EvidenciaRequeridaXEje] FOREIGN KEY ([Evidencia]) REFERENCES [dbo].[EvidenciaRequeridaXEje] ([Evidencia]),
    CONSTRAINT [FK_EvidenciaXGradoMadurezXEJE_GradoMadurez] FOREIGN KEY ([IdGrado]) REFERENCES [dbo].[GradoMadurez] ([IdGrado])
);

