@echo off

set packages=%WIN_SHELL_PKG%
echo %packages%
if  not exist  %packages%  md %packages%


rem node %~dp0\app.js help %1 %2 %3 %4 %5 %6 %7 %8 %9   
%~dp0\winpm help %1 %2 %3 %4 %5 %6 %7 %8 %9  


