No pude crear la tabla notas

Aca les dejo el codigo que use para la db y las tablas.

CREATE TABLE `clientes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `id_cliente`  NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_utlima_modificacion` DATE NOT NULL,
   `descripcion` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `series` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   `id_notas` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_33f642c4-40ac-42f7-8f0f-b67bb2717af5` FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id`);

ALTER TABLE `series` ADD CONSTRAINT `FK_15570ece-63f8-4fa7-919e-19628f513b11` FOREIGN KEY (`id_notas`) REFERENCES `notas`(`id`);
