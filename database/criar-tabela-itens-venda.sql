/*
  ## CRIAÇÃO DA TABELA 'ITENSVEDA'
*/
CREATE TABLE privado.itensvenda(
 cod_itensvenda INT NOT NULL PRIMARY KEY,	
 cod_venda INT,
 cod_produto VARCHAR(3),	
 quantidade_vendida INT,
 FOREIGN KEY (cod_venda) REFERENCES privado.produto(cod_produto) ON DELETE CASCADE	
);
