CREATE TABLE [dbo].[locations]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[street_address] NVARCHAR(50) NULL,
	[postal_code] NVARCHAR (50) NULL,
	[city] NVARCHAR(50) NOT NULL,
	[state_province] NVARCHAR(50) NULL,
	[country_id] INT  NOT NULL, 
    CONSTRAINT [FK_locations_countries] FOREIGN KEY ([country_id]) REFERENCES [countries]([id]),
)
