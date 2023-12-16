CREATE TABLE employee (
    empId int NOT NULL,
    name varchar(255) NOT NULL,
    supervisor int NOT NULL,
    salary int NOT NULL,
    PRIMARY KEY (empId),
    UNIQUE (empId)
);

CREATE TABLE bonus (
    empId int NOT NULL,
    bonus int NOT NULL,
    FOREIGN KEY (empId) REFERENCES employee(empId),
    UNIQUE (empId)
);