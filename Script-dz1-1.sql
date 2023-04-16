DROP DATABASE IF EXISTS faculty;
CREATE DATABASE faculty;
USE faculty;


CREATE TABLE courses(
	id INT,
	name VARCHAR(200)
);

CREATE TABLE students (
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	firstname VARCHAR(100) NOT NULL,
	lastname VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	course_id INT
);

ALTER TABLE students 
ADD COLUMN bithday date;

ALTER TABLE students 
RENAME COLUMN bithday to date_of_birth;

ALTER TABLE students 
DROP COLUMN date_of_birth;

INSERT INTO courses   (name)
VALUES ('Databases') , ('Linux'), ('BigDATA');

INSERT INTO students  (firstname, lastname, email, course_id)
VALUES ('Pavel', 'Ivanov', 'gb_ivanov@mail.ru', 1) , 
('Sveta', 'Petrova', 'gb_petrova@mail.ru', 2) , 
('Ivan', 'Pupkin', 'gb_svetlov@mail.ru', 3) ;

SELECT * from courses ;
SELECT * from students;

UPDATE students 
SET email='ivan_pup@yandex.ru'
WHERE lastname = 'Pupkin';

DELETE from students where id=3;

