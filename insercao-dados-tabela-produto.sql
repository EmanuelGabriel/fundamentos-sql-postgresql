SELECT * FROM geral.produto

INSERT INTO geral.produto (id, nome, categoria, segmento, marca)
VALUES ('SKU-0000006', 'Lavadora 11 Kg', 'Eletrodomésticos', 'Doméstico', 'Brastemp');

SKU-0000004,Lavadora 11 Kg,Eletrodomésticos,Doméstico,Brastemp

-- buscando as propriedades/types da tabela: PRODUTO
SELECT t.table_schema, t.column_name, t.data_type, t.character_maximum_length
FROM information_schema."columns" t
WHERE t.table_name = 'produto'
ORDER BY t.ordinal_position

ALTER TABLE geral.produto
ALTER COLUMN id TYPE varchar(15);

ALTER TABLE geral.produto
RENAME COLUMN id_produto TO id;

ALTER TABLE geral.produto
DROP COLUMN data_criacao;

