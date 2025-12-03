USE [CarsDatabase]
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'Cars' AND type = 'U')
BEGIN
    CREATE TABLE [dbo].[Cars] (
        [Id]          INT            IDENTITY (1, 1) NOT NULL,
        [Number]      NVARCHAR (20)  NOT NULL,
        [Year]        INT            NOT NULL,
        [Brand]       NVARCHAR (50)  NOT NULL,
        [Color]       NVARCHAR (30)  NULL,
        [Condition]   NVARCHAR (20)  NULL,
        [OwnerName]   NVARCHAR (100) NOT NULL,
        [Address]     NVARCHAR (200) NOT NULL,
        [CreatedDate] DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
        PRIMARY KEY CLUSTERED ([Id] ASC)
    )
    PRINT 'Таблица Cars создана успешно.'
END
GO