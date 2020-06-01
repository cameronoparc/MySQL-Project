-- The Average grade given by each Professor:
USE SQL_Uni_Project;

SELECT Professors.name, AVG( 
CASE grade
WHEN 'A' Then 4
WHEN 'B' Then 3
WHEN 'C' Then 2
WHEN 'D' Then 1
WHEN 'F' Then 0 END)
FROM Grades
INNER JOIN Professors
ON Grades.grade_professor_id = Professors.pid 
GROUP BY Professors.name;