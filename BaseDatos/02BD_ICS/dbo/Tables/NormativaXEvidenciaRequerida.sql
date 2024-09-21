CREATE TABLE [dbo].[NormativaXEvidenciaRequerida] (
    [IdNormativa]       INT            IDENTITY (1, 1) NOT NULL,
    [Evidencia]         VARCHAR (20)   NOT NULL,
    [IdAporteEvidencia] INT            NOT NULL,
    [Aporte]            VARCHAR (1000) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNormativa] ASC),
    CONSTRAINT [FK_NormativaXEvidenciaRequerida_EvidenciaRequeridaXEje] FOREIGN KEY ([Evidencia]) REFERENCES [dbo].[EvidenciaRequeridaXEje] ([Evidencia])
);

