--overall students ranking
select student_name,department_name,aptitude,
dense_rank() over(order by aptitude desc) as rnk
from apti