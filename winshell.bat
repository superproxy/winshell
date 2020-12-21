@echo off

 

set WIN_SHELL_HOME=%~dp0
if "%WIN_SHELL_HOME:~-1%" == "\"  set  WIN_SHELL_HOME=%WIN_SHELL_HOME:~0,-1%

 
set WIN_SHELL_BIN=%WIN_SHELL_HOME%\bin
set WIN_SHELL_ENGINE=%WIN_SHELL_HOME%\bin\node
set WIN_SHELL_DATA=%WIN_SHELL_HOME%\data
set WIN_SHELL_CUSTOM=%WIN_SHELL_HOME%\custom
set WIN_SHELL_PKG=%WIN_SHELL_HOME%\pkg
set WIN_SHELL_BINS=%WIN_SHELL_HOME%\apps
set WIN_SHELL_APPS=%WIN_SHELL_HOME%\apps


set JAVA_HOME=%WIN_SHELL_APPS%\java_dev\jdk
set NODE_HOME=%WIN_SHELL_APPS%\node_dev\node
set GOROOT=%WIN_SHELL_APPS%\go_dev\go
rem set GOPATH=%WIN_SHELL_APPS%\go_dev\go
set GIT=%WIN_SHELL_APPS%\git\bin

path=%GIT%;%path%;%WIN_SHELL_APPS%\VirtualBox

path=%GOROOT%\bin;%WIN_SHELL_ENGINE%;%NODE_HOME%;%WIN_SHELL_HOME%;%WIN_SHELL_CUSTOM%;%JAVA_HOME%\bin;%WIN_SHELL_APPS%\gnu;%WIN_SHELL_BIN%;%WIN_SHELL_BIN%\base;%path%

cmd.exe /k 

 





