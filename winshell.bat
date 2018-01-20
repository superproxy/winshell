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
@doskey wxdev="D:\Program Files (x86)\Tencent\微信web开发者工具\微信web开发者工具.exe"
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
echo WINSHELL常用命令 *hh       for help *q        quit shell 
echo WINSHELL常用命令 *off  shutdown computer  *reboot   reboot computer *winshell win+s
echo 常用系统命令 gnu     gnu cmd list  *cygwin   for cygwin *utils   utils list
echo 常用软件 *note 便签 *feiq  *fastcopy *tc totalcmd     ctrl+1  *winhex *eye         eyes protector
echo 抓屏 cap pp  rec S-Recorder
echo 微信  wx  wxdev  qq
echo 办公  word excel ppt *mail foxmail
echo 常用开发软件 *bc beyondcompre *st      sublime_test *vim  gvim *xshell   xmanager      *RawCap   capature local host network
echo 虚拟机vmm      virutalbox manager *ramdisk  put all in memory
echo 知识库 xmind    mind                     ctrl+5
echo Web开发 *fiddler  web debugger *burpsuite  web hacker *ngrok    publish service for internet
echo Java开发 java_dev *jd-gui *idea    intelliJIDEA    ctrl+2  *visualvm
echo R语言开发 r   Rstudio

echo ================package manager==========
echo install     install vim
echo register    register vim

echo install help    for more softwares
echo register help   for more softwares   
echo ==========^GOOD LUCK^====================

echo tips:
echo 1. 需要的时候再添加命令，磨刀不误砍柴。添加install.bat 或者拷贝bins下然后使用hotkey。 有脚本就提交到github.com/superproxy/winshell
echo 2. windows快捷键 alt+tab   win+e 
echo 3. gvim启动慢 打开之后不要关闭
echo 4. 修改winshell.bat生效，先使用q退出winshell.bat，然后win+s再次运行。 bat文件保持gbk问题，不要使用utf8
echo 5. 使用mirror.bat 映射到固定盘符，容易在u盘和其他机器上维护
echo 6. 如果环境变量有问题使用init.bat重新初始化,重启机器
echo 7. os级别的镜像最好，但是维护成本很高。 这个是工具集级别的维护 

if "%1"=="" cmd /k


if "%1"== "init" goto end


:end





