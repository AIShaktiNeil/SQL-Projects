show  databases;

show databases;

create database ;
 
use nilesh ;

show tables;

select * from fifa_1 ;

select * from fifa_2 ;

select * from fifa_3 ;

 select distinct team from fifa_3 ;

SELECT team 
FROM fifa_3
where `rank`=1 and `group`=7;

select count(team) from fifa_3 ;

select team, matches_played 
from fifa_3 ;

select team, 100.0*(wins/matches_played) as wins_percent 
from group_stats;



 
