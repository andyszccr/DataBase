CREATE TABLE [dbo].[Logs] (
    [LogsID]          INT           IDENTITY (1, 1) NOT NULL,
    [LogsCode]        VARCHAR (50)  NOT NULL,
    [LogsDescripcion] VARCHAR (250) NOT NULL,
    [LogsCreated]     DATETIME      NULL,
    [LogsModulo]      VARCHAR (250) NULL,
    [UsuarioID]       INT           NULL,
    [ActivoID]        BIT           NOT NULL,
    CONSTRAINT [PK__Logs__C92054AE2F8188AE] PRIMARY KEY CLUSTERED ([LogsID] ASC)
);

