rem subst Z:  %~dp0

set GOPATH=%win_shell_apps%\go_dev\go
wmic ENVIRONMENT where "name='GOPATH'" delete
wmic ENVIRONMENT create name="GOPATH",username="<system>",VariableValue="%GOPATH%"

wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%%GOPATH%%\bin;%path%"

set GOROOT=%win_shell_apps%\go_dev\go
wmic ENVIRONMENT where "name='GOROOT'" delete
wmic ENVIRONMENT create name="GOROOT",username="<system>",VariableValue="%GOROOT%"

wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%%GOROOT%%\bin;%path%"



