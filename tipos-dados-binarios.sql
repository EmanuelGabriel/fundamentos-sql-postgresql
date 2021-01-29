-- TIPO DE DADOS ALFANUMÉRICOS NO POSTGRESQL

/*
  # TIPOS DE DADOS: ALFANUMÉRICOS
  
  1) CHAR -> comprimento fixo 
  2) VARCHAR -> cadeia de caracteres variável
  3) TEXT -> 
  
*/


/*
  # TIPOS DE DADOS DATA E HORA
  
  1) TIMESTAMP -> ocupa 8 bytes - 4713 A.C até 294.275 D.C - 1 MICROSEGUNDO -GUARDA: DIA/MES/ANO SEGUNDOS
  
  2) DATE -> ocupa 8 bytes com timezone <--> e 4 bytes sem timezone -- dia em dia
  
  3) TIME -> ocupa 12 bytes com timezone <--> e 8 bytes sem timezone --> 00:00:00 até 23:59:59 
  		-> guarda somente a hora e segundos
		
  4) INTERVAL -> 16 bytes - YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, YEAR TO MONTH, DAY TO HOUR, 
  		DAY TO MINUTE, DAY TO SECOND, HOUR TO MINUTE, HOUR TO SECOND, MINUTE TO SECOND -- guarda um intervalos de hora
*/


/*
  # TIPOS DE DADOS BOOLEANOS
  
  1) BOOLEAN -> 1 byte - true ou false
  ex.: 
  	   - TRUE, 't', 'true', 'y', 'yes', 'on', '1'
       - FALSE, 'f', 'false', 'n', 'no', 'off', '0'
  
*/


/*
  ## TIPOS DE DADOS BINÁRIOS
  
  1) bytea - quantidade de bytes + 1 a 4 bytes de controle
     --> dados RAW
	 
	 - Hexadecimal ---> \\x + bytes - MODELO MAIS USADO
	 - POSTGRESQL --> conversão ASCII
*/










