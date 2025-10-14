-- to find the difference between aptitude score and department average
select student_name,
Department_Name,
aptitude,
avg(Aptitude) over (partition by department_name)as dept_avg,
aptitude - avg(Aptitude) over (partition by department_name) as diff_from_avg
from apti
