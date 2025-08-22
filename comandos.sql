-- Apostila + Guia + Exercícios SQL

-- 1.Banco de dados e Tabelas
CREATE DATABASE loja;
USE loja;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- 2.Inserir Dados (DML)
INSERT INTO Clientes (nome, email, telefone)
VALUES ('Romeu Park', 'parkromeu@email.com', '21 2110-2018'),
       ('Manu Park', 'parkmanu@email.com', '21 1601-2019'),
       ('Luna Son', 'sonluna@email.com', '21 0604-2020');

-- 3.Consultar Dados (DQL)
SELECT * FROM Clientes;

-- 4.Criar tabelas relacionadas
CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

-- 5.Inserindo Dados em Produtos e Pedidos
-- Produtos
INSERT INTO Produtos (nome, preco, estoque)
VALUES ('Camisa', 50.00, 10),
       ('Calça', 80.00, 5),
       ('Tênis', 120.00, 3);
-- Pedidos
INSERT INTO Pedidos (id_cliente, id_produto, quantidade)
VALUES (1, 1, 2),
       (1, 2, 1),
       (2, 3, 1);

-- 6.Consultas avançadas
SELECT c.nome AS Cliente, 
        p.nome AS Produto, 
        pe.quantidade, 
        p.preço, 
        (pe.quantidade * p.preco) AS Total
FROM Pedidos pe
JOIN Clientes c ON pe.id_cliente = c.id_cliente
JOIN Produtos p ON pe.id_produto = p.id_produto;


-- 7.Guia Rápido de SQL

-- a.Banco de Dados
CREATE DATABASE nome_banco;
DROP DATABASE nome_banco;
USE nome_banco;

--b.Tabelas (DDL: Data Definition Language)
-- Comandos que criam e estruturam o banco de dados e suas tabelas
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100)
);
ALTER TABLE Clientes ADD telefone VARCHAR(20);
ALTER TABLE Clientes DROP COLUMN telefone;
DROP TABLE Clientes;

-- c.Inserir / Atualizar / Apagar (DML: Data Manipulation Language)
-- Comandos que inserem, alteram e removem os dados de dentro das tabelas
INSERT INTO Clientes (nome, email) VALUES ('Romeu', 'parkromeu@email.com');
UPDATE Clientes SET email = 'novo@email.com' WHERE id_cliente = 1;
DELETE FROM Clientes WHERE id_cliente = 1;

-- d.Consultas (DQL: Data Query Language)
-- Comandos que consultam/buscam informações no banco
SELECT * FROM Clientes;
SELECT nome, email FROM Clientes;
SELECT * FROM Clientes WHERE id_cliente = 2;
SELECT * FROM Clientes WHERE nome LIKE 'A%';

-- e.Ordenação e Limite
SELECT * FROM Clientes ORDER BY nome ASC;
SELECT * FROM Clientes ORDER BY nome DESC;
SELECT * FROM Clientes LIMIT 5;

-- f.Funções de Agregação
SELECT COUNT(*) FROM Clientes;
SELECT AVG(preco) FROM Produtos;
SELECT SUM(quantidade) FROM Pedidos;
SELECT MAX(preco), MIN(preco) FROM Produtos;

-- g.Agrupamento
SELECT id_cliente, SUM(quantidade) AS Total
FROM Pedidos
GROUP BY id_cliente;

-- h.JOIN
SELECT c.nome, p.nome, pe.quantidade
FROM Pedidos pe
JOIN Clientes c ON pe.id_cliente = c.id_cliente
JOIN Produtos p ON pe.id_produto = p.id_produto;

-- 8.Exerecícios Extras + Gabaritos