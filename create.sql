CREATE TABLE `employee`.`employee` (
  `emp_id` INT NOT NULL,
  `emp_name` VARCHAR(45) NOT NULL,
  `gender` ENUM('M', 'F') NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(10) NOT NULL,
  `hire_date` DATE NOT NULL,
  PRIMARY KEY (`emp_id`));


CREATE TABLE `employee`.`department` (
  `dept_id` INT NOT NULL,
  `dept_name` VARCHAR(45) NOT NULL,
  `dept_loc` VARCHAR(45) NOT NULL,
  `emp_id` INT NOT NULL,
  PRIMARY KEY (`dept_id`),
  INDEX `emp_id_idx` (`emp_id` ASC) VISIBLE,
  CONSTRAINT `emp_id`
    FOREIGN KEY (`emp_id`)
    REFERENCES `employee`.`employee` (`emp_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);

