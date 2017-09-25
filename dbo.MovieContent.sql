CREATE TABLE [dbo].[MovieContent] (
    [MovieID]          INT           NOT NULL IDENTITY,
    [MovieName]        VARCHAR (50)  NULL,
    [MovieCast]        VARCHAR (50)  NULL,
    [MovieDescription] VARCHAR (255) NULL,
    [MovieType]        VARCHAR (50)  NULL,
    [MovieLength]      INT           NULL,
    [MovieRating]      FLOAT (53)    NULL,
    [Image]            VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([MovieID] ASC)
);

