-- MySQL Script generated by MySQL Workbench
-- 05/01/15 23:43:46
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ci_eloquent
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ci_eloquent` ;

-- -----------------------------------------------------
-- Schema ci_eloquent
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ci_eloquent` DEFAULT CHARACTER SET utf8 ;
USE `ci_eloquent` ;

-- -----------------------------------------------------
-- Table `ci_eloquent`.`person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ci_eloquent`.`person` ;

CREATE TABLE IF NOT EXISTS `ci_eloquent`.`person` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ci_eloquent`.`telephone_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ci_eloquent`.`telephone_type` ;

CREATE TABLE IF NOT EXISTS `ci_eloquent`.`telephone_type` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ci_eloquent`.`telephone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ci_eloquent`.`telephone` ;

CREATE TABLE IF NOT EXISTS `ci_eloquent`.`telephone` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `person_id` BIGINT(20) NOT NULL,
  `telephone_type_id` BIGINT(20) NOT NULL,
  `telephone` BIGINT(14) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_telephone_person_idx` (`person_id` ASC),
  INDEX `fk_telephone_telephone_type1_idx` (`telephone_type_id` ASC),
  CONSTRAINT `fk_telephone_person`
    FOREIGN KEY (`person_id`)
    REFERENCES `ci_eloquent`.`person` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_telephone_telephone_type1`
    FOREIGN KEY (`telephone_type_id`)
    REFERENCES `ci_eloquent`.`telephone_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ci_eloquent`.`person`
-- -----------------------------------------------------
START TRANSACTION;
USE `ci_eloquent`;
INSERT INTO `ci_eloquent`.`person` (`id`, `name`) VALUES (1, 'Elvis Presley');
INSERT INTO `ci_eloquent`.`person` (`id`, `name`) VALUES (2, 'John Green');
INSERT INTO `ci_eloquent`.`person` (`id`, `name`) VALUES (3, 'Joseph Hamilton');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ci_eloquent`.`telephone_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `ci_eloquent`;
INSERT INTO `ci_eloquent`.`telephone_type` (`id`, `type`) VALUES (1, 'Home');
INSERT INTO `ci_eloquent`.`telephone_type` (`id`, `type`) VALUES (2, 'Work');
INSERT INTO `ci_eloquent`.`telephone_type` (`id`, `type`) VALUES (3, 'Mobile');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ci_eloquent`.`telephone`
-- -----------------------------------------------------
START TRANSACTION;
USE `ci_eloquent`;
INSERT INTO `ci_eloquent`.`telephone` (`id`, `person_id`, `telephone_type_id`, `telephone`) VALUES (1, 1, 1, 12025554444);
INSERT INTO `ci_eloquent`.`telephone` (`id`, `person_id`, `telephone_type_id`, `telephone`) VALUES (2, 1, 3, 18029997777);
INSERT INTO `ci_eloquent`.`telephone` (`id`, `person_id`, `telephone_type_id`, `telephone`) VALUES (3, 2, 1, 120233334877);

COMMIT;

