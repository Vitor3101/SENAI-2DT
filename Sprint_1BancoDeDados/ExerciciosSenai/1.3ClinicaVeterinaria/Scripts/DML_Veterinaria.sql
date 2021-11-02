USE ClinicaVeterinaria

INSERT INTO Clinica VALUES ('PetLovers','Rua Manuel Nogueira de Lima 839, São Paulo','Razão Social Genérica'),('CatchPet','Rua João Roberto Fagundes 232, São Paulo','Razão Social Genérica')
GO

INSERT INTO TipoPet(Tipo) VALUES ('Cachorro'),('Gato'),('Hamster'),('Peixe')
GO

INSERT INTO Raca VALUES ('Buldogue',1),('Poodle',1),('Chihuahua',1),('Siamês',2),('Persa',2),('Comum Europeu',2),('Hamster Chinês',3),('Hamster Russo',3),('Hamster-anão-russo-de-Campbell',3),('Mato Grosso',4),('Acará Bandeira',4),('Tetra Neon',4)
GO

INSERT INTO Dono VALUES ('Alfred'),('Marcos'),('Sofia'),('Mônica'),('Felipe')
GO

INSERT INTO Pet VALUES ('Bolinha','12/04/09',2,1),('Pentelho','24/09/19',6,2),('Lelé','20/01/20',8,3),('Agulinha','20/07/19',12,4),('Azulão','18/07/19',12,4)
GO

INSERT INTO Funcionario VALUES ('Mario Fernandes','43/2006/DF',2),('Paola Franch','12/2017/SP',1),('Nanda Rosario','53/2012',2),('Leopoldo de Carvalho','95/2013/RJ',1)
GO

INSERT INTO Atendimento VALUES (2,2,'20/10/21','Descrição Genérica'),(1,5,'19/10/21','Descrição Genérica'),(3,3,'21/10/21','Descrição Genérica'),(4,6,'19/10/21','Descrição Genérica')
GO