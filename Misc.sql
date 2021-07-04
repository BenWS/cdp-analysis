select * from dbo.stop_and_search_counts

select distinct organization from dbo.[2018_Full_Cities_Dataset] where organization like '%Atlanta%'

select top 100 * from dbo.[2018_Full_Cities_Dataset] where organization like '%Atlanta%'

select organization
	, length_answer = len([Response Answer])
	, [Response Answer]
from dbo.[2018_Full_Cities_Dataset] 
where [question number] = '9.2a' 
	and [column number] = 10
	and country = 'United States of America'
	and [response answer] is not null
	--and [response answer] like '%http%'
order by len([Response Answer]) desc


select count(distinct organization)
from dbo.[2018_Full_Cities_Dataset] 
where [question number] = '9.2a'
	and [column number] = 10
	and len([Response Answer]) is not null


select *
from dbo.[2018_Full_Cities_Dataset]
where [question number] = '9.0'
	and organization like '%Atlanta%'
	
select *
from dbo.[2018_Full_Cities_Dataset]
where [response answer] like '%Georgia%'
	and organization like '%City of Atlanta%'