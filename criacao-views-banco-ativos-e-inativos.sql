SELECT *
FROM vw_banco

CREATE OR REPLACE VIEW vw_bancos_desativados AS (
	SELECT numero, nome, ativo
	FROM banco
	WHERE ativo IS FALSE
	 
)WITH LOCAL CHECK OPTION;


SELECT * FROM vw_bancos_desativados

