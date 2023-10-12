CREATE VIEW [dbo].[EmployeesView]
	AS 
	SELECT e.first_name,e.last_name, e.email,
	j.title,
	d.department_name,
	l.street_address, l.postal_code, l.city, l.state_province,
	c.country_name,
	r.region_name
	FROM [employees] e
	join jobs j on j.Title is not null 
	join departments d on e.department_id = d.id 
	join locations l on d.location_id = l.Id
	join countries c on l.country_id = c.Id
	join regions r on c.region_id = r.Id
	WHERE e.job_id = j.Id