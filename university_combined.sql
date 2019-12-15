CREATE SCHEMA `bottega_university_schema` ;


CREATE TABLE `bottega_university_schema`.`students` (
  `students_id` INT NOT NULL AUTO_INCREMENT,
  `students_name` VARCHAR(100) NOT NULL,
  `students_email` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC) VISIBLE,
  UNIQUE INDEX `students_email_UNIQUE` (`students_email` ASC) VISIBLE);


CREATE TABLE `bottega_university_schema`.`professors` (
  `professors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_name` VARCHAR(100) NOT NULL,
  `professors_email` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_email_UNIQUE` (`professors_email` ASC) VISIBLE,
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE);


CREATE TABLE `bottega_university_schema`.`courses` (
  `courses_id` INT NOT NULL AUTO_INCREMENT,
  `courses_name` VARCHAR(140) NOT NULL,
  `courses_professors_id` INT NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC) VISIBLE,
  INDEX `courses_professors_id_idx` (`courses_professors_id` ASC) VISIBLE,
  CONSTRAINT `courses_professors_id`
    FOREIGN KEY (`courses_professors_id`)
    REFERENCES `bottega_university_schema`.`professors` (`professors_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `bottega_university_schema`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_courses_id` INT NOT NULL,
  `grades_students_id` INT NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE,
  INDEX `grades_courses_id_idx` (`grades_courses_id` ASC) VISIBLE,
  INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
  CONSTRAINT `grades_courses_id`
    FOREIGN KEY (`grades_courses_id`)
    REFERENCES `bottega_university_schema`.`courses` (`courses_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_students_id`
    FOREIGN KEY (`grades_students_id`)
    REFERENCES `bottega_university_schema`.`students` (`students_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


ALTER TABLE `bottega_university_schema`.`grades` 
ADD COLUMN `grades_percent` DECIMAL(5,2) NOT NULL AFTER `grades_students_id`;

USE bottega_university_schema;

INSERT INTO students(students_name, students_email)
VALUES('Fake1', 'fake1@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake2', 'fake2@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake3', 'fake3@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake4', 'fake4@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake5', 'fake5@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake6', 'fake6@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake7', 'fake7@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake8', 'fake8@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake9', 'fake9@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake10', 'fake10@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake11', 'fake11@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake12', 'fake12@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake13', 'fake13@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake14', 'fake14@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake15', 'fake15@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake16', 'fake16@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake17', 'fake17@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake18', 'fake18@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake19', 'fake19@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake20', 'fake20@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake21', 'fake21@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake22', 'fake22@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake23', 'fake23@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake24', 'fake24@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake25', 'fake25@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake26', 'fake26@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake27', 'fake27@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake28', 'fake28@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake29', 'fake29@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake30', 'fake30@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake31', 'fake31@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake32', 'fake32@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake33', 'fake33@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake34', 'fake34@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake35', 'fake35@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake36', 'fake36@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake37', 'fake37@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake38', 'fake38@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake39', 'fake39@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake40', 'fake40@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake41', 'fake41@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake42', 'fake42@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake43', 'fake43@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake44', 'fake44@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake45', 'fake45@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake46', 'fake46@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake47', 'fake47@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake48', 'fake48@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake49', 'fake49@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake50', 'fake50@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake51', 'fake51@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake52', 'fake52@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake53', 'fake53@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake54', 'fake54@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake55', 'fake55@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake56', 'fake56@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake57', 'fake57@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake58', 'fake58@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake59', 'fake59@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake60', 'fake60@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake61', 'fake61@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake62', 'fake62@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake63', 'fake63@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake64', 'fake64@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake65', 'fake65@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake66', 'fake66@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake67', 'fake67@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake68', 'fake68@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake69', 'fake69@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake70', 'fake70@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake71', 'fake71@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake72', 'fake72@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake73', 'fake73@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake74', 'fake74@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake75', 'fake75@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake76', 'fake76@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake77', 'fake77@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake78', 'fake78@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake79', 'fake79@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake80', 'fake80@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake81', 'fake81@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake82', 'fake82@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake83', 'fake83@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake84', 'fake84@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake85', 'fake85@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake86', 'fake86@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake87', 'fake87@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake88', 'fake88@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake89', 'fake89@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake90', 'fake90@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake91', 'fake91@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake92', 'fake92@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake93', 'fake93@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake94', 'fake94@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake95', 'fake95@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake96', 'fake96@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake97', 'fake97@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake98', 'fake98@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake99', 'fake99@fake.com');

INSERT INTO students(students_name, students_email)
VALUES('Fake100', 'fake100@fake.com');

INSERT INTO professors(professors_name, professors_email)
VALUES('Professor1', 'professor1@fake.com');

INSERT INTO professors(professors_name, professors_email)
VALUES('Professor2', 'professor2@fake.com');

INSERT INTO professors(professors_name, professors_email)
VALUES('Professor3', 'professor3@fake.com');

INSERT INTO professors(professors_name, professors_email)
VALUES('Professor4', 'professor4@fake.com');

INSERT INTO professors(professors_name, professors_email)
VALUES('Professor5', 'professor5@fake.com');

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Math 100', 1);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Math 200', 1);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Math 300', 1);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('History 100', 2);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('History 200', 2);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('History 300', 2);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Computer Science 100', 3);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Computer Science 200', 3);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Computer Science 300', 3);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Geology 100', 4);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Geology 200', 4);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Geology 300', 4);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Statistics 100', 5);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Statistics 200', 5);

INSERT INTO courses(courses_name, courses_professors_id)
VALUES('Statistics 300', 5);

INSERT INTO grades(grades_percent, grades_courses_id, grades_students_id)
VALUES
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1)),
  (RAND() * 101, FLOOR((RAND() * 15) + 1), FLOOR((RAND() * 100) + 1));

  SELECT
	p.professors_name AS 'Professor Name',
	(
		SELECT AVG(g.grades_percent)
		FROM grades g
		WHERE g.grades_courses_id IN (
			SELECT c.courses_id
			FROM courses c
			WHERE c.courses_professors_id = p.professors_id
		)
	) AS 'Average Grade'
FROM professors p;


SELECT
	s.students_name AS 'Student Name',
    (
		SELECT MAX(g.grades_percent)
        FROM grades g
        WHERE g.grades_students_id = s.students_id
    ) AS 'Top Grade'
FROM students s;


SELECT s.students_name, c.courses_name
FROM students s
JOIN grades g
ON g.grades_students_id = s.students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY c.courses_name;


SELECT
	c.courses_name AS "Course Name",
	(
		SELECT AVG(g.grades_percent)
        FROM grades g
        WHERE g.grades_courses_id = c.courses_id
	) AS Average
FROM courses c
ORDER BY Average ASC;