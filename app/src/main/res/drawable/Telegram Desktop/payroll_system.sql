
create database Payroll_System; 
use Payroll_System;
show tables;
create table Employee(
 emp_id int primary key NOT NULL, 
    pos_id int NOT NULL,
    dep_id varchar(10) NOT NULL, 
    payroll_id int NOT NULL,
    emp_name varchar(25) NOT NULL, 
    gender varchar(1) NOT NULL, 
    email varchar(25),
    contact_num int(10) NOT NULL, 
    address varchar(50),
    bank_num int 
);


Insert into Employee value (1, 101, "D0001",    301,    'Jame Dove', 'M',   "jame.dove@example.com",  087665210, "486 Elm St", 103456);
Insert into Employee value (2, 102, "D0002",    302,    'Jane Doe', 'F',     "jane.doe@example.com",    087543210, "456 Elm St", 123456);
Insert into Employee value (3, 103, "D0003", 303, 'Michael Brown','M', "michael.brown@example.com", 051234567, "789 Oak Ave", 654321);
Insert into Employee value (4, 101, "D0004", 304,  'Sarah Johnson' , 'F',  "sarah.johnson@example.com", 012223333, "987 Pine Rd", 789456);
Insert into Employee value (5, 104, "D0005", 305, ' David Lee' , 'M', "david.lee@example.com",   098887777, "654 Maple Ln", 4567890);
Insert into Employee value (6, 102, "D0006", 306, 'Emily Taylor', 'F' , "emily.taylor@example.com",  078889999, "321 Oak St", 987654);
Insert into Employee value (7, 105, "D0007", 307, 'Daniel Chen' , 'M', "daniel.chen@example.com",  085556666, "789 Elm Ave", 321987);
Insert into Employee value (8, 103, "D0008", 308, 'Olivia Wilson' , 'F', "olivia.wilson@example.com",  023334444, "456 Pine Rd", 654987);
Insert into Employee value (9, 101, "D0009", 309, 'Ethan Davis', 'M', "ethan.davis@example.com",  089990000, "123 Maple St", 789654);
Insert into Employee value (10, 104, "D0010", 310, 'Sophia Lee' , 'F' ,  "sophia.lee@example.com",  066777888, "987 Oak Ln" , 456123);

create table Emp_Position 
(
 pos_id int primary key  NOT NULL,
    emp_id int  NOT NULL, 
    pos_role varchar(15),
    pos_grade varchar(15)
);

Insert into Emp_Position value (101, 1,  "Manager", "Grade 5");
Insert into Emp_Position value (102, 2,  "Senior Analyst", "Grade 4");
Insert into Emp_Position value (103, 3,  "Developer", "Grade 3");
Insert into Emp_Position value (104, 4,  "Intern", "Grade 1");
Insert into Emp_Position value (105, 5,  "Associate", "Grade 2");
Insert into Emp_Position value (106, 6,  "Analyst", "Grade 3");
Insert into Emp_Position value (107, 7,  "Developer", "Grade 4");
Insert into Emp_Position value (108, 8,  "Manager", "Grade 5");
Insert into Emp_Position value (109, 9,  "Associate", "Grade 2");
Insert into Emp_Position value (110, 10, "Senior Analyst", "Grade 4");

create table Department
(
	dep_id varchar(10) primary key NOT NULL, 
    supervisor_id varchar(10), 
    dep_name varchar(25) NOT NULL
);

#insert department
Insert into Department value ("D0001", "S1010", "Sales");
Insert into Department value ("D0002",   "S1021", "Marketing");
Insert into Department value ("D0003",   "S1032", "Finance");
Insert into Department value ("D0004",   "S1043", "Human Resources");
Insert into Department value ("D0005",   "S1054", "Operations");
Insert into Department value ("D0006",  "S1065", "Research");
Insert into Department value ("D0007",   "S1076", "IT");
Insert into Department value ("D0008",   "S1087", "Customer Service");
Insert into Department value ("D0009",   "S1098", "Production");
Insert into Department value ("D0010",   "S1109",  "Administration");

CREATE TABLE Attendance (
    attendance_id varchar(10) PRIMARY KEY NOT NULL,
    emp_id INT NOT NULL,
    date_record DATE,
    overtime DOUBLE,
    time_in TIME,
    time_out TIME
);


#insert attendance
Insert into  Attendance value ("ATD1", 1, '2023-10-01', 1.5, "08:00:00", "17:30:00");
Insert into  Attendance value ("ATD2", 2, '2023-10-01', 0.5, "09:00:00", "17:00:00");
Insert into  Attendance value ("ATD3", 3, '2023-10-01', 2.0, "08:30:00", "18:00:00");
Insert into  Attendance value ("ATD4", 4, '2023-10-01', 0.0, "09:30:00", "18:00:00");
Insert into  Attendance value ("ATD5", 5, '2023-10-01', 1.0, "08:00:00", "17:00:00");
Insert into  Attendance value ("ATD6", 6, '2023-10-01', 0.0, "09:00:00", "17:30:00");
Insert into  Attendance value ("ATD7", 7, '2023-10-01', 1.5, "08:30:00", "17:30:00");
Insert into  Attendance value ("ATD8", 8, '2023-10-01', 0.0, "09:30:00", "18:00:00");
Insert into  Attendance value ("ATD9", 9, '2023-10-01', 2.0, "08:00:00", "17:00:00");
Insert into  Attendance value ("ATD10", 10, '2023-10-01', 0.5, "09:00:00", "17:30:00");

create table Bonus 
(
	bonus_id VARCHAR(10) primary key NOT NULL,
    emp_id int  NOT NULL,
    allowance int,
    overtime_rate double
);


#Insert bonus
Insert into bonus value ("B001", 1, 1000, 15.50);
Insert into Bonus value ("B002", 2, 2000 , 12.25);
Insert into Bonus value ("B003", 3, 3000, 10.00);
Insert into Bonus value ("B004", 4, 4000, 14.75);
Insert into Bonus value ("B005", 5, 5000, 11.00);
Insert into Bonus value ("B006", 6, 6000, 13.50);
Insert into Bonus value ("B007", 7, 7000, 16.00);
Insert into Bonus value ("B008", 8, 8000, 9.75);
Insert into Bonus value ("B009", 9, 9000, 12.00);
Insert into Bonus value ("B010", 10, 10000, 14.25);

create table Payroll
(
 payroll_id int primary key  NOT NULL, 
    emp_id int  NOT NULL,
    pos_id int,
    deduction_id varchar(25),
    attendance_id varchar(10),
    bonus_id VARCHAR(10),
    base_salary double, 
    net_salary double,
    pay_date date
);

#Insert Payroll
Insert into Payroll value (301, 1, 101, 'DE1', 'ATD1', "B001", 5000.00, 4750.00, '2023-10-15');
Insert into Payroll value (302, 2, 102, 'DE2', 'ATD2', "B002", 4000.00, 3850.00, '2023-10-15');
Insert into Payroll value (303, 3, 103, 'DE3', 'ATD3', "B003", 3500.00, 3400.00, '2023-10-15');
Insert into Payroll value (304, 4, 104, 'DE4', 'ATD4', "B004", 3000.00, 2975.00, '2023-10-15');
Insert into Payroll value (305, 5, 105, 'DE5', 'ATD5', "B005", 4500.00, 4375.00, '2023-10-15');
Insert into Payroll value (306, 6, 106, 'DE6', 'ATD6', "B006", 3800.00, 3700.00, '2023-10-15');
Insert into Payroll value (307, 7, 107, 'DE7', 'ATD7', "B007", 5200.00, 5040.00, '2023-10-15');
Insert into Payroll value (308, 8, 108, 'DE8', 'ATD8', "B008", 4200.00, 4080.00, '2023-10-15');
Insert into Payroll value (309, 9, 109, 'DE9', 'ATD9', "B009", 3900.00, 3800.00, '2023-10-15');
Insert into Payroll value (310, 10, 110, 'DE010', 'ATD10',"B010", 4800.00, 4620.00, '2023-10-15');

create table Deduction
(
 deduction_id varchar(25) primary key  NOT NULL,
    emp_id int NOT NULL,
    leave_id varchar(25),
    tax double,
    fund double, 
    description varchar(50),
    total_amount double
);

#Insert Deduction
Insert into Deduction value ('DE1', 1, 'LV001', 100.0, 50.0, "Medical expense deduction", 150.0);
Insert into Deduction value ('DE2', 2, 'LV002', 75.0, 25.0, "Transportation deduction", 100.0);
Insert into Deduction value ('DE3', 3, 'LV003', 50.0, 0.0, "No deduction", 50.0);
Insert into Deduction value ('DE4', 4, 'LV004', 200.0, 100.0, "Retirement savings deduction", 300.0);
Insert into Deduction value ('DE5', 5, 'LV005', 150.0, 75.0, "Education expense deduction", 225.0);
Insert into Deduction value ('DE6', 6, 'LV006', 50.0, 25.0, "Miscellaneous deduction", 75.0);
Insert into Deduction value ('DE7', 7, 'LV007', 100.0, 50.0, "Health insurance deduction", 150.0);
Insert into Deduction value ('DE8', 8, 'LV008', 75.0, 0.0, "No tax deduction", 75.0);  
Insert into Deduction value ('DE9', 9, 'LV009', 200.0, 100.0, "Housing allowance deduction", 300.0);
Insert into Deduction value ('DE010', 10,'LV010', 150.0, 75.0, "Childcare deduction", 225.0);


create table Emp_Leave
(
 leave_id varchar(25) primary key NOT NULL,
    emp_id int  NOT NULL,
    duration double, 
    start_date date,
    end_date date 
);

#insert Emp_Leave
Insert into Emp_Leave value ('LV001', 1, 5.0, '2023-01-01', '2023-01-05');
Insert into Emp_Leave value ('LV002', 2, 3.5, '2023-02-10', '2023-02-13');
Insert into Emp_Leave value ('LV003', 3, 2.0, '2023-03-15', '2023-03-16');
Insert into Emp_Leave value ('LV004', 4, 1.5, '2023-04-20', '2023-04-21');
Insert into Emp_Leave value ('LV005', 5, 4.0, '2023-05-25', '2023-05-28');
Insert into Emp_Leave value ('LV006', 6, 2.5, '2023-06-10', '2023-06-12');
Insert into Emp_Leave value ('LV007', 7, 3.0, '2023-07-15', '2023-07-18');
Insert into Emp_Leave value ('LV008', 8, 1.0, '2023-08-20', '2023-08-21');
Insert into Emp_Leave value ('LV009', 9, 2.5, '2023-09-10', '2023-09-12');
Insert into Emp_Leave value ('LV010', 10, 4.5, '2023-10-25', '2023-10-30');

#adding Foreign key 
#Employee
alter table Employee add constraint fk_emp_pos foreign key (pos_id) references Emp_Position(pos_id);
alter table Employee add constraint fk_emp_dep foreign key (dep_id) references Department(dep_id);
alter table Employee add constraint fk_emp_payroll foreign key (payroll_id) references Payroll(payroll_id);


#Emp_position
alter table Emp_Position add constraint fk_EmPos_emp foreign key (emp_id) references Employee(emp_id);

#bonus
alter table Bonus add constraint fk_bonus_emp foreign key (emp_id) references Employee (emp_id);

#payroll
alter table Payroll add constraint fk_payroll_emp foreign key (emp_id) references Employee (emp_id);
alter table Payroll add constraint fk_payroll_pos foreign key (pos_id) references Emp_Position (pos_id);
alter table Payroll add constraint fk_payroll_deduct foreign key (deduction_id) references Deduction (deduction_id);
alter table Payroll add constraint fk_payroll_attend foreign key (attendance_id) references Attendance (attendance_id);
alter table Payroll add constraint fk_payroll_bonus foreign key (bonus_id) references Bonus (bonus_id);

#attendance
alter table Attendance add constraint fk_attend_emp foreign key (emp_id) references Employee (emp_id);

#Deduction
alter table Deduction add constraint fk_deduct_emp foreign key (emp_id) references Employee (emp_id);
alter table Deduction add constraint fk_deduct_EmLeave foreign key (leave_id) references Emp_Leave (leave_id);

#Emp_Leave
alter table Emp_Leave add constraint fk_EmLeave_emp foreign key (emp_id) references Employee (emp_id);

use payroll_system;
show tables;

select * from employee;
select * from attendance;
select * from bonus;
select * from payroll;
select * from Emp_Leave;
select * from Deduction;
select * from Department;
select * from Emp_Position;

# 1 create two (2) queries involing relation from two tables

#(1)
select e.emp_id, e.emp_name, p.pos_role,p.pos_grade from Employee as e, Emp_Position as p 
where e.emp_id = p.emp_id order by e.emp_id asc;
#(2)
select e.emp_id, e.emp_name, d.dep_name from Employee as e, Department as d 
where e.dep_id = d.dep_id AND dep_name = "IT";

# 2 create queries involving aggregate functions such as sum, count avg, max, min 

#sum
select sum(net_salary) as The_Total_Sum_Of_Salary from payroll;
#count
select count(base_salary) as The_Amount_Of_Salary from payroll;
#avg
select avg(allowance) as The_Average_Allowance from bonus; 
#max
select Max(allowance) as Largest_Allowance from bonus where emp_id <= 5 ; 
#min
select emp_id, base_salary, net_salary as Minimum_Salary from payroll 
group by emp_id, base_salary, net_salary having net_salary = (select min(net_salary) from payroll);

#3 create (2) queries involving complicated selects and JOIN from three or more tables

#(1)
select e.emp_id, emp_name, pos_role, b.allowance, p.net_salary
from employee  e join emp_position  ep on e.emp_id = ep.emp_id 
join bonus b on e.emp_id = b.emp_id 
join payroll p on b.bonus_id = p.bonus_id;

#(2)
select e.emp_id, emp_name, dep_name, p.base_salary, description
from department d join employee e using (dep_id)
join payroll p using (emp_id)
join deduction de using (deduction_id);

#4 create (1) query involving joins that have a NOT keyword in the relations

#(1)
select e.emp_id, e.emp_name, e.gender, e.email, d.dep_name, d.supervisor_id, d.dep_id
from department as d join employee as e  using (dep_id) 
where d.dep_id = e.dep_id AND NOT d.dep_id = "D0001" AND NOT d.dep_id = "D0005";

#5 TWO (2) queries involving GROUP BY and HAVING functions.
#(1)
select bonus_id, base_salary, count(net_salary) as net_salary_count 
from payroll group by bonus_id, base_salary 
having net_salary_count < 2;

#(2)
select emp_id, net_salary as highest_salary 
from payroll group by emp_id, highest_salary 
having net_salary = (select max(net_salary) from payroll);

#6 TWO (2) queries that require the use of the DISTINCT and ALL keywords.
select distinct dep_name from department;
select all net_salary from payroll;

select emp_id, base_salary, net_salary from payroll 
where base_salary = all( select base_salary from payroll where net_salary = 4000);

select emp_id, base_salary FROM Payroll
where base_salary > all (SELECT base_salary FROM Payroll WHERE pos_id = 101);

select emp_id, base_salary, net_salary from payroll 
where net_salary <  all( select max( base_salary));







