-- CRIAÇÃO E SELEÇÃO DAS VIEW's

-- CRIAR VIEW --> VW_BANCO_LETRA_B
CREATE OR REPLACE VIEW vw_banco_letra_b AS (
   -- selecionar todos os bancos que possuem a letra B em seu nome
   SELECT numero, nome, ativo
   FROM public.banco
   -- a codição é que seja selecionado todos os bancos que possuem em seu nome a letra B
   -- ordernados pelo número do banco e pelo nome do banco	
   WHERE nome LIKE 'B%'
   ORDER BY numero, nome
	 
) WITH LOCAL CHECK OPTION;


-- SELECT DA VIEW 'vw_banco_letra_b'
SELECT numero, nome, ativo
FROM vw_banco_letra_b

-- CONTAR QUANTOS BANCOS POSSUEM EM SEU NOME A LETRA 'B'
SELECT count(*) as quantidade_bancos_letra_b
FROM vw_banco_letra_b


