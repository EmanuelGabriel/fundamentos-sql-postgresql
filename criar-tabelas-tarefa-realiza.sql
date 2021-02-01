-- CRIANDO A TABELA: TAREFA
CREATE TABLE IF NOT EXISTS privado.tarefa(
 id_tarefa int NOT NULL,
 descricao varchar(100),
 data_inicio date,
 PRIMARY KEY(id_tarefa)
);

-- SELECIONAR TODAS AS TUPLAS DA TABELA 'TAREFA'
SELECT * FROM privado.tarefa

-- INSERÇÃO DE DADOS NA TABELA 'TAREFA'
INSERT INTO privado.tarefa(id_tarefa, descricao, data_inicio) VALUES(1, 'programação web', '10/10/2018');
INSERT INTO privado.tarefa(id_tarefa, descricao, data_inicio) VALUES (2, 'design de interfaces', '15/11/2018');
INSERT INTO privado.tarefa(id_tarefa) VALUES (3);
INSERT INTO privado.tarefa(id_tarefa, descricao) VALUES (4, 'preparação de conferência');
INSERT INTO privado.tarefa(id_tarefa, data_inicio) VALUES (5, '21/3/2020');

-- CRIANDO A TABELA 'REALIZA'
CREATE TABLE IF NOT EXISTS privado.realiza(
 id_membro int,
 id_tarefa int,
 horas_alocadas int,
 primary key (id_membro,id_tarefa),
 foreign key (id_membro) references privado.membro(id_membro) ON DELETE CASCADE,
 foreign key (id_tarefa) references privado.tarefa(id_tarefa) ON DELETE CASCADE
);

-- SELECIONAR TODAS AS TUPLAS DA TABELA 'REALIZA'
SELECT * FROM privado.realiza

-- INSERINDO DADOS NA TABELA 'REALIZA'
INSERT INTO privado.realiza(id_membro, id_tarefa, horas_alocadas)
 VALUES (1, 3, 8);
INSERT INTO privado.realiza(id_membro, id_tarefa, horas_alocadas)
 VALUES (1, 4, 8);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (2,5,20);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (2,3,15);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (3,4,10);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (4,3,10);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (4,5,10);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (5,5,20);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (5,3,15);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (6,4,10);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (6,3,10);
INSERT INTO privado.realiza (id_membro, id_tarefa, horas_alocadas)
 VALUES (6,5,10);


-- SABER O MAIOR SALÁRIO DE UM DADO MEMBRO
-- SEM 'ALIAS'
SELECT max(m.salario)
FROM privado.membro m

-- COM 'ALIAS'
SELECT max(m.salario) as maior_salario
FROM privado.membro m

-- EXIBA O MENOR SALÁRIO DE UM DADO MEMBRO
-- SEM 'ALIAS'
SELECT min(m.salario)
FROM privado.membro m

-- COM 'ALIAS'
SELECT min(m.salario) as menor_salario_membro
FROM privado.membro m

-- EXIBA O MAIOR SALÁRIO E O MENOR SALÁRIO DE UM MEMBRO
-- SEM 'ALIAS'
SELECT max(m.salario), min(m.salario)
FROM privado.membro m

-- COM 'ALIAS'
SELECT max(m.salario) as maior_salario_membro, min(m.salario) as menor_salario_membro
FROM privado.membro m

-- EXIBA A MÉDIA SALARIAL DOS MEMBROS
-- SEM 'ALIAS'
SELECT avg(m.salario)
FROM privado.membro m
-- EXIBA A MÉDIA SALARIAL DOS MEMBROS
-- COM 'ALIAS'
SELECT avg(m.salario) as media_salario_membro
FROM privado.membro m

-- EXIBA A MÉDIA SALARIAL DOS MEMBROS E ARRENDONDAR OS VALORES PARA 2 CASAS DECIMAIS
-- SEM 'ALIAS'
SELECT round(avg(m.salario), 2)
FROM privado.membro m

-- EXIBA A MÉDIA SALARIAL DOS MEMBROS E ARRENDONDAR OS VALORES PARA 2 CASAS DECIMAIS
-- COM 'ALIAS' --> FUNCTION 'ROUND()'
SELECT round(avg(m.salario), 2) as media_salarial_membros
FROM privado.membro m

-- EXIBA A SOMA DOS SALÁRIOS DOS MEMBROS
-- SEM 'ALIAS'
SELECT sum(salario)
FROM privado.membro

-- EXIBA A SOMA DOS SALÁRIOS DOS MEMBROS
-- COM 'ALIAS'
SELECT sum(m.salario) as soma_salarios_membros
FROM privado.membro m

-- EXIBA O RESULTADO DO MAIOR SALÁRIO, MENOR SALÁRIO, A MÉDIA DOS SALÁRIOS E A SOMA DE TODOS OS SALÁRIOS DE CADA MEMBRO
-- SEM 'ALIAS'
SELECT max(salario), min(salario), avg(salario), sum(salario)
FROM privado.membro

-- EXIBA O RESULTADO DO MAIOR SALÁRIO, MENOR SALÁRIO, A MÉDIA DOS SALÁRIOS E A SOMA DE TODOS OS SALÁRIOS DE CADA MEMBRO
-- COM 'ALIAS'
SELECT max(m.salario) as maior_salario, min(m.salario) as menor_salario, avg(m.salario) as media_salarial, sum(m.salario) as soma_total_salarios
FROM privado.membro m

-- EXIBA O RESULTADO DO MAIOR SALÁRIO, MENOR SALÁRIO, A MÉDIA DOS SALÁRIOS, A SOMA DE TODOS OS SALÁRIOS DE CADA MEMBRO
-- E A QUANTIDADE DE MEMBROS
-- SEM 'ALIAS'
SELECT max(salario), min(salario), avg(salario), sum(salario),
count(*)
FROM privado.membro

-- EXIBA O RESULTADO DO MAIOR SALÁRIO, MENOR SALÁRIO, A MÉDIA DOS SALÁRIOS, A SOMA DE TODOS OS SALÁRIOS DE CADA MEMBRO
-- E A QUANTIDADE DE MEMBROS
-- COM 'ALIAS'
SELECT max(m.salario) as maior_salario, min(m.salario) as menor_salario, avg(m.salario) as media_salarial, sum(m.salario) as soma_total_salarios,
count(m.*) as quantidade_total_membros
FROM privado.membro m










