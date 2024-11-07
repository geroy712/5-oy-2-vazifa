
CREATE TABLE Departments (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);


CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);


CREATE TABLE Projects (
    id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);


CREATE TABLE Tasks (
    id INT PRIMARY KEY,
    description TEXT,
    project_id INT,
    employee_id INT,
    FOREIGN KEY (project_id) REFERENCES Projects(id) ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES Employees(id) ON DELETE SET NULL
);

ALTER TABLE Employees
ADD email VARCHAR(100);


ALTER TABLE Tasks
MODIFY description VARCHAR(255);

UPDATE Employees
SET position = 'Senior Developer'
WHERE id = 1;


UPDATE Projects
SET title 
WHERE id = 2;

DELETE FROM Projects
WHERE id = 3;


DELETE FROM Employees
WHERE id = 4;

