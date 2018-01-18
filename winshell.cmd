@echo off 

title WinShell
color 0a
prompt winshell$G

set t=t:
rem if exist %t%  subst %t% /d
rem if not exist %t%  subst %t%  %CD%
rem cd /d %t%
rem set WIN_SHELL_HOME=%t%

set WIN_SHELL_HOME=%~dp0
if "%WIN_SHELL_HOME:~-1%" == "\"  set  WIN_SHELL_HOME=%WIN_SHELL_HOME:~0,-1%



rem echo %WIN_SHELL_HOME%


set WIN_SHELL_BINS=%WIN_SHELL_HOME%\bins

set WIN_SHELL_BIN=%WIN_SHELL_HOME%\bin


path=%WIN_SHELL_BIN%;%path%


if not exist %WIN_SHELL_BIN%\init  (   
	if exist %WIN_SHELL_HOME%\init.bat   %WIN_SHELL_HOME%\init.bat
  	echo cls > %WIN_SHELL_BIN%\init
)



rem ===========================hotkey===========================
@doskey shell=%WIN_SHELL_BINS%\cygwin\bin\mintty.exe $*
@doskey bc=%WIN_SHELL_BINS%\bc\BCompare.exe
@doskey tc=%WIN_SHELL_BINS%\TotalCmd\TOTALCMD.EXE
@doskey winhex=%WIN_SHELL_BINS%\winhex\WinHex.exe
@doskey st="%WIN_SHELL_BINS%\Sublime3\sublime_text.exe"
@doskey utils=cd %WIN_SHELL_BINS%\utils$Tdir
@doskey gnu=cd %WIN_SHELL_BINS%\gnu$Tdir
@doskey home=cd /d %WIN_SHELL_HOME%\
@doskey java_dev=cd %java_dev_home%
@doskey idea=%java_dev_home%IntelliJIDEA\bin\idea64.exe
@doskey visualvm=%java_dev_home%visualvm\bin\visualvm.exe
@doskey vmm=%WIN_SHELL_BINS%\vmm\vmm
@doskey xmind="D:\Program Files (x86)\XMind\XMind.exe"
@doskey rec=%WIN_SHELL_BINS%\sdemo\S-Recorder.exe
@doskey ramdisk=%WIN_SHELL_BINS%\ramdisk\FancyRd.exe

rem ===========================hotkey===========================


cls
echo ================欢迎使用WinShell应用管理器==========
echo install     install vim
echo register    register vim

echo install help    for more softwares
echo register help   for more softwares

echo **HotKey**
echo shell   for cygwin
echo bc      bccompare
echo tc      totalcmd
echo winhex  winhex
echo st      sublime_test
echo utils   utils list
echo gnu     gnu cmd list
echo java_dev
echo idea    intelliJIDEA
echo visualvm  visualvm
echo vmm      virutalbox manager

echo ======================^GOOD LUCK^==============================    



cmd /k


:end





