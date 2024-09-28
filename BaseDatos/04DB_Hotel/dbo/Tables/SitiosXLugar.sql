CREATE TABLE [dbo].[SitiosXLugar] (
    [IdLugarSitio] INT IDENTITY (1, 1) NOT NULL,
    [Idlugar]      INT NOT NULL,
    [idSitio]      INT NOT NULL,
    PRIMARY KEY CLUSTERED ([IdLugarSitio] ASC),
    CONSTRAINT [FK_SitiosXLugar_Lugares] FOREIGN KEY ([Idlugar]) REFERENCES [dbo].[Lugares] ([IdLugar]),
    CONSTRAINT [FK_SitiosXLugar_Sitios] FOREIGN KEY ([idSitio]) REFERENCES [dbo].[Sitios] ([IdSitios])
);

