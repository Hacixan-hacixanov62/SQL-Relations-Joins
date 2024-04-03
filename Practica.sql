


create table Teachers (

    [Id] int primary key identity (1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50) default 'XXX',
	[Age] int check ( Age >= 18),
	[Email] nvarchar(100) unique,

)




create table Students (

    [Id] int primary key identity (1,1),
	[Fullname] nvarchar (100) not null,
	[Age] int check ( Age >= 18),
	[Adress] nvarchar(100)

)



insert into Teachers ([Name],[Surname],[Age],[Email])
values('Reshad','Agayev',21,'reshad@gmail.com'),
      ('Ilqar','Shiriyev',26,'ilqar@gmail.com'),
      ('Behruz','Eliyev',18,'behruz@gmail.com'),
      ('Hacixan','Hacixanov',19,'hacixan@gmail.com')

select * from Teachers


insert into Students ([Fullname],[Age],[Adress])
values('Reshad Agayev',21,'Neftciler'),
      ('Ilqar Shiriyev',26,'Yasamal'),
      ('Behruz Eliyev',18,'Kurdaxani'),
      ('Hacixan Hacixanov',19,'Zaqatala')


select * from Students

select Count(*) as 'Students count' from Students

select [Name],[surname] from Teachers where [Age] > 20

select * from Teachers where [Email] like '%c%'


select SUBSTRING ([Email],1, charindex ('@' , [Email])-1) from Teachers

select SUBSTRING ([Email],charindex('@',[Email])+1,LEN([Email])) from Teachers

select * from Students 

delete from Students

truncate table Students

ALTER TABLE Students
ADD SoftDeleted bit default 0;

select * from Students  where [SoftDeleted] = 'true'


update Students 
set [SoftDeleted] = 1
Where [Id] > 2


create table Countries(
  [Id] int primary key identity(1,1),
  [Name] nvarchar (50)
)



create table Cities(
  [Id] int primary key identity(1,1),
  [Name] nvarchar (50),
  [CountryId] int,
  foreign key ([CountryId]) references Countries (Id)
)

select * from Cities

insert into Countries ([Name])
 values ('Azerbaycan'),
        ('Turkiye'),
		('Ingiltere')
    

	select * from Countries

	select * from Cities


insert into Cities ([Name],[CountryId])
values  ('Baki',1),
        ('Gence',1),
		('Zaqatala',1),
		('Istanbul',2),
        ('Bursa',2),
		('London',3)


create table Books (
 [Id] int primary key identity(1,1),
 [Name] nvarchar (50)
)

create table Authors(
  [Id] int primary key identity(1,1),
  [Name] nvarchar (100),
  [Email] nvarchar(100) unique
 
)


create table BookAuthors (
 [Id] int primary key identity(1,1),
 [BookId] int,
 [AuthorId] int,
 foreign key ([BookId]) references Books (Id),
 foreign key ([AuthorId]) references BookAuthors (Id)

)

select * from Books
select * from Authors
select * from BookAuthors



insert into Books ([Name])
values ('Ali ve Nino'),
        ('Leyli ve Mecnun'),
		('Isgendername')
    


insert into Authors ([Name],[Email])
values  ('Author1','author1@gmail.com'),
        ('Author2','author2@gmail.com'),
		('Author3','author3@gmail.com')
    

insert into BookAuthors([BookId],[AuthorId])
values (1,1),
       (2,1),
	   (3,2),
	   (1,2)




select * from Countries

select * from Cities
