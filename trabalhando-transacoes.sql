SELECT numero, nome, ativo, data_criacao
FROM public.banco WHERE numero = 12 ORDER BY numero

-- INICIANDO A TRANSAÇÃO
BEGIN;
UPDATE public.banco SET nome = 'Banco Stanford de Investimento S.A', ativo = false WHERE numero = 12
ROLLBACK;

-- INICIANDO A TRANSAÇÃO E REALIZANDO O COMMIT
BEGIN;
UPDATE public.banco SET nome = 'Banco Stanford de Investimento S.A', ativo = false WHERE numero = 12
COMMIT;

