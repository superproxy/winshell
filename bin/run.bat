@echo off

set packages=%WIN_SHELL_PKG%
echo %packages%
if  not exist  %packages%  md %packages%




if "%1"=="help" goto help



rem  ====packages====================

if "%1%"==""  goto help
if "%1%"=="help"  goto help
if "%1%"=="?"  goto help

goto run






:help
run command 
goto end

==========================================

:run
if  exist  %ProgramFiles\%1\%1.exe   (
	echo %ProgramFiles\%1\%1.exe
 	%ProgramFiles\%1\%1.exe 
 	goto end )
if  exist  "D:\Program Files\%1\%1.exe"   (
	echo "D:\Program Files\%1\%1.exe" 
 	"D:\Program Files\%1\%1.exe" 
 	goto end )
if  exist  %WIN_SHELL_BINS%\%1\%1.exe   (
 	%WIN_SHELL_BINS%\%1\%1.exe 
 	goto end )

if  exist  %WIN_SHELL_BINS%\%1\bin\%1.exe   (
 	%WIN_SHELL_BINS%\%1\bin\%1.exe
 	goto end )
if  exist  "%WIN_SHELL_BINS%\%1_dev\%1\%1.exe"   (
	echo "%WIN_SHELL_BINS%\%1_dev\%1\%1.exe"
 	"%WIN_SHELL_BINS%\%1_dev\%1\%1.exe" 
 	goto end )
if  exist  "%WIN_SHELL_BINS%\%1_dev\%1\bin\%1.exe"   (
 	"%WIN_SHELL_BINS%\%1_dev\%1\bin\%1.exe" 
 	goto end )
if  exist  %WIN_SHELL_PKG%\%1.exe   (
	echo %WIN_SHELL_PKG%\%1.exe 
 	%WIN_SHELL_PKG%\%1.exe 
 	goto end )

echo no found %1
goto end 


:end


