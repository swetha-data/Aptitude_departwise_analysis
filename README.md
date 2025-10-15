# Aptitude_departwise_analysis
Analysis of students aptitude scores across departments using Quants, Reasoning, and Verbal marks

## Marks Distribution

The aptitude test is composed of three sections:

| Section    | Maximum Marks |
|------------|---------------|
| Quants     | 20            |
| Reasoning  | 15            |
| Verbal     | 15            |
| Total      | 50            |

Each student’s total aptitude score is the sum of the three sections.  

## Dataset : apti_analysis.csv
| Column Name                    | Description                                        |
| ------------------------------ | -------------------------------------------------- |
| Roll_no                        | Unique ID for each student                         |
| Student_name                   | Name of the student                                |
| Department_name                | Department (e.g. CSE, ECE, BME, etc.)              |
| Quants                         | Score out of 20 in Quantitative Aptitude           |
| Reasoning                      | Score out of 15 in Logical Reasoning               |
| Verbal                         | Score out of 15 in Verbal Ability                  |
| Aptitude                       | Total marks obtained (Quants + Reasoning + Verbal) |


Note: The dataset used in this project is synthetically generated based on real-world patterns I observed while working as an Aptitude Trainer. It does not contain any personally identifiable information.

##Analysis :
The following analysis shows department name,total number of students in that department,
students who scored less than 25 , perentage of students who scored less than 25 in that depatment.

**SQL used:**
 select Department_Name,
 count(student_name) as Total_students,
 count(case when aptitude <25 then 1 end) as students_need_improvemnt,
 cast(count(case when aptitude <25 then 1 end) as decimal(5,2))* 100.0/
 count(student_name) as percentage_need_improvemnt
 from apti
 group by department_name
 
| Department | Total Students | Students Need Improvement | % Need Improvement |
| ---------- | -------------- | ------------------------- | ------------------ |
| AI&DS      | 50             | 12                        | 24.00              |
| BME        | 50             | 13                        | 26.00              |
| CSE        | 50             | 10                        | 20.00              |
| ECE        | 50             | 9                         | 18.00              |
| IT         | 50             | 12                        | 24.00              |
| MECH       | 50             | 17                        | 34.00              |

Here mechanical department has highest percentage needing improvement so it needs extra practice

