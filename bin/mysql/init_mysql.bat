copy %WIN_SHELL_BIN%\mysql\my.ini  %WIN_SHELL_BINS%\mysql\my.ini

echo %WIN_SHELL_BINS%\mysql
cd %WIN_SHELL_BINS%\mysql
rem mkdir data
cd bin
mysqld --initialize-insecure --user=mysql
mysqld -install mysql
net start  mysql


























































