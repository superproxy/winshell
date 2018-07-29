echo register GO 
rem ===========GO==========
set GO_HOME=%WIN_SHELL_BINS%\go
wmic ENVIRONMENT where "name='GO_HOME'" delete
wmic ENVIRONMENT create name='GO_HOME',username="<system>",VariableValue="%GO_HOME%"
rem ===========GO end==========


rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%GO_HOME%%;%PATH%"
