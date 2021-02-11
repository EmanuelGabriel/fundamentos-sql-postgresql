SELECT * FROM public.cliente WHERE id_cliente = 1
SELECT count(*) FROM public.pedido
SELECT * FROM public.produto WHERE id_produto = 3 -- nome/produto: Pasta Dental preço: 3.60 - quantidade/estoque: 13

-- ADICIONANDO A COLUNA DE 'DATA_PEDIDO' NA TABELA 'PEDIDO'
ALTER TABLE public.pedido
ADD COLUMN data_pedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;



-- EXIBA TODOS OS PEDIDOS DO CLIENTE 'FERNANDO CARDOSO' ORDENADO PELO O NOME DOS PRODUTOS.
SELECT p.id_pedido as codigo_pedido, c.nome as nome_cliente, prod.nome as nome_produto, prod.preco as preco_produto,
p.quantidade, sum(prod.preco * p.quantidade) as subtotal_pedido, p.data_pedido
FROM public.cliente c
LEFT JOIN public.pedido p
	ON c.id_cliente = p.id_cliente
LEFT JOIN public.produto prod
	ON p.id_produto = prod.id_produto
WHERE c.nome LIKE 'Fernando Cardoso'
--WHERE p.id_pedido = 14
GROUP BY p.id_pedido, c.nome, prod.nome, prod.preco, p.quantidade
ORDER BY p.id_pedido, prod.nome




-- SELECIONAR TODOS OS PEDIDOS FEITOS ENTRE AS DATAS '2021-02-10 20:31:36.334991' A '2021-02-10 20:51:48.418606' DO MÊS 02.
SELECT p.id_pedido as codigo_pedido, c.nome as nome_cliente, prod.nome as nome_produto, prod.preco as preco_produto,
p.quantidade, p.data_pedido
FROM public.cliente c
INNER JOIN public.pedido p
	ON c.id_cliente = p.id_cliente
INNER JOIN public.produto prod
	ON p.id_produto = prod.id_produto
WHERE p.data_pedido BETWEEN '2021-02-10 20:31:36.334991' AND '2021-02-10 20:51:48.418606'
ORDER BY p.id_pedido, prod.nome







