
--Problem 2
--Question 1
Create Table UserAccounts_SK 
(AccountId int Identity(1,1) NOT NULL Primary Key,
FirstName Varchar(15),
LastName varchar(15),
EmailAddress varchar(20) NULL,
Age tinyint,
CurrentBalance Money);

--Question 2
Insert into UserAccounts_SK Values
('Jonie','Weber','jonie@gmail.com',28,19500),
('Potsy','Weber','potsyweber@gmail.com',32,45300),
('Dirk','Smith',null,45,75020);

--Question 3
Select * from UserAccounts_SK;

--Question 4
Select FirstName,LastNAme,CurrentBalance from UserAccounts_SK Where LastName='Weber';

--Question 5
Select * from UserAccounts_SK where LastName Like '%ebe%';

--Question 6
Select * from UserAccounts_SK where FirstName='Potsy';

--Question 7
Select * from UserAccounts_SK where EmailAddress IS NOT NULL;

--Question 8
Select * from UserAccounts_SK where LastName Like '%ith';

--Question 9
Update UserAccounts_SK 
set LastName='Weber-Williams' 
where FirstName='Jonie';

--Question 10
Update UserAccounts_SK
set CurrentBalance=CurrentBalance + 5000 
where Firstname='Dirk' and LastName ='Smith';


--Question 11
Select FirstName,LastName from UserAccounts_SK
where Age<30;

--Question 12
Select * from UserAccounts_SK
where Age Between 50 and 80;

--Question 13
Update UserAccounts_SK 
set Age=Age+1 
where FirstName='Dirk' and LastName='Smith';

--Question 14
Alter Table UserAccounts_SK
ADD AccountType Varchar(15);

--Question 15
Alter Table UserAccounts_SK
Drop column AccountType;

--Question 16
Delete from UserAccounts_SK where CurrentBalance>70000;

--Question 17
Drop Table UserAccounts_SK;

--Question / Problem 3
--1
Select * from Employee where First like 'Er%';

--2
Select * from Employee where First='Eric';

--3
Select First,Last,City from Employee where City <>'Payson';

--4
Select * from employee where Age > 20 and Age < 50;
Select * from employee where Age Between 20 and 50;

--Question/Problem 4
--1

select customerid,Item,price from items_ordered
where customerid IN (select customerid from customers where state='Washington'); 

--2
select * from items_ordered where Item='Raft';

--3
Select customerid,order_date,Item from items_ordered 
where Item Like 'S%';

--Question/Problem 5
--1
Select C.customerid,C.FirstName,C.LastName,I.order_date,I.Item,I.price
from customers C,items_ordered I where C.customerid=I.customerid;

--2
Select C.customerid,C.FirstName,C.LastName,I.order_date,I.Item,I.price
from customers C,items_ordered I where C.customerid=I.customerid
order by C.state Desc;

--3
select state,count(customerid) as No_of_People from customers group by state;
