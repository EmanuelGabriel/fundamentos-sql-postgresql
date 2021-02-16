/*
  ## CRIAÇÃO DA TABELA 'PRODUTO'
*/
CREATE TABLE privado.produto(
 cod_produto INT NOT NULL PRIMARY KEY,
 descricao VARCHAR(50) UNIQUE,
 quantidade_disponivel INT NOT NULL DEFAULT 0
);

-- INSERIR DADOS NA TABELA 'PRODUTO'
INSERT INTO privado.produto (cod_produto, descricao, quantidade_disponivel)
VALUES (1, 'Feijão do Bom', 10),
(2, 'Arroz Jupi', 5),
(3, 'Farinha de Trigo Olé', 20);


-- EXIBIR OS DADOS DA TABELA 'PRODUTO'
SELECT * FROM privado.produto
SELECT * FROM privado.itensvenda

SELECT table_schema, table_name, table_type FROM information_schema."tables"
WHERE table_schema LIKE 'privado'

