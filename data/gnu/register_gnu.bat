
rem ===========gnu==========
set gnu=%WIN_SHELL_BINS%\gnu
 
rem wmic ENVIRONMENT where "name='PATH'" get UserName,VariableValue
wmic ENVIRONMENT where "name='gnu'" delete
wmic ENVIRONMENT create name='gnu',username="<system>",VariableValue="%gnu%"
rem wmic ENVIRONMENT where "name='gnu'" get UserName,VariableValue
rem echo %PATH%
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%gnu%%;%PATH%"
rem wmic ENVIRONMENT where "name='PATH'" get UserName,VariableValue
rem ===========gnu==========
 

 