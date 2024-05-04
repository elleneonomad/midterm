create database online_exam_system;
use online_exam_system;
create table student(
  studentID int primary key not null,
  firstName varchar(50),
    lastName varchar(50),
    email varchar(50),
    password varchar(50)
); 	
create table instructor(
  instructorID int primary key not null,
  instructorFname varchar(50),
    instructorLname varchar(50),
    instructor_email varchar(50),
    instructor_pw varchar(50)
);
create table participation (
  participationID int primary key not null,
    studentID int,
    examID int,
    startTime time,
    endTime time
);

create table course (
  courseID int primary key not null,
  instructorID int,
  courseName varchar(50)
);
create table exam(
  examID int primary key not null,
    courseID int,
    examTitle varchar(50),
    examTime datetime,
    examDuration time
);
create table question(
  questionID int primary key not null,
    examID int,
    questionContent varchar(50)
);
create table answer(
  answerID int primary key not null,
questionID int,
studentID int,
    answerContent varchar(50)
);
alter table answer add constraint fk_answer_student foreign key (studentID) references student(studentID);
alter table course add constraint fk_course_instructor foreign key (instructorID) references instructor(instructorID);
alter table participation add constraint fk_participation_student foreign key (studentID) references student(studentID);
alter table participation add constraint fk_participation_exam foreign key (examID) references exam(examID);
alter table exam add constraint fk_exam_course foreign key (courseID) references course(courseID);
alter table question add constraint fk_question_exam foreign key (examID) references exam(examID);
alter table answer add constraint fk_answer_question foreign key (questionID) references question(questionID);
CREATE TABLE result (
  answerID INT,
  studentID INT,
  examID INT,
  score INT,
  grade varchar(50),
  PRIMARY KEY (answerID, studentID, examID),
  FOREIGN KEY (answerID) REFERENCES Answer (answerID),
  FOREIGN KEY (studentID) REFERENCES Student (studentID),
  FOREIGN KEY (examID) REFERENCES Exam (examID)
);
CREATE TABLE enroll (
PRIMARY KEY (studentID, courseID),
  studentID INT,
  courseID INT,
enrollDate date,
  FOREIGN KEY (studentID) REFERENCES student(studentID),
  FOREIGN KEY (courseID) REFERENCES course(courseID)
);



insert into instructor(instructorID,instructorFname,instructorLname,instructor_email,instructor_pw) values
(1,"Rathana","Leng", "rathanaleng@gmail.com","********"),
(2,"Sambath","Master", "lgbtq@gmail.com","********"),
(3,"Xiaolin","Kong", "xiaolinkong@gmail.com","********");
insert into student (studentID, firstName, lastName, email, password) values
(1,"Jack","Hing","jackhinglol@gmail.com","********"),
(2,"Rithy","Soy","rithylol@gmail.com","********"),
(3,"Sovan","Chy","chysovanlol@gmail.com","********"),
(4,"Hak","MongHout","monghoutlol@gmail.com","********");
insert into course (courseID,instructorID,courseName) values
(1,1,"Computer Science"),
(2,3,"Linear Algebra"),
(3,2,"Design"),
(4,2,"Business"),
(5,2,"Art");
insert into enroll (studentID, courseID, enrollDate) values 
(1,1,'2022-01-01'),
(2,1,'2022-02-10'),
(3,2,'2021-10-01'),
(4,3,'2020-12-12'),
(1,2,'2021-10-20'),
(1,4,'2022-04-01'),
(2,4,'2022-01-01'),
(3,5,'2021-01-01'),
(4,2,'2021-12-12'),
(4,1,'2019-10-12');
insert into exam (examID,courseID,examTitle,examTime,examDuration) values
(1,1,"CS Exam",'2022-10-22 01:00:00','01:00:00'),
(2,2,"LA Exam",'2023-11-20 02:00:00','02:30:00'),
(3,3,"Design Exam",'2023-01-12 3:00:00','00:30:00'),
(4,4,"BUS Exam",'2022-10-22 01:00:00','01:00:00'),
(5,5,"Art Exam",'2023-11-20 02:00:00','02:30:00');
insert into question(questionID,examID,questionContent) values
(1,1,"What is CS?"),
(2,2,"What is 2+1?"),               
(3,3,"Describe design"),
(4,4,"How to do business?"),
(5,5,"What is art?");
insert into answer (answerID,questionID,studentID,answerContent) values
(1,1,1,"CS is CS"),
(2,2,1,"2+1 = 3"),
(3,4,1,"I don't know"),
(4,1,2,"CS is idk"),
(5,4,2,"BUS is scamming people"),
(6,2,3,"2+1 = 21"),
(7,5,3,"Art is a way to express yourself"),
(8,1,4,"print('idk')"),
(9,2,4,"2+1 = 12"),
(10,3,4,"Design is creating something");
insert into participation (participationID, studentID, examID, startTime, endTime) values 
(1,1,1,'01:00:00', '02:00:00'),
(2,1,2,'02:00:00', '02:30:00'),
(3,1,4,'01:00:00', '01:55:00'),
(4,2,1,'01:00:00', '01:20:00'),
(5,2,4,'01:00:00', '02:25:00'),
(6,3,2,'02:00:00', '03:58:00'),
(7,3,5,'02:00:00', '03:33:00'),
(8,4,1,'01:00:00', '01:15:12'),
(9,4,2,'02:00:00', '03:28:12'),
(10,4,3,'03:00:00', '03:15:08');
insert into result (answerid,studentid,examid,score,grade) values
(1,1,1,99,"A"),
(2,1,2,90,"A"),
(3,1,4,40,"F"),
(4,2,1,60,"C"),
(5,2,4,60,"C"),
(6,3,2,60,"C"),
(7,3,5,21,"F"),
(8,4,1,100,"A"),
(9,4,2,75,"B"),
(10,4,3,80,"B");





select student.studentID, student.firstName, student.lastName, course.courseName, course.courseID,concat(instructor.instructorLname, ' ',instructor.instructorFname ) as instructorName, exam.examTitle, result.score, result.grade from student
join enroll on student.studentID = enroll.studentID
join course on enroll.courseID = course.courseID
join exam on course.courseID = exam.courseID
join result on student.studentID = result.studentID and exam.examID = result.examID
join instructor on course.instructorid = instructor.instructorid;

# which instructor teaches which course
select instructor.instructorID, concat(instructorFname, " " , instructorLname) as "Instructor Name",
courseID, courseName from instructor, course where instructor.instructorID = course.instructorID;
desc result;
use online_exam_system;
# which student enrolled in which course 
select student.studentID, concat(student.firstName," ",student.lastName) as "Student Name",  course.courseID, course.courseName
from student, course, enroll where 
enroll.studentID = student.studentID and
enroll.courseID = course.courseID;

# MAX() highest score for each student for a specific exam
select student.studentID, concat(student.firstName," ",student.lastName) as "Student Name", exam.examID, exam.examTitle, max(score) as "Highest Score"
from student, result, exam where 
student.studentID = result.studentID and 
exam.examID = result.examID group by studentID, examID
having max(score) = (select max(score) from result where examID = 1);

# COUNT() amount of students enrolled in a course 
select course.courseID, course.courseName,  count(student.studentID) as "Enrolled Students" from 
student, course, enroll where
enroll.studentID = student.studentID and
enroll.courseID = course.courseID group by course.courseID; 

# MIN() shows the lowest score for all exams
select examTitle, min(score) as lowest_score from result, exam 
where exam.examID = result.examID group by exam.examID;

# AVG() score for all students
select student.studentID,concat(student.firstName, " ", student.lastName) as "Student Name",avg(score) as average_score from result
join student on result.studentID = student.studentID group by studentID;

# SUM() total score for all exams that are collected from students 
select exam.examID, examTitle, sum(score) as Total_score from result 
join exam on result.examID = exam.examID group by examID;

# 2 join queries
# retreive all participation records for all students on their exams
select student.studentID, concat(firstName, " ", lastName) as student_name, examTitle, startTime, endTime from participation
join student on participation.studentID = student.studentID
join exam on participation.examID = exam.examID;

# shows answers for all students on their corresponding exams
select student.studentID,  concat(firstName, " ", lastName) as student_name, examTitle, questionContent as question, answerContent as answers from answer
join student on answer.studentID = student.studentID
join question on answer.questionID = question.questionID
join exam on question.examID = exam.examID;

# joins not to retrieve courses that are not taught by instructorID = 2, which is "Sambath Master"
select instructor.instructorID, concat(instructorFname, " ", instructorLname) as instructor_name, course.courseID, courseName from course
join instructor on course.instructorID = instructor.instructorID
where not instructor.instructorID = 2;

# GROUP BY and HAVING 
# shows the total score for all students if >= 100 
select student.studentID, concat(student.firstName," ",student.lastName) as "Student Name", sum(result.score) as "Total Score"
from student, result where 
student.studentID = result.studentID group by studentID
having sum(result.score) >= 100;

# Lowest Score for a specific exam 
select student.studentID,concat(firstName," ",lastName) as "Student Name", exam.examTitle, exam.examID, min(score) as "Lowest Score"
from result
join student ON result.studentID = student.studentID
join exam ON result.examID = exam.examID
where exam.examID = 1
group by student.studentID
having min(score) = (select min(score) from result where examID = 1);

# displays students gains higher total score than a specific student , in this case studentID = 2 which is "Soy Rithy" 
select distinct student.studentID, concat(firstName," ",lastName) as "Student Name", sum(score) as Total_score from result
join student on result.studentID = student.studentID
group by student.studentID
having sum(score) > all (select sum(score) from result where studentID = 2);

# shows student who is graded lower than studentID = 2 which is "Soy Rithy", keep in mind that > is higher but since grade is in varchar it actually means that 
# for example A < B because in ASCII A < B so to find the lower grade we use > which finds the lower character grade
select distinct student.studentID, concat(firstName," ",lastName) as "Student Name", grade from result
join student on result.studentID = student.studentID
having grade > all (select grade from result where studentID = 2);




