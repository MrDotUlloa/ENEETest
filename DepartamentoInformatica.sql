CREATE DATABASE DepartamentoInformatica;

USE DepartamentoInformatica;

CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Departamento VARCHAR(50),
    Cargo VARCHAR(50),
    Detalles_Contacto VARCHAR(100)
);

CREATE TABLE Caso (
    ID_Caso INT PRIMARY KEY,
    Descripcion VARCHAR(100),
    Categoria VARCHAR(50),
    Estado VARCHAR(50),
    Fecha_Apertura DATE,
    Fecha_Cierre DATE,
    ID_Usuario INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
);

CREATE TABLE Procedimiento (
    ID_Procedimiento INT PRIMARY KEY,
    Descripcion VARCHAR(100),
    Fecha_Hora DATETIME,
    Responsable VARCHAR(50),
    Desarrollo TEXT,
    ID_Caso INT,
    FOREIGN KEY (ID_Caso) REFERENCES Caso(ID_Caso)
);
