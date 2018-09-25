use [StudyApp]
go

if OBJECT_ID('course','u') is not null
drop table course
go

if OBJECT_ID('student','u') is not null
drop table student
go

create table student
(
	student_id int identity(1,1) primary key not null,
	student_name varchar(25) not null,
	age int,
	address varchar(25),
	phone_number varchar(25),
)

create table course
(
	course_id int identity(1,1) primary key not null,
	course_name varchar(20) not null,
)

select * from student

select * from course