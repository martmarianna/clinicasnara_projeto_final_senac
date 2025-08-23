CREATE DATABASE Projeto_Final2;

USE Projeto_Final2;

CREATE TABLE consultas_novo(
	id_consulta INT,
    id_paciente INT, 
    id_medico INT,
    id_clinica INT,
    especialidade VARCHAR(50),
    data_hora_agendada datetime,
    data_hora_inicio datetime,
    status_base VARCHAR(50));

SET GLOBAL local_infile = 1;
    
LOAD DATA INFILE 'C:/Users/36134552025.1/Documents/consultas.csv' 
INTO TABLE consultas_novo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
    
SELECT * FROM consultas_novo;

-- TOTAL DE CONSULTAS POR ESPECIALIDADE --
SELECT especialidade, COUNT(especialidade) AS total_consultas
FROM consultas_novo 
WHERE status_base = 'Realizada'
GROUP BY especialidade;

-- CONSULTA POR CLÍNICA --
SELECT id_clinica, COUNT(id_consulta) AS consultas_clinica
FROM consultas_novo 
GROUP BY id_clinica;

-- TOTAL DE CONSULTAS POR STATUS --
SELECT status_base, COUNT(id_consulta) AS consultas_status
FROM consultas_novo 
GROUP BY status_base;
        

        