echo https://www.python.org/ftp/python/2.7.13/python-2.7.13.amd64-pdb.zip
rem --secure-protocol=TLSv1.2
if not exist  %packages%\python-2.7.13.amd64-pdb.zip  curl  -o %packages%\python-2.7.13.amd64-pdb.zip https://www.python.org/ftp/python/2.7.13/python-2.7.13.amd64-pdb.zip
unzip %packages%\python-2.7.13.amd64-pdb.zip  -d  %WIN_SHELL_BINS%\python

