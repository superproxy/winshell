echo https://dl.google.com/go/go1.10.3.windows-amd64.zip
if not exist  %packages%\go1.10.3.windows-amd64.zip  curl  -o %packages%\go1.10.3.windows-amd64.zip https://dl.google.com/go/go1.10.3.windows-amd64.zip
unzip %packages%\go1.10.3.windows-amd64.zip  -d  %WIN_SHELL_BINS%

