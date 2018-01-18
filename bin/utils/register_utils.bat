
rem ===========utils==========
set utils=%WIN_SHELL_BINS%\utils
wmic ENVIRONMENT where "name='utils'" delete
wmic ENVIRONMENT create name='utils',username="<system>",VariableValue="%utils%"
rem ===========utils==========



rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%utils%%;%PATH%"

