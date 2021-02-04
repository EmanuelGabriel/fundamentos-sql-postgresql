SELECT a.nome as nome_agencia
FROM public.agencia a
WHERE a.numero = 92

SELECT ct.id as id_transacao, ct.valor, c.nome as nome_cliente, c.email as email_cliente, a.nome as nome_agencia
FROM public.cliente_transacoes ct
	JOIN public.cliente c 
	ON ct.cliente_numero = c.numero
	JOIN public.agencia a
	ON ct.cliente_numero = a.numero
WHERE c.numero = 7 AND a.numero_banco = 104 --a.nome LIKE '%Federal'
ORDER BY ct.id

-- VERIFICAR O TOTAL/VALOR DE TRANSAÇÕES FEITAS PELO CLIENTE 'EDUARDO RUA' REALIZADO NA AGÊNCIA 7 DO BANCO 'CEF'
SELECT sum(ct.valor) as valor_total_transacoes, count(ct.valor) as quantidade_transacoes_realizadas, c.nome as nome_cliente, a.nome as nome_agencia
FROM public.cliente_transacoes ct
	INNER JOIN public.cliente c
	ON ct.cliente_numero = c.numero
	INNER JOIN public.agencia a
	ON ct.cliente_numero = a.numero
WHERE c.numero = 7 AND a.numero_banco = 104
GROUP BY c.nome, a.nome

SELECT c.*
FROM public.cliente c WHERE c.numero = 7
SELECT a.*
FROM public.agencia a WHERE a.numero_banco = 104

UPDATE public.cliente
SET nome = 'Pedro Alves Cabral', email = 'pedrogritador@email.com.br'
WHERE numero = 7




