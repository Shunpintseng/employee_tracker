DROP DATABASE IF EXISTS employee_DB;
CREATE database employee_DB;

USE employee_DB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  dpt_name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

SELECT * FROM department;


CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(8,2) NULL,
  department_id INT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM role;

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
  );

SELECT * FROM employee;

INSERT INTO department (dpt_name) 
VALUES ("Accounting");
INSERT INTO department (dpt_name) 
VALUES ("Marketing");

INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES ("Mary","Moore",3,5);
INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES ("Mark","Sisley",4,5);

INSERT INTO role (title, salary, department_id) 
VALUES ("Accoutant",65000, 1);
INSERT INTO role (title, salary, department_id) 
VALUES ("Marketing",55000, 2);