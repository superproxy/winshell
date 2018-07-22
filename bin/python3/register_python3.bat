echo register python 
rem ===========PYTHON==========
set PYTHON_HOME=%WIN_SHELL_BINS%\python3
wmic ENVIRONMENT where "name='PYTHON_HOME'" delete
wmic ENVIRONMENT create name='PYTHON_HOME',username="<system>",VariableValue="%PYTHON_HOME%"
rem ===========PYTHON end==========


rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%PYTHON_HOME%%;%PATH%"
