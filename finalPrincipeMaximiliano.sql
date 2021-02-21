CREATE DATABASE IF NOT EXISTS alquiler_consultorios CHARACTER SET utf8 COLLATE utf8_general_ci;

USE alquiler_consultorios;

CREATE TABLE IF NOT EXISTS medicos  (
  id_medico int(11) NOT NULL AUTO_INCREMENT,
  precioConsulta decimal(10,0) NOT NULL,
  nombre varchar(50) NOT NULL,
  apellido varchar(30) NOT NULL,
  telefono varchar(20) NOT NULL,
  fecha_nacimiento date NOT NULL,
  PRIMARY KEY (id_medico)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS consultorios  (
  id_consultorio int(11) NOT NULL AUTO_INCREMENT,
  nombre_comercial varchar(100) NOT NULL,
  direccion varchar(60) NOT NULL,
  localidad varchar(15) NOT NULL,
  provincia varchar(15) NOT NULL,
  cp varchar(10) NOT NULL,
  pais varchar(15) NOT NULL,
  telefono varchar(24) NOT NULL,
  PRIMARY KEY (id_consultorio)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS alquiler_consultorios  (
  id int(11) NOT NULL AUTO_INCREMENT,
  idConsultorio int(11) NOT NULL,
  idMedico int(11) NOT NULL,
  fechaDesde date NOT NULL,
  fechaHasta date NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (idConsultorio) REFERENCES consultorios(id_consultorio),
  FOREIGN KEY (idMedico) REFERENCES medicos(id_medico)
) DEFAULT CHARSET=utf8;

INSERT INTO medicos (precioConsulta, nombre, apellido, telefono, fecha_nacimiento)
VALUES 
(500.00, 'Juan', 'Lopez','1131581520','1953-05-10'),
(400.00, 'Pedro', 'Rodriguez','1122581567','1962-09-22'),
(300.00, 'Ignacio', 'Fernandez','1154867315','1971-07-15'),
(800.00, 'Martin', 'Martinez','1178986432','1965-02-12'),
(1500.00, 'Roberto', 'Gomez','1195254211','1977-03-27'),
(2000.00, 'Alberto', 'Sanchez','1168593202','1983-04-08'),
(600.00, 'Cristian', 'Perez','1174152368','1990-06-10');

INSERT INTO consultorios (nombre_comercial, direccion, localidad, provincia, cp, pais, telefono)
VALUES 
('Salud Total', 'Av Soárez 80','Chivilcoy','Buenos Aires','1325','Argentina','45254211'),
('Doctor Ahorro', 'Mom 2862 Piso PB','Nueva Pompeya','Buenos Aires','1570','Argentina','45567321'),
('Simple Salud', 'Mitre 1310','Roque Pérez','Buenos Aires','1345','Argentina','46578219'),
('Medical', 'Centeno 1636','Rosario','Santa Fe','1785','Argentina','45571846'),
('Medi+', 'Av Independencia 4275','Corrientes','Corrientes','1045','Argentina','47895463'),
('Social Salud', '9 De Julio 866','Bahía Blanca','Buenos Aires','1897','Argentina','44578963'),
('Mediplus', 'Av Cabildo Gal Río de Janeiro 2370','Belgrano','Buenos Aires','1657','Argentina','49875641'),
('Saludplus', 'Av Lib San Martín 2130','Caseros','Buenos Aires','1587','Argentina','46857897');

INSERT INTO alquiler_consultorios (idConsultorio, idMedico, fechaDesde, fechaHasta)
VALUES 
(1, 1,'2020-08-15','2020-10-20'),
(5, 5,'2020-06-13','2020-07-22'),
(2, 3,'2020-09-11','2020-12-12'),
(1, 2,'2020-02-30','2020-04-15'),
(5, 1,'2020-05-25','2020-08-20'),
(8, 6,'2020-06-14','2020-10-25'),
(5, 2,'2020-03-05','2020-05-20'),
(2, 4,'2020-09-08','2020-11-25'),
(5, 1,'2020-11-10','2020-12-20'),
(2, 1,'2020-03-05','2020-04-17'),
(8, 3,'2020-03-08','2020-04-25'),
(2, 5,'2020-01-10','2020-01-21'),
(2, 3,'2020-06-01','2020-07-20'),
(6, 1,'2020-05-20','2020-06-06'),
(6, 2,'2020-04-15','2020-05-31');
