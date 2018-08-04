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
rem 脚本
set WIN_SHELL_DATA=%WIN_SHELL_HOME%\data
rem 自定义脚本
set WIN_SHELL_CUSTOM=%WIN_SHELL_HOME%\custom
set WIN_SHELL_PKG=%WIN_SHELL_HOME%\pkg
set WIN_SHELL_BINS=%WIN_SHELL_HOME%\bins


set JAVA_HOME=%WIN_SHELL_BINS%\java_dev\jdk

path=%WIN_SHELL_CUSTOM%;%JAVA_HOME%\bin;%WIN_SHELL_BINS%\gnu;%WIN_SHELL_BIN%;%WIN_SHELL_BIN%\base;%path%


if not exist %WIN_SHELL_BIN%\init  (
	if exist %WIN_SHELL_HOME%\myenv.bat   %WIN_SHELL_HOME%\myenv.bat
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
@doskey kugou=%WIN_SHELL_BINS%\common\KuGou\KGMusic\KuGou.exe $*
@doskey feiq=%WIN_SHELL_BINS%\common\feiq\feiq.exe
@doskey fastcopy=%WIN_SHELL_BINS%\common\fastcopy\fastcopy.exe
@doskey note=%windir%\system32\StikyNote.exe
@doskey save=rundll32.exe powrprof.dll,SetSuspendState Sleep
@doskey pp="%WIN_SHELL_BINS%\common\PicPick\picpick.exe"
@doskey b=%WIN_SHELL_BINS%\Maxthon5\Bin\Maxthon.exe
@doskey browser=%WIN_SHELL_BINS%\Maxthon5\Bin\Maxthon.exe
@doskey m="%WIN_SHELL_BINS%\Maxthon5\Bin\Maxthon.exe" $*
@doskey maxthon=%WIN_SHELL_BINS%\Maxthon5\Bin\Maxthon.exe
@doskey mx=%WIN_SHELL_BINS%\Maxthon5\Bin\Maxthon.exe
rem @doskey chrome=%WIN_SHELL_BINS%\chrome\chrome.exe
@doskey chrome="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
@doskey firefox=%WIN_SHELL_BINS%\firefox\firefox.exe
@doskey ff=%WIN_SHELL_BINS%\firefox\firefox.exe 
rem @doskey firefox="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
rem @doskey ff="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
@doskey ss=%WIN_SHELL_BINS%\common\shadowsocks\Shadowsocks.exe
rem @doskey mail="D:\Program Files\Foxmail 7.2\Foxmail.exe"
@doskey mail="%WIN_SHELL_BINS%\Foxmail 7.2\Foxmail.exe"
@doskey tc=%WIN_SHELL_BINS%\common\TotalCmd\TOTALCMD.EXE $*
@doskey winhex=%WIN_SHELL_BINS%\common\winhex\WinHex.exe
@doskey mind=%WIN_SHELL_BINS%\common\XMind\XMind.exe
@doskey xmind=%WIN_SHELL_BINS%\common\XMind\XMind.exe
@doskey rec=%WIN_SHELL_BINS%\common\sdemo\S-Recorder.exe
@doskey ramdisk=%WIN_SHELL_BINS%\common\ramdisk\FancyRd.exe
@doskey qq="D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"
@doskey wx="D:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
@doskey douya=%WIN_SHELL_BINS%\Douya\SuningIM.exe
@doskey wxdev="D:\Program Files (x86)\Tencent\微信web开发者工具\微信web开发者工具.exe"

rem === 娱乐==========
@doskey yinyue=start https://y.qq.com/portal/player.html
@doskey music=start https://y.qq.com/portal/player.html
@doskey v=start https://v.qq.com
@doskey abc=start https://jingyan.baidu.com/article/7908e85c6eea55af491ad24e.html
@doskey douyin=start https://www.huya.com/
@doskey tv=start https://www.huya.com/
@doskey lv=start http://www.tuniu.com/
@doskey tuniu=start http://www.tuniu.com/
@doskey sn=start http://www.suning.com/
@doskey p=start https://search.suning.com/$*
@doskey pp=start https://product.suning.com/0000000000/$*.html

rem === search ==========
@doskey s=start https://www.baidu.com/baidu?word=$*
@doskey so=start https://www.so.com/s?q=$*
@doskey baidu=start https://www.baidu.com/baidu?word=$*
rem =========it info==================
@doskey csdn=start https://www.csdn.net/
@doskey news=start https://www.toutiao.com/
@doskey open=start https://www.oschina.net/
@doskey github=start https://github.org/
@doskey info=start http://www.infoq.com/cn/
@doskey me=start https://superproxy.github.io/
rem =========common_dev==================
@doskey ftp="%WIN_SHELL_BINS%\common_dev\WinSCP\WinSCP.exe" $*
@doskey st="%WIN_SHELL_BINS%\common_dev\Sublime3\sublime_text.exe" $*
@doskey ssh="%WIN_SHELL_BINS%\scrt\securcrT\SecureCRSecureFXPortable64\SecureCRTPortable.exe"
@doskey scrt="%WIN_SHELL_BINS%\scrt\securcrT\SecureCRSecureFXPortable64\SecureCRTPortable.exe"
@doskey putty="%WIN_SHELL_BINS%\common_dev\putty\putty.exe" $*
@doskey xshell="%WIN_SHELL_BINS%\common_dev\Xmanager Enterprise4\Xshell.exe" $*
@doskey xftp="%WIN_SHELL_BINS%\common_dev\Xmanager Enterprise4\Xftp.exe" $*
@doskey st="%WIN_SHELL_BINS%\common_dev\Sublime3\sublime_text.exe" $*
@doskey bc=%WIN_SHELL_BINS%\common_dev\bc\BCompare.exe $*
@doskey gvim=%WIN_SHELL_BINS%\vim\vim80\gvim.exe $*
rem =========design_dev===============
@doskey model=%WIN_SHELL_BINS%\design_dev\yWorks\yEd\yEd.exe
@doskey arch=%WIN_SHELL_BINS%\design_dev\yWorks\yEd\yEd.exe
@doskey uml="D:\Program Files\Visual Paradigm for UML 10.0\bin\Visual Paradigm for UML 10.0.exe" $*
@doskey ui="D:\Program Files (x86)\Axure\Axure RP 8\AxureRP8.exe" $*
rem ===== go dev =================
@doskey goland="%WIN_SHELL_BINS%\go_dev\GoLand 2018.2\bin\goland64.exe" $*
rem ===== node_dev=================
@doskey node="%WIN_SHELL_BINS%\nodejs\node.exe" $*
rem ===== go_dev=================
@doskey go="%WIN_SHELL_BINS%\go\bin\go.exe" $*
rem ======python_dev=================
@doskey python="%WIN_SHELL_BINS%\python3\python.exe" $*
rem =========web_dev===============
@doskey fiddler=%WIN_SHELL_BINS%\web_dev\fiddler\fiddler.exe
@doskey burpsuite=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey webhacker=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey burp=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey webstorm="D:\WebStorm 2017.3.3\bin\webstorm64.exe" $*
@doskey webdev="D:\WebStorm 2017.3.3\bin\webstorm64.exe" $*
@doskey track=%WIN_SHELL_BINS%\web_dev\httrack\WinHTTrack.exe $*
@doskey burpsuite=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey soapui=%WIN_SHELL_BINS%\\web_dev\SmartBear\SoapUI-5.0.0\bin
rem =========middle_dev===============
@doskey nginx=cd /d %WIN_SHELL_BINS%\middleware_dev\nginx-1.7.9$Tnginx.exe $*

rem ==============safe_check=================
@doskey fiddler=%WIN_SHELL_BINS%\web_dev\fiddler\fiddler.exe
@doskey webhacker=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey burp=java -jar %WIN_SHELL_BINS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey sqlmap=start http://sqlmap.org/
@doskey metasploit=start https://www.metasploit.com/
@doskey metasploit=start https://www.metasploit.com/
@doskey nmap=start https://nmap.org/
rem ========java_dev==================
@doskey java_dev=cd %java_dev_home%
@doskey jdgui=%WIN_SHELL_BINS%\java_dev\jd-gui\jd-gui.exe
rem @doskey idea=%java_dev_home%\IntelliJIDEA\bin\idea64.exe
@doskey idea="%WIN_SHELL_BINS%\java_dev\IntelliJIDEA\bin\idea64.exe" $*
@doskey ideakey="%WIN_SHELL_BINS%\java_dev\JBLocalServer\ideakey.exe" 

@doskey jprofiler=%WIN_SHELL_BINS%\java_dev\jprofiler\bin\jprofiler.exe
@doskey visualvm=%WIN_SHELL_BINS%\java_dev\visualvm\bin\visualvm.exe
@doskey visualvm=%WIN_SHELL_BINS%\java_dev\visualvm\bin\visualvm.exe --console new --jdkhome %JAVA_HOME%
@doskey vm=%WIN_SHELL_BINS%\java_dev\visualvm\bin\visualvm.exe --console new --jdkhome %JAVA_HOME%
rem @doskey gc=java -jar gcviewer-1.35-SNAPSHOT.jar -d %WIN_SHELL_BINS%\java_dev
@doskey gcviewer=cd  %WIN_SHELL_BINS%\java_dev $T java -jar gcviewer-1.35-SNAPSHOT.jar
@doskey gc=cd  %WIN_SHELL_BINS%\java_dev\ibmjdk $T %WIN_SHELL_BINS%\java_dev\ibmjdk\startga.bat
@doskey thread=cd  %WIN_SHELL_BINS%\java_dev\ibmjdk $T %WIN_SHELL_BINS%\java_dev\ibmjdk\startjca.bat
@doskey heap=cd  %WIN_SHELL_BINS%\java_dev\ibmjdk $T %WIN_SHELL_BINS%\java_dev\ibmjdk\startha.bat
@doskey mat=%WIN_SHELL_BINS%\java_dev\mat\MemoryAnalyzer.exe

@doskey btrace=%WIN_SHELL_BINS%\java_dev\visualvm\bin\visualvm.exe
@doskey dcevm="https://github.com/dcevm/dcevm/releases"
@doskey onlineJavaIde=start https://gitee.com/puhaiyang/onlineJavaIde

rem ===========vmm==================
@doskey vmm=%WIN_SHELL_BINS%\vmm\vmm
rem ======== r_dev===============
@doskey r="%WIN_SHELL_BINS%\RStudio\bin\RStudio.exe" $*
rem ======== android_dev===============
rem ======== arduino_dev===============
@doskey arduino=%WIN_SHELL_BINS%\soc_dev\arduino\arduino.exe $*
@doskey adu=%WIN_SHELL_BINS%\soc_dev\arduino\arduino.exe $*


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
echo Web开发 *fiddler  web debugger *burpsuite  web hacker *ngrok    publish service for internet  *soapui
echo Java开发 java_dev *jd-gui *idea    intelliJIDEA    ctrl+2  *visualvm
echo R语言开发 r   Rstudio

echo ================package manager==========
echo install     install vim
echo init        init  vim
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


:end





