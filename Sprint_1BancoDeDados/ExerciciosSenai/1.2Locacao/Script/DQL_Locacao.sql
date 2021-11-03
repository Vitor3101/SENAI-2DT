USE Locadora

SELECT * FROM Empresa
SELECT * FROM Marca
SELECT * FROM Modelo 
SELECT * FROM Placa
SELECT * FROM Veiculo
SELECT * FROM Cliente
SELECT * FROM Aluguel

SELECT C.Nome Cliente , NomeModelo Modelo, M.NomeMarca Marca, P.Placa, dataInicio, dataFim FROM Aluguel A
INNER JOIN Veiculo V ON A.idVeiculo = V.idVeiculo
INNER JOIN Placa P ON V.idPlaca = P.idPlaca
INNER JOIN Modelo T ON V.idModelo = T.idModelo
INNER JOIN Marca M ON T.idMarca = M.idMarca
INNER JOIN Cliente C ON A.idCliente = C.idCliente


SELECT C.Nome Cliente , NomeModelo Modelo, M.NomeMarca Marca, P.Placa, dataInicio, dataFim FROM Aluguel A
INNER JOIN Veiculo V ON A.idVeiculo = V.idVeiculo
INNER JOIN Placa P ON V.idPlaca = P.idPlaca
INNER JOIN Modelo T ON V.idModelo = T.idModelo
INNER JOIN Marca M ON T.idMarca = M.idMarca
INNER JOIN Cliente C ON A.idCliente = C.idCliente
WHERE C.Nome LIKE '%Vitor%'

 
- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
