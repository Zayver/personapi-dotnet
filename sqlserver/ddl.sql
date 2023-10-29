-- Crear base de datos --
CREATE DATABASE persona_db;
GO
USE persona_db;
CREATE USER [sa] FOR LOGIN [sa];
ALTER ROLE db_owner ADD MEMBER [sa];

-- TABLE PERSONA --

-- EN MYSQL INT(10) e INT(15) almacenan lo mismo, solamente influyen en el formateo --
-- Por eso no hay equivalente directo en SQLSERVER

CREATE TABLE PERSONA (
    cc INT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    genero CHAR(1) CHECK (genero IN ('M', 'F')) NOT NULL,
    edad INT
);

-- TABLE PROFESION --

CREATE TABLE PROFESION(
    id INT PRIMARY KEY,
    nom VARCHAR(90) NOT NULL,
    des TEXT
);

-- TABLE TELEFONO --

CREATE TABLE TELEFONO(
    num VARCHAR(15) PRIMARY KEY,
    oper VARCHAR(45) NOT NULL,
    duenio INT NOT NULL,
    FOREIGN KEY (duenio) REFERENCES persona(cc)
);
CREATE INDEX telefono_persona_fk ON TELEFONO (duenio);

-- TABLE ESTUDIOS --
CREATE TABLE ESTUDIOS (
  id_prof INT NOT NULL,
  cc_per INT NOT NULL,
  fecha DATE,
  univer VARCHAR(50),
  PRIMARY KEY (id_prof, cc_per),
  FOREIGN KEY (cc_per) REFERENCES persona(cc),
  FOREIGN KEY (id_prof) REFERENCES profesion(id)
);
CREATE INDEX estudio_persona_fk ON ESTUDIOS (cc_per);


