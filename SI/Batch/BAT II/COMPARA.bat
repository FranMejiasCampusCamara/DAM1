@ECHO OFF
SET CONTADOR=0
FOR %%I IN (%*) DO (
	SET /A CONTADOR += 1
)
IF %CONTADOR% NEQ 2 (
	ECHO PARAMETROS INCORRECTOS
	EXIT /B
)
IF %1 EQU %2 (
	ECHO PARAMETROS IGUALES
) ELSE IF %1 GTR %2 (
	ECHO PARAMETRO 1 MAYOR QUE PARAMETRO 2
) ELSE (
	ECHO PARAMETRO 1 MENOR QUE PARAMETRO 2
)