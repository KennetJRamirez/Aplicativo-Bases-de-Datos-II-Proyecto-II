@echo off
echo Creando la base de datos...
echo CREATE DATABASE IF NOT EXISTS carretera_db; > temp.sql
echo USE carretera_db; >> temp.sql
echo Realizando respaldo de la base de datos...
mysqldump -u root carretera_db >> temp.sql
echo Respaldo completado. El archivo se ha guardado como respaldo.sql
pause
