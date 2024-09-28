CREATE TABLE [dbo].[LugaresXfacilidades] (
    [IDLugarFacilidad] INT IDENTITY (1, 1) NOT NULL,
    [IdLugar]          INT NOT NULL,
    [IdFacilidad]      INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IDLugarFacilidad] ASC),
    CONSTRAINT [FK_LugaresXfacilidades_Facilidades] FOREIGN KEY ([IdFacilidad]) REFERENCES [dbo].[Facilidades] ([IdFacilidad]),
    CONSTRAINT [FK_LugaresXfacilidades_Lugares] FOREIGN KEY ([IdLugar]) REFERENCES [dbo].[Lugares] ([IdLugar])
);

