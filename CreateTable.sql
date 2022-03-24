use emp_dept;

CREATE TABLE DEPARTEMENT (
    Dno INTEGER NOT NULL PRIMARY KEY,
    Dname VARCHAR(50),
    Location VARCHAR(50) DEFAULT 'New Delhi'
);

CREATE TABLE EMPLOYEE (
    Eno CHAR(3) NOT NULL PRIMARY KEY,
    ENAME VARCHAR(50) NOT NULL,
    Job_Type VARCHAR(50) NOT NULL,
    SupervisionENO CHAR(3),
    Hire_date DATE NOT NULL,
    Dno INTEGER,
    Commision DECIMAL(10 , 2 ),
    Salary DECIMAL(10 , 2 ) NOT NULL,
    foreign key (Dno) references DEPARTEMENT(Dno),
    foreign key (SupervisionENO) references EMPLOYEE(Eno)
);
