rem plugin manager
if not exist %VIM_HOME%\vimfiles\bundle\Vundle.vim  git clone https://github.com/VundleVim/Vundle.vim  %VIM_HOME%\vimfiles/bundle/Vundle.vim
cp %WIN_SHELL_BIN%\vim\_vimrc %VIM_HOME%\
%VIM_HOME%\vim80\vim +PluginInstall +qall