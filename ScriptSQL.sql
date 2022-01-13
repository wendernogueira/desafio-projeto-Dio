-- MySQL Workbench Synchronization
-- Generated: 2014-10-02 08:32
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: WENDERSON

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `deltaz123`.`tbl_Acessorio` (
  `idtbl_Acessorio` INT(11) NOT NULL AUTO_INCREMENT,
  `nome_Acessorio` VARCHAR(45) NOT NULL,
  `Patrimonio_Acessorio` DECIMAL(4,3) NOT NULL,
  `tbl_Computadores_idtbl_Computadores` INT(11) NOT NULL,
  PRIMARY KEY (`idtbl_Acessorio`, `tbl_Computadores_idtbl_Computadores`),
  INDEX `fk_tbl_Acessorio_tbl_Computadores1_idx` (`tbl_Computadores_idtbl_Computadores` ASC),
  CONSTRAINT `fk_tbl_Acessorio_tbl_Computadores1`
    FOREIGN KEY (`tbl_Computadores_idtbl_Computadores`)
    REFERENCES `deltaz123`.`tbl_Computadores` (`idtbl_Computadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `deltaz123`.`tbl_Colaborador` (
  `idtbl_Colaborador` INT(11) NOT NULL AUTO_INCREMENT,
  `Matricula_Colaborador` VARCHAR(45) NOT NULL,
  `Nome_Colaborador` VARCHAR(45) NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `tbl_Reparticao_idtbl_Reparticao` INT(11) NOT NULL,
  `tbl_Computadores_idtbl_Computadores` INT(11) NOT NULL,
  PRIMARY KEY (`idtbl_Colaborador`, `tbl_Reparticao_idtbl_Reparticao`, `tbl_Computadores_idtbl_Computadores`),
  INDEX `fk_tbl_Colaborador_tbl_Reparticao1_idx` (`tbl_Reparticao_idtbl_Reparticao` ASC),
  INDEX `fk_tbl_Colaborador_tbl_Computadores1_idx` (`tbl_Computadores_idtbl_Computadores` ASC),
  CONSTRAINT `fk_tbl_Colaborador_tbl_Reparticao1`
    FOREIGN KEY (`tbl_Reparticao_idtbl_Reparticao`)
    REFERENCES `deltaz123`.`tbl_Reparticao` (`idtbl_Reparticao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_Colaborador_tbl_Computadores1`
    FOREIGN KEY (`tbl_Computadores_idtbl_Computadores`)
    REFERENCES `deltaz123`.`tbl_Computadores` (`idtbl_Computadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `deltaz123`.`tbl_Computadores` (
  `idtbl_Computadores` INT(11) NOT NULL,
  `Tipo_Computador` VARCHAR(45) NOT NULL,
  `CodPatrimonial` DECIMAL(4,3) NOT NULL,
  `Uso_Computador` VARCHAR(45) NOT NULL,
  `Acesso_Rede_Computador` VARCHAR(45) NOT NULL,
  `tbl_Reparticao_idtbl_Reparticao` INT(11) NOT NULL,
  PRIMARY KEY (`idtbl_Computadores`, `tbl_Reparticao_idtbl_Reparticao`),
  INDEX `fk_tbl_Computadores_tbl_Reparticao1_idx` (`tbl_Reparticao_idtbl_Reparticao` ASC),
  CONSTRAINT `fk_tbl_Computadores_tbl_Reparticao1`
    FOREIGN KEY (`tbl_Reparticao_idtbl_Reparticao`)
    REFERENCES `deltaz123`.`tbl_Reparticao` (`idtbl_Reparticao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `deltaz123`.`tbl_Reparticao` (
  `idtbl_Reparticao` INT(11) NOT NULL,
  `NomeSetor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtbl_Reparticao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `deltaz123`.`tbl_Software` (
  `idtbl_Software` INT(11) NOT NULL,
  `Nome_Software` VARCHAR(45) NOT NULL,
  `Fabricante_Software` VARCHAR(45) NOT NULL,
  `Versao_Software` DECIMAL(4,4) NOT NULL,
  `NotaFical_Software` VARCHAR(45) NOT NULL,
  `DataAquisicao_Software` DATETIME NOT NULL,
  `Chave_Software` VARCHAR(45) NOT NULL,
  `DataExpiracao_Software` DATETIME NOT NULL,
  `Classificao_Software` VARCHAR(45) NOT NULL,
  `tbl_Computadores_idtbl_Computadores` INT(11) NOT NULL,
  `tbl_Computadores_tbl_Reparticao_idtbl_Reparticao` INT(11) NOT NULL,
  PRIMARY KEY (`idtbl_Software`, `tbl_Computadores_idtbl_Computadores`, `tbl_Computadores_tbl_Reparticao_idtbl_Reparticao`),
  INDEX `fk_tbl_Software_tbl_Computadores1_idx` (`tbl_Computadores_idtbl_Computadores` ASC, `tbl_Computadores_tbl_Reparticao_idtbl_Reparticao` ASC),
  CONSTRAINT `fk_tbl_Software_tbl_Computadores1`
    FOREIGN KEY (`tbl_Computadores_idtbl_Computadores` , `tbl_Computadores_tbl_Reparticao_idtbl_Reparticao`)
    REFERENCES `deltaz123`.`tbl_Computadores` (`idtbl_Computadores` , `tbl_Reparticao_idtbl_Reparticao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
