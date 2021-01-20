-- CRIAÇÃO DE VIEWs

-- CRIANDO UMA VIEW
CREATE OR REPLACE VIEW vw_banco AS(
 SELECT numero, nome, ativo 
	FROM banco
)

SELECT numero, nome, ativo
FROM vw_banco 
WHERE ativo = 'false'
ORDER BY numero;

-- CRIANDO A 2 VIEW
CREATE OR REPLACE VIEW vw_bancos_2 (banco_numero, banco_nome, banco_ativo) AS (
 	SELECT numero, nome, ativo
	FROM banco
)

-- REALIZANDO O SELECT NA VIEW BANCO_2
SELECT banco_numero, banco_nome, banco_ativo
FROM vw_bancos_2;

-- REALIZANDO O SELECT NA VIEW BANCO_2 ORDENADOS PELO O NOME DO BANCO
SELECT banco_numero, banco_nome, banco_ativo
FROM vw_bancos_2
ORDER BY banco_nome;

-- REALIZANDO O SELECT NA VIEW BANCO_2 AGRUPADOS
SELECT count(banco_numero), banco_nome, banco_ativo
FROM vw_bancos_2
GROUP BY banco_numero, banco_nome, banco_ativo;

-- REALIZANDO A CONTAGEM DA VIEW BANCO_2 AGRUPADOS POR NÚMERO, NOME, ATIVO E SE O BANCO NÃO ESTÁ ATIVO (FALSE)
SELECT count(banco_numero), banco_nome, banco_ativo
FROM vw_bancos_2
WHERE banco_ativo = 'false'
GROUP BY banco_numero, banco_nome, banco_ativo;

-- EXIBE A QUANTIDADE DE BANCO ONDE O STATUS ESTEJA COMO VERDADEIRO - TRUE
SELECT count(banco_numero) as total_bancos
FROM vw_bancos_2
WHERE banco_ativo = 'true';

-- EXIBE A QUANTIDADE DE BANCO ONDE ESTÃO COM STATUS DE FALSO - FALSE
SELECT count(banco_numero) as total_bancos
FROM vw_bancos_2
WHERE banco_ativo = 'false';

-- INSERIR DADOS NA VIEW - BANCO_2
INSERT INTO vw_bancos_2 (banco_numero, banco_nome, banco_ativo)
VALUES (51, 'Banco Ideia Pronta', TRUE);

-- REALIZAR O SELECT NA VIEW - BANCO_2
SELECT banco_numero, banco_nome, banco_ativo
FROM vw_bancos_2 WHERE banco_numero = 51;

SELECT * FROM banco WHERE numero = 51;


-- ATUALIZAR A VIEW DA TABELA - VW-BANCO_2
UPDATE vw_bancos_2
SET banco_nome = 'C6 Bank'
WHERE banco_numero = 51;

-- ATUALIZAR O STATUS Da VIEW DA TABELA - VW-BANCO_2
UPDATE vw_bancos_2
SET banco_ativo = FALSE
WHERE banco_numero = 51;

