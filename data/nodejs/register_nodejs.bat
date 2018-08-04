echo register nodejs 
rem ===========NODEJS==========
set NODEJS_HOME=%WIN_SHELL_BINS%\nodejs
wmic ENVIRONMENT where "name='NODEJS_HOME'" delete
wmic ENVIRONMENT create name='NODEJS_HOME',username="<system>",VariableValue="%NODEJS_HOME%"
rem ===========NODEJS end==========


rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%NODEJS_HOME%%;%PATH%"
