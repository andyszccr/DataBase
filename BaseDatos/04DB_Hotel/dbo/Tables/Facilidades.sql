CREATE TABLE [dbo].[Facilidades] (
    [IdFacilidad] INT           IDENTITY (1, 1) NOT NULL,
    [Facilidad]   VARCHAR (100) NOT NULL,
    [Estampa]     ROWVERSION    NOT NULL,
    PRIMARY KEY CLUSTERED ([IdFacilidad] ASC)
);

