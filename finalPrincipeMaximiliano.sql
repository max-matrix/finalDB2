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
