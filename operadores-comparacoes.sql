/* 
  ## Operadores de comparação
    --> No WHERE, podemos declarar as condições utilizando diversos operadore

   > maior que
   < menor que
   = igual
   >= maior ou igual a
   <= menor ou igual a
   <> diferente
*/ 

-- USANDO O COMANDO 'INSERT' PARA ADICIONAR DADOS NA TABELA 'PRODUTOS'
INSERT INTO geral.produtos
(nome, descricao, quantidade_estoque, unidade, codigo_barras)
VALUES 
('Sabão Neutro', 'descrição sabão neutro', 50, 'UN', '10020001'),
('Mouse Microsoft Vostro', 'descrição Mouse Microsoft Vostro', 15, 'UN', '20030002');

SELECT * FROM geral.produtos;

SELECT * FROM geral.produtos
WHERE unidade = 'UN' OR quantidade_estoque = 50.00

-- USANDO O OPERADOR 'BETWEEN'
-- Vai trazer intervalos entre a quantidade de estoque
SELECT * FROM geral.produtos
WHERE produtos.quantidade_estoque
BETWEEN 15.0 AND 100.0;

-- USANDO COMPARAÇÕES COM OPERADORES LÓGIGOS
SELECT * FROM geral.produtos
WHERE quantidade_estoque >= 15.0 AND quantidade_estoque <= 200.0
ORDER BY quantidade_estoque;

-- ALTERANDO A COLUNA 'DESCRICAO' DA TABELA 'PRODUTOS' PARA RECEBER VALOR NULOS - NULL
ALTER TABLE geral.produtos
ALTER COLUMN descricao DROP NOT NULL;

-- RENOMEAR A COLUNA 'UNIDADE' DA TABELA 'PRODUTOS'
-- ALTERAR A COLUNA 'UNIDADE' DA TABELA 'PRODUTOS' PARA 'UNIDADE_MEDIDA'
ALTER TABLE geral.produtos
RENAME COLUMN unidade TO unidade_medida;

-- ALTERANDO TODAS AS DESCRIÇÕES DO PRODUTOS PARA O VALOR NULO - NULL
UPDATE geral.produtos
SET descricao = 'Carne de primeira', quantidade_estoque = 60.0
WHERE codigo = 1;

-- SELECIONAR TODAS AS DESCRIÇÕES DA TABELA 'PRODUTOS' CUJO OS VALORES SEJAM NULOS - NULL
-- ISSO SE CHAMA 'PROJEÇÃO' COM USO DO 'ALIAS' - AS
SELECT nome as nomes_dos_produtos, quantidade_estoque, unidade FROM geral.produtos
WHERE descricao IS NULL;

-- COMANDO PARA REMOVER OS DADOS DA TABELA 'PRODUTOS'
-- COMANDO: DELETE - OBS.: AQUI REMOVE LINHAS DAS COLUNAS E NÃO AS COLUNAS DA TABELA
-- JAMAIS UTILIZAR ESTE COMANDO SEM A CLÁUSULA 'WHERE'
DELETE FROM geral.produtos
WHERE codigo = 9

-- USANDO O COMANDO 'SELECT' COM FILTROS
SELECT * FROM geral.produtos
WHERE codigo >= 2 AND codigo <= 6;

-- USANDO O COMANDO 'SELECT' COM FILTROS
-- TRAZENDO APENAS AS COLUNAS COM PROJEÇÕES
SELECT nome, quantidade_estoque, unidade_medida, codigo_barras
FROM geral.produtos
WHERE  codigo >= 2 AND codigo <= 10;

-- O SIGNIFICADO SEMÂNTICO DO 'NULL'
-- 'NULL' NÃO É VAZIO, FALSO, 0 OU ALGO PARECIDO, 
-- NULL É DESCONHECIDO PARA O BANCO DE DADOS
-- NAS A COLUNA NÃO TEM UM VALOR CONHECIDO E SIM UM VALOR 'DESCONHECIDO
SELECT codigo, nome, quantidade_estoque, unidade_medida, codigo_barras
FROM geral.produtos WHERE descricao IS NULL

-- NÃO É DESCONHECIDO - NOT IS NULL
SELECT * FROM geral.produtos WHERE descricao IS NOT NULL


























