-- Mock Data For Tests

INSERT INTO users (id, email, password, name, role, major)
VALUES (0001, 'teacher@stevenscollege.edu', 'qwerty', 'test', 'teacher', 1),
       (0002, 'student@stevenscollege.edu', 'password', 'test', 'student', 10);

INSERT INTO courses (name, major, description, teacherid)
VALUES ('ENG 101', 10, 'English Composition: Basic Writing', 0001),
      ('METAL 155', 9, 'Basic metals kinda stuff', 0001),
      ('CSET 180', 4, 'This damn software project', 0001),
      ('DRAW 101', 1, 'Drawing basic buildings', 0001),
      ('ENG 201', 10, 'SECOND YEAR English Composition: Basic Writing', 0002),
      ('METAL 255', 9, 'SECOND YEAR Basic metals kinda stuff', 0002),
      ('CSET 280', 4, 'SECOND YEAR This damn software project', 0002),
      ('DRAW 201', 1, 'SECOND YEAR Drawing basic buildings', 0002);
