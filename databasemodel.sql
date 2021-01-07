-- CRIANDO A TABELA: BANCO
CREATE TABLE IF NOT EXISTS banco(
 numero INTEGER NOT NULL,
 nome VARCHAR(50) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (numero)
);

-- CRIANDO A TABELA: AGENCIA
CREATE TABLE IF NOT EXISTS agencia(
 numero_banco INTEGER NOT NULL,
 numero INTEGER NOT NULL,
 nome VARCHAR(80) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (numero_banco, numero),
 FOREIGN KEY (numero_banco) REFERENCES banco (numero)	
);

-- CRIANDO A TABELA: CLIENTE
CREATE TABLE IF NOT EXISTS cliente(
 numero BIGSERIAL,
 nome VARCHAR(120) NOT NULL,
 email VARCHAR(250) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (numero)
);

-- CRIANDO A TABELA: CONTA CORRENTE
CREATE TABLE IF NOT EXISTS conta_corrente (
 numero_banco INTEGER NOT NULL,
 agencia_numero INTEGER NOT NULL,
 numero BIGINT NOT NULL,
 digito SMALLINT NOT NULL,
 cliente_numero BIGINT NOT NULL,	
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (numero_banco, agencia_numero, numero, digito, cliente_numero),
 FOREIGN KEY (numero_banco, agencia_numero) REFERENCES agencia (numero_banco, numero),
 FOREIGN KEY (cliente_numero) REFERENCES cliente (numero)	
);


-- CRIANDO A TABELA: TIPO DE TRANSAÇÃO
CREATE TABLE IF NOT EXISTS tipo_transacao(
 id SMALLSERIAL PRIMARY KEY,
 nome VARCHAR(50) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CRIANDO A TABELA: TRANSAÇÃO DO CLIENTE
CREATE TABLE IF NOT EXISTS cliente_transacoes (
 id BIGSERIAL PRIMARY KEY,
 banco_numero INTEGER NOT NULL,
 agencia_numero INTEGER NOT NULL,
 conta_corrente_numero BIGINT NOT NULL,
 conta_corrente_digito SMALLINT NOT NULL,
 cliente_numero BIGINT NOT NULL,
 tipo_transacao_id SMALLINT NOT NULL,
 valor NUMERIC(15, 2),
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero)
 REFERENCES conta_corrente (numero_banco, agencia_numero, numero, digito, cliente_numero)	
);









