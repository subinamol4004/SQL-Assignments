CREATE DATABASE employe;

USE employe;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

ALTER TABLE Employees
ADD email VARCHAR(255);

ALTER TABLE Employees
MODIFY designation VARCHAR(150);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;
DROP DATABASE employee;

DROP DATABASE IF EXISTS employe;

CREATE DATABASE employe;

USE employe;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
        NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30)
        NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,

    employee_name VARCHAR(50) NOT NULL,

    gender ENUM('M','F'),

    age INT CHECK (age >= 18),

    hire_date DATE DEFAULT (CURRENT_DATE),

    designation VARCHAR(100),

    department_id INT,

    location_id INT,

    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

SHOW DATABASES;

USE employe;

SHOW TABLES;
DESC Departments;

DESC Location;

DESC Employees;
INSERT INTO Departments
(department_name)
VALUES ('HR'), ('IT'), ('Finance');

INSERT INTO Location (location)
VALUES ('Kochi'), ('Kollam'), ('Trivandrum');

INSERT INTO Employees
(employee_name, gender, age, designation,
 department_id, location_id, salary)
VALUES
('Arun', 'M', 25, 'Manager', 1, 1, 35000.00),
('Anu', 'F', 28, 'Developer', 2, 2, 40000.00),
('Rahul', 'M', 30, 'Accountant', 3, 3, 45000.00);

SELECT * FROM Employees;