select Eno "Employee Number",Ename "Employee Name", Job_type "Job", Hire_date "Hire Date" from EMPLOYEE;
select distinct Job_type "Unique Job" from EMPLOYEE;
select concat(Ename,", ",Job_type) "Employee Name, Job" from EMPLOYEE;
select concat(Eno,", ",Ename,", ",Job_type,", ",SupervisonENO,", ",Hire_date,", ",Dno,", ",Commission,", ",Salary) "THE_OUTPUT" from EMPLOYEE;
select Ename "Employee Name", Salary "Salary" from EMPLOYEE where Salary > 2850;
select Ename "Employee Name", Dno "Department Number" from EMPLOYEE where Eno = 79;
select Ename "Employee Name", Salary "Salary" from EMPLOYEE where Salary < 1500 or Salary > 2850;
select Ename "Employee Name", Dno "Department Number" from EMPLOYEE where Dno = 10 or Dno = 30 order by Ename;
select Ename , Hire_date from EMPLOYEE where Hire_date like "1981%";
select Ename , Job_type from EMPLOYEE where SupervisonENO = "NIL";
select Ename , Salary , Commission from EMPLOYEE where Commission != 0;
select * from EMPLOYEE order by Salary desc , Commission desc;
select Ename "Employee Name" from EMPLOYEE where Ename like "__a%";
select Ename "Employee Name" from EMPLOYEE where Ename like "rr%" or "aa%" or Dno = 30 or Eno = 778;
select Ename, Salary, Commission from EMPLOYEE where Commission > (Salary + 0.05 * Salary);
select Curdate() "Current Date" , Dayname(Curdate()) "Day";
########17#########
select y.Emp_name as 'Name',
    y.Hiring_date,
    case
        when dayname(y.new_date) = 'Tuesday' then adddate(y.new_date, interval 6 day)
        when dayname(y.new_date) = 'Wednesday' then adddate(y.new_date, interval 5 day)
        when dayname(y.new_date) = 'Thursday' then adddate(y.new_date, interval 4 day)
        when dayname(y.new_date) = 'Friday' then adddate(y.new_date, interval 3 day)
        when dayname(y.new_date) = 'Saturday' then adddate(y.new_date, interval 2 day)
        when dayname(y.new_date) = 'Sunday' then adddate(y.new_date, interval 1 day)
        else y.new_date
    end as Salary_review_date
from (
        select x.Ename Emp_Name,
            x.Hire_date Hiring_date,
            adddate(hire_date, interval 6 month) new_date
        from (
                select Ename,
                    Hire_date
                from EMPLOYEE
            ) x
    ) y;
########END########
18 -> select Ename Name, TIMESTAMPDIFF(MONTH,Hire_date,Curdate()) "Months Between Today and Hire_date" from EMPLOYEE NATURAL JOIN DEPARTMENT where Dname = "Purchase";
19 -> select concat(Ename," earns $",Salary," monthly but wants $", 3*Salary, ".") "Dream Salary" from EMPLOYEE;
20 -> select Ename from EMPLOYEE where Ename like "J%" or "A%" or "M%";
21 -> select Ename,Hire_date,DAYOFWEEK(Hire_date) DayOfWeeek from EMPLOYEE;
22 -> select EMPLOYEE.Ename Name, EMPLOYEE.Dno "Department Number" ,DEPARTMENT.Dname "Department Name" from EMPLOYEE.EMPLOYEE NATURAL JOIN EMPLOYEE.DEPARTMENT;
23 -> select Job_type from EMPLOYEE NATURAL JOIN DEPARTMENT where Dno = 30;
24 -> select Ename Name,Dname "Department Name" from EMPLOYEE NATURAL JOIN DEPARTMENT where Ename like "%A%";
25 -> select Ename Name,Job_type Job, Dno "Department Number", Dname "Department Name" from EMPLOYEE NATURAL JOIN DEPARTMENT where Location = "Dallas";
26 -> select Emp.Ename Name, Emp.Eno "Employee Number",Sup.Ename "Supervison Name",Sup.Eno "Supervison Emp No." from EMPLOYEE as Emp LEFT OUTER JOIN EMPLOYEE as Sup on Sup.Eno = Emp.SupervisonENO;
27 -> select Ename,Dno,Salary from EMPLOYEE where (Salary,Dno) IN (select Dno,Salary from EMPLOYEE where Commission >0);
28 -> select Ename ,REPEAT("*",(Salary/100)) "Salary in * which signifies $100" from EMPLOYEE;
29 -> select max(Salary) "Highest Salary",min(Salary) "Lowest Salary",sum(Salary) Sum,avg(Salary) Average from EMPLOYEE;
30 -> select Job_type "Job",COUNT(Job_type) "No. of Employees" from EMPLOYEE GROUP BY Job_type ;
31 -> select COUNT(Distinct SupervisonENO) from EMPLOYEE;
32 -> 