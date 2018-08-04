if not exist %WIN_SHELL_PKG%\mysql-8.0.12-winx64.zip  wget --no-check-certificate -O  %WIN_SHELL_PKG%\mysql-8.0.12-winx64-debug-test.zip  https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.12-winx64.zip
unzip %packages%\mysql-8.0.12-winx64.zip  -d  %WIN_SHELL_BINS%
rename  %WIN_SHELL_BINS%\mysql-8.0.12-winx64  mysql
