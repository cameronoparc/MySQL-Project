-- Summarry report of courses and their average grades, 
--sorted by most chellenging course(Lowest average grade) 
--to easiest course:
USE SQL_Uni_Project;

SELECT Courses.name, AVG( 
CASE grade
WHEN 'A' Then 4
WHEN 'B' Then 3
WHEN 'C' Then 2
WHEN 'D' Then 1
WHEN 'F' Then 0 END)
FROM Grades
INNER JOIN Courses
ON Grades.grade_course_id = Courses.cid 
GROUP BY Courses.name
ORDER BY 2 ASC;