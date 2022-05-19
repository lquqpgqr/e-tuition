use test
--select * from Student order by StudentID desc
--update Student
--Set Name='ggg', phone='222'
--where Email= 'asd'

drop table Admin
create table Admin(
	AdminID int identity(1,1) primary key ,
	Name varchar(50),
	Email varchar(50),
	Phone varchar(50),
	Password varchar(50)
)
select * from Admin
insert into Admin values('Alvee','alvee@gmail.com','01400143009','asdf')

drop table Student
create table Student(
	StudentID int identity(1,1) primary key ,
	Name varchar(50),
	Email varchar(50),
	Phone varchar(50),
	Password varchar(50),
	Address varchar(100),
	Age int,
	Institution varchar (50),
	ImgName varchar(50) default 'DefaultImg.jpg'
)

insert into Student 
values('Abir Hossain','abir.user@gmail.com','01625139131','asdf','None','15','Aust','DefaultImg.jpg')
select * from student

drop table Teacher
create table Teacher(
	TeacherID int identity(1,1) primary key ,
	FirstName varchar(30),
	LastName varchar(30),
	Email varchar(50),
	Phone varchar(20),
	Password varchar(50),
	TeachingExp varchar(30),
	CV varchar(30),
	Facebook varchar(50),
	LinkedIn varchar(50),
	AboutDetails varchar (300),
	Verification varchar(20) default 'Unverified',
	ImgName varchar(50) default 'DefaultImg.jpg'
)


select * from Teacher
insert into Teacher 
values('Abir','Hossain','abir.user@gmail.com','01625139131','asdf','None','noname.pdf','Fb','Li','no details','Unverified','DefaultImg.jpg')


--update Teacher
--Set ImgName = 'DefaultImg.jpg'
--where TeacherID= '2'

create table Course(
	CourseID int identity(1,1) primary key,
	CourseName varchar(30),
	LiveStream varchar(10),
	CourseLevel	varchar(30),
	CourseClass varchar(30),
	CourseTime varchar(30),
	CourseFee varchar(30),
	CourseDescription varchar(200),
	CoursePost varchar(200),
	TeacherID int,
	TeacherName varchar(30),
	CourseCreatedDate date DEFAULT GETDATE(),
	CoursePublished varchar(20) default 'Unpublished'
)

--update Course
--Set TeacherName = 'Abir'
--where CourseID= '1' and CoursePublished='no'

--select * from Course where CoursePublished='Unpublished'
drop table Course

create table Course(
	CourseID int identity(1,1) primary key,
	CourseName varchar(30),
	LiveStream varchar(10),
	CourseLevel	varchar(30),
	CourseClass varchar(30),
	CourseTime varchar(30),
	CourseFee varchar(30),
	CourseDescription varchar(200),
	CoursePost varchar(200),
	TeacherID int,
	TeacherName varchar(30),
	CourseCreatedDate date DEFAULT GETDATE(),
	CoursePublished varchar(20) default 'Unpublished'
)
 select * from Course


 drop table Enroll
 create table Enroll(
	EnrollId int identity(1,1) primary key,
	CourseId varchar(10),
	StudentId varchar(10),
	EnrollStatus varchar(20) default 'pending'
	
 )


insert into Enroll (CourseId, StudentId)values(0,0)

--select * from Enroll where CourseId ='1' and StudentId ='0'

--select * from Course
--inner join Enroll on Course.CourseID =Enroll.CourseID
--where Enroll.CourseId ='1' and Enroll.EnrollStatus ='pending'

drop table Resource
create table Resource(
	ResourceID int identity(1,1) primary key,
	CourseID int,
	ResourceType varchar(100),
	ResourceDetails varchar(200),
	ResourceLink varchar(100),
	ResourceDate date DEFAULT GETDATE()
)

select * from Resource
--delete from Resource where ResourceID='2'


create table FileResource(
	ResourceID int identity(1,1) primary key,
	CourseID int,
	ResourceType varchar(100),
	ResourceDetails varchar(100),
	ResourceDate date DEFAULT GETDATE()
)
select * from FileResource

drop table PurchaseCourse
create table PurchaseCourse(
	PurachseID int identity(1,1) primary key,
	UserName varchar(50),
	Email varchar(50),
	Phone varchar(50),
	CourseId varchar(10),
	CourseName varchar(30),
	CourseFee varchar(30),
	TeacherId varchar(10),
	StudentId varchar(10),
	PaymentMethod varchar(10),
	TransactionID varchar (50),
)


select * from PurchaseCourse

select PurchaseCourse.UserName,PurchaseCourse.StudentId,PurchaseCourse.Phone,PurchaseCourse.CourseID,PurchaseCourse.TransactionID
from PurchaseCourse inner join Enroll on Enroll.CourseId=PurchaseCourse.CourseId and Enroll.StudentId=PurchaseCourse.StudentId 
where PurchaseCourse.CourseId='1' and Enroll.EnrollStatus='pending'


--update Enroll
--set EnrollStatus='confirm'
--where StudentId ='0'

--select Teacher.FirstName,PurchaseCourse.CourseName,Teacher.Phone,PurchaseCourse.CourseFee,PurchaseCourse.PaymentMethod
--from Teacher inner join PurchaseCourse
--on Teacher.TeacherID= PurchaseCourse.TeacherId where PurchaseCourse.StudentId='1'


select * from teacher