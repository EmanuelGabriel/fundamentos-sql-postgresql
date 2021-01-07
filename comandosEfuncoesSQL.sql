-- Verificando cada coluna das tabelas
SELECT count(numero) nome FROM banco;
SELECT numero_banco, numero, nome FROM agencia;
SELECT numero, nome, email FROM cliente;

-- Aprender a usar um select somente com os nomes das colunas
SELECT * FROM conta_corrente;

SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'conta_corrente';

-- Usando de FUNÇÕES AGREGADAS
-- AVG - médias dos valores
-- COUNT - contar a quantidade dos dados
-- MAX - maior número de uma coluna
-- MIN - menor número de uma coluna 
-- SUM - 

SELECT * FROM cliente_transacoes;
-- Uso da função 'COUNT'
SELECT COUNT(numero), nome
FROM cliente
WHERE nome ILIKE '%ba%'
GROUP BY nome;

-- Uso da função 'MAX' - traz o número maior
SELECT MAX(valor)
FROM cliente_transacoes;

SELECT MAX(valor) tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

-- Uso da função 'MIN' - traz o número menor
SELECT MIN(valor)
FROM cliente_transacoes;

SELECT MIN(valor) tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id;

-- Usando o COUNT - vai contar o tipo de transação MAIOR que 150
SELECT count(id) tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
HAVING count(id) > 10;

-- Usando a função SUM - soma de todos os registros
SELECT valor, tipo_transacao_id FROM cliente_transacoes;

SELECT sum(valor)
FROM cliente_transacoes;

-- agrupar de forma ascendente - ASC
SELECT sum(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id;

-- AGRUPAR DE FORMA DESCENDENTE - DESC
SELECT sum(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id DESC;

SELECT cpf, nome 
FROM teste 
WHERE nome ILIKE '%n%'
GROUP BY cpf
ORDER BY nome DESC;

SELECT cpf, nome 
FROM teste;

INSERT INTO teste VALUES('23489755738', 'Arlindo Nogueira Rufino Alves');
