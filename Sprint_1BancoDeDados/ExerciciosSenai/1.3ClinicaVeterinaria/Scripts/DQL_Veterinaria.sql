USE ClinicaVeterinaria

SELECT * FROM Clinica
SELECT * FROM TipoPet
SELECT * FROM Raca
SELECT * FROM Dono
SELECT * FROM Pet
SELECT * FROM Funcionario
SELECT * FROM Atendimento

SELECT F.Nome, CRMV, C.Nome Clinica FROM Funcionario F
INNER JOIN Clinica C ON C.idClinica = F.idClinica

SELECT Nome, Tipo FROM Raca
INNER JOIN TipoPet ON Raca.idTipoPet = TipoPet.idTipoPet 
WHERE Nome LIKE 's%'

SELECT Tipo FROM TipoPet
WHERE Tipo LIKE '%o'

SELECT Apelido, DataNascimento, T.Tipo, R.Nome Raça, D.Nome Dono FROM Pet
INNER JOIN Dono D ON Pet.idDono = D.idDono
INNER JOIN Raca R ON Pet.idRaca = R.idRaca
INNER JOIN TipoPet T ON R.idTipoPet = T.idTipoPet


SELECT P.Apelido, R.Nome Raça, T.Tipo, D.Nome Dono, f.Nome Veterinario, C.Nome Clinica FROM Atendimento
INNER JOIN Funcionario F ON Atendimento.idFuncionario = F.idFuncionario
INNER JOIN Pet P ON Atendimento.idPet = P.idPet
INNER JOIN Raca R ON P.idRaca = R.idRaca
INNER JOIN TipoPet T ON R.idTipoPet = T.idTipoPet
INNER JOIN Dono D ON P.idDono = D.idDono
INNER JOIN Clinica C ON F.idClinica = C.idClinica

