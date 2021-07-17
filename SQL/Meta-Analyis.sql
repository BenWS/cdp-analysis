select parent_section
	, sum(case when response_answer is not null then 1 else 0 end)
	, count(*)
	, sum(case when response_answer is not null then 1 else 0 end)*1.0/count(*)
from dbo.cdp_survey_responses
group by parent_section
order by sum(case when response_answer is not null then 1 else 0 end)*1.0/count(*) desc



select parent_section
	, sum(case when response_answer is not null then 1 else 0 end)
	, count(*)
	, sum(case when response_answer is not null then 1 else 0 end)*1.0/count(*)
from dbo.cdp_survey_responses
group by parent_section
order by sum(case when response_answer is not null then 1 else 0 end)*1.0/count(*) desc

select *
from dbo.cdp_survey_responses
where question_number = '2.0'


select * from dbo.cdp_survey_responses where question_number = '1.0a'