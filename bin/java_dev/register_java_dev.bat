rem subst Z:  %~dp0

echo  exec register java_dev

set java_dev_home=%WIN_SHELL_BINS%\java_dev
echo %java_dev_home%


wmic ENVIRONMENT where "name='java_dev_home'" delete
wmic ENVIRONMENT create name="java_dev_home",username="<system>",VariableValue="%java_dev_home%"


set JAVA_HOME=%java_dev_home%\jdk1.8.0_152
wmic ENVIRONMENT where "name='JAVA_HOME'" delete
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="%JAVA_HOME%"


set MVN_HOME=%java_dev_home%\apache-maven-3.1.1
wmic ENVIRONMENT where "name='MVN_HOME'" delete
wmic ENVIRONMENT create name="MVN_HOME",username="<system>",VariableValue="%MVN_HOME%"


set visualvm_HOME=%java_dev_home%\visualvm
wmic ENVIRONMENT where "name='visualvm_HOME'" delete
wmic ENVIRONMENT create name="visualvm_HOME",username="<system>",VariableValue="%visualvm_HOME%"


wmic ENVIRONMENT where "name='Path' and username='<system>'" set VariableValue="%%JAVA_HOME%%\bin;%%MVN_HOME%%\bin;%%visualvm_HOME%%\bin;%path%"



