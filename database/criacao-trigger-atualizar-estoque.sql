/*
  # CRIAR UMA TRIGGER:
  Ao registrar uma nova venda, queremos atualizar a quantidade do produto no estoque.
*/

SELECT table_schema as schema, table_name as nome_tabela, column_name as nome_coluna, data_type as tipo_dados 
FROM information_schema."columns"
WHERE table_schema LIKE 'privado' AND table_name LIKE 'itensvenda'

ALTER TABLE privado.itensvenda
ALTER COLUMN cod_produto TYPE INT USING cod_produto::integer;

-- CRIANDO A TRIGGER 't_atualiza_estoque'
-- SERÁ DISPARADA ANTES DA INSERÇÃO NA TABELA 'ITENSVENDA'

CREATE TRIGGER trg_atualiza_estoque
BEFORE INSERT ON privado.itensvenda
FOR EACH ROW
EXECUTE PROCEDURE atualizar_estoque();


-- CRIAR A PROC (PROCEDURE) PARA A QUANTIDADE DE ESTOQUE 'atualizar_estoque'
CREATE OR REPLACE FUNCTION atualizar_estoque()
RETURNS TRIGGER -- retorna uma TRIGGER
AS
$$

-- declarando variavel
DECLARE
   	 quantidade integer; -- quantidade disponível do produto em estoque

BEGIN
     -- realiza a seleção da quantidade disponível em estoque
    SELECT quantidade_disponivel 
	FROM privado.produto
	WHERE cod_produto = NEW.cod_produto INTO quantidade;
	
	-- assim, se a quantidade for menor que o novo valor da quantidade vendida
	if quantidade < NEW.quantidade_vendida THEN -- então faça
		raise exception 'Quantidade indisponível em estoque.'; -- lança uma exceção
    else
	    -- caso contrário, atualiza a quantidade de estoque dos produtos com base em seu código
		UPDATE privado.produto
		SET quantidade_disponivel = quantidade_disponivel - NEW.quantidade_vendida
		WHERE cod_produto = NEW.cod_produto;
    end if;
	return NEW;
END
$$ LANGUAGE plpgsql;



-- INSERIR DADOS NA TABELA 'ITENSVENDA' PARA REALIZAR A VENDA
INSERT INTO privado.itensvenda (cod_itensvenda, cod_venda, cod_produto, quantidade_vendida)
VALUES (3, 3, 2, 4);

-- EXIBIR OS DADOS DAS TABELAS
SELECT * FROM privado.itensvenda;
SELECT * FROM privado.produto ORDER BY cod_produto; -- arroz: cod 2 ---> estoque: 10

-- EXCLUINDO/DELETANDO A TRIGGER
DROP TRIGGER IF EXISTS t_atualiza_estoque ON privado.itensvenda
