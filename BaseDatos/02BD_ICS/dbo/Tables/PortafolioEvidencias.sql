CREATE TABLE [dbo].[PortafolioEvidencias] (
    [IdEvaluacionEvidencia] INT           NOT NULL,
    [Evidencia]             VARCHAR (20)  NULL,
    [NumeroEvidencia]       INT           IDENTITY (1, 1) NOT NULL,
    [NombreEvidencia]       NCHAR (10)    NULL,
    [Link]                  VARCHAR (100) NULL,
    [IdEje]                 CHAR (4)      NOT NULL,
    [idGrado]               INT           NULL,
    CONSTRAINT [PK_PortafolioEvidencias] PRIMARY KEY CLUSTERED ([IdEvaluacionEvidencia] ASC),
    CONSTRAINT [FK_PortafolioEvidencias_Eje] FOREIGN KEY ([IdEje]) REFERENCES [dbo].[Eje] ([Ideje]),
    CONSTRAINT [FK_PortafolioEvidencias_EvidenciaRequeridaXEje] FOREIGN KEY ([Evidencia]) REFERENCES [dbo].[EvidenciaRequeridaXEje] ([Evidencia]),
    CONSTRAINT [FK_PortafolioEvidencias_GradoMadurez] FOREIGN KEY ([idGrado]) REFERENCES [dbo].[GradoMadurez] ([IdGrado])
);

