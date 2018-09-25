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
	course_id nvarchar(20) not null,
	course_name nvarchar(30) not null,
	description varchar(50) null,
	year int null,
	semester int null,

	PRIMARY KEY CLUSTERED (course_id ASC)
)

create table enrolment
(
	enrol_id int identity (1, 1) not null,
	student_id int not null,
	course_id nvarchar(20) not null,
	enrolment_year int not null,
	enrolment_semester int not null,

	CONSTRAINT [PK_dbo.Enrolment] PRIMARY KEY CLUSTERED (enrol_id ASC),
	CONSTRAINT [FK_StdEnrol] FOREIGN KEY (student_id) REFERENCES dbo.Student (student_id),
	CONSTRAINT [FK_CourseEnrol] FOREIGN KEY (course_id) REFERENCES dbo.Course (course_id)
)

select * from student

select * from course

select * from enrolment