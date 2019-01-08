rem echo [internetshortcut]>"winshell.url"
rem echo URL="winshell.exe">>"winshell.url"
rem echo IconIndex=4>>"winshell.url"
rem echo IconFile=%SystemRoot%\system32\SHELL32.dll>>"winshell.url"

set programe=%WIN_SHELL_HOME%\winshell.exe
rem echo Windows Registry Editor Version 5.00>bin\autorunreg.reg
rem echo=>bin\autorunreg.reg
rem echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]>>bin\autorunreg.reg
rem echo "winshell.exe"="\"%programe%">>bin\autorunreg.reg
rem regedit.exe /s bin\autorunreg.reg


reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v WinShell /d  %programe%
rem reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v WinShell /f
