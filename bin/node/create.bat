@echo off

set packages=%WIN_SHELL_PKG%
echo %packages%
if  not exist  %packages%  md %packages%

rem node %~dp0\app.js create  %1 %2 %3 %4 %5 %6 %7 %8 %9   
%~dp0\winpm create  %1 %2 %3 %4 %5 %6 %7 %8 %9   



echo  %1   %2  %3 >> %WIN_SHELL_DATA%\db.txt
