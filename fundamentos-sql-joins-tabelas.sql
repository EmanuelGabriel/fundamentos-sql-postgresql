SELECT * FROM agencia;
SELECT * FROM banco
SELECT * FROM cliente_transacoes WHERE cliente_numero = 430
SELECT * FROM conta_corrente WHERE cliente_numero = 430
SELECT * FROM tipo_transacao
SELECT * FROM cliente


SELECT count(numero) as total_cliente, nome
FROM cliente 
WHERE nome ILIKE 'r%'
AND email ILIKE '%@gmail.com' AND ativo = 'true'
GROUP BY nome

SELECT c.*
FROM cliente c
WHERE c.nome ILIKE 'r%'
AND c.email ILIKE '%@gmail.com' AND c.ativo = 'true'

SELECT c.nome, c.numero, c.email, 
ct.valor, ct.agencia_numero, ct.conta_corrente_numero  
FROM cliente c
JOIN cliente_transacoes ct
ON ct.cliente_numero = c.numero
WHERE ct.cliente_numero = 1

-- Buscando todas as transações do tipo Débito do cliente de código 430, o número da sua conta corrente 
-- ordenados pelo seu respectivo valor
SELECT c.nome, ct.valor as valor_transacao, ct.conta_corrente_numero as numero_conta_corrente, tt.nome as tipo_transacao
FROM cliente_transacoes ct
JOIN cliente c
ON c.numero = ct.cliente_numero
JOIN tipo_transacao tt
ON ct.tipo_transacao_id = tt.id
WHERE ct.cliente_numero = 2
GROUP BY c.nome, c.email, ct.valor, ct.numero_banco, ct.conta_corrente_numero, tt.nome
ORDER BY ct.valor


-- realiza a soma de todos os valores das transações que o cliente de código 2 fez no tipo de transação: 'Empréstimo'
SELECT sum(ct.valor) as soma_valores
FROM cliente_transacoes ct
JOIN cliente c
ON c.numero = ct.cliente_numero
JOIN tipo_transacao tt
ON ct.tipo_transacao_id = tt.id
WHERE ct.cliente_numero = 2 AND tt.nome = 'Empréstimo'







