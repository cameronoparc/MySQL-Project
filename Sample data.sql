USE SQL_Uni_Project;

INSERT INTO Students (sid, name) 
VALUES(1, 'Simon');
INSERT INTO Students (sid, name) 
VALUES(2, 'Richard');
INSERT INTO Students (sid, name) 
VALUES(3, 'Thor');
INSERT INTO Students (sid, name) 
VALUES(4, 'Katie');
INSERT INTO Students (sid, name) 
VALUES(5, 'Stanford');
INSERT INTO Students (sid, name) 
VALUES(6, 'Lily');
INSERT INTO Students (sid, name) 
VALUES(7, 'Daeson');

SELECT *
FROM Students;

INSERT INTO Professors (pid, name) 
VALUES (1, 'Allen');
INSERT INTO Professors (pid, name) 
VALUES (2, 'Blair');
INSERT INTO Professors (pid, name) 
VALUES (3, 'Grua');
INSERT INTO Professors (pid, name) 
VALUES (4, 'Price');

SELECT *
FROM Professors;

INSERT INTO Courses (cid, name) 
VALUES (1, 'Math')
INSERT INTO Courses (cid, name) 
VALUES (2, 'Biology');
INSERT INTO Courses (cid, name) 
VALUES (3, 'Programming');
INSERT INTO Courses (cid, name) 
VALUES (4, 'History');

SELECT *
FROM Courses;

INSERT INTO Grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (1, 2, 1, 'A');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (1, 2, 2, 'B');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (7, 4, 3, 'C+');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (7, 3, 2, 'F');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (6, 2, 1, 'B+');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (2, 4, 3, 'C');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (3, 4, 3, 'B');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (6, 1, 4, 'A+');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (2, 1, 4, 'C-');
INSERT INTO grades (grade_student_id, grade_professor_id, grade_course_id, grade) 
VALUES (3, 1, 4, 'D');

SELECT *
FROM Grades;