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
      
-- ATENDIMENTOS COM MAIS DE 40 MINUTOS --
SELECT nome, especialidade, tempo_medio_atendimento FROM medicos_novo
WHERE  tempo_medio_atendimento > 40 
GROUP BY nome;

-- TOTAL DE CONSULTAS POR MÉDICO --
SELECT nome, COUNT(nome) AS consultas_medico
FROM medicos_novo 
GROUP BY nome;

        