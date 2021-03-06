CREATE Database Locadora;

USE Locadora;

CREATE TABLE Empresa(
idEmpresa TINYINT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL UNIQUE,
CNPJ VARCHAR(14) NOT NULL UNIQUE
)
GO

CREATE TABLE Marca(
idMarca TINYINT PRIMARY KEY IDENTITY,
NomeMarca VARCHAR(30) NOT NULL UNIQUE
)
GO

CREATE TABLE Modelo(
idModelo SMALLINT PRIMARY KEY IDENTITY,
NomeModelo VARCHAR(30) NOT NULL UNIQUE,
idMarca TINYINT FOREIGN KEY REFERENCES Marca(idMarca) NOT NULL
)
GO

CREATE TABLE Placa(
idPlaca INT PRIMARY KEY IDENTITY,
Placa CHAR(7)
)
GO

CREATE TABLE Veiculo(
idVeiculo INT PRIMARY KEY IDENTITY,
idPlaca INT FOREIGN KEY REFERENCES Placa(idPlaca)NOT NULL UNIQUE,
idModelo SMALLINT FOREIGN KEY REFERENCES Modelo(idModelo) NOT NULL,
idEmpresa TINYINT FOREIGN KEY REFERENCES Empresa(idEmpresa) NOT NULL
)
GO

CREATE TABLE Cliente(
idCLiente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL,
CPF CHAR(11) NOT NULL UNIQUE
)
GO

CREATE TABLE Aluguel(
idAluguel INT PRIMARY KEY IDENTITY,
idVeiculo INT FOREIGN KEY REFERENCES Veiculo(idVeiculo),
idCliente INT FOREIGN KEY REFERENCES Cliente(idCliente),
dataInicio DATE NOT NULL,
dataFim DATE NOT NULL
)
GO
