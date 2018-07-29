rem subst Z:  %~dp0

echo  exec register docker_dev

set docker_dev_home=%WIN_SHELL_BINS%\docker_dev
echo %docker_dev_home%

 

wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%docker_dev_home%\bin;%path%"

set path=%docker_dev_home%;%path%

