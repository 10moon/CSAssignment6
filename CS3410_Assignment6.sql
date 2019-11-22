CREATE DATABASE CS3410_Assignment6;

DROP TABLE Department;
DROP TABLE Projects;
DROP TABLE Employee;
DROP TABLE Dependant

CREATE TABLE Employee(
	SSN varchar(255),
	EmployeeName varchar(255),
	Address varchar(255),
	Salary int,
	DoB date,
	WorksFor varchar(255),
	Manages varchar(255),
	Supervisor int,
	Supervisee int,
	PRIMARY KEY( SSN )
	FOREIGN KEY (WorksFor) REFERENCES USER (DepartmentName)
	FOREIGN KEY (Manages) REFERENCES USER (DepartmentName)
	FOREIGN KEY (Supervisor) REFERENCES USER (SSN)
	FOREIGN KEY (Supervisee) REFERENCES USER (SSN)
);

CREATE TABLE Department(
	DepartmentName varchar(255),
	DepartmentNumber varchar(255),
	Locations varchar(255),
	PRIMARY KEY (DepartmentName, DepartmentNumber)
);

CREATE TABLE Location(
	Location varchar(255),
	DepartmentName varchar(255),
	DepartmentNumber int,
	FOREIGN KEY (DepartmentName) REFERENCES USER (DepartmentName)
	FOREIGN KEY (DepartmentNumber) REFERENCES USER (DepartmentNumber)
);

CREATE TABLE Projects(
	ProjectName varchar(255),
	ProjectNumber int,
	Location varchar(255),
	DepartmentName varchar(255),
	DepartmentNumber int
	FOREIGN KEY (DepartmentName) REFERENCES USER (DepartmentName)
	FOREIGN KEY (DepartmentNumber) REFERENCES USER (DepartmentNumber)
	PRIMARY KEY (ProjectName, ProjectNumber)
);

CREATE TABLE Dependant(
	DependantName varchar(255),
	Sex varchar(255),
	DoB date,
	Relationship varchar(255),
	DependantOf varchar(255), 
	PRIMARY KEY( DependantName, EmployeeName )
	FOREIGN KEY (DependantOf) REFERENCES USER (SSN)
);

CREATE TABLE Manager (
	ManagerID int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    FOREIGN KEY (ManagerID) REFERENCES USER (SSN)
);

CREATE TABLE WorksOn(
	ProjectID int NOT NULL AUTO_INCREMENT,
	Hours int,
	WeeksWorkedOn int,
	FOREIGN KEY (ProjectID) REFERENCES USER (ProjectName)
);







































