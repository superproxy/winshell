echo https://www.python.org/ftp/python/3.7.0/python-3.7.0-embed-amd64.zip
rem --secure-protocol=TLSv1.2
if not exist  %packages%\python-3.7.0-embed-amd64.zip  curl  -o %packages%\python-3.7.0-embed-amd64.zip https://www.python.org/ftp/python/3.7.0/python-3.7.0-embed-amd64.zip
unzip %packages%\python-3.7.0-embed-amd64.zip  -d  %WIN_SHELL_BINS%\python3

