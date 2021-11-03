USE OptusMusical

SELECT * FROM Musico
SELECT * FROM Estilo 
SELECT * FROM Album
SELECT * FROM TipoUsuario
SELECT * FROM Usuario


SELECT U.Nome, U.Email, T.TipoUsuario FROM Usuario U
INNER JOIN TipoUsuario T ON U.idTipoUsuario = T.idTipoUsuario
WHERE T.idTipoUsuario = 1

SELECT A.Titulo, E.Nome Estilo, A.Localizacao, A.Minutagem, M.Nome Autor, YEAR(A.DataLancamento) Lancamento FROM Album A
INNER JOIN Estilo E ON A.idEstilo = E.idEstilo
INNER JOIN Musico M ON A.idMusico = M.idMusico
WHERE A.DataLancamento > '2019'

SELECT U.idUsuario, U.Nome, T.TipoUsuario Tipo FROM Usuario U
INNER JOIN TipoUsuario T ON U.idTipoUsuario = T.idTipoUsuario
WHERE U.Email = 'Comum@Comum.com' AND U.Senha = 'Comum123'

SELECT A.Titulo, E.Nome Estilo, A.Localizacao Origem, A.DataLancamento Lançamento, M.Nome Autor FROM Album A
INNER JOIN Musico M ON A.idMusico = M.idMusico
INNER JOIN Estilo E ON A.idEstilo = E.idEstilo
WHERE A.Visivel = 1
