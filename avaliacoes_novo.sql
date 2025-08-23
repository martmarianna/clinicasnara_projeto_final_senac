CREATE DATABASE Projeto_Final2;

USE Projeto_Final2;

CREATE TABLE avaliacoes_novo(
	id_consulta INT,
    nota_satisfacao INT,
    comentario VARCHAR(50)
 );

    SET GLOBAL local_infile = 1;
    
    LOAD DATA INFILE 'C:/Users/36134552025.1/Documents/avaliacoes.csv' 
    INTO TABLE avaliacoes_novo
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    
    SELECT * FROM avaliacoes_novo;
    

        