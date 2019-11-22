CREATE DATABASE CS3410_Assignment6;

DROP TABLE Department;
DROP TABLE Projects;
DROP TABLE Employee;
DROP TABLE Dependant

CREATE TABLE Employee(
	SSN varchar(255),
	EmployeeName varchar(255),
	Address varchar(255),
	Address varchar(255),
	Salary int,
	DoB date,
	PRIMARY KEY( SSN )
	FOREIGN KEY (WorksFor) REFERENCES USER (DepartmentName)
	FOREIGN KEY (Manages) REFERENCES USER (DepartmentName)
	FOREIGN KEY (Supervises) REFERENCES USER (SSN)
);

CREATE TABLE Department(
	DepartmentName varchar(255),
	DepartmentNumber varchar(255),
	Locations varchar(255),
	PRIMARY KEY (DepartmentName, DepartmentNumber)
);

CREATE TABLE Location(
	Location varchar(255),
	DepartmentName varchar(255), -- TODO this is a foreign key
	DepartmentNumber int, -- TODO this is a foreign key
);

CREATE TABLE Projects(
	ProjectName varchar(255),
	ProjectNumber int,
	Location varchar(255),
	DepartmentName varchar(255), -- TODO this is a foreign key
	DepartmentNumber int -- TODO this is a foreign key
);

CREATE TABLE Dependant(
	DependantName ,
	Sex ,
	DoB ,
	Relationship ,
	EmployeeSSN, -- TODO this is a foreign key
	PRIMARY KEY( DependantName, EmployeeName )
);


