create database Nilesh;

use Nilesh;

create table Product_Inventory
(Product_Code int(3), 
Product_Name varchar(50),
Product_Price int(5),
Manufacturer_Code int(3));




select * from Product_Inventory ;


insert into Product_Inventory (Product_code , Product_Name , Product_Price , manufacturer_code) values
(1, '1 TB Hard Disk Drive', 2500, 1),
(2, 'Printer', 6500, 3),
(3, '64 GB Pen Drive', 700, 6),
(4, '6 GB Graphic Card', 12800, 5),
(5, '22 Inches Monitor', 10600, 2),
(6, '512 GB Solid State Drive', 4200, 1),
(7, 'Mouse', 400, 6),
(8, '450 Watt Power Supply Unit', 3600, 4),
(9, 'Printer Cartridge', 2500, 3),
(10, 'Membrane Keyboard', 900, 4),
(11, 'Bluetooth Speakers', 2000, 10),
(12, '42 Inches Television', 24600, 2),
(13, 'CPU Cabinet', 1900, 6),
(14, 'Laptop Adjustable Stand', 1250, 7),
(15, '8 GB RAM', 2600, 4),
(16, 'Motherboard', 6500, 8),
(17, 'Ergonomic Chair', 9700, 6),
(18, 'Monitor Arm Stand', 2600, 7),
(19, 'Wifi Adapter', 300, 9),
(20, 'HD Webcam', 1000, 8) ;

drop table Product_Inventory;

create table Manufacturers
(Manufacturer_Code int(2),
Manufacturer_Name varchar(50)
);

select * from Manufacturers;

insert into Manufacturers (Manufacturer_Code ,Manufacturer_Name ) values
(1, 'Western Digital'),
(2, 'Samsung'),
(3, 'Hewlett Packard'),
(4, 'Corsair'),
(5, 'Asus'),
(6, 'Ant esports'),
(7, 'Cosmic Byte'),
(8, 'Zebronics'),
(9, 'TP-Link'),
(10, 'BoAt') ;

select * from Product_Inventory ;

select * from Manufacturers;
 

#Questions:

 #1. Select the names of all the products in the inventory.
select product_name from Product_Inventory ;

#2. Select the names and the prices of all the products in the inventory.
select product_name , product_price from Product_Inventory;

#3. Use an Alias "Name" and print all the product names
select  product_name as Name from product_inventory ;

#4. Select the name of the products with a price less than or equal to 8000 Indian Rupees.
select * from Product_Inventory where Product_price <= 8000 ;

#5. Select all the products with a price between 2000 and 10000 Indian Rupees.

select * from Product_Inventory where Product_price between 2000 and 10000 ;

#6. List the details of all such products whose manufacturer_code is 6.

select * from Product_Inventory where manufacturer_code = 6 ;

#7. List the details of all such products whose manufacturer_code is 6 as well as their price is greater than 5000.

select * from Product_Inventory where manufacturer_code = 6  and product_price > 5000;

#8. List the details of all such products other than whose manufacturer_code is 6.

select * from Product_Inventory where manufacturer_code  <> 6 ;

#9. Select the name of the products whose name starts with 'M'.

select *  from Product_Inventory where product_name like "M%" ;


#10. List the name of products whose name starts with "M" and ends with "D".
select *  from Product_Inventory where product_name like "M%D" ;

#11. List the name of products which starts from "M" ends with "D" but also has ONLY 9 characters in between.
select *  from Product_Inventory where product_name like 'M_________D' ;

#12. Concatenate name of the product with its price in a single column.
SELECT CONCAT(Product_Name, ' - ', Product_Price) AS Product_Details
FROM Product_Inventory;


#13. Select the name and price in dollars (i.e. the price must be divided by 80.)
select product_name ,(product_price/ 80) as dollars from Product_Inventory 
order by dollars ;

#14. Compute the average price of all the products in Indian Rupees.
select avg(product_price) from  Product_Inventory

#15. Compute the average price of all products with manufacturer code equal to 3.
select manufacturer_code, avg(product_price) as aa
from Product_Inventory
where manufacturer_code = 3 ;

#16. What is the total cost of products where manufacturer_code is 2?
select manufacturer_code, sum(product_price) as aa
from Product_Inventory
where manufacturer_code = 2 ;

#17. Compute the number of products with a price greater than or equal to 5000.
select count(*)
from product_inventory
where  product_price >= 5000 ;

#18. Select the name and price of all products with a price larger than or equal to 5000 Indian Rupees and sort them by price (in descending order), and then by their name (in ascending order).
select * from product_inventory
where Product_price >= 5000 
#group by product_name;
order by product_name asc ;


#19. Select all the data from the inventory, including all the data for each product's manufacturer.
select * from product_inventory ;


#20. Select the product name, price, and manufacturer name of all the products.

select Product_Name , Product_Price , manufacturer_code from product_inventory ;

#21. Select the average price of each manufacturer's products, showing only the manufacturer's code.
select manufacturer_code , avg(Product_Price) 
from product_inventory 
group by manufacturer_code;

#22. Select the average price of each manufacturer's products, showing the manufacturer's name.

select  m.manufacturer_name , avg(p.Product_Price) as nn
from Manufacturers m inner join product_inventory p on
m.manufacturer_code = p.manufacturer_code
group by manufacturer_name
order by nn desc;

#23. Select the names of manufacturer whose products have an average price greater than or equal to 5000 Indian Rupees.

select   m.manufacturer_name , avg(p.Product_Price) as nn
from Manufacturers m inner join product_inventory p on
m.manufacturer_code = p.manufacturer_code
group by m.manufacturer_name
having  nn >= 5000 ;



#24. Select the name and price of the cheapest product.

select * from product_inventory order by Product_Price asc limit 1 ;

#25. Select the name of each manufacturer along with the name and price of its most expensive product.

select   m.manufacturer_name , p. product_name , p.Product_Price
from Manufacturers m inner join product_inventory p on
m.manufacturer_code = p.manufacturer_code
WHERE p.Product_Price = (
    SELECT MAX(p2.Product_Price)
    FROM Product_Inventory p2
WHERE p2.Manufacturer_Code = p.Manufacturer_Code #----------Use WHERE in subqueries when you need to filter data based on values, here JOIN woudnt work on agrrigated fun,like max()
); 

#26. Add a new product: Speaker with a price 1000 INR and manufacturer code 10.

insert into Product_Inventory(Product_code , Product_Name , Product_Price , manufacturer_code) values
(21, 'Speaker', 1000 , 10 );

#27. Update the name of the product "Speakers" to "Wired Speakers".

update Product_Inventory 
set Product_Name = "Wired Speakers"
where Product_code = 21 ;

#28. Apply a 10% discount to all products.

select Product_Price ,
       (Product_Price *10 /100) as discount_ammount ,
       (Product_Price - (Product_Price *10 /100)) as discount_price    #---------IMP step
from product_inventory pi2 ;


#29. Apply a 10% discount to all products with a price greater than or equal to 5000 Indian Rupees.
select Product_Price ,
       (Product_Price *10 /100) as discount_ammount ,
       (Product_Price - (Product_Price *10 /100)) as discount_price
from product_inventory pi2 
where Product_Price >= 5000 ;

#30. List the name of the products along with their manufacturer name and price and arrange them as per their price.

select   m.manufacturer_name , p.Product_Price
from Manufacturers m inner join product_inventory p on
m.manufacturer_code = p.manufacturer_code ;

# END OF THE PROJECT.



