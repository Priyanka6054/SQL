show databases;
create database companys;

use companys;

-- create Employee table
create table employee (id int, emp_name varchar(50), dep_id int);
insert into employee (id, emp_name, dep_id) values (101, "jhon", 501), (102, "peter", 502),
(103, "wilson", 503), (104, "joel", 504), (105, "kelvin", 505);
select * from employee;
insert into employee (id, emp_name, dep_id) values (106, "jhon", 501);

-- create Dept table
create table dept (dep_id int, d_name varchar(20), loc varchar(50));
insert into dept (dep_id, d_name, loc) values (501, "HR", "mumbai"), (502, "Devops", "chennai"),
(503, "uiux", "banglore"), (504, "python", "mumbai"), (505, "testing", "kolkatta");
select * from dept;
select * from employee dept;
select dep_id, emp_name from employee ;



ALTER TABLE DEPT ADD PRIMARY KEY (dep_id);
ALTER TABLE employee ADD CONSTRAINT new_foreign_key_name 
FOREIGN KEY (dep_id) REFERENCES DEPT (DEP_ID);
-- ALTER TABLE employee ADD CONSTRAINT A
-- FOREIGN KEY (dep_id) REFERENCES DEPT (DEP_ID);




SELECT  * FROM employee INNER JOIN dept 
ON employee.dep_id = dept.dep_id;

SELECT employee.dep_id, id, emp_name, d_name, loc from employee INNER JOIN dept on employee.dep_id = dept.dep_id;

select * from employee left join dept on employee.dep_id = dept.dep_id;

select * from employee right join dept on employee.dep_id = dept.dep_id;