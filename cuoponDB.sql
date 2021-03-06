-- MySQL Script generated by MySQL Workbench
-- 01/28/15 15:20:14
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema CouponDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CouponDB` ;
USE `CouponDB` ;

-- -----------------------------------------------------
-- Table `CouponDB`.`Company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CouponDB`.`Company` (
  `ID_COMPANY` MEDIUMTEXT NOT NULL,
  `COMP_NAME` VARCHAR(50) NULL,
  `PASSWORD` VARCHAR(15) NULL,
  `EMAIL` VARCHAR(30) NULL,
  PRIMARY KEY (`ID_COMPANY`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CouponDB`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CouponDB`.`Customer` (
  `ID_CUSTOMER` MEDIUMTEXT NOT NULL,
  `CUST_NAME` VARCHAR(50) NULL,
  `PASSWORD` VARCHAR(15) NULL,
  PRIMARY KEY (`ID_CUSTOMER`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CouponDB`.`Coupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CouponDB`.`Coupon` (
  `ID_COUPON` MEDIUMTEXT NOT NULL,
  `TITLE` VARCHAR(100) NULL,
  `START_DATE` DATETIME NULL,
  `END_DATE` DATETIME NULL,
  `AMOUNT` INT NULL,
  `TYPE` ENUM('FASHION','RESTURANS & FOOD','ELECTRICITY','COMPUTERS & CELLULAR','HEALTH & SPORTA','TRAVELLING & CAMPING','TOURISM & VACATION','CARE & SPA') NULL,
  `MESSAGE` VARCHAR(10000) NULL,
  `PRICE` DOUBLE NULL,
  `IMAGE` VARCHAR(500) NULL,
  PRIMARY KEY (`ID_COUPON`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CouponDB`.`Company_Coupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CouponDB`.`Company_Coupon` (
  `COMP_ID` MEDIUMTEXT NOT NULL,
  `COUPON_ID` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (`COMP_ID`),
  INDEX `ID_COUPON_idx` (`COUPON_ID` ASC),
  CONSTRAINT `ID_COMPANY`
    FOREIGN KEY (`COMP_ID`)
    REFERENCES `CouponDB`.`Company` (`ID_COMPANY`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_COUPON`
    FOREIGN KEY (`COUPON_ID`)
    REFERENCES `CouponDB`.`Coupon` (`ID_COUPON`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CouponDB`.`Customer_Coupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CouponDB`.`Customer_Coupon` (
  `CUST_ID` MEDIUMTEXT NOT NULL,
  `COUPON_ID` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (`CUST_ID`, `COUPON_ID`),
  INDEX `ID_COUPON_idx` (`COUPON_ID` ASC),
  CONSTRAINT `ID_CUSTOMER`
    FOREIGN KEY (`CUST_ID`)
    REFERENCES `CouponDB`.`Customer` (`ID_CUSTOMER`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ID_COUPON`
    FOREIGN KEY (`COUPON_ID`)
    REFERENCES `CouponDB`.`Coupon` (`ID_COUPON`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
