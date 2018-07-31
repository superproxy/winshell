@echo off

 

echo WIN_SHELL_HOME:%WIN_SHELL_HOME%
echo WIN_SHELL_BINS:%WIN_SHELL_BINS%
 


rem  ====packages====================
if "%1"=="" goto help  
if "%1"=="?" goto help  
if "%1"=="help" goto help  


goto init



:help
echo gnu
echo cygwin
echo utils
goto end
rem ==========================================



:init
echo call %WIN_SHELL_BIN%\%1\init_%1
call %WIN_SHELL_BIN%\%1\init_%1
goto end



:end


