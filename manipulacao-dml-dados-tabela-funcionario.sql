USE curso_sql;

desc funcionario;

-- COMANDO DE INSERÇÃO - INSERT
INSERT INTO funcionario (nome, salario, departamento) VALUES('Isabel Fonseca Monteiro', 3110.99, 'Jurídico');
-- COMANDO INSERT
 SELECT * FROM funcionario WHERE salario < 2000;
 SELECT * FROM funcionario WHERE id_funcionario = 3;
 SELECT * FROM funcionario;
 
 -- COMANDO 
UPDATE funcionario SET salario = salario * 1.1; -- ERROR: aumento de 10%

UPDATE funcionario SET salario = salario * 1.1 WHERE id_funcionario = 1; -- ERROR: aumento de 10%

-- ATUALIZAR TODOS - INSTRUÇÃO: SQL_SAFE_UPDATES
SET sql_safe_updates = 0;
/* SET SQL_SAFE_UPDATES = 1 -- HABILITAR NOVAMENTE */
UPDATE funcionario SET salario = salario * 1.1;

SET sql_safe_updates = 0;
UPDATE funcionario SET salario = round(salario * 1.1, 2);


-- COMANDO 'DELETE'
DELETE FROM funcionario WHERE id_funcionario = 5;

desc veiculo;
SELECT * FROM veiculo;
INSERT INTO veiculo (descricao, placa, id_funcionario) VALUES ('FIAT', 'AALJ-8929', 1);
INSERT INTO veiculo (descricao, placa, id_funcionario) VALUES ('COROLLA XEI', 'BAGH-8745', 1);

UPDATE veiculo SET id_funcionario = 7 WHERE id_veiculo = 2;

-- TABELA 'SALARIOS'
desc salario;
INSERT INTO salario (id_salario, faixa, inicio, fim) VALUES (1, 'Analista Jr', 2800, 3500);
INSERT INTO salario (id_salario, faixa, inicio, fim) VALUES (2, 'Analista Pleno', 5100, 7650);
SELECT * FROM salario;
-- ADICIONANDO A COLUNA 'FAIXA' NA TABELA 'SALARIO'
ALTER TABLE salario ADD COLUMN faixa VARCHAR(12) NOT NULL AFTER id_salario;
ALTER TABLE salario CHANGE faixa faixa VARCHAR(20) NOT NULL AFTER id_salario;

-- SELECIONE A FAIXA SALARIAL PARA ANALISTA PLENO
SELECT s.faixa as 'Faixa Salarial', 
	   s.inicio as salario_inicial, 
       s.fim as salario_final
FROM salario s 
WHERE s.faixa = 'Analista Pleno';

-- USANDO A INSTRUÇÃO 'UNION' -- elimina registros duplicados
desc funcionario;
SELECT * FROM funcionario WHERE nome like 'Jośe%'
UNION 
SELECT * FROM funcionario WHERE id_funcionario = 7;

-- USANDO A INSTRUÇÃO 'UNION ALL' - mostra registros duplicados
SELECT * FROM funcionario WHERE nome like 'Jośe%'
UNION ALL
SELECT * FROM funcionario WHERE nome = 'José Ribamar Santos';




