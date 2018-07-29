echo https://download.jetbrains.com/go/goland-2018.2.exe
if not exist  %packages%\goland-2018.2.exe curl  -o %packages%\goland-2018.2.exe https://download.jetbrains.com/go/goland-2018.2.exe
%packages%\goland-2018.2.exe

