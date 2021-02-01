-- CRIANDO A TABELA: MEMBRO
CREATE TABLE IF NOT EXISTS privado.membro(
 id_membro INTEGER NOT NULL,
 nome VARCHAR(50) NOT NULL,
 papel VARCHAR(50) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(id_membro)
);

-- ADICIONAR NOVAS COLUNAS NA TABELA: MEMBRO -> SEXO, DATA NASCIMENTO E SALÁRIO
ALTER TABLE privado.membro
ADD COLUMN salario NUMERIC(10,2); 

-- SELECIONAR AS COLUNAS DA TABELA 'MEMBRO'
SELECT * FROM privado.membro

-- INSERÇÃO DE DADOS NA TABELA 'MEMBRO'
INSERT INTO privado.membro (id_membro,nome, papel, sexo, data_nascimento, salario)
VALUES (2, 'Caio Nunes', 'Programador Júnior Python', 'M', '1999-01-11', 3200),
(3, 'Jéssica Person', 'Gerente de RH', 'F', '1988-09-02', 12100),
(4, 'Ana Giovanni', 'Programadora Pleno Java', 'F', '1991-07-12', 4890),
(5, 'Cassia Monteiro Lobato', 'Instrutora Analítica', 'F', '1992-04-07', 3100),
(6, 'Raimundo Nontato Cardoso', 'Supervisor', 'M', '1982-06-06', 3345.90);


-- CRIANDO A TABELA: EMPREGADO
CREATE TABLE IF NOT EXISTS privado.empregado(
 id_empregado INTEGER NOT NULL,
 nome VARCHAR(50) NOT NULL,
 papel VARCHAR(50) NOT NULL,
 ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY(id_empregado)
);

