
--Practica4: Yonatan Chicas
CREATE DATABASE Clinicapractica4;
USE Clinicapractica4;


CREATE TABLE Pacientes (
    paciente_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);


CREATE TABLE Medicos (
    medico_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    especialidad VARCHAR(255)
);


CREATE TABLE Citas (
    cita_id INT PRIMARY KEY ,
    paciente_id INT,
    medico_id INT,
    fecha_hora DATETIME,
    motivo VARCHAR(255),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medicos(medico_id)
);


CREATE TABLE HistorialesMedicos (
    historial_id INT PRIMARY KEY ,
    paciente_id INT,
    fecha DATE,
    diagnostico TEXT,
    tratamiento TEXT,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id)
);