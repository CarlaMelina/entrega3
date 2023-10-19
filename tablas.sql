CREATE TABLE `catalogo` (
	`id` int NOT NULL AUTO_INCREMENT UNIQUE,
	`poster` varchar(100),
	`titulo` varchar(45) NOT NULL,
	`categoriaid` int NOT NULL,
	`generoid` int NOT NULL,
	`resumen` TEXT NOT NULL,
	`temporadas` int NOT NULL,
	`trailer` varchar(100) NOT NULL,
	`tagsid` int NOT NULL,
	`reparto` varchar(200) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `genero` (
	`id` int NOT NULL,
	`nombre` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tags` (
	`id` int NOT NULL,
	`nombre` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
	`id` int NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `catalogo` ADD CONSTRAINT `catalogo_fk0` FOREIGN KEY (`categoriaid`) REFERENCES `categoria`(`id`);

ALTER TABLE `catalogo` ADD CONSTRAINT `catalogo_fk1` FOREIGN KEY (`generoid`) REFERENCES `genero`(`id`);

ALTER TABLE `catalogo` ADD CONSTRAINT `catalogo_fk2` FOREIGN KEY (`tagsid`) REFERENCES `tags`(`id`);





