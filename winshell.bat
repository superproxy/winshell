@echo off 


chcp 936
title WinShell
color 0a
prompt winshell$G

rem set t=t:
rem if exist %t%  subst %t% /d
rem if not exist %t%  subst %t%  %CD%
rem cd /d %t%
rem set WIN_SHELL_HOME=%t%

set WIN_SHELL_HOME=%~dp0
if "%WIN_SHELL_HOME:~-1%" == "\"  set  WIN_SHELL_HOME=%WIN_SHELL_HOME:~0,-1%



rem echo %WIN_SHELL_HOME%


set WIN_SHELL_BIN=%WIN_SHELL_HOME%\bin
set WIN_SHELL_PKG=%WIN_SHELL_HOME%\pkg
set WIN_SHELL_BINS=%WIN_SHELL_HOME%\bins



path=%WIN_SHELL_BINS%\gnu;%WIN_SHELL_BIN%;%path%


if not exist %WIN_SHELL_BIN%\init  (   
	if exist %WIN_SHELL_HOME%\init.bat   %WIN_SHELL_HOME%\init.bat
  	echo for the first > %WIN_SHELL_BIN%\init
)


rem =================back home cd ~=============
@doskey home=cd /d %WIN_SHELL_HOME%\
@doskey hh=%WIN_SHELL_HOME%\winshell.bat help $*
rem ===========================hotkey===========================
@doskey gnu=cd %WIN_SHELL_BINS%\gnu$Tdir
rem @doskey cygwin=cd /d %WIN_SHELL_BINS%\cygwin\bin$Tmintty.exe
@doskey cygwin=cd /d %WIN_SHELL_BINS%\cygwin\bin$Tbash.exe
@doskey utils=cd %WIN_SHELL_BINS%\utils$Tdir
rem ============common utils=========================
@doskey cap=%WIN_SHELL_BINS%\utils\SnapShot.exe
@doskey eye=%WIN_SHELL_BINS%\common\EyeFoo3\eyefoo.exe
@doskey feiq=%WIN_SHELL_BINS%\common\feiq\feiq.exe
@doskey fastcopy=%WIN_SHELL_BINS%\common\fastcopy\fastcopy.exe
@doskey note=%windir%\system32\StikyNot.exe
@doskey pp="C:\Program Files (x86)\PicPick\picpick.exe"
rem @doskey chrome=%WIN_SHELL_BINS%\chrome\chrome.exe
@doskey chrome="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
rem @doskey firefox=%WIN_SHELL_BINS%\firefox\firefox.exe
@doskey firefox="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
@doskey ff="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
@doskey ss=%WIN_SHELL_BINS%\common\shadowsocks\Shadowsocks.exe
@doskey mail="D:\Program Files\Foxmail 7.2\Foxmail.exe"
@doskey tc=%WIN_SHELL_BINS%\common\TotalCmd\TOTALCMD.EXE
@doskey winhex=%WIN_SHELL_BINS%\common\winhex\WinHex.exe
@doskey mind=%WIN_SHELL_BINS%\common\XMind\XMind.exe
@doskey xmind=%WIN_SHELL_BINS%\common\XMind\XMind.exe
@doskey rec=%WIN_SHELL_BINS%\common\sdemo\S-Recorder.exe
@doskey ramdisk=%WIN_SHELL_BINS%\common\ramdisk\FancyRd.exe
@doskey qq="D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"
@doskey wx="D:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
@doskey wxdev="D:\Program Files (x86)\Tencent\΢��web�����߹���\΢��web�����߹���.exe"
rem =========common_dev==================
@doskey xshell="%WIN_SHELL_BINS%\common_dev\Xmanager Enterprise4\Xshell.exe"
@doskey xftp="%WIN_SHELL_BINS%\common_dev\Xmanager Enterprise4\Xftp.exe"
@doskey st="%WIN_SHELL_BINS%\common_dev\Sublime3\sublime_text.exe" $*
@doskey bc=%WIN_SHELL_BINS%\common_dev\bc\BCompare.exe
@doskey gvim="%WIN_SHELL_BINS%\vim\vim80\gvim.exe" $*
rem =========web_dev===============
@doskey fiddler=%WIN_SHELL_BINS%\web_dev\fiddler\fiddler.exe
@doskey burpsuite=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
rem ========java_dev==================
@doskey java_dev=cd %java_dev_home%
rem @doskey idea=%java_dev_home%\IntelliJIDEA\bin\idea64.exe
@doskey idea="%WIN_SHELL_BINS%\java_dev\IntelliJIDEA\bin\idea64.exe" $*
@doskey visualvm=%WIN_SHELL_BINS%\java_dev\visualvm\bin\visualvm.exe

rem ===========vmm==================
@doskey vmm=%WIN_SHELL_BINS%\vmm\vmm
rem ======== r_dev===============
@doskey r="D:\Program Files\RStudio\bin\RStudio.exe"


cls
echo ********************************
echo *************HotKey*************
echo ********************************
echo WINSHELL�������� *hh       for help *q        quit shell 
echo WINSHELL�������� *off  shutdown computer  *reboot   reboot computer *winshell win+s
echo ����ϵͳ���� gnu     gnu cmd list  *cygwin   for cygwin *utils   utils list
echo ������� *note ��ǩ *feiq  *fastcopy *tc totalcmd     ctrl+1  *winhex *eye         eyes protector
echo ץ�� cap pp  rec S-Recorder
echo ΢��  wx  wxdev  qq
echo �칫  word excel ppt *mail foxmail
echo ���ÿ������ *bc beyondcompre *st      sublime_test *vim  gvim *xshell   xmanager      *RawCap   capature local host network
echo �����vmm      virutalbox manager *ramdisk  put all in memory
echo ֪ʶ�� xmind    mind                     ctrl+5
echo Web���� *fiddler  web debugger *burpsuite  web hacker *ngrok    publish service for internet
echo Java���� java_dev *jd-gui *idea    intelliJIDEA    ctrl+2  *visualvm
echo R���Կ��� r   Rstudio

echo ================package manager==========
echo install     install vim
echo register    register vim

echo install help    for more softwares
echo register help   for more softwares   
echo ==========^GOOD LUCK^====================

echo tips:
echo 1. ��Ҫ��ʱ����������ĥ�����󿳲����install.bat ���߿���bins��Ȼ��ʹ��hotkey�� �нű����ύ��github.com/superproxy/winshell
echo 2. windows��ݼ� alt+tab   win+e 
echo 3. gvim������ ��֮��Ҫ�ر�
echo 4. �޸�winshell.bat��Ч����ʹ��q�˳�winshell.bat��Ȼ��win+s�ٴ����С� bat�ļ�����gbk���⣬��Ҫʹ��utf8
echo 5. ʹ��mirror.bat ӳ�䵽�̶��̷���������u�̺�����������ά��
echo 6. �����������������ʹ��init.bat���³�ʼ��,��������
echo 7. os����ľ�����ã�����ά���ɱ��ܸߡ� ����ǹ��߼������ά�� 

if "%1"=="" cmd /k


if "%1"== "init" goto end


:end





