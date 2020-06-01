USE SQL_Uni_Project;

DROP TABLE IF EXISTS Students;
CREATE TABLE `SQL_Uni_Project`.`Students` (
  `sid` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE INDEX `sid_UNIQUE` (`sid` ASC) VISIBLE);

CREATE TABLE `SQL_Uni_Project`.`Professors` (
  `pid` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE INDEX `pid_UNIQUE` (`pid` ASC) VISIBLE);

CREATE TABLE `SQL_Uni_Project`.`Courses` (
  `cid` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL DEFAULT NULL,
  `course_student_id` INT NOT NULL,
  `course_professor_id` INT NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE INDEX `cid_UNIQUE` (`cid` ASC) VISIBLE,
  INDEX `course_student_id_idx` (`course_student_id` ASC) VISIBLE,
  INDEX `course_professor_id_idx` (`course_professor_id` ASC) VISIBLE,
  CONSTRAINT `course_student_id`
    FOREIGN KEY (`course_student_id`)
    REFERENCES `SQL_Uni_Project`.`Students` (`sid`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `course_professor_id`
    FOREIGN KEY (`course_professor_id`)
    REFERENCES `SQL_Uni_Project`.`Professors` (`pid`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

DROP TABLE IF EXISTS Grades;
CREATE TABLE `SQL_Uni_Project`.`Grades` (
  `gid` INT NOT NULL AUTO_INCREMENT,
  `grade` VARCHAR(3) NULL,
  `grade_student_id` INT NOT NULL,
  `grade_professor_id` INT NOT NULL,
  `grade_course_id` INT NOT NULL,
  PRIMARY KEY (`gid`),
  UNIQUE INDEX `gid_UNIQUE` (`gid` ASC) VISIBLE,
  INDEX `grade_student_id_idx` (`grade_student_id` ASC) VISIBLE,
  INDEX `grade_professor_id_idx` (`grade_professor_id` ASC) VISIBLE,
  INDEX `grade_course_id_idx` (`grade_course_id` ASC) VISIBLE,
  CONSTRAINT `grade_student_id`
    FOREIGN KEY (`grade_student_id`)
    REFERENCES `SQL_Uni_Project`.`Students` (`sid`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `grade_professor_id`
    FOREIGN KEY (`grade_professor_id`)
    REFERENCES `SQL_Uni_Project`.`Professors` (`pid`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `grade_course_id`
    FOREIGN KEY (`grade_course_id`)
    REFERENCES `SQL_Uni_Project`.`Courses` (`cid`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
);

UPDATE `sql_uni_project`.`Courses` SET `course_student_id` = '1', `course_professor_id` = '2' WHERE (`cid` = '1');
UPDATE `sql_uni_project`.`Courses` SET `course_student_id` = '1', `course_professor_id` = '1' WHERE (`cid` = '2');
UPDATE `sql_uni_project`.`Courses` SET `course_student_id` = '3', `course_professor_id` = '3' WHERE (`cid` = '3');
UPDATE `sql_uni_project`.`Courses` SET `course_student_id` = '2', `course_professor_id` = '4' WHERE (`cid` = '4');
UPDATE `sql_uni_project`.`Courses` SET `course_professor_id` = '1' WHERE (`cid` = '2');
UPDATE `sql_uni_project`.`Courses` SET `course_professor_id` = '1' WHERE (`cid` = '1');