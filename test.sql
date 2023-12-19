-- MySQL Script generated by MySQL Workbench
-- Mon Oct 16 15:29:05 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table1` (
  `id` INT NULL AUTO_INCREMENT,
  `lib` VARCHAR(45) NULL,
  `test2_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_table1_test2_idx` (`test2_id` ASC) VISIBLE,
  CONSTRAINT `fk_table1_test2`
    FOREIGN KEY (`test2_id`)
    REFERENCES `mydb`.`test2` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table2` (
  `id` INT NOT NULL,
  `lib` VARCHAR(45) NULL,
  `table2col` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table2_has_table3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table2_has_table3` (
  `table2_id` INT NOT NULL,
  `table3_id` INT NOT NULL,
  PRIMARY KEY (`table2_id`, `table3_id`),
  INDEX `fk_table2_has_table3_table31_idx` (`table3_id` ASC) VISIBLE,
  INDEX `fk_table2_has_table3_table21_idx` (`table2_id` ASC) VISIBLE,
  CONSTRAINT `fk_table2_has_table3_table21`
    FOREIGN KEY (`table2_id`)
    REFERENCES `mydb`.`table2` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_table2_has_table3_table31`
    FOREIGN KEY (`table3_id`)
    REFERENCES `mydb`.`table3` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table3` (
  `id` INT NOT NULL,
  `lib` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`test2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`test2` (
  `id` INT NOT NULL,
  `lib` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
