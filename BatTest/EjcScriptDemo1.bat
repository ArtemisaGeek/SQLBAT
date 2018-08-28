@echo off 
start sqlcmd -S CHRISTIE\SQLEXPRESS -i
E:\BatTest\sqlInsercion.sql
E:\BatTest\sqlUpdate.sql
pause
exit
