/*Elevator service
In this exercises you need to look at the following table and recreate this with SQL code.
You can choose how you want to do it with whatever tool you would like. E.g MySQL workbench, Python connector or SQLite etc… its up to you.
I would suggest that you work with one class member as well.. Have a discussion and make a plan on how to tackle the problem.
*/

CREATE TABLE city (
  CityId INTEGER NOT NULL PRIMARY KEY,
  CityName varchar(255) 
);

CREATE TABLE building (
  BuildingId INTEGER NOT NULL PRIMARY KEY,
  CityId INTEGER ,
  FOREIGN KEY (CityId) REFERENCES city(CityId),
  Floors varchar(255) 
);

ALTER TABLE building
ADD FOREIGN KEY (CityId) REFERENCES city(CityId);


CREATE TABLE elevator (
  ElevatorId INTEGER NOT NULL PRIMARY KEY,
  ElevatorModelId INTEGER ,
  BuildingId INTEGER ,
  FOREIGN KEY (BuildingId) REFERENCES building(BuildingId)
);

ALTER TABLE elevator
ADD FOREIGN KEY (BuildingId) REFERENCES building(BuildingId);

CREATE TABLE elevatorModel (
  ElevatorModelId INTEGER NOT NULL PRIMARY KEY,
  ModelName varchar(255),
  Speed INTEGER,
  MaxWeight INTEGER,
  PeopleWeight INTEGER,
  ElevatorTypeId INTEGER
);

ALTER TABLE elevatorModel
ADD FOREIGN KEY (ElevatorTypeId) REFERENCES elevatorType(ElevatorTypeId);

ALTER TABLE elevator
ADD FOREIGN KEY (ElevatorModelId) REFERENCES elevatorModel(ElevatorModelId);

CREATE TABLE elevatorType (
  ElevatorTypeId INTEGER NOT NULL PRIMARY KEY,
  TypeName varchar(255) 
);

CREATE TABLE serviceActivity (
  ServiceActivityId INTEGER NOT NULL PRIMARY KEY,
  EmployeeId INTEGER,
  ElevatorId INTEGER,
  ServiceDateTime datetime,
  ServiceDescription varchar(255),
  ServiceStatusId INTEGER,
  FOREIGN KEY (ElevatorId) REFERENCES elevator(ElevatorId)
);

ALTER TABLE serviceActivity
ADD FOREIGN KEY (EmployeeId) REFERENCES technician(EmployeeId);

ALTER TABLE serviceActivity
ADD FOREIGN KEY (ElevatorId) REFERENCES Elevator(ElevatorId);

CREATE TABLE technician (
  EmployeeId INTEGER NOT NULL PRIMARY KEY,
  FirstName varchar(255),
  LastName varchar(255),
  EmailAddress varchar(255),
  AnnualSalary INTEGER,
  SpecialSkill varchar(255),
  EmployeeStatusId INTEGER 
);
ALTER TABLE technician
ADD FOREIGN KEY (EmployeeStatusId) REFERENCES employeeStatus(EmployeeStatusId);

CREATE TABLE employeeStatus (
  EmployeeStatusId INTEGER NOT NULL PRIMARY KEY,
  StatusDescription varchar(255)
);

CREATE TABLE serviceStatus (
  ServiceStatusId INTEGER NOT NULL PRIMARY KEY,
  StatusDescription varchar(255)
);

ALTER TABLE serviceactivity
ADD FOREIGN KEY (ServiceStatusId) REFERENCES serviceStatus(ServiceStatusId);






















