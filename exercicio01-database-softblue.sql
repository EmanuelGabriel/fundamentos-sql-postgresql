-- Exercício 01

USE SOFTBLUE;
--
-- Inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string, de tamanho 10 caracteres
--
desc ALUNO;

-- ALTERAR
ALTER TABLE ALUNO
ADD COLUMN DATA_NASCIMENTO varchar(10) not null AFTER EMAIL;

--
-- Altere a coluna DATA_NASCIMENTO para NASCIMENTO e seu tipo de dado para DATE
--

ALTER TABLE ALUNO change DATA_NASCIMENTO NASCIMENTO DATE not null AFTER EMAIL;

--
-- Crie um novo índice na tabela ALUNO, para o campo ALUNO
--

ALTER TABLE ALUNO ADD INDEX IDX_ALUNO (ALUNO);

--
-- Inclua o campo EMAIL na tabela INSTRUTOR, com tamanho de 100 caracteres
--

desc INSTRUTOR;
ALTER TABLE INSTRUTOR ADD COLUMN EMAIL varchar(100) not null AFTER TELEFONE;

--
-- Crie um novo índice na tabela CURSO, para o campo INSTRUTOR
--
desc CURSO;
ALTER TABLE CURSO ADD INDEX IDX_CURSO (INSTRUTOR);

--
-- Remova o campo EMAIL da tabela INSTRUTOR
--
desc INSTRUTOR;
ALTER TABLE INSTRUTOR DROP EMAIL;





select * from sys.`x$memory_by_user_by_current_bytes`;
select * from sys.`x$statement_analysis`;

select query, 
	db, 
    full_scan,
    exec_count,
    total_latency, 
    max_latency, 
    avg_latency, 
    lock_latency,
    rows_sent,
    rows_sent_avg,
    rows_examined,
    tmp_tables,
    tmp_disk_tables,
    rows_sorted
from sys.`x$statement_analysis`;

select * from sys.`x$statements_with_runtimes_in_95th_percentile`;


select * from sys.`statements_with_full_table_scans`
WHERE db = 'SOFTBLUE';