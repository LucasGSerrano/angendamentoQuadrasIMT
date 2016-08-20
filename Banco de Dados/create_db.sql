-- MySQL Script generated by MySQL Workbench
-- Wed Jul  6 16:57:54 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema agenda_quadras
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema agenda_quadras
-- -----------------------------------------------------
-- CREATE SCHEMA IF NOT EXISTS `agenda_quadras` DEFAULT CHARACTER SET utf8 ;
-- USE `agenda_quadras` ;
USE `ad_dba713db370b13c`;

-- -----------------------------------------------------
-- Table `agenda_quadras`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ad_dba713db370b13c`.`usuario` (
  `registroUsuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `tipoUsuario` INT NOT NULL DEFAULT 0,
  `ultimoAgendamento` DATETIME NOT NULL,
  `situacaoMatricula` VARCHAR(45) NOT NULL,
  `fotoUsuario` VARCHAR(45) NULL,
  `emailUsuario` VARCHAR(45) NOT NULL,
  `telefone` INT NULL,
  `dataCadastro` DATETIME NULL,
  `dataUpdate` DATETIME NULL,
  PRIMARY KEY (`registroUsuario`),
  UNIQUE INDEX `email_usuario_UNIQUE` (`emailUsuario` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agenda_quadras`.`agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ad_dba713db370b13c`.`agendamento` (
  `idAgendamento` INT NOT NULL AUTO_INCREMENT,
  `dataHora` DATETIME NOT NULL,
  `idQuadra` INT NOT NULL DEFAULT 1,
  `usuario_registroUsuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAgendamento`, `usuario_registroUsuario`),
  INDEX `fk_agendamento_usuario1_idx` (`usuario_registroUsuario` ASC),
  CONSTRAINT `fk_agendamento_usuario1`
    FOREIGN KEY (`usuario_registroUsuario`)
    REFERENCES `ad_dba713db370b13c`.`usuario` (`registroUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agenda_quadras`.`cadastro_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ad_dba713db370b13c`.`cadastro_usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `registroUsuario` VARCHAR(45) NOT NULL,
  `emailUsuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `telefone` INT NULL,
  `dataCadastro` DATETIME NULL,
  `usuario_registroUsuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUsuario`, `usuario_registroUsuario`),
  UNIQUE INDEX `registro_usuario_UNIQUE` (`registroUsuario` ASC),
  UNIQUE INDEX `email_usuario_UNIQUE` (`emailUsuario` ASC),
  INDEX `fk_cadastro_usuario_usuario1_idx` (`usuario_registroUsuario` ASC),
  CONSTRAINT `fk_cadastro_usuario_usuario1`
    FOREIGN KEY (`usuario_registroUsuario`)
    REFERENCES `ad_dba713db370b13c`.`usuario` (`registroUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

ALTER TABLE `ad_dba713db370b13c`.`usuarios` 
CHANGE COLUMN `registroUsuario` `registroUsuario` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL ,
CHANGE COLUMN `senha` `senha` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL ,
CHANGE COLUMN `nome` `nome` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL ,
CHANGE COLUMN `tipoUsuario` `tipoUsuario` INT(11) NOT NULL DEFAULT 0 ,
CHANGE COLUMN `ultimoAgendamento` `ultimoAgendamento` DATETIME NOT NULL ,
CHANGE COLUMN `situacaoMatricula` `situacaoMatricula` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL ,
CHANGE COLUMN `emailUsuario` `emailUsuario` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL ,
ADD UNIQUE INDEX `emailUsuario_UNIQUE` (`emailUsuario` ASC);

