CREATE DATABASE notas_db;

CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   `fecha_mod` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   `descripcion` VARCHAR(255) NOT NULL,
   `categoria_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categoria` (
   `id` INT AUTO_INCREMENT,
   `categoria` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `gestion_de_notas` (
   `id` INT,
   `usuario_id` INT NOT NULL,
   `notas_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_c6a5cb94-0bde-4fb0-ad7c-41c2f03a126b` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`);

ALTER TABLE `gestion_de_notas` ADD CONSTRAINT `FK_87f2b058-d8b9-4cd9-8bf9-1e476b018dbf` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`);

ALTER TABLE `gestion_de_notas` ADD CONSTRAINT `FK_61009ede-e2b5-4aac-8dbd-60b5919aa358` FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`);
