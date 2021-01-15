-- TRABALHANDO COM RELACIONAMENTOS ENTRE TABELAS

-- ESTUDO: JOINS (união de tabelas com o uso da cláusula JOIN):
-- JOIN (INNER)
-- LEFT JOIN
-- RIGHT JOIN
-- FULL JOIN
-- CROSS JOIN

-- JOIN: ex.: SELECT tabela_1.campos, tabela_2.campos
--			  FROM tabela_1
--			  LEFT JOIN tabela_2
--			  ON tabela_2.campo = tabela_1.campo


-- RIGHT JOIN(OUTER): ex.: 
--            SELECT tabela_1.campos, tabela_2.campos
--			  FROM tabela_1
--			  RIGHT JOIN tabela_2
--			  ON tabela_2.campo = tabela_1.campo


-- FULL JOIN(OUTER): ex.: TRAZ TODAS AS RELAÇÕES POSSÍVEIS 
--            SELECT tabela_1.campos, tabela_2.campos
--			    FROM tabela_1
--			  FULL JOIN tabela_2
--			  	ON tabela_2.campo = tabela_1.campo


-- CROSS JOIN(OUTER): ex.: TODOS OS DADOS DE UMA TABELA SERÃO CRUZADOS COM TODOS OS DADOS DA TABELA REFERENCIADA (Matriz dos dados)
--            SELECT tabela_1.campos, tabela_2.campos
--			    FROM tabela_1
--			  CROSS JOIN tabela_2

-- TIPO: JOIN
SELECT numero, nome FROM banco
SELECT numero_banco, numero, nome FROM agencia
SELECT numero_banco, agencia_numero, numero, digito, cliente_numero FROM conta_corrente
SELECT id, nome FROM tipo_transacao
SELECT numero_banco, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, valor FROM cliente_transacoes

SELECT count(numero) FROM banco
SELECT count(1) FROM agencia

-- EXEMPLO COM JOIN
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
JOIN agencia ON agencia.numero_banco = banco.numero;

-- Quantidade de bancos com agências ou qual a quantidade de bancos que possui agências
SELECT count(banco.numero)
FROM banco
JOIN agencia ON agencia.numero_banco = banco.numero;

-- Uso com a cláusula DISTINCT
SELECT count(distinct banco.numero) as quantidade_bancos_agencias
FROM banco
JOIN agencia ON agencia.numero_banco = banco.numero;

-- Uso com a cláusula GROUP BY (agrupando)
SELECT banco.numero as quantidade_bancos_agencias
FROM banco
JOIN agencia ON agencia.numero_banco = banco.numero
GROUP BY banco.numero;

--- TIPO: LEFT JOIN
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.numero_banco = banco.numero

--- TIPO: RIGHT JOIN
SELECT agencia.numero, agencia.nome, banco.numero, banco.nome
FROM agencia
RIGHT JOIN banco ON banco.numero = agencia.numero_banco
ORDER BY agencia.numero

SELECT agencia.numero, agencia.nome, banco.numero, banco.nome
FROM agencia
LEFT JOIN banco ON banco.numero = agencia.numero_banco
ORDER BY agencia.numero

-- TIPO: FULL JOIN - TROUXE TODOS OS BANCOS E TODAS AS AGÊNCIAS
SELECT banco.nome, banco.numero, agencia.nome, agencia.numero, agencia.ativo
FROM banco
FULL JOIN agencia ON agencia.numero_banco = banco.numero


CREATE TABLE IF NOT EXISTS teste_b(
  id serial primary key,
  valor varchar(20)
);
select * from teste
select * from teste_b
insert into teste_b (valor) VALUES ('teste_a 1');
insert into teste_b (valor) VALUES ('teste_a 2');
insert into teste_b (valor) VALUES ('teste_a 3');
insert into teste_b (valor) VALUES ('teste_a 4');

UPDATE teste_b 
SET valor = 'teste_b'

 -- OBS.: USAR EM CASOS EXTREMOS
SELECT t.valor, tb.valor
FROM teste t
CROSS JOIN teste_b tb

-- DROP NAS TABELAS
DROP TABLE IF EXISTS teste
DROP TABLE IF EXISTS teste_b

select * from conta_corrente
-- EXEMPLO DE JOIN COMPLETO - RELACIONAMENTOS DE VÁRIAS TABELAS - SEM ALIAS
SELECT banco.nome,
	   agencia.nome,
	   conta_corrente.numero,
	   conta_corrente.digito,
	   cliente.nome
FROM banco
JOIN agencia 
	ON agencia.numero_banco = banco.numero
JOIN conta_corrente 
	ON conta_corrente.numero_banco = banco.numero
	AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
	ON cliente.numero = conta_corrente.cliente_numero
	   

-- EXEMPLO DE JOIN COMPLETO - RELACIONAMENTOS DE VÁRIAS TABELAS - COM 'ALIAS'
SELECT banco.nome as nome_banco,
	   agencia.nome as nome_agencia,
	   conta_corrente.numero as numero_conta_corrente,
	   conta_corrente.digito as digito_conta_corrente,
	   cliente.nome as nome_dos_clientes
FROM banco
JOIN agencia 
	ON agencia.numero_banco = banco.numero
JOIN conta_corrente 
	ON conta_corrente.numero_banco = banco.numero
	AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
	ON cliente.numero = conta_corrente.cliente_numero	   
	   
	   
-- EXEMPLO DE JOIN COMPLETO - COM A CONDIÇÃO 'WHERE' E ORDENADO POR NOME DO CLIENTE - COM 'ALIAS'
SELECT banco.nome,
	   agencia.nome,
	   conta_corrente.numero,
	   conta_corrente.digito,
	   cliente.nome
FROM banco
JOIN agencia 
	ON agencia.numero_banco = banco.numero
JOIN conta_corrente 
	ON conta_corrente.numero_banco = banco.numero
	AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
	ON cliente.numero = conta_corrente.cliente_numero 	   
WHERE banco.nome = 'Banco do Brasil S.A.'
ORDER BY banco.nome



-- DESAFIO/TESTE
--- TRAZER AS 'TRANSAÇÕES' DE CADA 'CLIENTE' E OS 'TIPOS DE TRANSAÇÕES' DE CADA CLIENTE:







