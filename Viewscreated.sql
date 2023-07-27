--summary of distance covered--
select
AVG(Distance_km) as average_distance,
max(Distance_km) as maximum_distance,
min(Distance_km) as minimum_distance
 from `Tour_De_France.tour`


  
  
  
--Countries and Number of winner--

select
country,
count(Rider) total_of_winners
from
`Tour_De_France.winners`
group by
country
order by 2 desc




---Number of times team won--
select
Team,
count(Team) winning_teams

from
`Tour_De_France.winners`
group by
Team
order by 2 desc



--MONTHS EVENTS WAS DONE MOST--
select
Dates_completed,
Count(Year) as No_of_Events
from
`Tour_De_France.tour`
GROUP BY
Dates_completed







---No of stages held--

select 
type,
count(Year) total_stages
 from
`Tour_De_France.stages`
group by
type
order by 2 desc



--the years displaying the number of stages  covered
select
year,
Stages_1
from
`Tour_De_France.tour`
order by
2 desc
