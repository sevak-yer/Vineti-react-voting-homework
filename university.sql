--UNIVERSITY DB CREATION
CREATE TABLE students (id INT, name VARCHAR(20));
ALTER TABLE students ADD PRIMARY KEY (id);
CREATE TABLE courses (id INT PRIMARY KEY, name VARCHAR(20));
CREATE TABLE grades (course_id INT, st_id INT, grade INT,
FOREIGN KEY (course_id) REFERENCES courses(id));
ALTER TABLE grades ADD FOREIGN KEY (st_id) REFERENCES students(id);

--DATA POPULATION
INSERT INTO students VALUES(1, 'Sevak');
INSERT INTO students VALUES(2, 'Karen');
INSERT INTO students VALUES(3, 'Ara');
INSERT INTO students VALUES(4, 'Arpi');
INSERT INTO students VALUES(5, 'Satenik');
INSERT INTO students VALUES(6, 'Gevorg');
INSERT INTO students VALUES(7, 'Ararat');
INSERT INTO students VALUES(8, 'Daniel');
INSERT INTO students VALUES(9, 'Sona');
INSERT INTO students VALUES(10, 'Arpine');
INSERT INTO students VALUES(11, 'Tatev');
INSERT INTO students VALUES(12, 'Hakob');
INSERT INTO students VALUES(13, 'Karo');
INSERT INTO students VALUES(14, 'Mher');
INSERT INTO students VALUES(15, 'Narek');

INSERT INTO courses VALUES(1, 'Biology');
INSERT INTO courses VALUES(2, 'Math');
INSERT INTO courses VALUES(3, 'History');
INSERT INTO courses VALUES(4, 'Sociology');

INSERT INTO grades VALUES(1, 1, 5);
INSERT INTO grades VALUES(1, 2, 4);
INSERT INTO grades VALUES(1, 3, 5);
INSERT INTO grades VALUES(1, 4, 5);
INSERT INTO grades VALUES(1, 5, 3);
INSERT INTO grades VALUES(1, 6, 5);
INSERT INTO grades VALUES(1, 7, 4);
INSERT INTO grades VALUES(1, 8, 2);
INSERT INTO grades VALUES(1, 9, 3);
INSERT INTO grades VALUES(1, 10, 5);
INSERT INTO grades VALUES(1, 11, 4);
INSERT INTO grades VALUES(1, 12, 5);
INSERT INTO grades VALUES(1, 13, 5);
INSERT INTO grades VALUES(1, 14, 2);
INSERT INTO grades VALUES(1, 15, 3);
INSERT INTO grades VALUES(2, 1, 5);
INSERT INTO grades VALUES(2, 2, 3);
INSERT INTO grades VALUES(2, 3, 4);
INSERT INTO grades VALUES(2, 4, 5);
INSERT INTO grades VALUES(2, 5, 2);
INSERT INTO grades VALUES(2, 6, 1);
INSERT INTO grades VALUES(2, 7, 3);
INSERT INTO grades VALUES(2, 8, 5);
INSERT INTO grades VALUES(2, 9, 4);
INSERT INTO grades VALUES(2, 10, 4);
INSERT INTO grades VALUES(2, 11, 4);
INSERT INTO grades VALUES(2, 12, 5);
INSERT INTO grades VALUES(2, 13, 5);
INSERT INTO grades VALUES(2, 14, 3);
INSERT INTO grades VALUES(2, 15, 2);
INSERT INTO grades VALUES(3, 1, 4);
INSERT INTO grades VALUES(3, 2, 4);
INSERT INTO grades VALUES(3, 3, 5);
INSERT INTO grades VALUES(3, 4, 5);
INSERT INTO grades VALUES(3, 5, 5);
INSERT INTO grades VALUES(3, 6, 3);
INSERT INTO grades VALUES(3, 7, 2);
INSERT INTO grades VALUES(3, 8, 1);
INSERT INTO grades VALUES(3, 9, 4);
INSERT INTO grades VALUES(3, 10, 3);
INSERT INTO grades VALUES(3, 11, 5);
INSERT INTO grades VALUES(3, 12, 4);
INSERT INTO grades VALUES(3, 13, 4);
INSERT INTO grades VALUES(3, 14, 3);
INSERT INTO grades VALUES(3, 15, 5);
INSERT INTO grades VALUES(4, 1, 4);
INSERT INTO grades VALUES(4, 2, 4);
INSERT INTO grades VALUES(4, 3, 3);
INSERT INTO grades VALUES(4, 4, 4);
INSERT INTO grades VALUES(4, 5, 2);
INSERT INTO grades VALUES(4, 6, 1);
INSERT INTO grades VALUES(4, 7, 5);
INSERT INTO grades VALUES(4, 8, 5);
INSERT INTO grades VALUES(4, 9, 5);
INSERT INTO grades VALUES(4, 10, 4);
INSERT INTO grades VALUES(4, 11, 3);
INSERT INTO grades VALUES(4, 12, 2);
INSERT INTO grades VALUES(4, 13, 5);
INSERT INTO grades VALUES(4, 14, 1);
INSERT INTO grades VALUES(4, 15, 4);


--QUERIES
--average grade per course
SELECT course_id, avg(grade) FROM grades GROUP BY course_id ORDER BY course_id;

--highest grade and course for each student
SELECT students.name as student_name, t3.course_name, t3.max_grade as max_grade FROM students JOIN
   (SELECT t2.st_id as student_id, courses.name as course_name, t2.grade as max_grade FROM courses JOIN
   (SELECT grades.* FROM grades JOIN 
   (SELECT grades.st_id, max(grades.grade) FROM grades GROUP BY grades.st_id) t ON 
   grades.st_id = t.st_id AND t.max = grades.grade) t2 ON courses.id=t2.course_id) t3 
ON students.id=t3.student_id ORDER BY students.name;

--10 students which get the highest grade for each course
select course_id, st_id, grade
from grades
where (
   select count(*) from grades as g
   where g.course_id = grades.course_id and g.grade >= grades.grade
) <= 10;