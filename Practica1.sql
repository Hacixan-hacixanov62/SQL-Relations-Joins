

select * from Cities
select * from Countries


select ct.name as 'City',ctr.name as 'Country' from Cities ct
 join Countries ctr
on ct.CountryId = ctr.Id



select ct.name as 'City',ctr.name as 'Country' from Cities ct
left join Countries ctr
on ct.CountryId = ctr.Id


select ct.name as 'City',ctr.name as 'Country' from Cities ct
right join Countries ctr
on ct.CountryId = ctr.Id


select ct.name as 'City',ctr.name as 'Country' from Cities ct
full outer join Countries ctr
on ct.CountryId = ctr.Id



select a.Name as 'Author name' , a.Email as 'Author Email', b.name as 'Book name' from Authors a
join BookAuthors ba
on a.Id = ba.AuthorId
join Books b
on b.Id = ba.BookId




create table Employees(
 [Id] int primary key identity(1,1),
 [Name] nvarchar(50),
 [ManagerId] int
)


select * from Employees em
join
 where [Id] = [ManagerId]

 SELECT em1.name 'manager name', em2.name 'employee name' FROM
       Employees em1
	   inner JOIN Employees em2
	   on em1.Id = em2.ManagerId
	   where em1.Id is not null and em2.ManagerId is not null

	   select * from Employees
