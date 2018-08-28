
@ECHO "BAT para ejecutar script programados"
setlocal enableDelayedExpansion
@echo off
ECHO. > "HistorialDeEjecucion.txt"
 
for %%G in (*.sql) do (
 
    ECHO -------------------------------------------------------- >> "HistorialDeEjecucion.txt"
    ECHO !DATE! !TIME! Ejecutando el script "%%G"... >> "HistorialDeEjecucion.txt"
    ECHO -------------------------------------------------------- >> "HistorialDeEjecucion.txt"
    ECHO. >> "HistorialDeEjecucion.txt"
    
    sqlcmd -S CHRISTIE\SQLEXPRESS -i"%%G" >> "HistorialDeEjecucion.txt"
    
    ECHO. >> "HistorialDeEjecucion.txt"
    ECHO Final de la ejecucion: !DATE! !TIME! >> "HistorialDeEjecucion.txt"
    ECHO -------------------------------------------------------- >> "HistorialDeEjecucion.txt"
    ECHO. >> "HistorialDeEjecucion.txt"
    ECHO. >> "HistorialDeEjecucion.txt"
    
)
 