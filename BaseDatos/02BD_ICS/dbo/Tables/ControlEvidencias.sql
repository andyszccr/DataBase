CREATE TABLE [dbo].[ControlEvidencias] (
    [IdControlEvidencia] INT           IDENTITY (1, 1) NOT NULL,
    [Evidencia]          VARCHAR (20)  NOT NULL,
    [NombreEvidencia]    INT           NOT NULL,
    [Link]               VARCHAR (MAX) NOT NULL,
    [IdGrado]            INT           NOT NULL,
    CONSTRAINT [PK__ControlE__4F93EF23382B4993] PRIMARY KEY CLUSTERED ([IdControlEvidencia] ASC),
    CONSTRAINT [FK_ControlEvidencias_EvidenciaRequeridaXEje] FOREIGN KEY ([Evidencia]) REFERENCES [dbo].[EvidenciaRequeridaXEje] ([Evidencia]),
    CONSTRAINT [FK_ControlEvidencias_GradoMadurez] FOREIGN KEY ([IdGrado]) REFERENCES [dbo].[GradoMadurez] ([IdGrado])
);

