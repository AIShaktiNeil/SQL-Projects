show databases;

show  databases;

show databases;

create database Fingertips;
 
use Fingertips;

show tables;
 

#Create Table Professionals
create table Professionals(
Professional_ID int(3),
First_Name varchar(10),
Last_Name varchar(10),
Salary int(10),
Joining_Date DATETIME,
Department varchar(10)
);

select * from Professionals;

#Insert Value to Professionals Table
insert into Professionals(professional_id,First_Name,Last_Name,Salary,Joining_Date,Department)values
(001,"Mayank","Srivastava",100000,"2021-02-20 09:00:00","ENGINEER "),
(002,"Virat","Agnihotri",80000,"2021-06-11 09:00:00","Architect"),
(003,"Shubham","Srivastava",300000,"2021-02-20 09:00:00","ENGINEER"),
(004,"Sunil","Khurana",500000,"2021-02-20 09:00:00","Architect"),
(005,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Architect"),
(006,"Prem","Modi",200000,"2021-06-11 09:00:00","Sales"),
(007,"Harsh","Shukla",75000,"2021-01-20 09:00:00","Sales"),
(008,"Pryag","Agarwal",9000,"2021-04-11 09:00:00","Architect"),
(009,"Anil","Rastogi",120000,"2021-02-20 09:00:00","Accounts"),
(010,"Amitabh","Singh",60000,"2021-06-11 09:00:00","Finance"),
(011," Jasbeer","Kaur",280000,"2021-02-20 09:00:00","Accounts"),
(012,"Srijan","Mahadev",500000,"2021-02-20 09:00:00","Sales"),
(013,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Finance"),
(014,"Shakti","Khanna",230000,"2021-06-11 09:00:00","Engineer"),
(015,"Anand","Kapoor",45000,"2021-01-20 09:00:00","Accounts"),
(016,"Shiwali","Sethiya",22000,"2021-04-11 09:00:00","Architect"),
(017,"Virat","Jadeja",500000,"2021-06-11 09:00:00","Finance"),
(018,"Maan","Singh",200000,"2021-06-11 09:00:00","Engineer"),
(019,"Deepak","Pandey",78000,"2021-01-20 09:00:00","Accounts"),
(020,"Rahul","Sharma",9000,"2021-04-11 09:00:00","Architect");

delete from Professionals;
select * from professionals;
delete table professionals;

set autocommit=0;
delete from Professionals;

rollback;

truncate table professionals;
select * from professionals;

rollback;
select * from professionals;

drop table Professionals;
select * from professionals;

select * from professionals;

#1 Write An SQL Query To Fetch “FIRST_NAME” From professionals Table Using The Alias Name As <Employee_Name> 
select First_Name as Employee_Name from professionals;
select First_Name Name from professionals;

#1A Write An SQL Query to Fetch First Name, Last Name, Salary of Rohit

select `First_Name`,`Last_Name`,`Salary` from professionals where `First_Name`="Harsh";
select `First_Name`,`Last_Name`,`Salary` from professionals where `First_Name`="Virat";
select `First_Name`,`Last_Name`,`Salary` from professionals where `First_Name`="Virat" and `Last_Name`="Jadeja";
select `First_Name`,`Last_Name`,`Salary` from professionals where `Salary`=500000 and `Department`="Architect";
select `First_Name`,`Last_Name`,`Salary` from professionals where 'salary'<300000;
select * from  professionals where 'salary'<300000 and `Department`="ENGINEER";
select * from  professionals where 'salary'<300000 and `Department`in ("ENGINEER","Architect");
select * from  professionals where salary between 300000 and 500000 and `Department`="Architect";

#2 Write An SQL Query To Fetch “FIRST_NAME” In Upper Case. 
select upper(First_Name) from professionals;
select lower(First_name) from professionals;

#3 Write An SQL Query To Fetch Unique Values Of DEPARTMENT From  Professionals Table
select department from professionals;
select distinct DEPARTMENT from professionals;
select distinct first_name from professionals;

#4 Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Professionals Table 
select substring(first_name,1,3) from professionals;

#3 No of character
select substring("I am student",6,7);


#5 Write An SQL Query To Find The Position Of The Alphabet (‘a’) In The First Name Column ‘Amitabh’ From Professionals Table. 
select INSTR(First_Name,'a') from professionals where First_Name ="Amitabh";
select INSTR(First_Name,'t') from professionals where First_Name ="Amitabh";
select INSTR(First_Name,Binary'a') from professionals where First_Name ="Amitabh";

#6 Write An SQL Query To Print The FIRST_NAME From Professionals Table After Removing White Spaces From The Right Side
select RTRIM(first_name) from professionals;

#7 Write An SQL Query To Print The DEPARTMENT From Professionals Table After Removing White Spaces From The Left Side.
 select LTRIM(Department) from professionals;
 
#8 Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Professionals Table And Prints Its Length 
select distinct department, length(Department) from professionals;

#9 Write An SQL Query To Print The FIRST_NAME From professional Table After Replacing ‘A’ With ‘a’ 
select replace(First_Name,"a","A") from professionals;
select replace(First_Name,"a"," ") from professionals;
select * from professionals;

# 10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Professional Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them
select CONCAT(First_Name,' ',Last_Name) as "Complete_Name" from professionals;

#11. Write An SQL Query To Print All Details From The Professional Table and arrange as per FIRST_NAME Ascending. 
select * from professionals order by First_Name asc;
select * from professionals order by Salary desc;

#12. Write An SQL Query To Print Details From The Professional Table Order By FIRST_NAME Ascending And DEPARTMENT Descending. 
select * from professionals order by Salary;
select * from professionals order by Salary desc;
select * from professionals order by First_NAME asc,Department desc;
select * from professionals order by Department asc, Salary desc;
select * from professionals order by Department asc, First_Name desc;
select Department, Salary from professionals order by Department,Salary desc;

#13 Write An SQL Query To Print Details With The First Name As “Vipul” And “Satish” From Professional Table
select * from Professionals where First_Name in ('Virat',"Shubham");

# 14 Write An SQL Query To Print Details Excluding First Names, “Vipul” And “Satish” From Professional Table. 
select * from professionals where First_Name not in ('Virat',"Shubham");

#15 Write An SQL Query To Print Details With DEPARTMENT Name As “Admin"
select * from professionals where Department like "E%";
select * from professionals where first_name like "Sh%";

#16 Write An SQL Query To Print Details Whose FIRST_NAME Ends With ‘A’ 
select * from professionals where First_Name like "%m";

#First Name start with a
select * from professionals where First_Name like "a%";

#17 Write An SQL Query To Print Details Whose FIRST_NAME Contains ‘a’ 
select * from professionals where First_Name like "%ab%";

#18 Write an SQL Query to fetch name of people whose name starts with S and ends with L
select * from professionals where last_name like "s%a";

#19 Write An SQL Query To Print Details Whose FIRST_NAME Ends With ‘m’ And Contains Six Alphabets 
select * from professionals where First_Name like'______m';
select * from professionals where First_Name like'__r__';
select * from professionals where last_Name like's____a';
select * from professionals where salary like '5_____';
select * from professionals where salary like "5%";

#20 Write An SQL Query To Print Details Whose SALARY Lies Between 100000 And 500000. (#between includes both the values)
select * from professionals where salary >=100000 and salary<=500000;

select * from professionals where salary between 100000 and 500000;
select * from professionals where joining_date between "2021-02-20 09:00:00" and "2021-06-11 09:00:00";

# 21 Write An SQL Query To Print Details Of Professionals Who Have Joined In the year 2021
Select * from professionals where year(JOINING_DATE) = 2021; 
Select * from professionals where month(JOINING_DATE) = 2; 
Select * from professionals where day(JOINING_DATE) = 11; 
Select * from professionals where month(JOINING_DATE) = 4 and day(JOINING_DATE) = 11; 

#Statistics
select max(salary) from professionals;
select min(salary) from professionals;
select max(salary) as max_salary,min(salary) as min_salary from professionals;
select avg(salary) from professionals;
select stddev_pop(salary) from professionals;
select var_pop(salary) from professionals;
select count(professional_id) from professionals;

#21 Write An SQL Query To Fetch The Count Of number of people In The Department ‘Sales’. 
SELECT COUNT(*) FROM professionals WHERE DEPARTMENT = 'Sales'; 

#22 SubQuery
# Write An SQL Query To Print Details Whose SALARY Lies Between 100000 And 500000 (Same as Q20)
SELECT FIRST_NAME, LAST_NAME, Salary 
FROM professionals  
WHERE professional_ID IN  
(SELECT professional_ID FROM professionals  
WHERE Salary BETWEEN 100000 AND 500000); 

#22 A Write An SQL Query To Show The Second Highest Salary From Professionals Table.
# Max Salary
select max(salary) from Professionals;
select max(salary) from professionals where salary not in (select max(salary) from professionals);

#22 B Write An SQL Query To Show The Second Lowest Salary From Professionals Table.
select  min(salary) from Professionals;
select  min(salary) from Professionals where salary not in (select min(salary) from Professionals);

#22 C Write An SQL Query To Fetch The Names Of employees Who Earn The Highest Salary.
SELECT FIRST_NAME, SALARY from professionals WHERE SALARY=(SELECT max(SALARY) from professionals);

#22 D Write An SQL Query To Show The Last Record From A Table
Select * from professionals where professional_ID = (SELECT max(professional_ID) from professionals);
Select * from professionals order by professional_ID DESC limit 1;

#22 E Write An SQL Query To Fetch The First Row Of A Table.
Select * from professionals where professional_ID = (SELECT min(professional_ID) from professionals);

#23 Group By
#Write An SQL Query To Fetch The No. Of people For Each Department In The Descending Order
SELECT DEPARTMENT, count(professional_ID) No_Of_Workers  
FROM professionals  
GROUP BY DEPARTMENT  
ORDER BY No_Of_Workers DESC; 


#24 Write An SQL Query To Fetch Average salary of Department (Use Order By)
select Department, AVG(Salary) from professionals group by Department;
select Department, max(salary) from professionals group by Department;

#25 Having
#Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table 
SELECT first_name, Department, COUNT(first_name) 
FROM professionals 
GROUP BY first_name
HAVING COUNT(*) > 1; 

#25a Write an SQL Query to Fetch Average Salary of people having average salary>200000
select First_Name, Last_Name, Department ,AVG(Salary) as Average_Salary 
from professionals group by Department having Average_salary>150000;

#25 B Write An SQL Query To Fetch The Departments That Have greater Than three People In It.
SELECT DEPARTMENT, COUNT(professional_ID) as 'Number of Workers' FROM professionals
GROUP BY DEPARTMENT HAVING COUNT(professional_ID) > 3;

#26 Write An SQL Query To Show Only Odd Rows 
SELECT * FROM professionals WHERE MOD (professional_ID, 2) <> 0;

#27 Write An SQL Query To Show Only Even Rows
SELECT * FROM professionals WHERE MOD (professional_ID, 2) = 0; 

#28 Write An SQL Query To Clone (Copy )A New Table From Another Table
create table Employee select * from professionals;

show tables;

select * from employee;

#29 Write An SQL Query To Show The Current Date And Time

SELECT CURDATE(); 

SELECT NOW(); 


#30 A Write a SQL Query to select to 4 records
select * from professionals limit 4;

#31 Write An SQL Query To Show The Top N (Say 5) Records Of A Table
select * from professionals order by Salary desc limit 5;

#32 Write an SQL Query to select first 3 records where department = engineer and Order by First_Name
select * from professionals where Department="Engineer" order by First_Name asc limit 2;

#33 Write An SQL Query To fetch details of the sixth highest salary.
SELECT * FROM professionals ORDER BY Salary desc LIMIT 5,1;

#34 Write a SQL Query to select to 4 records which start from 4
select * from professionals limit 3,4;

#35 Write SQL Query to select 2 records of Architect department which starts from 3
select * from professionals where Department="Architect" limit 2,2;

#36 Write An SQL Query To Fetch The First 50% Records From Professional Table.
SELECT * FROM professionals
WHERE professional_ID <= (SELECT count(professional_ID)/2 from professionals);

#Alter
#37 Write An SQL Query To add New Column 

select * from professionals;
#Add
alter table professionals add column New_Column varchar(10);

#38 Write an SQL Query to change the Data type of a column
#Data Type
alter table professionals modify column New_Column int(10);

#39 Write an SQL Query to Remove a column
#Drop
ALTER TABLE professionals DROP COLUMN JOINING_DATE;

#40 Write an SQL Query to Rename a column name
#Rename
alter table professionals rename column professional_id to id;

select * from professionals;

#41 Write An SQL Query To change the LAST_NAME as Bhatt of worker_id =005.
#Update
update professionals
set Last_Name="Bhatt"
where Worker_ID=004;

select * from professionals;

#42 Write An SQL Query To change the Salary of Virat Agnihotri to 300,000 
update professionals 
set Salary= 300000
where `First_Name`="Virat" and last_name="Agnihotri";

select * from professionals;

#43 Write an SQL Query to to change department of Abbas and Amitabh to Data Scientist
update professionals
set  Department="Data Scientist"
where First_Name in("Abbas","Amitabh");

#43 Write An SQL Query To delete the all details where id is 003.
Delete from professionals
Where professional_id = 003;

#44 Write an SQL Query to delete all details where first_name="Abbas"
delete from professionals where 
first_name="Abbas"; 

#45 #If Clause/Case
# Write An SQL Query To Add A class for 100000+ salary and B for others.
select  *, if(SALARY > 300000, "A","B") as class from professionals;

#46 CASE
SELECT First_name, Last_name,
CASE
    WHEN Salary > 300000 THEN "The Class is A"
    WHEN Salary <= 300000 and Salary >=100000 THEN "The Class is B"
    ELSE "The Class is C" 
end as Class
FROM Professionals;

#47 Union/Union All
create table w1 (Name varchar(10), Age int(5));
create table w2 (Name varchar(10), Age int(5));

insert into w1 values
("Sachin", 45),
("Kohli", 33),
("Manish", 22),
("Kohli", 33);

insert into w2 values
("Maxwell", 45),
("Amit", 33),
("Rahul", 22),
("Rahul", 33);

select * from w1;
#48 Union
select * from w1
union
select * from w2;

#49 Union All
select * from w1
union all
select * from w2;


#create table products
CREATE TABLE products (
 id INT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 size VARCHAR(10),
 color VARCHAR(20),
 description VARCHAR(250)
);

#create table customers
CREATE TABLE customers (
 id INT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 phone VARCHAR(20),
 address VARCHAR(255)
);

#create table orders
CREATE TABLE orders (
 id INT PRIMARY KEY,
 customer_id INT NOT NULL,
 product_id INT NOT NULL,
 quantity INT NOT NULL,
 order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (customer_id) REFERENCES customers(id),
 FOREIGN KEY (product_id) REFERENCES products(id)
);

#Have a look at tables before inserting values!
#select * from table
select * from products;
select * from customers;
select * from orders;

#insert values into products
INSERT INTO products (id, name, price, size, color, description)
VALUES 
(1, 'T-shirt', 19.99, 'M', 'Blue', 'A comfortable and stylish t-shirt'),
(2, 'Jeans', 49.99, '32x34', 'Black', 'A classic pair of black jeans'),
(3, 'Sneakers', 79.99, '10.5', 'White', 'A pair of comfortable and 
stylish sneakers'),
(4, 'Sweater', 34.99, 'L', 'Gray', 'A cozy and warm sweater'),
(5, 'Dress', 59.99, 'S', 'Red', 'A beautiful and elegant dress'),
(6, 'Jacket', 99.99, 'XL', 'Green', 'A warm and stylish jacket'),
(7, 'Skirt', 29.99, 'M', 'Yellow', 'A cute and flirty skirt'),
(8, 'Blouse', 39.99, 'L', 'Pink', 'A flowy and feminine blouse'),
(9, 'Shorts', 24.99, 'S', 'Orange', 'A comfortable pair of shorts for 
summer'),
(10, 'Hoodie', 49.99, 'L', 'Black', 'A cozy and casual hoodie'),
(11, 'Boots', 89.99, '9.5', 'Brown', 'A stylish pair of boots for any 
occasion'),
(12, 'Sweatpants', 29.99, 'M', 'Gray', 'A comfortable and casual 
pair of sweatpants'),
(13, 'Sunglasses', 19.99, NULL, 'Black', 'A cool and trendy pair of 
sunglasses'),
(14, 'Scarf', 14.99, NULL, 'Purple', 'A warm and cozy scarf for the 
winter'),
(15, 'Hat', 9.99, 'One size', 'Navy', 'A stylish and versatile hat for
any outfit'),
(16, 'Jumpsuit', 69.99, 'M', 'Black', 'A chic and trendy jumpsuit 
for any occasion'),
(17, 'Blazer', 79.99, 'L', 'White', 'A sophisticated and stylish blazer 
for work or events'),
(18, 'Sweatshirt', 39.99, 'XL', 'Pink', 'A comfortable and cozy 
sweatshirt for lounging'),
(19, 'Leggings', 24.99, 'S', 'Black', 'A versatile and comfortable 
pair of leggings'),
(20, 'Pants', 54.99, '32x30', 'Khaki', 'A classic and stylish pair of 
khaki pants');

#insert values into customers
INSERT INTO customers (id, name, email, phone, address)
VALUES 
(1, 'John Smith', 'john.smith@gmail.com', '+1 555-123-4567', 
'123 Main St, Anytown, USA'),
(2, 'Jane Doe', 'jane.doe@yahoo.com', '+1 555-987-6543', '456 
Maple Ave, Anytown, USA'),
(3, 'Bob Johnson', 'bob.johnson@yahoo.com', NULL, '789 Oak St, 
Anytown, USA'),
(4, 'Emily Williams', 'emily.williams@gmail.com', '+1 555-555-
1212', '321 Elm St, Anytown, USA'),
(5, 'David Lee', 'david.lee@yahoo.com', '+1 555-555-5555', '567 
Pine St, Anytown, USA'),
(6, 'Sarah Kim', 'sarah.kim@gmail.com', '+1 555-123-7890', '890 
Cedar Ave, Anytown, USA'),
(7, 'Michael Chen', 'michael.chen@yahoo.com', '+1 555-999-
8888', '246 Birch Blvd, Anytown, USA'),
(8, 'Jessica Brown', 'jessica.brown@yahoo.com', '+1 555-777-
6666', '369 Spruce St, Anytown, USA'),
(9, 'Kevin Garcia', 'kevin.garcia@gmail.com', '+1 555-111-2222', 
'802 Maplewood Dr, Anytown, USA'),
(10, 'Ashley Davis', 'ashley.davis@gmail.com', NULL, '135 Walnut 
St, Anytown, USA');

#insert values into orders
INSERT INTO orders (id, customer_id, product_id, quantity, 
order_date)
VALUES 
(1, 1, 1, 2, '2022-03-08 14:25:00'),
(2, 2, 1, 1, '2022-03-07 09:32:00'),
(3, 3, 3, 4, '2022-03-06 18:05:00'),
(4, 4, 5, 3, '2022-03-05 10:12:00'),
(5, 5, 2, 2, '2022-03-04 15:22:00'),
(6, 1, 3, 1, '2022-03-03 12:48:00'),
(7, 2, 4, 2, '2022-03-02 17:09:00'),
(8, 3, 1, 3, '2022-03-01 11:35:00'),
(9, 4, 2, 1, '2022-02-28 16:02:00'),
(10, 5, 5, 2, '2022-02-27 13:24:00'),
(11, 1, 2, 3, '2022-02-26 10:49:00'),
(12, 2, 3, 2, '2022-02-25 14:56:00'),
(13, 3, 4, 1, '2022-02-24 09:17:00'),
(14, 4, 1, 2, '2022-02-23 12:40:00'),
(15, 5, 3, 3, '2022-02-22 16:58:00');

#Have a look at tables after we are done with inserting values!
#select * from table
select * from products;
select * from customers;
select * from orders;

#Inner join-->
#Q.50 Fetch details of the customer and the number of quantites that they have ordered?
select c.name, sum(o.quantity)
from customers c inner join orders o
on c.id=o.customer_id
group by c.id;

/*Conclusion: As we can see there are 10 customers, but we got 
details of only 5 customers as details of only 5 customers is 
present in orders table and we have applied inner join.
inner join or we can also write join.*/

#Left join-->
#Q.51 How many quantities of each sized product are ordered?
select p.size, sum(o.quantity) from 
products p left join orders o
on p.id=o.product_id
group by p.size;

#Right join-->
#Q.52 Name the products which were ordered and number of quantities ordered.
select distinct(p.name), sum(o.quantity)
from products p right join orders o 
on o.product_id=p.id
group by o.quantity;


#Full Outer join/Outer join-->
#Q.53 What are the total number of products and average amount spent on each product?
#We can emulate FULL OUTER JOIN using UNION of left join & right join.
select p.id, count(p.id), avg(p.price) 
from products p left join orders o
on p.id=o.product_id
group by p.id
union
select p.id, count(p.id), avg(p.price) 
from products p right join orders o
on p.id=o.product_id
group by p.id;

#Cross or Cartesian join-->
#Q.54 Join every row of a table to every row of some other table.
select * from products p cross join orders o;

#Point to be noted here is, first id column is for products table, while other is for orders table.

#Multiple join-->Combine all the 3 tables
#Q.55 Name the customers who have ordered atleast 6 quantities and for price>140.
select c.name, sum(quantity), sum(price)
from (customers c join orders o on c.id=o.customer_id)
join products p on p.id=o.product_id
group by c.id
having sum(quantity)>=6 and sum(price)>140;

#View
#Q.56 
create view Details as
select c.name, sum(o.quantity)
from customers c join orders o
on c.id=o.customer_id
group by c.id;

select * from details;

#Drop View
drop view details;

# RegEx (Regular Expressions) 

select * from customers;
select * from products;

#Q57. Match beginning of string(^): Give names of customers whose name starts with ‘J’.
SELECT name FROM customers WHERE name regexp '^J';

#Q58. Match the end of a string($): Give names of customers having email id with extension '@gmail.com'.
SELECT email FROM customers WHERE email regexp '@gmail.com$';

#Q59.Matches any of the patterns p1, p2, or p3(p1|p2|p3): Give names containing 'Jo' or 'ee' or 'lli'.
SELECT name FROM customers WHERE name regexp 'Jo|ee|lli';

#Q60. Matches any character listed between the square brackets([abc]): Give names of colors containing vowels [aeiou]
SELECT color FROM products WHERE color regexp '[aeiou]';

#Indexes
/*Indexes in a database improve data retrieval speed compared to when indexes are not used. 
These indexes are invisible to users and are employed to accelerate search and query operations.
It's important to note that updating a table with indexes takes longer than updating a table 
without them since the indexes require updates as well. Hence, it's advisable to create indexes 
only on columns that will be frequently used for search operations*/

#Q.61 Creating an Index
create index My_Index on professionals (first_name, last_name, department);

#Q.62 Dropping an Index
drop index my_index on professionals;

#Q.63 Stored Procedure
create procedure My_Procedure()
select Department, count(department)
from professionals group by department;

call my_procedure();

#Q.64 Create a stored procedure and print results as per the input
create procedure professional_details (in professional_id int)
select * from professionals where id =professional_id;

#Q.65 Call and drop stored procedure
call professional_details (1);
drop procedure professional_details;
tabases;

create database Fingertips;
 
use Fingertips;

show tables;
 

#Create Table Professionals
create table Professionals(
Professional_ID int(3),
First_Name varchar(10),
Last_Name varchar(10),
Salary int(10),
Joining_Date DATETIME,
Department varchar(10)
);

select * from Professionals;

#Insert Value to Professionals Table
insert into Professionals(professional_id,First_Name,Last_Name,Salary,Joining_Date,Department)values
(001,"Mayank","Srivastava",100000,"2021-02-20 09:00:00","ENGINEER "),
(002,"Virat","Agnihotri",80000,"2021-06-11 09:00:00","Architect"),
(003,"Shubham","Srivastava",300000,"2021-02-20 09:00:00","ENGINEER"),
(004,"Sunil","Khurana",500000,"2021-02-20 09:00:00","Architect"),
(005,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Architect"),
(006,"Prem","Modi",200000,"2021-06-11 09:00:00","Sales"),
(007,"Harsh","Shukla",75000,"2021-01-20 09:00:00","Sales"),
(008,"Pryag","Agarwal",9000,"2021-04-11 09:00:00","Architect"),
(009,"Anil","Rastogi",120000,"2021-02-20 09:00:00","Accounts"),
(010,"Amitabh","Singh",60000,"2021-06-11 09:00:00","Finance"),
(011," Jasbeer","Kaur",280000,"2021-02-20 09:00:00","Accounts"),
(012,"Srijan","Mahadev",500000,"2021-02-20 09:00:00","Sales"),
(013,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Finance"),
(014,"Shakti","Khanna",230000,"2021-06-11 09:00:00","Engineer"),
(015,"Anand","Kapoor",45000,"2021-01-20 09:00:00","Accounts"),
(016,"Shiwali","Sethiya",22000,"2021-04-11 09:00:00","Architect"),
(017,"Virat","Jadeja",500000,"2021-06-11 09:00:00","Finance"),
(018,"Maan","Singh",200000,"2021-06-11 09:00:00","Engineer"),
(019,"Deepak","Pandey",78000,"2021-01-20 09:00:00","Accounts"),
(020,"Rahul","Sharma",9000,"2021-04-11 09:00:00","Architect");

delete from Professionals;
select * from professionals;

set autocommit=0;
delete from Professionals;

rollback;

truncate table professionals;
select * from professionals;

rollback;
select * from professionals;

drop table Professionals;
select * from professionals;

select * from professionals;

#1 Write An SQL Query To Fetch “FIRST_NAME” From professionals Table Using The Alias Name As <Employee_Name> 
select First_Name as Employee_Name from professionals;
select First_Name Name from professionals;

#1A Write An SQL Query to Fetch First Name, Last Name, Salary of Rohit

select `First_Name`,`Last_Name`,`Salary` from professionals where `First_Name`="Harsh";
select `First_Name`,`Last_Name`,`Salary` from professionals where `First_Name`="Virat";
select `First_Name`,`Last_Name`,`Salary` from professionals where `First_Name`="Virat" and `Last_Name`="Jadeja";
select `First_Name`,`Last_Name`,`Salary` from professionals where `Salary`=500000 and `Department`="Architect";
select `First_Name`,`Last_Name`,`Salary` from professionals where 'salary'<300000;
select * from  professionals where 'salary'<300000 and `Department`="ENGINEER";
select * from  professionals where 'salary'<300000 and `Department`in ("ENGINEER","Architect");
select * from  professionals where salary between 300000 and 500000 and `Department`="Architect";

#2 Write An SQL Query To Fetch “FIRST_NAME” In Upper Case. 
select upper(First_Name) from professionals;
select lower(First_name) from professionals;

#3 Write An SQL Query To Fetch Unique Values Of DEPARTMENT From  Professionals Table
select department from professionals;
select distinct DEPARTMENT from professionals;
select distinct first_name from professionals;

#4 Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Professionals Table 
select substring(first_name,1,3) from professionals;

#3 No of character
select substring("I am student",6,7);


#5 Write An SQL Query To Find The Position Of The Alphabet (‘a’) In The First Name Column ‘Amitabh’ From Professionals Table. 
select INSTR(First_Name,'a') from professionals where First_Name ="Amitabh";
select INSTR(First_Name,'t') from professionals where First_Name ="Amitabh";
select INSTR(First_Name,Binary'a') from professionals where First_Name ="Amitabh";

#6 Write An SQL Query To Print The FIRST_NAME From Professionals Table After Removing White Spaces From The Right Side
select RTRIM(first_name) from professionals;

#7 Write An SQL Query To Print The DEPARTMENT From Professionals Table After Removing White Spaces From The Left Side.
 select LTRIM(Department) from professionals;
 
#8 Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Professionals Table And Prints Its Length 
select distinct department, length(Department) from professionals;

#9 Write An SQL Query To Print The FIRST_NAME From professional Table After Replacing ‘A’ With ‘a’ 
select replace(First_Name,"a","A") from professionals;
select replace(First_Name,"a"," ") from professionals;
select * from professionals;

# 10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Professional Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them
select CONCAT(First_Name,' ',Last_Name) as "Complete_Name" from professionals;

#11. Write An SQL Query To Print All Details From The Professional Table and arrange as per FIRST_NAME Ascending. 
select * from professionals order by First_Name asc;
select * from professionals order by Salary desc;

#12. Write An SQL Query To Print Details From The Professional Table Order By FIRST_NAME Ascending And DEPARTMENT Descending. 
select * from professionals order by Salary;
select * from professionals order by Salary desc;
select * from professionals order by First_NAME asc,Department desc;
select * from professionals order by Department asc, Salary desc;
select * from professionals order by Department asc, First_Name desc;
select Department, Salary from professionals order by Department,Salary desc;

#13 Write An SQL Query To Print Details With The First Name As “Vipul” And “Satish” From Professional Table
select * from Professionals where First_Name in ('Virat',"Shubham");

# 14 Write An SQL Query To Print Details Excluding First Names, “Vipul” And “Satish” From Professional Table. 
select * from professionals where First_Name not in ('Virat',"Shubham");

#15 Write An SQL Query To Print Details With DEPARTMENT Name As “Admin"
select * from professionals where Department like "E%";
select * from professionals where first_name like "Sh%";

#16 Write An SQL Query To Print Details Whose FIRST_NAME Ends With ‘A’ 
select * from professionals where First_Name like "%m";

#First Name start with a
select * from professionals where First_Name like "a%";

#17 Write An SQL Query To Print Details Whose FIRST_NAME Contains ‘a’ 
select * from professionals where First_Name like "%ab%";

#18 Write an SQL Query to fetch name of people whose name starts with S and ends with L
select * from professionals where last_name like "s%a";

#19 Write An SQL Query To Print Details Whose FIRST_NAME Ends With ‘m’ And Contains Six Alphabets 
select * from professionals where First_Name like'______m';
select * from professionals where First_Name like'__r__';
select * from professionals where last_Name like's____a';
select * from professionals where salary like '5_____';
select * from professionals where salary like "5%";

#20 Write An SQL Query To Print Details Whose SALARY Lies Between 100000 And 500000. (#between includes both the values)
select * from professionals where salary >=100000 and salary<=500000;

select * from professionals where salary between 100000 and 500000;
select * from professionals where joining_date between "2021-02-20 09:00:00" and "2021-06-11 09:00:00";

# 21 Write An SQL Query To Print Details Of Professionals Who Have Joined In the year 2021
Select * from professionals where year(JOINING_DATE) = 2021; 
Select * from professionals where month(JOINING_DATE) = 2; 
Select * from professionals where day(JOINING_DATE) = 11; 
Select * from professionals where month(JOINING_DATE) = 4 and day(JOINING_DATE) = 11; 

#Statistics
select max(salary) from professionals;
select min(salary) from professionals;
select max(salary) as max_salary,min(salary) as min_salary from professionals;
select avg(salary) from professionals;
select stddev_pop(salary) from professionals;
select var_pop(salary) from professionals;
select count(professional_id) from professionals;

#21 Write An SQL Query To Fetch The Count Of number of people In The Department ‘Sales’. 
SELECT COUNT(*) FROM professionals WHERE DEPARTMENT = 'Sales'; 

#22 SubQuery
# Write An SQL Query To Print Details Whose SALARY Lies Between 100000 And 500000 (Same as Q20)
SELECT FIRST_NAME, LAST_NAME, Salary 
FROM professionals  
WHERE professional_ID IN  
(SELECT professional_ID FROM professionals  
WHERE Salary BETWEEN 100000 AND 500000); 

#22 A Write An SQL Query To Show The Second Highest Salary From Professionals Table.
# Max Salary
select max(salary) from Professionals;
select max(salary) from professionals where salary not in (select max(salary) from professionals);

#22 B Write An SQL Query To Show The Second Lowest Salary From Professionals Table.
select  min(salary) from Professionals;
select  min(salary) from Professionals where salary not in (select min(salary) from Professionals);

#22 C Write An SQL Query To Fetch The Names Of employees Who Earn The Highest Salary.
SELECT FIRST_NAME, SALARY from professionals WHERE SALARY=(SELECT max(SALARY) from professionals);

#22 D Write An SQL Query To Show The Last Record From A Table
Select * from professionals where professional_ID = (SELECT max(professional_ID) from professionals);
Select * from professionals order by professional_ID DESC limit 1;

#22 E Write An SQL Query To Fetch The First Row Of A Table.
Select * from professionals where professional_ID = (SELECT min(professional_ID) from professionals);

#23 Group By
#Write An SQL Query To Fetch The No. Of people For Each Department In The Descending Order
SELECT DEPARTMENT, count(professional_ID) No_Of_Workers  
FROM professionals  
GROUP BY DEPARTMENT  
ORDER BY No_Of_Workers DESC; 


#24 Write An SQL Query To Fetch Average salary of Department (Use Order By)
select Department, AVG(Salary) from professionals group by Department;
select Department, max(salary) from professionals group by Department;

#25 Having
#Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table 
SELECT first_name, Department, COUNT(first_name) 
FROM professionals 
GROUP BY first_name
HAVING COUNT(*) > 1; 

#25a Write an SQL Query to Fetch Average Salary of people having average salary>200000
select First_Name, Last_Name, Department ,AVG(Salary) as Average_Salary 
from professionals group by Department having Average_salary>150000;

#25 B Write An SQL Query To Fetch The Departments That Have greater Than three People In It.
SELECT DEPARTMENT, COUNT(professional_ID) as 'Number of Workers' FROM professionals
GROUP BY DEPARTMENT HAVING COUNT(professional_ID) > 3;

#26 Write An SQL Query To Show Only Odd Rows 
SELECT * FROM professionals WHERE MOD (professional_ID, 2) <> 0;

#27 Write An SQL Query To Show Only Even Rows
SELECT * FROM professionals WHERE MOD (professional_ID, 2) = 0; 

#28 Write An SQL Query To Clone (Copy )A New Table From Another Table
create table Employee select * from professionals;

show tables;

select * from employee;

#29 Write An SQL Query To Show The Current Date And Time

SELECT CURDATE(); 

SELECT NOW(); 


#30 A Write a SQL Query to select to 4 records
select * from professionals limit 4;

#31 Write An SQL Query To Show The Top N (Say 5) Records Of A Table
select * from professionals order by Salary desc limit 5;

#32 Write an SQL Query to select first 3 records where department = engineer and Order by First_Name
select * from professionals where Department="Engineer" order by First_Name asc limit 2;

#33 Write An SQL Query To fetch details of the sixth highest salary.
SELECT * FROM professionals ORDER BY Salary desc LIMIT 5,1;

#34 Write a SQL Query to select to 4 records which start from 4
select * from professionals limit 3,4;

#35 Write SQL Query to select 2 records of Architect department which starts from 3
select * from professionals where Department="Architect" limit 2,2;

#36 Write An SQL Query To Fetch The First 50% Records From Professional Table.
SELECT * FROM professionals
WHERE professional_ID <= (SELECT count(professional_ID)/2 from professionals);

#Alter
#37 Write An SQL Query To add New Column 

select * from professionals;
#Add
alter table professionals add column New_Column varchar(10);

#38 Write an SQL Query to change the Data type of a column
#Data Type
alter table professionals modify column New_Column int(10);

#39 Write an SQL Query to Remove a column
#Drop
ALTER TABLE professionals DROP COLUMN JOINING_DATE;

#40 Write an SQL Query to Rename a column name
#Rename
alter table professionals rename column professional_id to id;

select * from professionals;

#41 Write An SQL Query To change the LAST_NAME as Bhatt of worker_id =005.
#Update
update professionals
set Last_Name="Bhatt"
where Worker_ID=004;

select * from professionals;

#42 Write An SQL Query To change the Salary of Virat Agnihotri to 300,000 
update professionals 
set Salary= 300000
where `First_Name`="Virat" and last_name="Agnihotri";

select * from professionals;

#43 Write an SQL Query to to change department of Abbas and Amitabh to Data Scientist
update professionals
set  Department="Data Scientist"
where First_Name in("Abbas","Amitabh");

#43 Write An SQL Query To delete the all details where id is 003.
Delete from professionals
Where professional_id = 003;

#44 Write an SQL Query to delete all details where first_name="Abbas"
delete from professionals where 
first_name="Abbas"; 

#45 #If Clause/Case
# Write An SQL Query To Add A class for 100000+ salary and B for others.
select  *, if(SALARY > 300000, "A","B") as class from professionals;

#46 CASE
SELECT First_name, Last_name,
CASE
    WHEN Salary > 300000 THEN "The Class is A"
    WHEN Salary <= 300000 and Salary >=100000 THEN "The Class is B"
    ELSE "The Class is C" 
end as Class
FROM Professionals;
 create table 
#47 Union/Union All
create table w1 (Name varchar(10), Age int(5));
create table w2 (Name varchar(10), Age int(5));

insert into w1 values
("Sachin", 45),
("Kohli", 33),
("Manish", 22),
("Kohli", 33);

insert into w1 values
("Maxwell", 45),
("Amit", 33),
("Rahul", 22),
("Rahul", 33);

#48 Union
select * from w1
union
select * from w2;

#49 Union All
select * from w1
union all
select * from w2;


#create table products
CREATE TABLE products (
 id INT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 size VARCHAR(10),
 color VARCHAR(20),
 description VARCHAR(250)
);

#create table customers
CREATE TABLE customers (
 id INT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 phone VARCHAR(20),
 address VARCHAR(255)
);

#create table orders
CREATE TABLE orders (
 id INT PRIMARY KEY,
 customer_id INT NOT NULL,
 product_id INT NOT NULL,
 quantity INT NOT NULL,
 order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (customer_id) REFERENCES customers(id),
 FOREIGN KEY (product_id) REFERENCES products(id)
);

#Have a look at tables before inserting values!
#select * from table
select * from products;
select * from customers;
select * from orders;

#insert values into products
INSERT INTO products (id, name, price, size, color, description)
VALUES 
(1, 'T-shirt', 19.99, 'M', 'Blue', 'A comfortable and stylish t-shirt'),
(2, 'Jeans', 49.99, '32x34', 'Black', 'A classic pair of black jeans'),
(3, 'Sneakers', 79.99, '10.5', 'White', 'A pair of comfortable and 
stylish sneakers'),
(4, 'Sweater', 34.99, 'L', 'Gray', 'A cozy and warm sweater'),
(5, 'Dress', 59.99, 'S', 'Red', 'A beautiful and elegant dress'),
(6, 'Jacket', 99.99, 'XL', 'Green', 'A warm and stylish jacket'),
(7, 'Skirt', 29.99, 'M', 'Yellow', 'A cute and flirty skirt'),
(8, 'Blouse', 39.99, 'L', 'Pink', 'A flowy and feminine blouse'),
(9, 'Shorts', 24.99, 'S', 'Orange', 'A comfortable pair of shorts for 
summer'),
(10, 'Hoodie', 49.99, 'L', 'Black', 'A cozy and casual hoodie'),
(11, 'Boots', 89.99, '9.5', 'Brown', 'A stylish pair of boots for any 
occasion'),
(12, 'Sweatpants', 29.99, 'M', 'Gray', 'A comfortable and casual 
pair of sweatpants'),
(13, 'Sunglasses', 19.99, NULL, 'Black', 'A cool and trendy pair of 
sunglasses'),
(14, 'Scarf', 14.99, NULL, 'Purple', 'A warm and cozy scarf for the 
winter'),
(15, 'Hat', 9.99, 'One size', 'Navy', 'A stylish and versatile hat for
any outfit'),
(16, 'Jumpsuit', 69.99, 'M', 'Black', 'A chic and trendy jumpsuit 
for any occasion'),
(17, 'Blazer', 79.99, 'L', 'White', 'A sophisticated and stylish blazer 
for work or events'),
(18, 'Sweatshirt', 39.99, 'XL', 'Pink', 'A comfortable and cozy 
sweatshirt for lounging'),
(19, 'Leggings', 24.99, 'S', 'Black', 'A versatile and comfortable 
pair of leggings'),
(20, 'Pants', 54.99, '32x30', 'Khaki', 'A classic and stylish pair of 
khaki pants');

#insert values into customers
INSERT INTO customers (id, name, email, phone, address)
VALUES 
(1, 'John Smith', 'john.smith@gmail.com', '+1 555-123-4567', 
'123 Main St, Anytown, USA'),
(2, 'Jane Doe', 'jane.doe@yahoo.com', '+1 555-987-6543', '456 
Maple Ave, Anytown, USA'),
(3, 'Bob Johnson', 'bob.johnson@yahoo.com', NULL, '789 Oak St, 
Anytown, USA'),
(4, 'Emily Williams', 'emily.williams@gmail.com', '+1 555-555-
1212', '321 Elm St, Anytown, USA'),
(5, 'David Lee', 'david.lee@yahoo.com', '+1 555-555-5555', '567 
Pine St, Anytown, USA'),
(6, 'Sarah Kim', 'sarah.kim@gmail.com', '+1 555-123-7890', '890 
Cedar Ave, Anytown, USA'),
(7, 'Michael Chen', 'michael.chen@yahoo.com', '+1 555-999-
8888', '246 Birch Blvd, Anytown, USA'),
(8, 'Jessica Brown', 'jessica.brown@yahoo.com', '+1 555-777-
6666', '369 Spruce St, Anytown, USA'),
(9, 'Kevin Garcia', 'kevin.garcia@gmail.com', '+1 555-111-2222', 
'802 Maplewood Dr, Anytown, USA'),
(10, 'Ashley Davis', 'ashley.davis@gmail.com', NULL, '135 Walnut 
St, Anytown, USA');

#insert values into orders
INSERT INTO orders (id, customer_id, product_id, quantity, 
order_date)
VALUES 
(1, 1, 1, 2, '2022-03-08 14:25:00'),
(2, 2, 1, 1, '2022-03-07 09:32:00'),
(3, 3, 3, 4, '2022-03-06 18:05:00'),
(4, 4, 5, 3, '2022-03-05 10:12:00'),
(5, 5, 2, 2, '2022-03-04 15:22:00'),
(6, 1, 3, 1, '2022-03-03 12:48:00'),
(7, 2, 4, 2, '2022-03-02 17:09:00'),
(8, 3, 1, 3, '2022-03-01 11:35:00'),
(9, 4, 2, 1, '2022-02-28 16:02:00'),
(10, 5, 5, 2, '2022-02-27 13:24:00'),
(11, 1, 2, 3, '2022-02-26 10:49:00'),
(12, 2, 3, 2, '2022-02-25 14:56:00'),
(13, 3, 4, 1, '2022-02-24 09:17:00'),
(14, 4, 1, 2, '2022-02-23 12:40:00'),
(15, 5, 3, 3, '2022-02-22 16:58:00');

#Have a look at tables after we are done with inserting values!
#select * from table
select * from products;
select * from customers;
select * from orders;

#Inner join-->
#Q.50 Fetch details of the customer and the number of quantites that they have ordered?
select c.name, sum(o.quantity)
from customers c inner join orders o
on c.id=o.customer_id
group by c.id;

/*Conclusion: As we can see there are 10 customers, but we got 
details of only 5 customers as details of only 5 customers is 
present in orders table and we have applied inner join.
inner join or we can also write join.*/

#Left join-->
#Q.51 How many quantities of each sized product are ordered?
select p.size, sum(o.quantity) from 
products p left join orders o
on p.id=o.product_id
group by p.size;

#Right join-->
#Q.52 Name the products which were ordered and number of quantities ordered.
select distinct(p.name), sum(o.quantity)
from products p right join orders o 
on o.product_id=p.id
group by o.quantity;


#Full Outer join/Outer join-->
#Q.53 What are the total number of products and average amount spent on each product?
#We can emulate FULL OUTER JOIN using UNION of left join & right join.
select p.id, count(p.id), avg(p.price) 
from products p left join orders o
on p.id=o.product_id
group by p.id
union
select p.id, count(p.id), avg(p.price) 
from products p right join orders o
on p.id=o.product_id
group by p.id;

#Cross or Cartesian join-->
#Q.54 Join every row of a table to every row of some other table.
select * from products p cross join orders o;

#Point to be noted here is, first id column is for products table, while other is for orders table.

#Multiple join-->Combine all the 3 tables
#Q.55 Name the customers who have ordered atleast 6 quantities and for price>140.
select c.name, sum(quantity), sum(price)
from (customers c join orders o on c.id=o.customer_id)
join products p on p.id=o.product_id
group by c.id
having sum(quantity)>=6 and sum(price)>140;

#View
#Q.56 
create view Details as
select c.name, sum(o.quantity)
from customers c join orders o
on c.id=o.customer_id
group by c.id;

select * from details;

#Drop View
drop view details;

# RegEx (Regular Expressions) 

select * from customers;
select * from products;

#Q57. Match beginning of string(^): Give names of customers whose name starts with ‘J’.
SELECT name FROM customers WHERE name regexp '^J';

#Q58. Match the end of a string($): Give names of customers having email id with extension '@gmail.com'.
SELECT email FROM customers WHERE email regexp '@gmail.com$';

#Q59.Matches any of the patterns p1, p2, or p3(p1|p2|p3): Give names containing 'Jo' or 'ee' or 'lli'.
SELECT name FROM customers WHERE name regexp 'Jo|ee|lli';

#Q60. Matches any character listed between the square brackets([abc]): Give names of colors containing vowels [aeiou]
SELECT color FROM products WHERE color regexp '[aeiou]';

#Indexes
/*Indexes in a database improve data retrieval speed compared to when indexes are not used. 
These indexes are invisible to users and are employed to accelerate search and query operations.
It's important to note that updating a table with indexes takes longer than updating a table 
without them since the indexes require updates as well. Hence, it's advisable to create indexes 
only on columns that will be frequently used for search operations*/

#Q.61 Creating an Index
create index My_Index on professionals (first_name, last_name, department);

#Q.62 Dropping an Index
drop index my_index on professionals;

#Q.63 Stored Procedure
create procedure My_Procedure()
select Department, count(department)
from professionals group by department;

call my_procedure();

#Q.64 Create a stored procedure and print results as per the input
create procedure professional_details (in professional_id int)
select * from professionals where id =professional_id;

#Q.65 Call and drop stored procedure
call professional_details (1);
drop procedure professional_details;
