INSERT INTO funcionarios VALUES
(DEFAULT, "Manu Park", 2116012019),
(DEFAULT, "Luna Son", 2106042020);

INSERT INTO funcionarios VALUES
(DEFAULT, "Ariel Souza", 2109011990);

UPDATE funcionarios SET telefone = 21978965769 WHERE id_funcionario = 3;

DELETE FROM funcionarios WHERE id_funcionario >= 4;

ALTER TABLE funcionarios ADD COLUMN cidade VARCHAR(30);

SELECT * FROM funcionarios;