CREATE TABLE [dbo].[departments]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[department_name] NVARCHAR(50) NOT NULL,
	[location_id] INT   NOT NULL, 
    CONSTRAINT [FK_departments_locations] FOREIGN KEY ([location_id]) REFERENCES [locations]([id])
)
