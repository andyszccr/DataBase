CREATE TABLE [dbo].[ActivosCliente] (
    [NumeroActivo]             VARCHAR (60)  NOT NULL,
    [Placa]                    VARCHAR (60)  NOT NULL,
    [Estado]                   VARCHAR (150) NOT NULL,
    [Categoria]                VARCHAR (150) NOT NULL,
    [UbicacionD]               VARCHAR (250) NOT NULL,
    [DescripcionCorta]         VARCHAR (200) NOT NULL,
    [DescripcionLarga]         VARCHAR (400) NOT NULL,
    [Modelo]                   VARCHAR (150) NOT NULL,
    [Marca]                    VARCHAR (150) NOT NULL,
    [NumeroSerie]              VARCHAR (150) NOT NULL,
    [ObservacionesAdicionales] VARCHAR (450) NOT NULL
);

