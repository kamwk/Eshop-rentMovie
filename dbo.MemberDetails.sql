CREATE TABLE [dbo].[MemberDetails] (
    [MemberID]   INT          NOT NULL IDENTITY ,
    [MemberName] VARCHAR (50) NULL,
    [Password]   VARCHAR (50) NULL,
    [Email]      VARCHAR (50) NULL,
    [RentalPlan] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([MemberID] ASC)
);

