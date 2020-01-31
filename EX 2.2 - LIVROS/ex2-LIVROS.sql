CREATE DATABASE Livro_manha

USE Livro_manha;

CREATE TABLE Generos
	(
		idGenero  INT PRIMARY KEY IDENTITY,
		Nome      VARCHAR(200)
	);

CREATE TABLE Autores
	(
		idAutor   INT PRIMARY KEY IDENTITY,
		NomeAutor VARCHAR(200)
	);

CREATE TABLE Livros
	(
		idLivro   INT PRIMARY KEY IDENTITY,
		Titulo    VARCHAR(200),
		idAutor	  INT FOREIGN KEY REFERENCES Autores (idAutor),
		idGenero  INT FOREIGN KEY REFERENCES Generos (idGenero)
	);

SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

INSERT INTO Generos (Nome)
VALUES ('ROMANCE'),
	   ('COMEDIA'),
	   ('AUTOAJUDA'),
	   ('FICÇÃO'),
	   ('BIOGRAFIA');

INSERT INTO Autores (NomeAutor)
VALUES ('PERO'),
	   ('JESSIE'),
	   ('LISA'),
	   ('RUBENS'),
	   ('NEGO NEY');

INSERT INTO Livros (Titulo)
VALUES ('EU COMO CAJU'),
	   ('ABORTO DO RENASCIDO'),
	   ('NÃO TENHA MEDO'),
	   ('ALIENS DE SOMBREIRO'),
	   ('UM LIVRO SOBRE MIM');

UPDATE Livros
SET Titulo = 'SETEMBROCHOV'
WHERE idLivro = 2;

DELETE FROM Autores
WHERE idAutor = 3;

	   