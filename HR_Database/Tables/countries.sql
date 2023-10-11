CREATE TABLE [dbo].[countries]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[country_name] NVARCHAR (50) NULL,
	[region_id] INT NOT NULL, 
    CONSTRAINT [FK_countries_region] FOREIGN KEY ([region_id]) REFERENCES [regions]([id]),
)
