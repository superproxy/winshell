rem @echo off

rem set %1=%WIN_SHELL_APPS%\%1
set %1=%2
wmic ENVIRONMENT where "name='%1'" delete
wmic ENVIRONMENT create name='%1',username="<system>",VariableValue="%2"
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%'%1'%;%PATH%"
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%'%1'%\bin;%PATH%"
