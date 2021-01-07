-- Lista todas as colunas de uma dada tabela
SELECT * FROM information_schema."columns" WHERE table_name = 'banco';

-- FUNÇÕES AGREGADAS
-- Tipos:
-- AVG ->
-- COUNT (HAVING) ->
-- MAX ->
-- MIN ->
-- SUM ->

SELECT id, cliente_numero, tipo_transacao_id, valor FROM cliente_transacoes;
-- Função AVG - média dos valores
SELECT avg(valor) FROM cliente_transacoes;
SELECT id, nome FROM tipo_transacao;
UPDATE cliente_transacoes SET valor = 59.20 WHERE id = 22;
-- trouxe a quantidade de transações realizadas pelos clientes
SELECT count(valor) FROM cliente_transacoes;

-- Função COUNT - contagem de dados
SELECT count(numero) FROM cliente;
-- Utilizando 'alias'
SELECT * FROM cliente;
SELECT count(numero) as quantidade_total_clientes FROM cliente;
SELECT count(email) as quantidade_total_emails, email FROM cliente WHERE email ILIKE '%@hotmail.com%' GROUP BY email;
SELECT count(ativo), nome, email, ativo FROM cliente WHERE ativo IS FALSE GROUP BY nome, email, ativo;

-- Função MAX - retorna o MAIOR número
SELECT max(numero) FROM cliente;
SELECT max(valor) FROM cliente_transacoes;
-- com restrições -> WHERE
SELECT max(valor) as maior_valor_transacao FROM cliente_transacoes WHERE cliente_numero = 65;
SELECT max(valor) as maior_valor_transacao FROM cliente_transacoes WHERE cliente_numero = 208;
SELECT avg(valor) as media_valor_transacao FROM cliente_transacoes WHERE cliente_numero = 208;
SELECT max(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

-- Função MIN - retorna o MENOR número
SELECT min(numero) FROM cliente;
SELECT min(valor) as menor_valor_transacao FROM cliente_transacoes;
-- com restrições -> WHERE
SELECT min(valor) as menor_valor_transacao FROM cliente_transacoes WHERE cliente_numero = 65;
SELECT min(valor) as menor_valor_transacao FROM cliente_transacoes WHERE cliente_numero = 208;
SELECT numero, nome, email FROM cliente WHERE numero = 208;
SELECT min(valor), tipo_transacao_id FROM cliente_transacoes GROUP BY tipo_transacao_id;

SELECT count(id), tipo_transacao_id 
FROM cliente_transacoes 
GROUP BY tipo_transacao_id HAVING count(id) > 4;

-- Função SUM -> é a soma de todos os registros/valores
SELECT sum(valor) as soma_valores, tipo_transacao_id
FROM cliente_transacoes
WHERE tipo_transacao_id = 3
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id;





-- Testes
SELECT table_name, column_name FROM information_schema."columns" WHERE table_name = 'agencia';
SELECT id, cliente_numero, tipo_transacao_id, valor FROM cliente_transacoes;
SELECT numero_banco, numero, nome FROM agencia;
select count(numero_banco) as quantidade_agencias FROM agencia GROUP BY numero_banco;



