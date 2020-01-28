-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS
, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS
, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE
, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema aula
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema aula
-- -----------------------------------------------------
CREATE SCHEMA
IF NOT EXISTS `aula` DEFAULT CHARACTER
SET latin1 ;
USE `aula`
;

-- -----------------------------------------------------
-- Table `aula`.`assunto`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `aula`.`assunto`
(
  `cod_as` DECIMAL
(3,0) NOT NULL,
  `descrição` VARCHAR
(50) NOT NULL,
  PRIMARY KEY
(`cod_as`))
ENGINE = MyISAM
DEFAULT CHARACTER
SET = latin1;


-- -----------------------------------------------------
-- Table `aula`.`autor`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `aula`.`autor`
(
  `cod_au` VARCHAR
(3) NOT NULL,
  `nome` VARCHAR
(40) NOT NULL,
  `CPF` DECIMAL
(11,0) NOT NULL,
  `rg` DECIMAL
(10,0) NOT NULL,
  `endereço` VARCHAR
(50) NULL DEFAULT NULL,
  `telefone` CHAR
(15) NULL DEFAULT NULL,
  `cidade` VARCHAR
(30) NULL DEFAULT NULL,
  `uf` CHAR
(2) NULL DEFAULT NULL,
  PRIMARY KEY
(`cod_au`))
ENGINE = MyISAM
DEFAULT CHARACTER
SET = latin1;

CREATE UNIQUE INDEX `CPF` ON `aula`.`autor`
(`CPF` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `aula`.`autoria`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `aula`.`autoria`
(
  `cod_liv` DECIMAL
(5,0) NOT NULL,
  `cod_au` DECIMAL
(3,0) NOT NULL,
  PRIMARY KEY
(`cod_liv`, `cod_au`))
ENGINE = MyISAM
DEFAULT CHARACTER
SET = latin1;


-- -----------------------------------------------------
-- Table `aula`.`editora`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `aula`.`editora`
(
  `cod_ed` DECIMAL
(3,0) NOT NULL,
  `nome` VARCHAR
(15) NOT NULL,
  `CNPJ` DECIMAL
(15,0) NOT NULL,
  `endereço` VARCHAR
(50) NULL DEFAULT NULL,
  `telefore` CHAR
(15) NULL DEFAULT NULL,
  `cidade` VARCHAR
(30) NULL DEFAULT NULL,
  `UF` CHAR
(2) NULL DEFAULT NULL,
  PRIMARY KEY
(`cod_ed`))
ENGINE = MyISAM
DEFAULT CHARACTER
SET = latin1;

CREATE UNIQUE INDEX `CNPJ` ON `aula`.`editora`
(`CNPJ` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `aula`.`liv_assunto`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `aula`.`liv_assunto`
(
  `cod_liv` DECIMAL
(5,0) NOT NULL,
  `cod_as` DECIMAL
(3,0) NOT NULL,
  PRIMARY KEY
(`cod_liv`, `cod_as`))
ENGINE = MyISAM
DEFAULT CHARACTER
SET = latin1;


-- -----------------------------------------------------
-- Table `aula`.`livros`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `aula`.`livros`
(
  `cod_liv` DECIMAL
(9,0) NOT NULL,
  `titulo` VARCHAR
(25) NOT NULL,
  `ISBN` DECIMAL
(15,0) NULL DEFAULT NULL,
  `edição` VARCHAR
(15) NULL DEFAULT NULL,
  `ano` DECIMAL
(4,0) NULL DEFAULT NULL,
  `cod_ed` DECIMAL
(3,0) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER
SET = latin1;


SET SQL_MODE
=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS
=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS
=@OLD_UNIQUE_CHECKS;
