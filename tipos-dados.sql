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

/*
  ## TIPO DE DADOS - SERIAIS -> auto incremento 
  -> SÃO NÚMEROS INTEIROS - GERAM O PRÓPRIO VALOR AUTOMATICAMENTE
  
  1) SMALLSERIAL -> 1 32767 -> 2 bytes armazena
  2) SERIAL -> 1 a 2.14 X 10^9 -> 4 bytes armazena
  3) BIGSERIAL -> 1 a 9.22 X 10^18 -> 8 bytes armazena
  
*/


