
create database HomeWork;

create table 课程表(
课程号 char(4)primary key,
课程名 nvarchar(10)not null,
学分数 real check(学分数>=1and 学分数<=12),
学时数 real check(学时数>=16and 学时数<=100),
任课老师 nvarchar(6)
)

create table 学生表(
学号 char(4)primary key,
姓名 nvarchar(10)not null,
性别 nchar(1)check(性别 in(N'男',N'女')),
专业班级 nvarchar(10),
出生日期 date,
联系电话 char(11)
);

create table 学生作业表(
课程号 char(4),
学号 char(4),
作业1成绩 int,
作业2成绩 int,
作业3成绩 int,
primary key(课程号,学号),
foreign key(课程号) references 课程表(课程号),
foreign key(学号) references 学生表(学号)
);