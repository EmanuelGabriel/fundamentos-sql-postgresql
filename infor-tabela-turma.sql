-- CRIAR A TABELA DE 'TURMA'
CREATE TABLE IF NOT EXISTS privado.turma(
 id_turma SERIAL NOT NULL,
 valor_turma NUMERIC(15,2) NOT NULL,
 desconto NUMERIC(3,2) NOT NULL,
 data_inicio TIME NOT NULL,
 data_termino TIME NOT NULL,
ativo BOOLEAN NOT NULL DEFAULT TRUE,
 data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)

-- ADICIONAR AS CONSTRAINT's NA TABELA 'TURMA'
ALTER TABLE privado.turma
	ADD CONSTRAINT fk_cursos
FOREIGN KEY (id_curso) REFERENCES privado.curso (id_curso);

ALTER TABLE privado.situacao
ADD PRIMARY KEY (id_situacao);

SELECT * FROM privado.curso



SELECT t.table_schema, c.column_name, c.data_type
FROM information_schema."tables" t
INNER JOIN information_schema."columns" c
ON t.table_schema = c.table_schema
WHERE c.table_schema = 'privado'
ORDER BY c.column_name


