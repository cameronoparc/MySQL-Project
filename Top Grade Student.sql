-- The top grades for each student:
USE SQL_Uni_Project;

SELECT Students.name, MAX( 
CASE grade
WHEN 'A' Then 4
WHEN 'B' Then 3
WHEN 'C' Then 2
WHEN 'D' Then 1
WHEN 'F' Then 0 END)
FROM Grades
INNER JOIN Students
ON Grades.grade_student_id = Students.sid 
GROUP BY Students.name;