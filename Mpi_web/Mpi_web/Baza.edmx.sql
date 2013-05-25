



-- -----------------------------------------------------------
-- Entity Designer DDL Script for MySQL Server 4.1 and higher
-- -----------------------------------------------------------
-- Date Created: 05/25/2013 19:19:22
-- Generated from EDMX file: G:\Mpi_web\Mpi_web\Baza.edmx
-- Target version: 2.0.0.0
-- --------------------------------------------------

DROP DATABASE IF EXISTS `sql29880`;
CREATE DATABASE `sql29880`;
USE `sql29880`;

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- NOTE: if the constraint does not exist, an ignorable error will be reported.
-- --------------------------------------------------

--    ALTER TABLE `uzytkownik` DROP CONSTRAINT `FK_uzytkowniktyp`;
--    ALTER TABLE `zadanie` DROP CONSTRAINT `FK_status_zadanie`;
--    ALTER TABLE `zadanie` DROP CONSTRAINT `FK_zadanieuzytkownik`;

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------
SET foreign_key_checks = 0;
    DROP TABLE IF EXISTS `status_`;
    DROP TABLE IF EXISTS `typ`;
    DROP TABLE IF EXISTS `uzytkownik`;
    DROP TABLE IF EXISTS `zadanie`;
SET foreign_key_checks = 1;

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

CREATE TABLE `status_`(
	`id_status` bigint NOT NULL AUTO_INCREMENT UNIQUE, 
	`nazwa` varchar (10000));

ALTER TABLE `status_` ADD PRIMARY KEY (id_status);




CREATE TABLE `typ`(
	`id_typ` bigint NOT NULL AUTO_INCREMENT UNIQUE, 
	`nazwa` varchar (10000) NOT NULL);

ALTER TABLE `typ` ADD PRIMARY KEY (id_typ);




CREATE TABLE `uzytkownik`(
	`id_uzytkownik` bigint NOT NULL AUTO_INCREMENT UNIQUE, 
	`login` varchar (10000), 
	`haslo` varchar (10000), 
	`typ_id_typ` bigint NOT NULL);

ALTER TABLE `uzytkownik` ADD PRIMARY KEY (id_uzytkownik);




CREATE TABLE `zadanie`(
	`id_zadanie` bigint NOT NULL AUTO_INCREMENT UNIQUE, 
	`zadana_liczba` varchar (10000), 
	`wynik` varchar (10000), 
	`postep` int, 
	`czas_rozpoczecie` time, 
	`czas_zakonczenia` time, 
	`kolejnosc` bigint, 
	`status__id_status` bigint NOT NULL, 
	`uzytkownik_id_uzytkownik` bigint NOT NULL);

ALTER TABLE `zadanie` ADD PRIMARY KEY (id_zadanie);






-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on `typ_id_typ` in table 'uzytkownik'

ALTER TABLE `uzytkownik`
ADD CONSTRAINT `FK_uzytkowniktyp`
    FOREIGN KEY (`typ_id_typ`)
    REFERENCES `typ`
        (`id_typ`)
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_uzytkowniktyp'

CREATE INDEX `IX_FK_uzytkowniktyp` 
    ON `uzytkownik`
    (`typ_id_typ`);

-- Creating foreign key on `status__id_status` in table 'zadanie'

ALTER TABLE `zadanie`
ADD CONSTRAINT `FK_status_zadanie`
    FOREIGN KEY (`status__id_status`)
    REFERENCES `status_`
        (`id_status`)
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_status_zadanie'

CREATE INDEX `IX_FK_status_zadanie` 
    ON `zadanie`
    (`status__id_status`);

-- Creating foreign key on `uzytkownik_id_uzytkownik` in table 'zadanie'

ALTER TABLE `zadanie`
ADD CONSTRAINT `FK_zadanieuzytkownik`
    FOREIGN KEY (`uzytkownik_id_uzytkownik`)
    REFERENCES `uzytkownik`
        (`id_uzytkownik`)
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_zadanieuzytkownik'

CREATE INDEX `IX_FK_zadanieuzytkownik` 
    ON `zadanie`
    (`uzytkownik_id_uzytkownik`);

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
