INT PRIMARY KEY AUTO_INCREMENT
INT = número inteiro
PRIMARY KEY = chave primária da tabela. Serve para identificar unicamente cada registro. 
Não pode ter valores repetidos nem null. Cada tabela só pode ter uma.
AUTO_INCREMENT = Faz o banco gerar automaticamente um número novo cada vez que você insere uma linha.

VARCHAR = VARiable CHARacter
ex.: nome VARCHAR(100)
É um tipo de dado para texto. Só usa o espaço necessário para armazenar o texto.
É flexível, até o limite definido. O número dentro do paranteses representa o máximo de letrar que você pode colocar.

FOREIGN KEY = chave que liga uma tabela à outra. Garante que o valor em uma tabela existe na outra. Evita dados soltos ou inválidos.
REFERENCES = é a parte que diz qual tabela e coluna a chave estrangeira aponta

ex.: No SQL abaixo:
SELECT c.nome AS Cliente, 
        p.nome AS Produto, 
        pe.quantidade, 
        p.preço, 
        (pe.quantidade * p.preco) AS Total
FROM Pedidos pe
JOIN Clientes c ON pe.id_cliente = c.id_cliente
JOIN Produtos p ON pe.id_produto = p.id_produto;

c.nome AS Cliente = nome do cliente, mas com o apelido 'Cliente'.
p.nome AS Produto = nome do produto, mas com o apelido 'Produto'.
pe.quantidade = quantidade de produto no pedido.
p.preco = preço unitário do produto.
(pe.quantidade * p.preco) AS Total = faz a multiplicação e cria uma coluna chamada "Total".
AS = renomeia a coluna no resultado (só muda na consulta!)

FROM Pedidos pe = A consulta começa na tabela Pedidos.
O pe é um apelido para a tabela, ao invés de escrever Pedido.id_cliente.

-- Apaga o database -- CUIDADO AO USAR! 
DROP DATABASE projetoloja;