drop database if exists presentation;
create database presentation;

use presentation;

CREATE TABLE Department(
	DepartmentName varchar(255),
	DepartmentNumber varchar(255),
	Locations varchar(255),
	PRIMARY KEY (DepartmentName, DepartmentNumber)
);

CREATE TABLE Locations(
	Locations varchar(255) PRIMARY KEY UNIQUE,
	DepartmentName varchar(255) REFERENCES Department(DepartmentName),
	DepartmentNumber int REFERENCES Department(DepartmentNumber)
);

CREATE TABLE Projects(
	ProjectName varchar(255) UNIQUE,
	ProjectNumber int UNIQUE,
	ProjectLocation varchar(255) UNIQUE,
	Locations varchar(255),
	DepartmentName varchar(255) REFERENCES Department(DepartmentName),
	DepartmentNumber varchar(255) REFERENCES Department(DepartmentNumber),
	PRIMARY KEY (ProjectName, ProjectNumber)
);

CREATE TABLE WorksOn(
	ProjectID int PRIMARY KEY REFERENCES Projects(ProjectNumber),
	HoursTotal int,
	WeeksWorkedOn int,
	Employees varchar(255)
);

CREATE TABLE Employee(
	SSN varchar(255) UNIQUE PRIMARY KEY,
	EmployeeName varchar(255) UNIQUE,
	EmployeeAddress varchar(255),
	Salary int,
	DoB date,
	Supervisor varchar(255) REFERENCES Employee(EmployeeName)
);

CREATE TABLE Dependant(
	DependantName varchar(255) UNIQUE,
	Sex varchar(255),
	DoB date,
	Relationship varchar(255),
	DependantOf varchar(255) REFERENCES Employee(EmployeeName),
	PRIMARY KEY( DependantName )
);

CREATE TABLE Manager (
	ManagerID int PRIMARY KEY AUTO_INCREMENT,
	FirstName varchar(255) REFERENCES Employee(EmployeeName),
    LastName varchar(255) NOT NULL,
    StartDate date
);
