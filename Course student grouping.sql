-- Group students by the courses that they are enrolled in:
USE SQL_Uni_Project;

SELECT Courses.name, Students.name
FROM Students
JOIN Courses
ON Students.sid = Courses.course_student_id
GROUP BY Courses.name, Students.name;
