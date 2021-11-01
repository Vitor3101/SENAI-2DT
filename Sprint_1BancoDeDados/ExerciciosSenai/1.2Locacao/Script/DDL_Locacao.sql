CREATE Database Locadora;

USE Locadora;

CREATE TABLE Empresa(
idEmpresa SMALLINT PRIMARY KEY IDENTITY,
Nome VARCHAR(30),
CNPJ VARCHAR(14)
)

CREATE TABLE Marca(
idMarca TINYINT PRIMARY KEY IDENTITY,
NomeMarca VARCHAR(30),
)

CREATE TABLE Modelo(
idModelo SMALLINT PRIMARY KEY IDENTITY,
NomeModelo VARCHAR(30),
idMarca TINYINT FOREIGN KEY REFERENCES Marca(idMarca)
)

CREATE TABLE Placa(
idPlaca INT PRIMARY KEY IDENTITY,
Placa CHAR(7)
)

CREATE TABLE Veiculo(
idVeiculo INT PRIMARY KEY IDENTITY,
idModelo SMALLINT FOREIGN KEY REFERENCES Modelo(idModelo)
)

CREATE TABLE Cliente(
idCLiente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(25),
CPF CHAR(11)
)

CREATE TABLE Aluguel(
idAluguel INT PRIMARY KEY IDENTITY,
idVeiculo INT FOREIGN KEY REFERENCES Veiculo(idVeiculo),
idCliente INT FOREIGN KEY REFERENCES Cliente(idCliente)
)
