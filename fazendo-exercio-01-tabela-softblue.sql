USE SOFTBLUE;
show tables;

/* EXERCÍCIO 01 - CRIE COMANDOS SQL PARA INSERIR OS DADOS APRESENTADOS A SEGUIR:
  TABELA: TIPO
  
 */
desc TIPO;
SELECT * FROM TIPO;
-- COMANDO DE INSERÇÃO - INSERT
INSERT INTO TIPO (TIPO) VALUES ('Banco de Dados'),
('Programação'),
('Modelagem de dados');

-- TABELA: INSTRUTOR
desc INSTRUTOR;
SELECT * FROM INSTRUTOR;
-- INSERIR DADOS COM O COMANDO -INSERT
INSERT INTO INSTRUTOR (INSTRUTOR, TELEFONE) VALUES ('André Milani', '2378478'),
('Carlos Tosindo', '89832638');

-- TABELA - CURSO
desc CURSO;
SELECT * FROM CURSO;
-- INSERIR DADOS COM O COMANDO 'INSERT'
INSERT INTO CURSO (CURSO, TIPO, INSTRUTOR, VALOR) 
VALUES ('Java Fundamentos', 2, 2, 270),
('Java Avançado', 2, 2, 330),
('SQL Completo', 1, 1, 170),
('Php Básico', 2, 1, 270);


-- TABELA - ALUNO
desc ALUNO;
SELECT * FROM ALUNO;
-- INSERIR DADOS COM O COMANDO 'INSERT'
INSERT INTO ALUNO (ALUNO, ENDERECO, EMAIL, NASCIMENTO)
VALUES ('José', 'Rua XV de Novembro 72', 'jose@softblue.com.br', '1999-01-01'),
('Wagner', 'Av. Paulista', 'wagner@softblue.com.br', '2001-12-20'),
('Emílio', 'Rua Lajes 103, ap: 701', 'emilio@softblue.com.br', '1988-04-05'),
('Cris', 'Rua Tauney 22', 'cris@softblue.com.br', '1995-01-10'),
('Regina', 'Rua Salles 305', 'regina@softblue.com.br', '2004-06-09'),
('Fernando', 'Av. Central 30', 'fernando@softblue.com.br', '1984-12-12');






