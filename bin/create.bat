@echo off

set packages=%WIN_SHELL_PKG%
echo %packages%
if  not exist  %packages%  md %packages%




if "%1"=="help" goto help


if "%1"==""  goto help
if "%1"=="help"  goto help
if "%1"=="?"  goto help

goto create%1




:help
echo "cmd      1            2      3     4"
echo "create  zip|exe shortname  file  url"
echo "create exe   myapp   myapp.exe http://www.baidu.com/myapp.exe"
goto end

==========================================


rem  create  exe   create  zip 
:createexe
echo %WIN_SHELL_DATA%\%2\install_%2
mkdir %WIN_SHELL_DATA%\%2
echo  if not exist  %packages%\%3   wget --no-check-certificate -O %packages%\%3 %4 > %WIN_SHELL_DATA%\%2\install_%2.bat
echo   %packages%\%3 >> %WIN_SHELL_DATA%\%2\install_%2.bat
goto end

:createzip
echo %WIN_SHELL_DATA%\%2\install_%2
mkdir %WIN_SHELL_DATA%\%2
echo  if not exist  %packages%\%3   wget --no-check-certificate -O %packages%\%3 %4 > %WIN_SHELL_DATA%\%2\install_%2.bat
echo unzip %packages%\%3  -d  %WIN_SHELL_BINS%\%2  >> %WIN_SHELL_DATA%\%2\install_%2.bat
goto end



:end
