CREATE TABLE [dbo].[Barrio] (
    [Barrio]        INT           IDENTITY (1, 1) NOT NULL,
    [BarroCode]     VARCHAR (5)   NOT NULL,
    [ProvinceID]    INT           NOT NULL,
    [CantonID]      INT           NULL,
    [Distrito]      INT           NULL,
    [BarrioName]    VARCHAR (250) NOT NULL,
    [BarrioCreated] DATETIME      NOT NULL,
    [BarrioUpdate]  DATETIME      NOT NULL,
    [BarrioDelete]  DATETIME      NOT NULL,
    [BarrioStatus]  BIT           NULL,
    PRIMARY KEY CLUSTERED ([Barrio] ASC)
);

