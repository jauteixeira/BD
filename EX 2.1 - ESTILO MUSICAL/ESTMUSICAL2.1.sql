CREATE DATABASE Sstop_manha;

USE Sstop_manha;

CREATE TABLE EstilosMusicais
	(
		IdEstiloMusical INT PRIMARY KEY IDENTITY,
		Nome			VARCHAR (200)
	);

CREATE TABLE Artistas
	(
		IdArtista       INT PRIMARY KEY IDENTITY,
		Nome            VARCHAR (200),
		IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstiloMusical)
	);

--Alterar adicionar um novo atributo
ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR(200);

-- DML LINGUAGEM DE MANIPULAÇÃO DE DADOS

--COMANDO DE INSERIR DADOS
INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('SAMBA', 'Estilo Musical'),
	   ('JAZZ', 'Estilo Americano'),
	   ('INDIE', 'Estilo Bom');

INSERT INTO Artistas (Nome, IdEstiloMusical)
VALUES ('Zeca Pagodinho', 2),
	   ('Frank' , 3);

--UPDATE = ALTERAR DADOS DENTRO DAS TABELAS
UPDATE Artistas
SET IdEstiloMusical = 1
WHERE IdArtista = 1;

--DELETE = APAGAR DADOS DA TABELA
DELETE FROM Artistas
WHERE IdArtista = 1;

SELECT * FROM Artistas;
SELECT * FROM EstilosMusicais;
