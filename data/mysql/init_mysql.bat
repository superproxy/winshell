copy %WIN_SHELL_BIN%\mysql\my.ini  %WIN_SHELL_BINS%\mysql\my.ini

echo %WIN_SHELL_BINS%\mysql
cd %WIN_SHELL_BINS%\mysql
rem mkdir data
cd bin

rem 使用-initialize生成随机密码，使用-initialize-insecure生成空密码。默认帐号root,后面的-user=mysql不更改
mysqld --initialize-insecure --user=mysql
mysqld -install mysql
net start  mysql

echo set password = password('root')
mysql -u root


























































