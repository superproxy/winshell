@echo off


if "%1"=="path" goto path
if "%1"=="" goto help  
if "%1"=="?" goto help  
if "%1"=="help" goto help  

:path
echo %1 %2
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%2;%PATH%"
goto end


:home
wmic ENVIRONMENT where "name='%2'" delete
wmic ENVIRONMENT create name='%2',username="<system>",VariableValue="%3"
goto end

:help
echo "env home  JAVA_HOME  c:\jdk"
echo "env path  %JAVA_HOME%\bin"
goto end


:end


