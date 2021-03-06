CREATE DATABASE ClinicaVeterinaria

USE ClinicaVeterinaria

CREATE TABLE Clinica(
idClinica SMALLINT PRIMARY KEY IDENTITY,
Nome VARCHAR(30),
Endereco VARCHAR(200) NOT NULL UNIQUE,
RazaoSocial VARCHAR(100)
)
GO

CREATE TABLE TipoPet(
idTipoPet TINYINT PRIMARY KEY IDENTITY,
Tipo VARCHAR(30) NOT NULL UNIQUE,
)
GO

CREATE TABLE Raca(
idRaca TINYINT PRIMARY KEY IDENTITY,
Nome VARCHAR(50) NOT NULL,
idTipoPet TINYINT FOREIGN KEY REFERENCES TipoPet(idTipoPet)
)
GO

CREATE TABLE Dono(
idDono SMALLINT PRIMARY KEY IDENTITY,
Nome VARCHAR(40)
)
GO

CREATE TABLE Pet(
idPet SMALLINT PRIMARY KEY IDENTITY,
Apelido VARCHAR(40) NOT NULL,
DataNascimento VARCHAR(8),
idRaca TINYINT FOREIGN KEY REFERENCES Raca(idRaca),
idDono SMALLINT FOREIGN KEY REFERENCES Dono(idDono)
)
GO

CREATE TABLE Funcionario(
idFuncionario SMALLINT PRIMARY KEY IDENTITY,
Nome VARCHAR(40) NOT NULL,
CRMV CHAR(10),
idClinica SMALLINT FOREIGN KEY REFERENCES Clinica(idClinica)
)
GO

CREATE TABLE Atendimento(
idAtendimento SMALLINT PRIMARY KEY IDENTITY,
idFuncionario SMALLINT FOREIGN KEY REFERENCES Funcionario(idFuncionario),
idPet SMALLINT FOREIGN KEY REFERENCES Pet(idPet),
DataConsulta VARCHAR(15),
Descricao VARCHAR(200)
)
GO

