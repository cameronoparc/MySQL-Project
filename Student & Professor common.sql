-- Which student and professor have the most courses in common:

USE SQL_Uni_Project;

SELECT Professors.name, Students.name
FROM Students
JOIN Professors
ON Students.sid = Professors.pid
JOIN Courses
ON Courses.cid = Students.sid
WHERE course_student_id = Courses.cid
GROUP By Professors.name, Students.name
ORDER BY PROFESSORS.NAME ASC