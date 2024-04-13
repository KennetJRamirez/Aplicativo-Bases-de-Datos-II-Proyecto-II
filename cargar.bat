@echo off

rem Definir la ruta del archivo SQL a cargar
set SQL_FILE="C:\xampp\htdocs\Bases de Datos II\backups\db-backup-2024-04-13.sql"

rem Definir los comandos SQL para desactivar las restricciones de clave externa
set DISABLE_FOREIGN_KEY_CHECKS="SET foreign_key_checks = 0;"

rem Definir los comandos SQL para activar nuevamente las restricciones de clave externa
set ENABLE_FOREIGN_KEY_CHECKS="SET foreign_key_checks = 1;"

rem Ejecutar los comandos SQL para desactivar las restricciones de clave externa
mysql -u root -p carretera2_db -e %DISABLE_FOREIGN_KEY_CHECKS%

rem Cargar el archivo SQL
mysql -u root -p carretera2_db < %SQL_FILE%

rem Ejecutar los comandos SQL para activar nuevamente las restricciones de clave externa
mysql -u root -p carretera2_db -e %ENABLE_FOREIGN_KEY_CHECKS%

rem Mostrar un mensaje de finalización
echo Proceso completado.
pause
