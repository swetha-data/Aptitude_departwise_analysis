--To Categorise students based on marks
select *,
case when aptitude_score >= 45 then 'Excellent'
     when aptitude_score between 34 and 44 then 'Good'
     when aptitude_score between 25 and 34 then 'Average'
     else 'Need Improvement'
     end as score_range
from apti
