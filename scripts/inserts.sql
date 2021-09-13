insert into usuarios (nombre, email)
VALUES
('Leo', 'leo@gmail.com'),
('Manu, ''manu@gmail.com'),
('Diego', 'elDie@gmail.com'),
('Facu', 'facu@gmail.com'),
('Jim', 'jim@gmail.com'),
('Ray', 'ray@gmail.com'),
('John', 'john@gmail.com',)
('Robbie', 'robbie@gmail.com'),
('Norberto', 'norberto@gmail.com'),
('Pepito', 'pepito@gmail.com')
;

insert into categoria (categoria)
values
("categoria 1"),
("categoria 2"),
("categoria 3")
;

insert into notas (titulo, descripcion, categoria_id)
values
("titulo 1", "Lorem ipsum dolor sit amet.", 1),
("titulo 2", "Lorem ipsum dolor sit amet.", 3),
("titulo 3", "Lorem ipsum dolor sit.", 3),
("titulo 4", "Lorem ipsum dolor sit amet, consectetur.v", 2),
("titulo 5", "Ipsum  sit consectetur", 1),
("titulo 6", "Lorem v", 1),
("titulo 7", " dolor sit amet, consectetur", 2),
("titulo 8", "Lorem ipsum amet", 3),
("titulo 9", "Lorem sit amet, consectetur", 2),
("titulo 10", " dolor sit amet, consectetur Lorem ipsum", 3)
;

insert into gestion_de_notas (usuario_id, notas_id)
(1, 5),
(4, 4),
(3, 9),
(9, 6),
(2, 8),
(5, 1),
(6, 2),
(7, 10),
(8, 7),
(10, 3)
;


