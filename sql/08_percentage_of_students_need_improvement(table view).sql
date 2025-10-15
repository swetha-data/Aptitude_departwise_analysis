--table view of departmentname,total students,students need improvement and their percentage
 select Department_Name,
 count(student_name) as Total_students,
 count(case when aptitude <25 then 1 end) as students_need_improvemnt,
 cast(count(case when aptitude <25 then 1 end) as decimal(5,2))* 100.0/
 count(student_name) as percentage_need_improvemnt
 from apti
 group by department_name
  
