/*
  ## CRIAÇÃO E SELEÇÃO DA VIEW 'VW_BANCOS_DESATIVADOS'
*/
SELECT * FROM vw_bancos_ativos

SELECT sum(ct.valor) as total_transacoes
FROM public.cliente_transacoes ct

SELECT min(valor)
FROM public.cliente_transacoes

-- CRIAR UMA VIEW CHAMADA 'VW_TOTAL_VALOR_TRANSACAO' COM A SOMA DO TOTAL DE TRANSAÇÕES REALIZADAS
CREATE OR REPLACE VIEW vw_total_valor_transacao (total_transacao_cliente) AS (
  	SELECT sum(valor) as total_transacoes
		FROM public.cliente_transacoes
);

-- CRIAR UMA VIEW CHAMADA 'VW_MENOR_VALOR_TRANSACAO' COM O MENOR VALOR DE TRANSAÇÃO REALIZADA PELOS CLIENTES
CREATE OR REPLACE VIEW vw_menor_valor_transacao (menor_transacao_cliente) AS (
  	SELECT min(valor) as menor_valor_transacao
		FROM public.cliente_transacoes
);

-- DELETAR UMA VIEW
DROP VIEW vw_total_valor_transacao

-- SELECT NA VIEW 'VW_TOTAL_TRANSACAO_CLIENTE'
SELECT t.total_transacao_cliente
FROM vw_total_valor_transacao t

-- SELECT NA VIEW 'VW_MENOR_VALOR_TRANSACAO'
SELECT mvt.menor_transacao_cliente
FROM vw_menor_valor_transacao mvt


-- SELECIONAR OS DADOS DA VIEW 'VW_BANCOS_ATIVOS' ORDENADOS PELO NÚMERO
SELECT ba.nome, ba.numero, ba.ativo
FROM vw_bancos_ativos ba
ORDER BY ba.numero
