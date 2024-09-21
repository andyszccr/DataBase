CREATE TABLE [dbo].[DetalleEje] (
    [idDetalle]             INT           IDENTITY (1, 1) NOT NULL,
    [IdGrado]               INT           NOT NULL,
    [Decripcion]            VARCHAR (MAX) NULL,
    [Pendiente]             BIT           NULL,
    [idEvidencia]           VARCHAR (20)  NOT NULL,
    [DocumentacionFaltante] VARCHAR (MAX) NULL,
    [ProblemasPresentados]  VARCHAR (MAX) NULL,
    [IdEje]                 CHAR (4)      NOT NULL,
    CONSTRAINT [PK__DetalleE__49CAE2FBD7F2CD5C] PRIMARY KEY CLUSTERED ([idDetalle] ASC),
    CONSTRAINT [FK_DetalleEje_Eje] FOREIGN KEY ([IdEje]) REFERENCES [dbo].[Eje] ([Ideje]),
    CONSTRAINT [FK_DetalleEje_EvidenciaRequeridaXEje] FOREIGN KEY ([idEvidencia]) REFERENCES [dbo].[EvidenciaRequeridaXEje] ([Evidencia]),
    CONSTRAINT [FK_DetalleEje_GradoMadurez] FOREIGN KEY ([IdGrado]) REFERENCES [dbo].[GradoMadurez] ([IdGrado])
);

