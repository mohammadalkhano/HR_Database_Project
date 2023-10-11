CREATE TABLE [dbo].[employees]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [first_name] NVARCHAR(50) NULL,
	[last_name] NVARCHAR(50) NULL,
	[email] NVARCHAR(50) NULL,
	[phone_number] NVARCHAR(50) NULL,
	[hire_date] DATE NOT NULL,
	[job_id] INT NOT NULL,
	[salary] NVARCHAR(50) NOT NULL,
	[manager_id] INT NULL,
	[department_id] INT NULL, 
    CONSTRAINT [FK_employees_jobs] FOREIGN KEY ([job_id]) REFERENCES [jobs]([id]),
	CONSTRAINT [FK_employees_department] FOREIGN KEY ([department_id]) REFERENCES [departments]([id]),
	CONSTRAINT [FK_employees_employee] FOREIGN KEY ([manager_id]) REFERENCES [employees]([id]),
)
