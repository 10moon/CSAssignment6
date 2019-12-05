DELETE FROM Manager;
DELETE FROM Dependant;
DELETE FROM Employee;
DELETE FROM WorksOn;
DELETE FROM Projects;
DELETE FROM Department;

insert into Department (DepartmentName, DepartmentNumber, Locations)
values  ('Department A', 634, 'Atlanta, GA'),
		('Department B', 180, 'Dallas, TX'),
		('Department C', 544, 'San Diego, CA'),
		('Department E', 457, 'Denver, CO'),
		('Department F', 901, 'Baltimore, MD'),
		('Department G', 333, 'San Antonio, TX'),
		('Department H', 258, 'New York City, NY'),
		('Department I', 784, 'New Orleans, LA'),
		('Department J', 424, 'Lexington, KY'),
		('Department K', 271, 'Seattle, WA');

INSERT INTO Projects(ProjectName, ProjectNumber, DepartmentName, DepartmentNumber, ProjectLocation)
	VALUES
		('Alpha', 1001, 'Department A', 634, 'Atlanta, GA'),
		('Brave', 1002, 'Department B', 180, 'Dallas, TX'),
		('Charlie', 1003, 'Department C', 544, 'San Diego, CA'),
		('Delta', 1004, 'Department E', 457, 'Denver, GA'),
		('Echo', 1005, 'Department F', 901, 'Baltimore, MD'),
		('Foxtrot', 1006, 'Department G', 333, 'San Antonio, TX'),
		('Gamma', 1007, 'Department H', 258, 'New York City, NY'),
		('November', 1008, 'Department I', 784, 'New Orleans, LA'),
		('Sierra', 1009, 'Department J', 424, 'Lexington, KY'),
		('Romeo', 1010, 'Department K', 271, 'Seattle, WA');

INSERT INTO WorksOn (ProjectID, HoursTotal, WeeksWorkedOn, Employees)
	VALUES
		(1010, 60, 8, 'Sean and Chase'),
		(1009, 120, 16, 'Sean and Lauren'),
		(1008, 20, 1, 'Matthew and Chase'),
		(1007, 55, 4, 'Tony and Lauren'),
		(1006, 12, 2, 'Lily and Jakob'),
		(1005, 90, 18, 'Sarah and Maddie'),
		(1004, 44, 2, 'Sarah and Jakob'),
		(1003, 18, 9, 'Damien and Tony'),
		(1002, 10, 4, 'Lily and Maddie'),
		(1001, 17, 6, 'Matthew and Maddie');



INSERT INTO Employee (SSN, EmployeeName, EmployeeAddress, Salary, DoB, Supervisor)
	VALUES
		('477-42-6513', 'Sean', '38 Gonzales Road', '65000', '1971-3-25', 'Maddie'),
		('058-62-2722', 'Lauren', '8299 Pierce Lane', '68000', '1973-8-5', 'Tony'),
		('313-10-5452', 'Chase', '133 San Pablo Street', '60000', '1973-7-24','Jakob'),
		('571-17-1991', 'Matthew', '210 Pilgrim Street', '70000', '1973-5-12','Sarah'),
		('033-66-1703', 'Lily', '505 N. Jackson Lane', '67000', '1981-1-28','Matthew'),
		('367-48-7323', 'Damien', '934 Stonybrook Street.', '61000', '1984-10-12', 'Lily'),
		('600-91-0907', 'Sarah', '1 Bridle Lane', '75000', '1979-1-11','Damien'),
		('607-04-6650', 'Jakob', '777 Schoolhouse Road.', '65000', '1985-12-5','Sarah'),
		('093-80-4520', 'Tony', '935 Canal Drive', '65000', '1975-5-6', 'Jakob'),
		('237-92-9181', 'Maddie', '9 South Court Street.', '68000', '1978-8-14','Tony');

INSERT INTO Dependant(DependantName, Sex, DoB, Relationship, DependantOf)
	VALUES
		('Kyle', 'Male', '2019-01-01', 'Father', '477-42-6513'),
		('Grace', 'Female', '2019-01-01', 'Sister', '058-62-2722'),
		('Mary', 'Female', '2019-01-01', 'Wife', '033-66-1703'),
		('Drake', 'Male', '2019-01-01', 'Husband', '367-48-7323'),
		('Patrick', 'Male', '2019-01-01', 'Husband', '600-91-0907'),
		('Hailey', 'Female', '2019-01-01', 'Wife', '313-10-5452'),
		('Emma', 'Female', '2019-01-01', 'Daughter', '093-80-4520'),
		('Tom', 'Male', '2019-01-01', 'Son', '237-92-9181'),
		('Jason', 'Male', '2019-01-01', 'Brother', '607-04-6650'),
		('Alice', 'Female', '2019-01-01', 'Neighbor', '571-17-1991');


INSERT INTO Manager (FirstName, LastName, StartDate)
	VALUES
		('Sean', 'Moon', '2017-02-06'),
		('Lauren', 'Englander', '2018-09-10'),
		('Chase', 'Daniels', '2019-02-25'),
		('Matthew', 'Berry', '2019-04-01'),
		('Lily', 'Stiles', '2019-12-23'),
		('Damien', 'Stagsman', '2016-04-04'),
		('Jakob', 'Jackson', '2017-01-09'),
		('Maddie', 'Slye', '2017-11-13'),
		('Tony', 'Gonzales', '2019-02-25')
