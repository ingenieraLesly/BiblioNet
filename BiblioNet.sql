USE master;
GO

DROP DATABASE IF EXISTS BiblioNet;
GO

CREATE DATABASE BiblioNet;
GO

USE BiblioNet;
GO

CREATE TABLE Authors(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Books(
	Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	BookName VARCHAR(50) NOT NULL,
	Author INT,
	Price DECIMAL(11,2),
	CONSTRAINT FK_BookAuthor --bautizo de las relaciones--
	FOREIGN KEY (Author) REFERENCES Authors(Id)
);
GO

--INGRESANDO DATOS--
USE BiblioNet;
GO

INSERT INTO Authors VALUES
('Gabriel García Marquéz'),
('Mario Mendozza');
GO

INSERT INTO Books VALUES
('Cien años de soledad', 1, 90000),
('El coronel no tiene quien le escriba', 1, 50000), 
('La Melancolía de los feos', 2, 50000); 
GO