@echo off

rem chcp 936
title ����̨WinShell
color 0a
prompt winshell$G
prompt ����̨$G

rem set t=t:
rem if exist %t%  subst %t% /d
rem if not exist %t%  subst %t%  %CD%
rem cd /d %t%
rem set WIN_SHELL_HOME=%t%

set WIN_SHELL_HOME=%~dp0
if "%WIN_SHELL_HOME:~-1%" == "\"  set  WIN_SHELL_HOME=%WIN_SHELL_HOME:~0,-1%

rem echo %WIN_SHELL_HOME%


set WIN_SHELL_BIN=%WIN_SHELL_HOME%\bin
rem ʹ��bat����node���ṩ���������
set WIN_SHELL_ENGINE=%WIN_SHELL_HOME%\bin\node
rem �ű�
set WIN_SHELL_DATA=%WIN_SHELL_HOME%\data
rem �Զ���ű�
set WIN_SHELL_CUSTOM=%WIN_SHELL_HOME%\custom
set WIN_SHELL_PKG=%WIN_SHELL_HOME%\pkg
set WIN_SHELL_BINS=%WIN_SHELL_HOME%\apps
set WIN_SHELL_APPS=%WIN_SHELL_HOME%\apps


set JAVA_HOME=%WIN_SHELL_APPS%\java_dev\jdk
set NODE_HOME=%WIN_SHELL_APPS%\node_dev\node
set GOROOT=%WIN_SHELL_APPS%\go_dev\go
rem set GOPATH=%WIN_SHELL_APPS%\go_dev\go
set GIT=%WIN_SHELL_APPS%\git\bin

path=%GIT%;%path%;%WIN_SHELL_APPS%\VirtualBox

path=%GOROOT%\bin;%WIN_SHELL_ENGINE%;%NODE_HOME%;%WIN_SHELL_HOME%;%WIN_SHELL_CUSTOM%;%JAVA_HOME%\bin;%WIN_SHELL_APPS%\gnu;%WIN_SHELL_BIN%;%WIN_SHELL_BIN%\base;%path%


if not exist %WIN_SHELL_BIN%\init  (
        mkdir %WIN_SHELL_APPS%
	if exist %WIN_SHELL_HOME%\myenv.bat   %WIN_SHELL_HOME%\myenv.bat
  	echo for the first > %WIN_SHELL_BIN%\init
)


rem =================back home cd ~=============
@doskey home=cd /d %WIN_SHELL_HOME%\
@doskey ��Ŀ¼=cd /d %WIN_SHELL_HOME%\
@doskey hh=%WIN_SHELL_HOME%\winshell.bat help $*
@doskey ����=%WIN_SHELL_HOME%\winshell.bat help $*
@doskey open=start $*
@doskey Ŀ¼=start $*
@doskey shownet=netstat -anto -p TCP
@doskey showip=netstat -anto -p TCP
@doskey showhost=hostname
@doskey ipdns=ipconfig /displaydns
@doskey dns=nslookup  - 114.114.114.114
@doskey dns114=nslookup  - 114.114.114.114
@doskey port=netstat -anto -p TCP | findstr "$1"
@doskey �豸������=devmgmt.msc
@doskey �豸����=devmgmt.msc
@doskey �豸=devmgmt.msc
@doskey �����=compmgmt.msc
@doskey �������=contorl
@doskey ����=services.msc
@doskey ���̹���=diskmgmt.msc
@doskey ����=perfmon.msc
@doskey ���⻯=virtmgmt.msc
@doskey �����=virtmgmt.msc
@doskey hyper-v=virtmgmt.msc
@doskey �����ļ���=fsmgmt.msc
@doskey �û�����=lusrmgr.msc
@doskey �û�����=lusrmgr.msc
@doskey ��ȫ����=gpedit.msc
@doskey ����ǽ=WF.msc
@doskey ����=msconfig
@doskey �ػ�=shutdown /s /t 0
@doskey off=shutdown /s /t 0
@doskey down=shutdown /s /t 0
@doskey reboot=shutdown  /r /t 0
@doskey ����=shutdown  /r /t 0
@doskey kill=taskkill /F  /PID $*
@doskey killpid=taskkill /F  /PID $*
@doskey ɱ����=taskkill /F  /PID $*
@doskey �ļ����=
@doskey ���=
@doskey ����=
@doskey ��������=net start $* 
@doskey ������װ����=  net start  msiserver
@doskey firewall=start %WIN_SHELL_APPS%\smc\recover_smc.bat
@doskey �رշ���ǽ=start %WIN_SHELL_APPS%\smc\useeasy.bat
@doskey stopsmc=start %WIN_SHELL_APPS%\smc\useeasy.bat
@doskey killsmc=start %WIN_SHELL_APPS%\smc\stopall.bat
@doskey cpuz=%WIN_SHELL_APPS%/cpuz/cpuz_x64.exe
@doskey ��Դ���=start resmon
@doskey ����=%WIN_SHELL_APPS%\diskgenius\DiskGenius.exe
@doskey dg=%WIN_SHELL_APPS%\diskgenius\DiskGenius.exe
@doskey hardware="%WIN_SHELL_APPS%\hardware\AIDA64 Extreme\aida64.exe"
@doskey Ӳ��="%WIN_SHELL_APPS%\hardware\AIDA64 Extreme\aida64.exe"


rem ===========================hotkey===========================
@doskey gnu=cd %WIN_SHELL_APPS%\gnu$Tdir
rem @doskey cygwin=cd /d %WIN_SHELL_APPS%\cygwin\bin$Tmintty.exe
@doskey cygwin=cd /d %WIN_SHELL_APPS%\cygwin\bin$Tbash.exe
@doskey utils=cd %WIN_SHELL_APPS%\utils$Tdir
@doskey shell=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
@doskey vi=%WIN_SHELL_APPS%\vim\vim80\vim.exe $*
@doskey es=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
@doskey �༭=shell
@doskey �༭=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
@doskey localhost=%WIN_SHELL_APPS%\vim\vim80\gvim.exe c:\windows\system32\drivers\etc\hosts
@doskey hosts=%WIN_SHELL_APPS%\vim\vim80\gvim.exe c:\windows\system32\drivers\etc\hosts
rem @doskey hosts=echo $* >>c:\windows\system32\drivers\etc\hosts
rem ============common utils=========================
@doskey cap=%WIN_SHELL_APPS%\utils\SnapShot.exe
@doskey feiq=%WIN_SHELL_APPS%\common\feiq\feiq.exe
@doskey fastcopy=%WIN_SHELL_APPS%\common\fastcopy\fastcopy.exe
@doskey note=%windir%\system32\StikyNot.exe
@doskey ��ǩ=%windir%\system32\StikyNot.exe
@doskey save=rundll32.exe powrprof.dll,SetSuspendState Sleep
@doskey ����=rundll32.exe powrprof.dll,SetSuspendState Sleep
@doskey pp="%WIN_SHELL_APPS%\picpick\picpick.exe"
@doskey ��ͼ="%WIN_SHELL_APPS%\picpick\picpick.exe"
@doskey ie="%ProgramFiles%\Internet Explorer\iexplore.exe" $*
@doskey b=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
@doskey browser=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
@doskey �����=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
@doskey m="%WIN_SHELL_APPS%\Maxthon\Bin\Maxthon.exe" $*
@doskey maxthon="%WIN_SHELL_APPS%\Maxthon\Bin\Maxthon.exe" $*
@doskey mx="%WIN_SHELL_APPS%\Maxthon\Bin\Maxthon.exe" $*
@doskey chrome="%WIN_SHELL_APPS%\chrome\chrome.exe" $*
@doskey chrome="%SystemDrive%:\Users\%USERNAME%\AppData\Local\Google\Chrome\Application\chrome.exe" $*
@doskey chrome="c:\Users\Administrator\AppData\Local\Google\Chrome\Application\chrome.exe" $*
rem @doskey chrome="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
@doskey firefox=%WIN_SHELL_APPS%\firefox\firefox.exe
@doskey ff=%WIN_SHELL_APPS%\firefox\firefox.exe 
rem @doskey firefox="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
rem @doskey ff="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
@doskey ss=%WIN_SHELL_APPS%\shadowsocks\Shadowsocks.exe
rem @doskey mail="D:\Program Files\Foxmail 7.2\Foxmail.exe"
@doskey mail="%WIN_SHELL_APPS%\Foxmail\Foxmail.exe"
@doskey �ʼ�="%WIN_SHELL_APPS%\Foxmail\Foxmail.exe"
@doskey qqmail=start https://mail.qq.com
@doskey tc=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
@doskey �ļ�������=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
@doskey winhex=%WIN_SHELL_APPS%\winhex\WinHex.exe
@doskey mind=%WIN_SHELL_APPS%\XMind\XMind.exe
@doskey xmind=%WIN_SHELL_APPS%\XMind\XMind.exe

@doskey rec=%WIN_SHELL_APPS%\common\sdemo\S-Recorder.exe
@doskey gif=%WIN_SHELL_APPS%\gif\GifCam.exe
@doskey tools=start https://www.appinn.com/category/tools/

@doskey ramdisk=%WIN_SHELL_APPS%\common\ramdisk\FancyRd.exe
@doskey qq="D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"
rem @doskey wx="D:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
@doskey wx=start https://wx.qq.com
@doskey wxdev="D:\Program Files (x86)\Tencent\΢��web�����߹���\΢��web�����߹���.exe"
@doskey zhihu=start https://www.baidu.com/s?wd=$1++$2site:zhihu.com
@doskey google=start https://www.google.com/search?q=$1++$2++$3++$4++$5++$6++$7
@doskey github=start https://github.com/search?q=$1++$2++$3++$4++$5++$6++$7
@doskey code=start https://github.com/search?q=$1++$2++$3++$4++$5++$6++$7
@doskey ֪��=start https://www.baidu.com/s?wd=$*%20%20%20site%3Azhihu.com
@doskey ֪��=start https://www.baidu.com/s?wd=$1site:zhihu.com
@doskey ����=start http://www.iciba.com/$*
@doskey dict=start http://www.iciba.com/$*
@doskey �ʵ�=start http://www.iciba.com/$*
rem @doskey ͼƬ=start http://image.baidu.com/search/index\?tn=baiduimage\&fm=result\&ie=utf-8\&word=$*
rem === ����==========
@doskey �۾�=%WIN_SHELL_APPS%\EyeFoo\eyefoo.exe
@doskey eye=%WIN_SHELL_APPS%\EyeFoo\eyefoo.exe
@doskey kugou=%WIN_SHELL_APPS%\Kugou\KuGou.exe $*
@doskey ����=start https://y.qq.com/portal/player.html
@doskey music=start https://y.qq.com/portal/player.html
@doskey v=start https://v.qq.com
@doskey ��Ƶ=start https://v.qq.com
@doskey abc=start https://jingyan.baidu.com/article/7908e85c6eea55af491ad24e.html
@doskey ����=start https://www.huya.com/
@doskey douyin=start https://www.huya.com/
@doskey tv=start https://www.huya.com/
@doskey ����=start http://www.tuniu.com/
@doskey tuniu=start http://www.tuniu.com/
rem @doskey sn=start http://www.suning.com/
@doskey ����=start https://search.suning.com/$*/
@doskey sn=start https://search.suning.com/$*/
@doskey p=start https://search.suning.com/$*
@doskey prd=start https://product.suning.com/0000000000/$*.html
@doskey ����=start https://www.jd.com/
@doskey jd=start https://www.jd.com/
@doskey ��è=start https://www.tmall.com/
@doskey tmall=start https://www.tmall.com/
@doskey �Ա�=start https://www.taobao.com/
@doskey taobao=start https://www.taobao.com/
@doskey ��ͼ=start https://www.amap.com/
@doskey ditu=start https://www.amap.com/
@doskey map=start https://www.amap.com/
@doskey gaode=start https://www.amap.com/
@doskey ����=start http://www.xdowns.com/
@doskey sw=start http://www.xdowns.com/
@doskey os=start http://www.xitongzhijia.net/
@doskey weather=start http://www.weather.com.cn/weather40d/101190101.shtml
@doskey ����=start http://www.weather.com.cn/weather40d/101190101.shtml

rem === search ==========
@doskey s=start https://www.baidu.com/baidu?word=$1++$2++$3++$4
@doskey baidu=start https://www.baidu.com/baidu?word=$1++$2++$3++$4
@doskey ����=start https://www.baidu.com/baidu?word=$*
@doskey ����=start https://www.baidu.com/baidu?word=$1����
@doskey so=start https://www.so.com/s?q=$*
@doskey ����=start https://www.baidu.com/baidu?word=$*
@doskey wiki=start http://wikipedia.org/
@doskey mba=start http://mbalib.com/
@doskey class=start https://open.163.com/ted/
@doskey �γ�=start https://open.163.com/ted/

rem ======pe=========================
@doskey peid=%WIN_SHELL_APPS%\peid\peid.exe $*
rem === programe==========
@doskey turtle=start https://steakovercooked.com/ch/Software.Logo#logo
@doskey scrach1=start http://open.163.com/movie/2009/8/M/D/M88JJ461P_M88JKFLMD.html 

rem =========it info==================
@doskey csdn=start https://www.csdn.net/
@doskey news=start https://www.toutiao.com/
@doskey opensource=start https://www.oschina.net/
rem @doskey github=start https://github.com/
@doskey infoq=start http://www.infoq.com/cn/
@doskey me=start https://superproxy.github.io/
@doskey exception=start https://stackoverflow.com/
@doskey ����=start https://stackoverflow.com/search?q=$1++$2++$3++$4++$5++$6++$7
@doskey q=start https://stackoverflow.com/search?q=$1++$2++$3++$4++$5++$6++$7
@doskey whois=start https://www.whois.com/whois/$*
@doskey alarm=start http://www.cnnvd.org.cn/
rem =========common_dev==================
@doskey ftp="%WIN_SHELL_APPS%\common_dev\WinSCP\WinSCP.exe" $*
@doskey st="%WIN_SHELL_APPS%\sublime_text\sublime_text.exe" $*
@doskey editor="%WIN_SHELL_APPS%\sublime_text\sublime_text.exe" $*
@doskey ssh="%WIN_SHELL_APPS%\scrt\securcrT\SecureCRSecureFXPortable64\SecureCRTPortable.exe"
@doskey scrt="%WIN_SHELL_APPS%\scrt\securcrT\SecureCRSecureFXPortable64\SecureCRTPortable.exe"
@doskey putty="%WIN_SHELL_APPS%\common_dev\putty\putty.exe" $*
@doskey xshell="%WIN_SHELL_APPS%\common_dev\Xmanager Enterprise4\Xshell.exe" $*
@doskey xftp="%WIN_SHELL_APPS%\common_dev\Xmanager Enterprise4\Xftp.exe" $*
@doskey st="%WIN_SHELL_APPS%\common_dev\Sublime3\sublime_text.exe" $*
@doskey bc=%WIN_SHELL_APPS%\common_dev\bc\BCompare.exe $*
@doskey gvim=%WIN_SHELL_APPS%\vim\vim80\gvim.exe $*
@doskey vim=%WIN_SHELL_APPS%\vim\vim80\vim.exe $*
@doskey vscode="%WIN_SHELL_APPS%\vscode\Code.exe" $*
rem =========os monitor===============
@doskey procmon=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
@doskey processmonitor=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
@doskey �ļ�����=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
rem =========design_dev===============
@doskey model=cd %WIN_SHELL_APPS%\design_dev\yEd$T java -jar yed.jar
@doskey yed=cd %WIN_SHELL_APPS%\design_dev\yEd$T java -jar yed.jar
rem @doskey yed=%WIN_SHELL_APPS%\design_dev\yEd\yEd.exe
rem @doskey arch=%WIN_SHELL_APPS%\design_dev\yWorks\yEd\yEd.exe
@doskey uml=%WIN_SHELL_APPS%\arch_dev\vp\bin\Visual Paradigm for UML 10.0.exe" $*
@doskey arch="archi mate3"
@doskey ui="D:\Program Files (x86)\Axure\Axure RP 8\AxureRP8.exe" $*
@doskey ps=""


rem ===== source git =================
@doskey projects=cd /d e:\projects 
@doskey project=cd /d e:\projects$Tcd $1 
@doskey apps=cd /d %WIN_SHELL_APPS%
@doskey app=cd /d %WIN_SHELL_APPS%$Tcd $1 
@doskey datas=cd /d %WIN_SHELL_DATA%
@doskey data=cd /d %WIN_SHELL_DATA%$Tcd $1 
@doskey source=cd /d e:\projects$Tgit clone https://github.com/$1/$2.git
rem ===== node_dev=================
rem @doskey node="%WIN_SHELL_APPS%\node_dev\node\node.exe" $*
rem @doskey npm="%WIN_SHELL_APPS%\node_dev\node\npm.cmd" $*
rem ===== go_dev=================
rem @doskey go="%WIN_SHELL_APPS%\go\bin\go.exe" $*
@doskey goland="%WIN_SHELL_APPS%\go_dev\GoLand\bin\goland64.exe" $*
rem ======python_dev=================
rem @doskey python="%WIN_SHELL_APPS%\python3\python.exe" $*
rem @doskey python3="%WIN_SHELL_APPS%\python3\python.exe" $*
rem @doskey pip3="%WIN_SHELL_APPS%\python3\Scripts\pip.exe" $*
rem @doskey python2="%WIN_SHELL_APPS%\python2\python.exe" $*
rem @doskey pip2="%WIN_SHELL_APPS%\python2\Scripts\pip.exe" $*
rem @doskey python="%WIN_SHELL_APPS%\python\python.exe" $*
rem @doskey pip="%WIN_SHELL_APPS%\python\Scripts\pip.exe" $*
rem =========web_dev===============
@doskey fiddler=%WIN_SHELL_APPS%\web_dev\fiddler\fiddler.exe
@doskey burpsuite=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey webhacker=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey burp=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey webstorm="D:\WebStorm 2017.3.3\bin\webstorm64.exe" $*
@doskey webdev="D:\WebStorm 2017.3.3\bin\webstorm64.exe" $*
@doskey track=%WIN_SHELL_APPS%\web_dev\httrack\WinHTTrack.exe $*
@doskey burpsuite=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey soapui=%WIN_SHELL_APPS%\web_dev\SmartBear\SoapUI-5.0.0\bin\soapui.exe
rem =========middle_dev===============
@doskey nginx=cd /d %WIN_SHELL_APPS%\middleware_dev\nginx-1.7.9$Tnginx.exe $*

rem ==============safe_check=================
@doskey fiddler=%WIN_SHELL_APPS%\web_dev\fiddler\fiddler.exe
@doskey webhacker=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey burp=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
@doskey sqlmap=start http://sqlmap.org/
rem @doskey metasploit=start https://www.metasploit.com/
@doskey metasploit=start https://www.metasploit.com/
@doskey nmap=start https://nmap.org/
rem ========java_dev==================
@doskey java_dev=cd %java_dev_home%
@doskey jdgui=%WIN_SHELL_APPS%\java_dev\jd-gui\jd-gui.exe
@doskey jdgui=%WIN_SHELL_APPS%\jd-gui\jd-gui-windows-1.4.0\jd-gui.exe
@doskey jd-gui=%WIN_SHELL_APPS%\jd-gui\jd-gui-windows-1.4.0\jd-gui.exe
rem @doskey idea=%java_dev_home%\idea\bin\idea64.exe
@doskey idea="%WIN_SHELL_APPS%\java_dev\idea\bin\idea64.exe" $*
@doskey ideakey="%WIN_SHELL_APPS%\java_dev\JBLocalServer\ideakey.exe" 
@doskey ideap="%java_dev_home%\idea\bin\idea64.exe" e:\projects\$1

@doskey jprofiler=%WIN_SHELL_APPS%\java_dev\jprofiler\bin\jprofiler.exe
@doskey visualvm=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe
@doskey visualvm=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe --console new --jdkhome %JAVA_HOME%
@doskey vm=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe --console new --jdkhome %JAVA_HOME%
rem @doskey gc=java -jar gcviewer-1.35-SNAPSHOT.jar -d %WIN_SHELL_APPS%\java_dev
@doskey gcviewer=cd  %WIN_SHELL_APPS%\java_dev $T java -jar gcviewer-1.35-SNAPSHOT.jar
@doskey gconline=start http://gceasy.io/
@doskey gc=cd  %WIN_SHELL_APPS%\java_dev\ibmjdk $T %WIN_SHELL_APPS%\java_dev\ibmjdk\startga.bat
@doskey thread=cd  %WIN_SHELL_APPS%\java_dev\ibmjdk $T %WIN_SHELL_APPS%\java_dev\ibmjdk\startjca.bat
@doskey heap=cd  %WIN_SHELL_APPS%\java_dev\ibmjdk $T %WIN_SHELL_APPS%\java_dev\ibmjdk\startha.bat
@doskey mat=%WIN_SHELL_APPS%\java_dev\mat\MemoryAnalyzer.exe

@doskey btrace=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe
@doskey dcevm="https://github.com/dcevm/dcevm/releases"
@doskey onlineJavaIde=start https://gitee.com/puhaiyang/onlineJavaIde

rem ===========db==================
@doskey h2=cd %WIN_SHELL_APPS%\h2\h2\bin$Th2.bat
rem @doskey h2=%WIN_SHELL_APPS%\h2\h2\bin\h2w.bat
rem ===========vmm==================
rem @doskey vmm="%WIN_SHELL_APPS%\vmm\vmm.cmd" $*
rem ======== r_dev===============
@doskey rstudio="%WIN_SHELL_APPS%\RStudio\bin\RStudio.exe" $*
@doskey r="%WIN_SHELL_APPS%\RStudio\bin\RStudio.exe" $*
rem ======== android_dev===============
rem ======== arduino_dev===============
@doskey arduino=%WIN_SHELL_APPS%\soc_dev\arduino\arduino.exe $*
@doskey adu=%WIN_SHELL_APPS%\soc_dev\arduino\arduino.exe $*


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
echo Web���� *fiddler  web debugger *burpsuite  web hacker *ngrok    publish service for internet  *soapui
echo Java���� java_dev *jd-gui *idea    intelliJIDEA    ctrl+2  *visualvm
echo R���Կ��� r   Rstudio

echo ================package manager==========
echo create      create help
echo install     install vim
echo init        init  vim
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


:end





