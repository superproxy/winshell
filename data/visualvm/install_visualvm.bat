if not exist %WIN_SHELL_PKG%\visualvm_141.zip    wget --no-check-certificate -O  %WIN_SHELL_PKG%\visualvm_141.zip  https://github.com/visualvm/visualvm.src/releases/download/1.4.1/visualvm_141.zip 
unzip %WIN_SHELL_PKG%\visualvm_141.zip -d %WIN_SHELL_BINS%\java_dev
rename   %WIN_SHELL_BINS%\java_dev\visualvm_141  visualvm
