use [StudyApp]
go

if OBJECT_ID('enrolment','u') is not null
drop table enrolment
go

if OBJECT_ID('course','u') is not null
drop table course
go

if OBJECT_ID('student','u') is not null
drop table student
go

create table student
(
	student_id int identity(1,1) not null,
	name varchar(25) null,
	age int not null,
	phone nvarchar (30) null

	PRIMARY KEY CLUSTERED (student_id ASC)
)

create table course
(
	code nvarchar(20) not null,
	name nvarchar(30) not null,
	description varchar(50) null,
	semester_offered varchar(15) null,
	pre_requisite_course_code int null,
	compulsory char not null

	PRIMARY KEY CLUSTERED (code ASC)
)

create table enrolment
(
	enrol_id int identity (1000000, 1) not null,
	student_id int not null,
	code nvarchar(20) not null,
	enrolment_year int not null,
	enrolment_semester varchar(15) not null,

	CONSTRAINT [PK_dbo.Enrolment] PRIMARY KEY CLUSTERED (enrol_id ASC),
	CONSTRAINT [FK_StdEnrol] FOREIGN KEY (student_id) REFERENCES dbo.Student (student_id),
	CONSTRAINT [FK_CourseEnrol] FOREIGN KEY (code) REFERENCES dbo.Course (code)
)

insert into student values
('Jack Deadoor', 19, '0800-838383'),
('Luko Karsandra', 26, '0159-357-654456')

insert into course values
(100001, 'Building', 'Build the thing', '1-4', 323, 'N'),
(100002, 'Eugenics Program', 'Help breed the superior race', '1-4', 001, 'Y'),
(100003, 'Genocide program', 'Help destroy the inferior races', '1-4', 002, 'Y')

insert into enrolment values
(01, 100002, 2066, '1-4'),
(02, 100002, 2066, '1-4'),
(02, 100001, 2066, '1-4'),
(01, 100003, 2066, '1-4'),
(02, 100003, 2066, '1-4')

select * from student

select * from course

select * from enrolment