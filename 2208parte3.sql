/* selecionar quem eu quero ver */
SELECT * FROM funcionarios WHERE id_funcionario <=3;

SELECT * FROM funcionarios WHERE id_funcionario = 2;

SELECT * FROM funcionarios WHERE id_funcionario BETWEEN 3 and 8;

SELECT nome_funcionario FROM funcionarios;

SELECT nome_funcionario FROM funcionarios ORDER BY nome_funcionario ASC;

SELECT nome_funcionario AS `Nome do Funcionário` FROM funcionarios ORDER BY nome_funcionario DESC;

SELECT nome_funcionario, cidade FROM funcionarios WHERE cidade = "Rio de Janeiro";