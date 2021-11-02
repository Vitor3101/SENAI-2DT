USE ClinicaVeterinaria

INSERT INTO Clinica VALUES ('PetLovers','Rua Manuel Nogueira de Lima 839, S�o Paulo','Raz�o Social Gen�rica'),('CatchPet','Rua Jo�o Roberto Fagundes 232, S�o Paulo','Raz�o Social Gen�rica')
GO

INSERT INTO TipoPet(Tipo) VALUES ('Cachorro'),('Gato'),('Hamster'),('Peixe')
GO

INSERT INTO Raca VALUES ('Buldogue',1),('Poodle',1),('Chihuahua',1),('Siam�s',2),('Persa',2),('Comum Europeu',2),('Hamster Chin�s',3),('Hamster Russo',3),('Hamster-an�o-russo-de-Campbell',3),('Mato Grosso',4),('Acar� Bandeira',4),('Tetra Neon',4)
GO

INSERT INTO Dono VALUES ('Alfred'),('Marcos'),('Sofia'),('M�nica'),('Felipe')
GO

INSERT INTO Pet VALUES ('Bolinha','12/04/09',2,1),('Pentelho','24/09/19',6,2),('Lel�','20/01/20',8,3),('Agulinha','20/07/19',12,4),('Azul�o','18/07/19',12,4)
GO

INSERT INTO Funcionario VALUES ('Mario Fernandes','43/2006/DF',2),('Paola Franch','12/2017/SP',1),('Nanda Rosario','53/2012',2),('Leopoldo de Carvalho','95/2013/RJ',1)
GO

INSERT INTO Atendimento VALUES (2,2,'20/10/21','Descri��o Gen�rica'),(1,5,'19/10/21','Descri��o Gen�rica'),(3,3,'21/10/21','Descri��o Gen�rica'),(4,6,'19/10/21','Descri��o Gen�rica')
GO