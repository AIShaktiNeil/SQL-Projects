show databases ;

use nilesh ;
  
select * from fifa_1 f ;

select * from fifa_2 f ;

select * from fifa_3 f ;

#1.   Write a SQL query to show all the UNIQUE team names
select distinct team from fifa_3 f ;

#2.   Write a SQL query to show name of team which has rank 1 from group 7
select team 
from fifa_3 f 
where `rank`=1 and `group`=7; 

#3.   Write a SQL query to show count of all team
select count(team) from fifa_3 f; 

#4.   Write  a SQL query to show matches_played by each team
select team , games from fifa_3 f group by team , games ;

#5.   Write a SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team, 100.0*(gk_wins/games) as wins_percent 
from fifa_3 f ; 


#6.   Write a SQL query to show which team has maximum goals_scored and how much
SELECT team, goals 
FROM fifa_3 f 
WHERE goals= (SELECT MAX(goals) FROM fifa_3 f2);
  #OR
select team , max( goals) as g  from fifa_3 f group by team order by g desc  limit 1 ;

#7.   Write a SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team , round( 100* (gk_ties/games) , 2)
from fifa_3 f ;

#8.   Write a SQL query to show which team has minimum goals_scored and how much
select team, min( goals) as m
from fifa_3 f 
group by team 
order by m asc ;


#9.   Write a SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team , (gk_losses*100 / games) as  losses_percent
from fifa_3 f 
#group by team 
order by losses_percent asc ;


#10.Write a SQL query to show the average goal_difference
select avg(goal_differnce) from fifa_3 f; 

#11.Write a SQL query to show name of the team where points are 0
select * from fifa_3 f where points_per_game = 0;

#12.Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from fifa_3 f where xg  < xg_net  ;

#13.Write a SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from fifa_3 f where exp_goal_difference between -0.5 and 0.5

#14.Write a SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from fifa_3 f order by exp_goal_difference asc ;

#15.Write a SQL query to show team which has maximum number of players_used
select team , max(players_used) as pu 
from fifa_3 f 
group by team 
order by pu desc 
limit 1 ;

select * from fifa_3 f ;

#16.Write a SQL query to show each team name and avg_age in ascending order by avg_age
select team , avg_age from fifa_3 f 
order by avg_age asc;

#17.Write a sql query to show average possession of teams
 select avg(possession) from fifa_3 f ; 

#18.Write a SQL query to show team which has played atleast 5 games
select * from fifa_3 f where games > 5 ;

#19.Write a SQL query to show all data for which minutes is greater than 600
select * from fifa_3 f where minutes > 600 ;


#20.Write a SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from fifa_3 f order by goals asc ;

#21.Write a SQL query to show team, pens_made, pens_att in descending order by pens_made

select team, pens_made, pens_att from fifa_3 f order by pens_att desc;


#22.Write a SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team, cards_yellow, cards_red  from fifa_3 f 
where cards_red = 1 
order by cards_yellow;

#23.Write a SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90

select team, goals_per90, assists_per90, goals_assists_per90  from fifa_3 f order by goals_assists_pens_per90 desc;

#24.Write a SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90

select team, goals_per90, assists_per90, goals_assists_per90  from fifa_3 f order by goals_assists_pens_per90 asc;


#25.Write a SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct

select  team, shots, shots_on_target, shots_on_target_pct 
from fifa_3 f 
where shots_on_target_pct < 30
order by shots_on_target_pct asc ;

#26.Write a SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium

select team, shots_per90, shots_on_target_per90 from fifa_3 f where team = 'belgium' ;

#27.Write a SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance

select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from fifa_3 f order by average_shot_distance desc ;

#28.Write a SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500

select team, errors, touches from fifa_3 f where errors = 0 and touches < 1500 ;

#29.Write a SQL query to show team, fouls which has maximum number of fouls
select team , avg(fouls) as f
from fifa_3 f
group by team  
order by f desc
limit 1 ;

#30.Write a SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select team, offsides from fifa_3 f  where offsides < 10 or  offsides > 20 ;

#31.Write a SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct

select team, aerials_won, aerials_lost, aerials_won_pct from fifa_3 f order by aerials_won_pct desc ;

#32.WRITE a sql query to show number of teams each group has

select games , count(team)  from fifa_3 f
group by games ;

#33.Write a SQL query to show team names group 6 has
 
select team , gk_games from fifa_3 f where gk_games = 6 ;

#34.Write a SQL query to show Australia belongs to which group

select team , games from fifa_3 f where team = 'australia' ;

#35.Write a SQL query to show group, average wins by each group -----  there is no column as group

select games , avg(gk_wins) as w from fifa_3 f group by games ; 

#36.Write a SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored-----  there is no column as group

select * from fifa_1 f ;

 select  gk_games , max(xg) as ex
 from fifa_3 f 
 group by gk_games 
 order by ex asc ;


#37.Write a SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded-- no concode or group

 select  gk_games , min(xg) as ex
 from fifa_3 f 
 group by gk_games 
 order by ex asc ;

#38.Write a SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90

select gk_games, avg(xg_per90) as exp_goal_difference_per_90
from fifa_3 f 
group by gk_games 
order by exp_goal_difference_per_90 asc ;

#39.Write a query to show which team has equal number of goals_scored and goals_against

select team , goals , gk_goals_against from fifa_3 f 
where goals = gk_goals_against ;

#40.Write a query to show which team has maximum players_used

select team , max(players_used)as player 
from fifa_3 f
group by team 
order by player desc 
limit 1; 

#41.Write a query to show team, players_used, avg_age, games, minutes  where minutes less than 500 and greater than 200

select team, players_used, avg_age, games, minutes 
from fifa_3 f 
where minutes < 500 or minutes > 200 ;

#42. Write a query to show all data of game_strats in ascending order BY points

select games_starts from fifa_3 f 
order by points_per_game asc ;

#43.Write a query to show ALL UNIQUE team in ascending order by team
select distinct (team)
from fifa_3 f ;
#44. Write a query to show average avg_age of each group and arrange it in descending order by avg_age.

select gk_games , avg(avg_age) as age
from fifa_3 f 
group by gk_games 
order by age desc ;

#45.Write a query to show sum of fouls for each group and arrange it in ascending order by fouls.

select gk_games , sum(fouls) as  ff
from fifa_3 f 
group by gk_games 
order by ff asc ;


#46.Write a query to show total number of games for each group and arrange it in descending order by games.

select gk_games ,  sum(games) as gg
from fifa_3 f 
group by gk_games 
order by gg desc ;

#47.Write a query to show total number of players_used for each group and arrange it in ascending order by players_used.

select gk_games ,  sum(players_used) as gg
from fifa_3 f 
group by gk_games 
order by gg asc ;

#48.Write a query to show total number of offsides for each group and arrange it in ascending order by offsides.

select gk_games ,  sum(offsides) as gg
from fifa_3 f 
group by gk_games 
order by gg asc ;

#49.Write a query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select gk_games ,  avg(passes_pct) as gg
from fifa_3 f 
group by gk_games 
order by gg desc ;

#50.Write a query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select gk_games ,  avg(goals_per90) as gg
from fifa_3 f 
group by gk_games 
order by gg asc ;

#project complete