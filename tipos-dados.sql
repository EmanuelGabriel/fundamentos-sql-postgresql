-- CRIAR SCHEMA NO POSTGRESQL
CREATE SCHEMA geral;

-- TIPO DE DADOS NO POSTGRESQL:
/*
  ## TIPOS DE DADOS NUMÉRICOS: (INTEIROS)
  1) SMALLINT - 2 bytes
  2) INTEGER - 4 bytes - mais utilizado
  3) BIGINT - 8 bytes  
*/

/*
  ## TIPOS DE DADOS FLUTUANTES NO POSTGRESQL
  1) DECIMAL - 4 bytes = 2 bytes + 3 a 8 bytes - 131072 digítos antes da vírgula, 16383 dígitos após a vírgula
  2) NUMERIC - 4 bytes = 2 bytes + 3 a 8 bytes
  
  OBS.: PODE PASSAR UM 'NaN'
  'NaN' = 'NaN'
  'NaN' > numero
  
  PRECISÃO vs ESCALA
  DECIMAL(3, 1)
  --> 12.1 - ok
  --> 12.16 - ERROR
  
*/

/*
  ## TIPODE DADOS FLUTUANTES INEXATOS
  1) REAL - 4 bytes -> 6 dígitos decimais
  2) DOUBLE PRECISION - 8 bytes -> 15 dígitos decimais
  
*/


