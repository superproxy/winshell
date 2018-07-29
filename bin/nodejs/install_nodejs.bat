echo https://nodejs.org/dist/v8.11.3/node-v8.11.3-win-x64.zip
if not exist  %packages%\node-v8.11.3-win-x64.zip   wget --no-check-certificate -O %packages%\node-v8.11.3-win-x64.zip https://nodejs.org/dist/v8.11.3/node-v8.11.3-win-x64.zip
unzip %packages%\node-v8.11.3-win-x64.zip  -d  %WIN_SHELL_BINS%
rename   %WIN_SHELL_BINS%\node-v8.11.3-win-x64  %WIN_SHELL_BINS%\nodejs

