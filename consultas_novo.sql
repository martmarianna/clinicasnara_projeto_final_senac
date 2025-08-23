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
        

        