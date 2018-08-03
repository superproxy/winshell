
rem ===========mysql==========
set mysql=%WIN_SHELL_BINS%\mysql
path=%mysql%\bin;%path%
 
rem wmic ENVIRONMENT where "name='PATH'" get UserName,VariableValue
wmic ENVIRONMENT where "name='mysql'" delete
wmic ENVIRONMENT create name='mysql',username="<system>",VariableValue="%mysql%"
rem wmic ENVIRONMENT where "name='mysql'" get UserName,VariableValue
rem echo %PATH%
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%mysql%;%PATH%"
rem wmic ENVIRONMENT where "name='PATH'" get UserName,VariableValue
rem ===========mysql==========
 

 
