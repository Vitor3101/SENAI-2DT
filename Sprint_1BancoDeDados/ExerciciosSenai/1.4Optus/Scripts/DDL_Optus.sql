CREATE DATABASE OptusMusical

USE OptusMusical

CREATE TABLE Musico(
idMusico SMALLINT PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL
)
GO

CREATE TABLE Estilo(
idEstilo TINYINT PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL UNIQUE
)
GO

CREATE TABLE Album(
idAlbum SMALLINT PRIMARY KEY IDENTITY,
Titulo VARCHAR(50),
DataLancamento DATE,
Localizacao VARCHAR(200),
Minutagem VARCHAR(6),
Visivel BINARY,
idMusico SMALLINT FOREIGN KEY REFERENCES Musico(idMusico),
idEstilo TINYINT FOREIGN KEY REFERENCES Estilo(idEstilo)
)
GO

CREATE TABLE TipoUsuario(
idTipoUsuario TINYINT PRIMARY KEY IDENTITY,
TipoUsuario VARCHAR(13) NOT NULL UNIQUE
)
GO

CREATE TABLE Usuario(
idUsuario SMALLINT PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(256) UNIQUE NOT NULL,
Senha VARCHAR(16) NOT NULL,
idTipoUsuario TINYINT FOREIGN KEY REFERENCES TipoUsuario(idTipoUsuario)
)
GO
