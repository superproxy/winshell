echo register vim
rem ===========vim==========
set VIM_HOME=%WIN_SHELL_APPS%\vim
wmic ENVIRONMENT where "name='VIM_HOME'" delete
wmic ENVIRONMENT create name='VIM_HOME',username="<system>",VariableValue="%VIM_HOME%"
rem ===========vim end==========


rem register
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%VIM_HOME%%;%PATH%"
