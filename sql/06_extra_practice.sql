--name of students who need extra practice
select Roll_no,Student_name
from apti 
where aptitude < 25

-- count of students who need extra practice deptwise
select department_name,count(Student_name) as extra_class_student
from apti 
where aptitude < 25 
group by department_name