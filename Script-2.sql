#1.	Import both the .CSV files in Dbeaver under the database name Sky_Sports

create database Sky_Sports;

use Sky_Sports;

show tables;

select * from sky1 ;

select * from sky2 ;

#2.	Write an sql query to show all the UNIQUE team names 
select distinct team from sky1 ;

#3.	Write an SQL query to show name of team which has rank 1 from group 7 
select team from sky1 where 'rank' = 1 and 'group' = 7 ;

SELECT team
FROM sky1
where `rank`=1 and `group`=7; ####how to solve?

#4.	Write an sql query to show count of all teams 
 select count(team) from sky1 ; 
 
#5.	Write an SQL query to show matches_played by each team
SELECT team, matches_played
FROM sky1;

#6.	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team, 100 * (wins/matches_played) as wins_percent
from sky1 ;

#7.	Write an SQL query to show which team has maximum goals_scored and their count
select team, goals_scored 
from sky1
where goals_scored = (select max(goals_scored) from sky1)  ;

#8.	 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team, 100.00* round((draws/matches_played),2) as n 
from sky1 ;



#9.	 Write an SQL query to show which team has minimum goals_scored and their count
select team, goals_scored 
from sky1
where goals_scored = (select min(goals_scored) from sky1) ;

#10 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team, 100 * (losses/matches_played) as losses_percent
from sky1;

#11.	Write an SQL query to show the average goal_difference
select team , avg(goal_difference) as agd
from sky1 
group by team ;

#12.	 Write an SQL query to show name of the team where points are 0 
select team
from sky1 
where points = '0';

#13.	Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from sky1 where expected_goal_scored <  exp_goal_conceded;

#14.	Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from sky1 where exp_goal_difference between -0.5 and 0.5   ;


#15.	Write an SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from sky1 
order by exp_goal_difference_per_90 asc ;

#16.	Write an SQL query to show team which has maximum number of players_used
select team , max(players_used) as mu
from sky2 
group by team ;

#17.	Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team ,avg_age as aa
from sky2 
order by aa asc ;

#18.	Write an sql query to show average possession of teams
select team, avg(possession) as ap
from sky2 
group by team ;

#19.	Write a SQL query to show team which has played atleast 5 games
select team , games
from sky2 
where games >=5
group by team, games ;

#20.	Write an SQL query to show all data for which minutes is greater than 600
select * from sky2 
where minutes >= 60;

#21.	Write an SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists
from sky2 
order by goals asc;


#22.	Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att
from sky2 
order by pens_made desc ;

#23.	Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 
select team, cards_yellow, cards_red
from sky2 
where cards_red = 1 
order by cards_yellow asc ;

#24.	Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 
select team, goals_per90, assists_per90, goals_assists_per90
from sky2 
order by goals_assists_per90 desc;

#25.	Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 
select  team, goals_pens_per90, goals_assists_pens_per90
from sky2 
order by goals_assists_pens_per90 asc;


#26.	Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team, shots, shots_on_target, shots_on_target_pct
from sky2 
where shots_on_target_pct <= 30
order by shots_on_target_pct asc;

#27.	Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select  team, shots_per90, shots_on_target_per90
from sky2 
where team ='belgium';

#28. Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance
from sky2 
order by average_shot_distance desc;

#29.	Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team, errors, touches
from sky2 
where errors = 0 and touches < 1500 ;

#30.	Write an SQL query to show team, fouls which has maximum number of fouls
select team, fouls 
from sky2
order by fouls desc
limit 1;
            #or
SELECT team, fouls
FROM sky2
WHERE fouls = (SELECT MAX(fouls) FROM sky2);


#31.	Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team , offsides
from sky2 
where offsides <= 10 or offsides >= 20; 


#32.	Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct
select team, aerials_won, aerials_lost, aerials_won_pct 
from sky2 
order by aerials_won_pct desc; 

select * from sky2  ;

#33.	Write an SQL query to show number of teams each group has! ( DOUBT)
select team , `group` 
from sky1 ;
       #or
SELECT `group`, COUNT(team) AS number_of_teams
FROM sky1
GROUP BY `group`;

#34.	Write a SQL query to show team names group 6 has  ( DOUBT)
select team , `group` 
from sky1
where `group` = 6 ;

#35.	Write an SQL query to show Australia belongs to which group 
select team, `group` 
from sky1 s 
where team = 'australia';

#36.	Write an SQL query to show group, average wins by each group 
SELECT `group`, AVG(wins) AS average_wins
FROM sky1
GROUP BY `group`;

#37.	Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored

select `group`  ,max(expected_goal_scored) as m
from sky1 
group by `group` 
order by m asc ;

           #OR
select `group`, max(expected_goal_scored) as max_exp_goal_scored 
from sky1 s 
group by `group` 
order by max_exp_goal_scored;

 select *  from sky1;
#38.	Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group`  ,min(expected_goal_scored) as n
from sky1 
group by `group` 
order by n desc ;

#39.	Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 
select `group`  , avg(exp_goal_difference_per_90) as a
from sky1 
group by `group` 
order by a asc  ;

#40.	Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team, goals_scored, goals_against 
from sky1 s 
where goals_scored = goals_against 
order by ( goals_against) asc ;

#41.	Write an SQL query to show which team has maximum players_used 
select team , max(players_used) as ps
from sky2
group by team
limit 1;

#42.	Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 
select team, players_used, avg_age, games, minutes
from sky2 s 
where minutes < 200 and minutes > 500 ;

#43.	Write an SQL query to show all data of group_stats in ascending order BY points
select * 
from sky1
order by points asc;


#44.	Write an SQL query to show ALL UNIQUE team in ascending order by team
select distinct team
from sky1 s 
order by team asc;


#45.	 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 
select s.`group` , avg(t.avg_age) as average
from sky1 s inner join sky2  t
on s.team = t.team
group by s. `group` 
order by average;
                   #or 
SELECT gs.`group`, AVG(td.avg_age) AS average
FROM sky1 gs
INNER JOIN sky2 td
ON td.team = gs.team
GROUP BY gs.`group`
ORDER BY average DESC;


#46.	Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select g.`group` , sum(s.fouls) as fau
from sky1 g 
inner join sky2 s 
on g.team = s.team 
group by g.`group` 
order by fau asc ;

#47.	Write an SQL query to show total number of games for each group and arrange it in descending order by games. 
select * from sky1 s ;


select g.`group` , sum(k.games) as ss
from sky1 g
inner join sky2 k
on g.team = k.team 
group by g.`group` 
order by ss desc;

#48.	Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select g.`group` , sum(k.players_used) as pp
from sky1 g
inner join sky2 k
on g.team  = k.team 
group by g.`group` 
order by pp asc;

#49.	Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select g.`group` , sum(k.offsides) as ff
from sky1 g
inner join sky2 k
on g.team  = k.team 
group by g.`group` 
order by ff asc;

#50.	Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select g.`group` , avg(k.passes_pct) as pass
from sky1 g
inner join sky2 k
on g.team  = k.team 
group by g.`group` 
order by pass desc;


#51.	Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select g.`group` , avg(k.goals_per90) as goal
from sky1 g
inner join sky2 k
on g.team  = k.team 
group by g.`group` 
order by goal asc;