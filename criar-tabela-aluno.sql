CREATE SCHEMA privado

-- CRIAR A TABELA 'ALUNO' NO SCHEMA 'PRIVADO'
CREATE TABLE privado.aluno(
  id SERIAL NOT NULL,
  nome VARCHAR(90) NOT NULL,
  idade INTEGER NOT NULL,
  estado CHAR(2) NOT NULL,
  PRIMARY KEY(id)
);

SELECT * FROM privado.aluno LIMIT 6;

SELECT table_schema, table_name, column_name FROM information_schema."columns"
WHERE table_name = 'aluno';

DELETE FROM privado.aluno;

-- INSERIR DADOS NA TABELA - ALUNO
INSERT INTO privado.aluno (nome, idade, estado)
VALUES ('Gustavo dos Santos Barbosa', 33, 'RJ'),
('Fernanda Moura Cardoso Carneiro', 27, 'SP'),
('Luiz Pinto de Oliveira', 20, 'MA'),
('Leandro Ferreira Monteiro Lobato', 61, 'CE');


