USE persona_db;
-- Insert into PERSONA table
INSERT INTO PERSONA (cc, nombre, apellido, genero, edad)
VALUES
(1, 'Juan', 'Gómez', 'M', 25),
(2, 'María', 'López', 'F', 30),
(3, 'Carlos', 'Martínez', 'M', 35),
(4, 'Ana', 'Hernández', 'F', 28),
(5, 'Javier', 'Rodríguez', 'M', 40);

-- Insert into PROFESION table
INSERT INTO PROFESION (id, nom, des)
VALUES
(1, 'Ingeniero', 'Diseña y construye cosas.'),
(2, 'Profesor', 'Educa a los estudiantes.'),
(3, 'Médico', 'Proporciona atención médica.'),
(4, 'Artista', 'Crea obras de arte.'),
(5, 'Abogado', 'Brinda servicios legales.');

-- Insert into TELEFONO table
INSERT INTO TELEFONO (num, oper, duenio)
VALUES
('123-456-7890', 'Claro', 1),
('987-654-3210', 'Movistar', 2),
('555-123-4567', 'Tigo', 3),
('777-888-9999', 'Entel', 4),
('111-222-3333', 'Vivo', 5);

-- Insert into ESTUDIOS table
INSERT INTO ESTUDIOS (id_prof, cc_per, fecha, univer)
VALUES
(1, 1, '2020-05-15', 'Universidad A'),
(2, 2, '2019-08-20', 'Universidad B'),
(3, 3, '2018-11-10', 'Universidad C'),
(4, 4, '2021-03-05', 'Universidad D'),
(5, 5, '2017-06-30', 'Universidad E');
