/* Criando o banco */
CREATE DATABASE projetoloja;

/* Usar o banco */
USE projetoloja;

/* Criando tabela de funcionários */
CREATE TABLE funcionarios (
id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(50) NOT NULL,
telefone BIGINT
);

/* Inserindo dados */
INSERT INTO funcionarios VALUES (1, "Romeu Park", 2121102018);

SELECT * FROM funcionarios;