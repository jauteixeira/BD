CREATE DATABASE Optus;

USE Optus;

	CREATE TABLE tiposUsuario
		(
			idTipoUsuario		INT PRIMARY KEY IDENTITY ,
			Titulo				VARCHAR(255)
		);

	CREATE TABLE Artistas
		(
			IdArtista			INT PRIMARY KEY IDENTITY,
			Titulo				VARCHAR(200)
		);

	CREATE TABLE Estilos
		(
			IdEstilos			INT PRIMARY KEY IDENTITY,
			NomeEstilo			VARCHAR(200)
		);

	CREATE TABLE Usuarios
		(
			IdUsuarios			INT PRIMARY KEY IDENTITY,
			Nome				VARCHAR(200),
			idTipoUsuario		INT FOREIGN KEY REFERENCES tiposUsuario (idTipoUsuario)
		);

	CREATE TABLE Albuns
		(
			IdAlbum				INT PRIMARY KEY IDENTITY,
			Nome				VARCHAR(200),
			DataLancamento		VARCHAR(200),
			QtdMinutos			VARCHAR(200),
			Visualizacao		VARCHAR(200),
			IdArtista           INT FOREIGN KEY REFERENCES Artistas (IdArtista),
			IdEstilos			INT FOREIGN KEY REFERENCES Estilos (IdEstilos)
		);



INSERT INTO tiposUsuario (Titulo)
VALUES ('ADM'),
	   ('USUARIO COMUM'),
	   ('CONVIDADO'),
	   ('MASTER');


INSERT INTO Artistas (Titulo)
VALUES ('Frank Ocean'),
	   ('Kanye West'),
	   ('Alceu Valença'),
	   ('Selena Gomes'),
	   ('Marilia Mendoça');


INSERT INTO Estilos (NomeEstilo)
VALUES ('IndieRap'),
	   ('Rap'),
	   ('MPB'),
	   ('POP'),
	   ('Sertanejo');


INSERT INTO Usuarios (Nome, idTipoUsuario)
VALUES ('Admin', 2),
	   ('Ronaldo', 1),
	   ('Matthauz', 4),
	   ('Poppy', 4),
	   ('Lozano', 3);


INSERT INTO Albuns (Nome, IdArtista, IdEstilos, DataLancamento, QtdMinutos, Visualizacao)
VALUES ('CHANNEL ORANGE', 1, 1, '23/10/2016', 50, 192321),
	   ('THE LIFE OF PABLO', 2, 2, '03/02/2014', 73, 338321),
	   ('QUALQUER COISA', 3, 3, '17/06/1993', 92, 11),
	   ('BUSSUNDA', 4, 4, '05/05/2000', 60, 2321),
	   ('IGUAL SUA MAE', 5, 5, '30/09/2018', 39, 192321321);


UPDATE Usuarios
SET IdUsuarios = 1
WHERE IdUsuarios = 3;

UPDATE Albuns
SET Visualizacao = 999
WHERE IdAlbum = 2;

DELETE FROM Albuns
WHERE IdAlbum = 3;

DELETE FROM Albuns
WHERE IdAlbum IN (3, 5);

	SELECT * FROM tiposUsuario;
	SELECT * FROM Artistas;
	SELECT * FROM Estilos;
	SELECT * FROM Usuarios;
	SELECT * FROM Albuns;

SELECT IdArtista, Nome
FROM Albuns
WHERE IdArtista = 1;

SELECT Albuns, DataLancamento 
FROM Albuns 
WHERE DataLancamento = '02/10/2000';
