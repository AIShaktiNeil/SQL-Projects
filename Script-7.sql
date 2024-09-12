show databases;

use project;

show tables;
 select * from blinkit;
 
#2.Write an SQL query to show all Item_Identifier
 select distinct Item_Identifier from blinkit ;

#3.	Write an SQL query to show count of total Item_Identifier.
select count(Item_Identifier) from blinkit;

#4.	Write an SQL query to show maximum Item Weight.
 select max(Item_weight) from blinkit;

#5.	Write an SQL query to show minimum Item Weight.
select min(item_weight) from blinkit ;

#6.	Write an SQL query to show average Item_Weight.
 select avg(item_weight) from blinkit;

#7.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
SELECT COUNT(*) AS Low_Fat_Count
FROM blinkit
WHERE Item_Fat_Content = 'Low Fat';

#8.	Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
SELECT COUNT(*) AS Reg_Fat_Count
FROM blinkit
WHERE Item_Fat_Content = 'Regular';
 
#9.	Write an SQL query to show maximum Item_MRP 
select max(item_mrp) from blinkit;

#10.	Write an SQL query to show minimum Item_MRP
select min(item_mrp) from blinkit;

#11.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
SELECT Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP
FROM blinkit
WHERE Item_MRP > 200;

#12.	Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 
select max(item_mrp)  from blinkit where item_fat_content = 'Low Fat';

SELECT MAX(Item_MRP) AS Max_Item_MRP
FROM blinkit
WHERE Item_Fat_Content = 'Low Fat';

#13.	Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
select min(item_mrp)  from blinkit where item_fat_content = 'Low Fat';


#14.	Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from blinkit where item_mrp >= 50 and item_mrp <= 100 ;

#15.	Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct item_fat_content from blinkit;

#16.	Write an SQL query to show ALL UNIQUE value of  Item_Type 
select distinct item_type from blinkit;

#17.	Write an SQL query to show ALL DATA in descending ORDER by Item MRP #
select * from blinkit order by item_mrp desc;

#18.	Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from blinkit order by item_outlet_sales asc ;

#19.	Write an SQL query to show ALL DATA in ascending by Item_Type 
select * from blinkit order by item_type asc ;

#20.	Write an SQL query to show DATA of item_type dairy & Meat
select * from blinkit where item_type in('dairy','meat');

#21.	Write an SQL query to show ALL UNIQUE value of Outlet_Size 
select distinct outlet_size from blinkit;

#22.	Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct outlet_location_type from blinkit;


#23.	Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct outlet_type from blinkit;


#24.	Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select count(item_type) from blinkit group by item_type order by item_type desc; 

SELECT Item_Type, COUNT(*) AS Item_Count
FROM blinkit
GROUP BY Item_Type
ORDER BY Item_Count DESC;


#25.	Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order 
#select count(outlet_size) from blinkit group by outlet_size order by outlet_size asc; 

select outlet_size, count(*) as outlet_A from blinkit group by outlet_size order by outlet_A asc; 


#26.	Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
s#elect count(outlet_type) from blinkit group by outlet_type order by outlet_type desc; 
#or
select outlet_type, count(*) as outlet_t from blinkit group by outlet_type order by outlet_t desc; 

#27.	Write an SQL query to show count of items by Outlet_Location_Type and order it in descending order

select outlet_location_type, count(*) as outlet_L from blinkit group by outlet_location_type order by outlet_L desc; 

#28.	Write an SQL query to show maximum MRP by Item_Type
 SELECT Item_Type, MAX(Item_MRP) AS Max_MRP
FROM blinkit
GROUP BY Item_Type;


#29.	Write an SQL query to show minimum MRP by Item_Type 
SELECT Item_Type, min(Item_MRP) AS Min_MRP
FROM blinkit
GROUP BY Item_Type;


#30.	Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
SELECT Outlet_Establishment_Year, Min(Item_MRP) AS Min_MRP
FROM blinkit
GROUP BY Outlet_Establishment_Year order by min_mrp desc ;


#31.	Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
SELECT Outlet_Establishment_Year, Max(Item_MRP) AS Max_MRP
FROM blinkit
GROUP BY Outlet_Establishment_Year order by Max_MRP desc;


#32.	Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
SELECT Outlet_size, avg(Item_MRP) AS avg_MRP
FROM blinkit
GROUP BY Outlet_size order by avg_mrp desc ;

#33.	Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
SELECT Outlet_type, avg(Item_MRP) AS avg_M
FROM blinkit
GROUP BY Outlet_type order by avg_M asc;

#34.	Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type, max(item_mrp) as M
from blinkit
group by outlet_type;

#35.	Write an SQL query to show maximum Item_Weight by Item_Type 
select item_type, max(item_weight)as wt
from blinkit
group by item_type;

#36.	Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select  Outlet_Establishment_Year, max(item_weight)as oeyw
from blinkit
group by  Outlet_Establishment_Year;

#37.	Write an SQL query to show minimum Item_Weight by Outlet_Type 
 select outlet_type, min(item_weight)as mt
from blinkit
group by outlet_type;

#38.	Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select Outlet_Location_Type, avg(item_weight)as mt
from blinkit
group by Outlet_Location_Type;

#39.	Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
 select item_type, max(Item_Outlet_Sales)as os
from blinkit
group by item_type;

#40.	Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
 select item_type, min(Item_Outlet_Sales)as os
from blinkit
group by item_type;

#41.	Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 
select  Outlet_Establishment_Year, min(item_outlet_sales) as ios
from blinkit
group by  Outlet_Establishment_Year;

#42.	Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select  Outlet_Establishment_Year, max(item_outlet_sales) as iox
from blinkit
group by  Outlet_Establishment_Year order by iox desc ;

#43.	Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select  Outlet_size, avg(item_outlet_sales) as ioo
from blinkit
group by  Outlet_size order by ioo desc;

#44.	Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select  Outlet_type, avg (item_outlet_sales) as ioy
from blinkit
group by  Outlet_type;

#45.	Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 
select  Outlet_type, max(item_outlet_sales) as nn
from blinkit
group by  Outlet_type ;

#46.	Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select  item_type, sum(item_outlet_sales) as s
from blinkit
group by  item_type ;

#47.	Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
select  Item_fat_content, sum(item_outlet_sales) as os
from blinkit
group by  Item_fat_content ;

#48.	Write an SQL query to show maximum Item_Visibility by Item_Type
select item_type, max(item_visibility) as iv
from blinkit
group by item_type;

#49.	Write an SQL query to show Minimum Item_Visibility by Item_Type 
select item_type, min(item_visibility) as iv
from blinkit
group by item_type;

#50.	Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
select item_type, sum(item_outlet_sales) as a
from blinkit where Outlet_Location_Type ='Tier 1'
group by item_type ;

select * from blinkit;

#51.	Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select item_type, sum(item_outlet_sales) as a
from blinkit where Item_Fat_Content in('Low Fat','LF')
group by item_type ;

#project complete


