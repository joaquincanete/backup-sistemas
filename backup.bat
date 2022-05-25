@echo off
setlocal
set timehour=%time:~0,2%
xcopy /E /C /Q /Y C:\xampp\htdocs\ C:\backup\
mysqldump.exe -u backup -pCLAVE BASEDEDATOS > C:\backup\backup-db-%date:~-4,4%%date:~-10,2%%date:~-7,2%-%timehour: =0%%time:~3,2%.sql
7z a "%DATE%_%TIME:~0,2%.%TIME:~3,2%_Backup.7z" c:\backup -mx0