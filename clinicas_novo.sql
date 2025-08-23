CREATE DATABASE Projeto_Final2;

USE Projeto_Final2;

CREATE TABLE clinicas_novo(
	id_clinica INT,
    nome VARCHAR(50),
    cidade VARCHAR(50),
    capacidade_diaria INT);

SET GLOBAL local_infile = 1;
    
LOAD DATA INFILE 'C:/Users/36134552025.1/Documents/clinicas.csv' 
INTO TABLE clinicas_novo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
    
SELECT * FROM clinicas_novo;
        

        