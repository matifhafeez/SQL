use MBC

--Question No 1
/*
	The following table holds monthly salary information for several employees. 
	Write a query to get, for each month, the cumulative sum of an employee’s salary over a period of 3 months,
	excluding the most recent month. The result should be ordered by ascending employee ID and month. 
*/
--Solution
select A.* 
from 
(select id,
pay_month,
salary,
sum(salary) over (partition by id order by pay_month) as [cumulative_sum]
from Employee) A
where A.pay_month <> (select max(pay_month) from Employee E where E.id = A.id) 

--Question No 2
/*
	Write a query to return the scores of each team in the teams table after all matches displayed in the matches table. 
	Points are awarded as follows: zero points for a loss, one point for a tie, and three points for a win. 
	The result should include team name and points, and be ordered by decreasing points. 
	In case of a tie, order by alphabetized team name.
*/
--Solution
create table #team_score
(
	team_id smallint,
	team_score int
)

insert into #team_score
select M.host_team as [team]
,case when host_goals > guest_goals then 3
when host_goals < guest_goals then 0 
else 1 end as [score]
from Matches M
union all
select M.guest_team
,case when guest_goals > host_goals then 3
when guest_goals < host_goals then 0 
else 1 end as [guest_score]
from Matches M

select T.team_name
,SUM(TS.team_score) as [total_points]
from #team_score TS
inner join Teams T on T.team_id = TS.team_id
group by T.team_name
order by [total_points] desc,T.team_name

drop table #team_score

--Question No 3
/*
	The attendance table logs the number of people counted in a crowd each day an event is held. 
	Write a query to return a table showing the date and visitor count of high-attendance periods, 
	defined as three consecutive entries (not necessarily consecutive dates) with more than 100 visitors. 
*/
--Solution
select *,
case when visitors > 99 then 1 else 0 end as [high_attendance]
into #temp_attendance
from Attendance

select B.event_date,
B.visitors
from 
(
select A.event_date
,A.visitors
,consecutive_total = case when A.high_attendance = 0 then 0
	else SUM(high_attendance) over(
		partition by A.grp
	) end 
from (
 select *
    , grp = row_number() over (order by event_date) 
          - row_number() over (
              partition by high_attendance
              order by event_date)
  from #temp_attendance) A
 ) B
where consecutive_total >= 3 

drop table #temp_attendance

