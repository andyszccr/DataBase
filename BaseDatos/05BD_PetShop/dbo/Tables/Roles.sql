CREATE TABLE [dbo].[Roles] (
    [RolesID]      INT           IDENTITY (1, 1) NOT NULL,
    [RolesCode]    VARCHAR (50)  NOT NULL,
    [RolesName]    VARCHAR (250) NOT NULL,
    [RolesCreated] DATETIME      NULL,
    [RolesUpdate]  DATETIME      NULL,
    [RolesDelete]  DATETIME      NULL,
    [RolesStatus]  BIT           NULL,
    CONSTRAINT [PK__Roles__C4B278208A5A803B] PRIMARY KEY CLUSTERED ([RolesID] ASC)
);

