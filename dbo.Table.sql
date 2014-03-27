CREATE TABLE [dbo].[Table] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [recipyName] NVARCHAR (50)  NOT NULL,
    [subBy]      NVARCHAR (50)  NOT NULL,
    [ing1]       NVARCHAR (50)  NOT NULL,
    [ing2]       NVARCHAR (50)  NULL,
    [ing3]       NVARCHAR (50)  NULL,
    [ing4]       NVARCHAR (50)  NULL,
    [ing5]       NVARCHAR (50)  NULL,
    [prep]       NVARCHAR (50)  NOT NULL,
    [note]       NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

