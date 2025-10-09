
-- To find average score departmentwise
select department_name,avg(aptitude) as dept_avg
from apti
group by department_name