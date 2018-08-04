
rem ===========cygwin==========
set cygwin=%WIN_SHELL_BINS%\cygwin
wmic ENVIRONMENT where "name='cygwin'" delete
wmic ENVIRONMENT create name='cygwin',username="<system>",VariableValue="%cygwin%"
rem ===========cygwin==========

 
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%%cygwin%%\bin;%PATH%"

