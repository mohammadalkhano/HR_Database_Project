﻿CREATE TABLE [dbo].[jobs]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(50) NOT NULL,
	[Min_Salary] NVARCHAR(50) NULL,
	[Max_Salary] NVARCHAR(50) NULL
)
