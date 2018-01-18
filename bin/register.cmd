@echo off

 

echo WIN_SHELL_HOME:%WIN_SHELL_HOME%
echo WIN_SHELL_BINS:%WIN_SHELL_BINS%
 


rem  ====packages====================
if "%1"=="git" goto git
if "%1"=="gnu" goto register
if "%1"=="cygwin" goto register
if  "%1"=="utils" goto register

if "%1"=="vim" goto register  
if "%1"=="java_dev" goto register



:help
echo git
rem echo vim8
echo vim
echo gnu
echo cygwin
echo utils

==========================================


goto end

:git

rem git\register_git.cmd
rem ===========vim==========
set GIT_HOME=%WIN_SHELL_BINS%\git\bin
wmic ENVIRONMENT where "name='VIM_HOME'" delete
wmic ENVIRONMENT create name='VIM_HOME',username="<system>",VariableValue="%VIM_HOME%"
rem ===========vim end==========
goto end

rem ===========vim==========
:vim8
rem vim\register_vim.cmd
set VIM_HOME=%WIN_SHELL_BINS%\vim\vim80
echo %VIM_HOME%
wmic ENVIRONMENT where "name='VIM_HOME'" delete
wmic ENVIRONMENT create name='VIM_HOME',username="<system>",VariableValue="%VIM_HOME%"
rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%VIM_HOME%%;%PATH%"
goto end
rem ===========vim end==========



:register
echo call %WIN_SHELL_BIN%\%1\register_%1
call %WIN_SHELL_BIN%\%1\register_%1
goto end



:end


