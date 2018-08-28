(echo @echo off 
echo start sqlcmd -S CHRISTIE\SQLEXPRESS -i
dir /b /s *.sql  /-p /o:gen
echo pause
echo exit) >E:\BatTest\EjecutarScript.bat
