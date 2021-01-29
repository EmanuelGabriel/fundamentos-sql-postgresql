/*
   # CRIAR A TABELA DE 'PRODUTOS'
   COLUNAS DA TABELA:
   - NOME
   - DESCRICAO
   - QUANTIDADE EM ESTOQUE
   - UNIDADE DE VENDA
   - ATIVO?
*/

-- Comando DDL de criação da tabela - vincular ao schema 'geral'
-- Técnica de restrições na tabela 'produtos'
-- USANDO O TIPO 'SERIAL' PARA ADICIONAR AUTOMATICAMENTE CADA CÓDIGO DOS PRODUTOS
-- USANDO A CONSTRAINT CHAMADA 'PRIMARY KEY'
CREATE TABLE IF NOT EXISTS geral.produtos
(
   codigo SERIAL PRIMARY KEY, 	
   nome VARCHAR(50) NOT NULL,
   descricao TEXT NOT NULL,
   quantidade_estoque DECIMAL(6,2) NOT NULL DEFAULT 0,
   unidade CHAR(2) NOT NULL,
   ativo BOOLEAN NOT NULL DEFAULT TRUE,
   data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- EXEMPLO 2 DE CRIAÇÃO DE TABELA: CLIENTE
CREATE TABLE IF NOT EXISTS cliente(
 numero BIGSERIAL,
 nome VARCHAR(120) NOT NULL,
 email VARCHAR(250) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (numero)
);

-- Comando SELECT
SELECT * FROM geral.produtos;

-- Comando para apagar a tabela
DROP TABLE geral.produtos;

-- Comando para ALTERAR a tabela
-- ADICIONA UMA NOVA COLUNA NA TABELA 'PRODUTOS'
ALTER TABLE geral.produtos
ADD COLUMN codigo_barras CHAR(8) NOT NULL;

-- Comando para renomear uma coluna específica na tabela
-- RENOMEIA O NOME DA COLUNA 'CODIGO_BARRAS' PARA 'COD_BARRAS'
ALTER TABLE geral.produtos
RENAME COLUMN codigo_barras TO cod_barras;

ALTER TABLE geral.produtos
RENAME COLUMN cod_barras 
TO
codigo_barras;

-- Comando de uma CONSTRAINT chamada 'CHECK'
-- Garante que os códigos de barras terão 8 caracteres
ALTER TABLE geral.produtos 
ADD CONSTRAINT CK_CODIGO_BARRAS CHECK (LENGTH(codigo_barras) = 8);

-- Comando CONSTRAINT chamada UNIQUE
-- Evita que 2 produtos tenham o mesmo código de barras - UNIQUE
ALTER TABLE geral.produtos
ADD CONSTRAINT UN_CODIGO_BARRAS UNIQUE(codigo_barras);

-- A cláusula WHERE permite que se defina um filtro para a pesquisa, com isso refinando mais o seu resultado.











