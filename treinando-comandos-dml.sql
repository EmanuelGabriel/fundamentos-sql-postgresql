-- dados da tabela BANCO
SELECT numero, nome, ativo FROM banco;
-- dados da tabela AGÊNCIA
SELECT numero_banco, numero, nome FROM agencia;
-- dados da tabela CLIENTE
SELECT numero, nome, email FROM cliente;
-- dados da tabela TIPO DE TRANSAÇÃO
SELECT id, nome FROM tipo_transacao;
-- dados da tabela CONTA CORRENTE
SELECT numero_banco, agencia_numero, numero, cliente_numero FROM conta_corrente;
-- dados da tabela TRANSAÇÃO DE CLIENTES
SELECT banco_numero, agencia_numero, cliente_numero FROM cliente_transacoes;

SELECT numero, nome, email, ativo
FROM cliente
WHERE nome ILIKE 'En%'
ORDER BY nome;

SELECT count(numero) as quantidade_cliente
FROM cliente;

UPDATE cliente 
SET email = 'eniavalentina2020@email.com.br'
WHERE numero = 103;

CREATE TABLE IF NOT EXISTS teste(
 cpf VARCHAR(11) NOT NULL,
 nome VARCHAR(40) NOT NULL,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(cpf)	
);

SELECT cpf, nome FROM teste;

INSERT INTO teste (cpf, nome, data_criacao)
VALUES ('08987423488', 'Fernando Souza Amorin', '2020-12-28 10:35') ON CONFLICT (cpf) DO NOTHING;

UPDATE teste SET nome = 'Pedro Alves Cabral' WHERE cpf = '08987423488';

