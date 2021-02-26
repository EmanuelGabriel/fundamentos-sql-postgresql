USE curso_sql;

CREATE TABLE IF NOT EXISTS funcionario(
id_funcionario int unsigned not null auto_increment,
nome varchar(50) not null,
salario double not null default 0, -- se nenhum valor for informado, ele colocará o padrão 0 para o salário
departamento varchar(45) not null,
primary key(id_funcionario)
);

-- CRIANDO A TABELA 'VEICULO'
CREATE TABLE IF NOT EXISTS veiculo(
id_veiculo int unsigned not null auto_increment,
descricao varchar(45) not null default '',
placa varchar(10) not null default '',
-- chave estrangeira (foreign key)
id_funcionario int unsigned default null,
primary key(id_veiculo),
-- criar a chave estrangeira
constraint fk_id_funcionario foreign key (id_funcionario) references funcionario (id_funcionario)
);

desc funcionario;
ALTER TABLE funcionario
CHANGE COLUMN nome_func nome varchar(50) not null;

-- CRIANDO A TABELA 'SALARIO'
CREATE TABLE IF NOT EXISTS salario(
id_salario varchar(30) not null,
inicio double not null,
fim double not null,
primary key(id_salario)
);

desc salario;
-- deletando uma tabela
drop table salario;


-- CRIANDO ÍNDICE -INDEX
CREATE INDEX departamentos ON funcionario (departamento);
CREATE INDEX idx_funcionario ON funcionario (nome(10));

-- atualizar o índice - index
alter table funcionario
rename index departamentos TO idx_departamento;

SELECT * FROM funcionario;


