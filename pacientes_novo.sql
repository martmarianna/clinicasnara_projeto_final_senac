CREATE DATABASE Projeto_Final2;

USE Projeto_Final2;

CREATE TABLE pacientes_novo(
	id_paciente INT,
    idade INT,
    sexo VARCHAR(5),
    cidade VARCHAR(50),
    plano_saude VARCHAR(50));

SET GLOBAL local_infile = 1;
    
LOAD DATA INFILE 'C:/Users/36134552025.1/Documents/pacientes.csv' 
INTO TABLE pacientes_novo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
    
SELECT * FROM pacientes_novo;

-- MÉDIA DE IDADE DOS PACIENTES POR SEXO --
SELECT sexo, AVG(idade) AS media_idade_sexo 
FROM pacientes_novo 
GROUP BY sexo; 

-- TOTAL DE PACIENTES POR PLANO DE SAÚDE --
SELECT plano_saude, COUNT(id_paciente) AS paciente_plano
FROM pacientes_novo 
GROUP BY plano_saude;


        

        