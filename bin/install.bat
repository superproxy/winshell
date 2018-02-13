@echo off

set packages=%WIN_SHELL_PKG%
echo %packages%
if  not exist  %packages%  md %packages%




if "%1"=="help" goto help



rem  ====packages====================
if "%1"=="git" goto git
if "%1"=="vim" goto install  
if "%1"=="vimplugin" goto vimplugin


if "%1%"==""  goto help
if "%1%"=="help"  goto help
if "%1%"=="?"  goto help

goto install






:help
echo git
echo vim
echo vimplugin
goto end

==========================================

:git
echo https://github.com/git-for-windows/git/releases/download/v2.15.1.windows.2/Git-2.15.1.2-64-bit.exe
if not exist  %packages%\gvim80-586.exe   wget --no-check-certificate -O packages\Git-2.15.1.2-64-bit.exe https://github.com/git-for-windows/git/releases/download/v2.15.1.windows.2/Git-2.15.1.2-64-bit.exe
%packages%\Git-2.15.1.2-64-bit.exe
goto end
 
 
:install
rem install   
echo %WIN_SHELL_BIN%\%1\install_%1
call %WIN_SHELL_BIN%\%1\install_%1
goto end


:vimplugin
echo %WIN_SHELL_BIN%\%1\%plugin_install_vim
call %WIN_SHELL_BIN%\%1\%plugin_install_vim
goto end




:end


