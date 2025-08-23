CREATE DATABASE Projeto_Final2;

USE Projeto_Final2;

CREATE TABLE medicos_novo(
	id_medico INT,
    nome VARCHAR(50),
    especialidade VARCHAR(50),
    tempo_medio_atendimento INT);

SET GLOBAL local_infile = 1;
    
LOAD DATA INFILE 'C:/Users/36134552025.1/Documents/medicos.csv' 
INTO TABLE medicos_novo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
    
SELECT * FROM medicos_novo;
        

        