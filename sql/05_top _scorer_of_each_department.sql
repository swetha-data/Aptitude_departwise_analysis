--top scorer of each department
with deptwise_rank as
(select *,
dense_rank() over (partition by department_name order by aptitude desc) as drnk
from apti)--deptwise ranking
select Student_name,department_name,aptitude
from deptwise_rank
where drnk =1