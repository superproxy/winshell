alias home=cd /d %WIN_SHELL_HOME%\
alias ��Ŀ¼=cd /d %WIN_SHELL_HOME%\
alias hh=%WIN_SHELL_HOME%\winshell.bat help $*
alias ����=%WIN_SHELL_HOME%\winshell.bat help $*
alias open=start $*
alias Ŀ¼=start $*
alias shownet=netstat -anto -p TCP
alias showip=netstat -anto -p TCP
alias showhost=hostname
alias ipdns=ipconfig /displaydns
alias dns=nslookup  - 114.114.114.114
alias dns114=nslookup  - 114.114.114.114
alias port=netstat -anto -p TCP | findstr "$1"
alias �豸������=devmgmt.msc
alias �豸����=devmgmt.msc
alias �豸=devmgmt.msc
alias �����=compmgmt.msc
alias �������=control
alias ����=services.msc
alias ���̹���=diskmgmt.msc
alias ���̹�����=diskmgmt.msc
alias ����=perfmon.msc
alias ���⻯=virtmgmt.msc
alias �����=virtmgmt.msc
alias hyper-v=virtmgmt.msc
alias �����ļ���=fsmgmt.msc
alias �û�����=lusrmgr.msc
alias �û�����=lusrmgr.msc
alias ��ȫ����=gpedit.msc
alias ����ǽ=WF.msc
alias ����=msconfig
alias �ػ�=shutdown /s /t 0
alias off=shutdown /s /t 0
alias down=shutdown /s /t 0
alias reboot=shutdown  /r /t 0
alias ����=shutdown  /r /t 0
alias kill=taskkill /F  /PID $*
alias killpid=taskkill /F  /PID $*
alias ɱ����=taskkill /F  /PID $*
alias �ļ����=
alias ���=
alias ����=
alias ��������=net start $* 
alias ������װ����=  net start  msiserver
alias firewall=start %WIN_SHELL_APPS%\smc\recover_smc.bat
alias �رշ���ǽ=start %WIN_SHELL_APPS%\smc\useeasy.bat
alias stopsmc=start %WIN_SHELL_APPS%\smc\useeasy.bat
alias killsmc=start %WIN_SHELL_APPS%\smc\stopall.bat
alias cpuz=%WIN_SHELL_APPS%/cpuz/cpuz_x64.exe
alias ��Դ���=start resmon
alias ����=%WIN_SHELL_APPS%\diskgenius\DiskGenius.exe
alias dg=%WIN_SHELL_APPS%\diskgenius\DiskGenius.exe
alias hardware="%WIN_SHELL_APPS%\hardware\AIDA64 Extreme\aida64.exe"
alias Ӳ��="%WIN_SHELL_APPS%\hardware\AIDA64 Extreme\aida64.exe"


rem ===========================hotkey===========================
alias gnu=cd %WIN_SHELL_APPS%\gnu$Tdir
rem alias cygwin=cd /d %WIN_SHELL_APPS%\cygwin\bin$Tmintty.exe
alias cygwin=cd /d %WIN_SHELL_APPS%\cygwin\bin$Tbash.exe
alias utils=cd %WIN_SHELL_APPS%\utils$Tdir
alias shell=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
alias vi=%WIN_SHELL_APPS%\vim\vim80\vim.exe $*
alias es=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
alias �༭=shell
alias �༭=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
alias localhost=%WIN_SHELL_APPS%\vim\vim80\gvim.exe c:\windows\system32\drivers\etc\hosts
alias hosts=%WIN_SHELL_APPS%\vim\vim80\gvim.exe c:\windows\system32\drivers\etc\hosts
rem alias hosts=echo $* >>c:\windows\system32\drivers\etc\hosts


rem ============my device=========================
alias my_tvbox=adb connect 192.168.1.2:5555
alias tvbox=adb connect 192.168.1.2:5555
alias �������=adb connect 192.168.1.2:5555
rem ============common utils=========================
alias cap=%WIN_SHELL_APPS%\utils\SnapShot.exe
alias feiq=%WIN_SHELL_APPS%\common\feiq\feiq.exe
alias fastcopy=%WIN_SHELL_APPS%\common\fastcopy\fastcopy.exe
alias note=%windir%\system32\StikyNot.exe
alias ��ǩ=%windir%\system32\StikyNot.exe
alias save=rundll32.exe powrprof.dll,SetSuspendState Sleep
alias ����=rundll32.exe powrprof.dll,SetSuspendState Sleep
alias pp="%WIN_SHELL_APPS%\picpick\picpick.exe"
alias ��ͼ="%WIN_SHELL_APPS%\picpick\picpick.exe"
alias ie="%ProgramFiles%\Internet Explorer\iexplore.exe" $*
alias b=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
alias browser=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
alias �����=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
alias m="%WIN_SHELL_APPS%\Maxthon\Bin\Maxthon.exe" $*
alias maxthon="%WIN_SHELL_APPS%\Maxthon\Bin\Maxthon.exe" $*
alias mx="%WIN_SHELL_APPS%\Maxthon\Bin\Maxthon.exe" $*
alias chrome="%WIN_SHELL_APPS%\chrome\chrome.exe" $*
alias chrome="%SystemDrive%:\Users\%USERNAME%\AppData\Local\Google\Chrome\Application\chrome.exe" $*
alias chrome="c:\Users\Administrator\AppData\Local\Google\Chrome\Application\chrome.exe" $*
rem alias chrome="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
alias firefox=%WIN_SHELL_APPS%\firefox\firefox.exe
alias ff=%WIN_SHELL_APPS%\firefox\firefox.exe 
alias ss=%WIN_SHELL_APPS%\shadowsocks\Shadowsocks.exe
alias mail="%WIN_SHELL_APPS%\Foxmail\Foxmail.exe"
alias �ʼ�="%WIN_SHELL_APPS%\Foxmail\Foxmail.exe"
alias qqmail=start https://mail.qq.com
alias tc=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
alias tcmd=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
alias �ļ�������=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
alias everything=%WIN_SHELL_APPS%\everything\everything.exe $*
alias search=%WIN_SHELL_APPS%\everything\everything.exe $*
alias winhex=%WIN_SHELL_APPS%\winhex\WinHex.exe
alias mind=%WIN_SHELL_APPS%\XMind\XMind.exe
alias xmind=%WIN_SHELL_APPS%\XMind\XMind.exe

alias rec=%WIN_SHELL_APPS%\common\sdemo\S-Recorder.exe
alias gif=%WIN_SHELL_APPS%\gif\GifCam.exe
alias tools=start https://www.appinn.com/category/tools/

alias ramdisk=%WIN_SHELL_APPS%\common\ramdisk\FancyRd.exe
alias qq="D:\Program Files (x86)\Tencent\QQ\Bin\QQScLauncher.exe"
alias ramdisk=\common\ramdisk\FancyRd.exe
alias wx="%WIN_SHELL_APPS%\WeChat\WeChat.exe"
alias weixin="%WIN_SHELL_APPS%\WeChat\WeChat.exe"
alias wxweb=start https://wx.qq.com
alias wxdev="%WIN_SHELL_APPS%\΢��web�����߹���\΢��web�����߹���.exe"
alias zhihu=start https://www.baidu.com/s?wd=$1++$2site:zhihu.com
alias google=start https://www.google.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias github=start https://github.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias code=start https://github.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias ֪��=start https://www.baidu.com/s?wd=$*%20%20%20site%3Azhihu.com
alias ֪��=start https://www.baidu.com/s?wd=$1site:zhihu.com
alias ����=start http://www.iciba.com/$*
alias dict=start http://www.iciba.com/$*
alias �ʵ�=start http://www.iciba.com/$*
rem alias ͼƬ=start http://image.baidu.com/search/index\?tn=baiduimage\&fm=result\&ie=utf-8\&word=$*
rem === ����==========
alias �۾�=%WIN_SHELL_APPS%\EyeFoo\eyefoo.exe
alias eye=%WIN_SHELL_APPS%\EyeFoo\eyefoo.exe
alias kugou=%WIN_SHELL_APPS%\Kugou\KuGou.exe $*
alias ����=start https://y.qq.com/portal/player.html
alias music=start https://y.qq.com/portal/player.html
alias v=start https://v.qq.com
alias ��Ƶ=start https://v.qq.com
alias abc=start https://jingyan.baidu.com/article/7908e85c6eea55af491ad24e.html
alias ����=start https://www.huya.com/
alias douyin=start https://www.huya.com/
alias tv=start https://www.huya.com/
alias ����=start http://www.tuniu.com/
alias tuniu=start http://www.tuniu.com/
rem alias sn=start http://www.suning.com/
alias ����=start https://search.suning.com/$*/
alias sn=start https://search.suning.com/$*/
alias p=start https://search.suning.com/$*
alias prd=start https://product.suning.com/0000000000/$*.html
alias ����=start https://www.jd.com/
alias jd=start https://www.jd.com/
alias ��è=start https://www.tmall.com/
alias tmall=start https://www.tmall.com/
alias �Ա�=start https://www.taobao.com/
alias taobao=start https://www.taobao.com/
alias ��ͼ=start https://www.amap.com/
alias ditu=start https://www.amap.com/
alias map=start https://www.amap.com/
alias gaode=start https://www.amap.com/
alias ����=start http://www.xdowns.com/
alias sw=start http://www.xdowns.com/
alias os=start http://www.xitongzhijia.net/
alias weather=start http://www.weather.com.cn/weather40d/101190101.shtml
alias ����=start http://www.weather.com.cn/weather40d/101190101.shtml

rem === search ==========
alias s=start https://www.baidu.com/baidu?word=$1++$2++$3++$4
alias baidu=start https://www.baidu.com/baidu?word=$1++$2++$3++$4
alias ����=start https://www.baidu.com/baidu?word=$*
alias ����=start https://www.baidu.com/baidu?word=$1����
alias so=start https://www.so.com/s?q=$*
alias ����=start https://www.baidu.com/baidu?word=$*
alias wiki=start http://wikipedia.org/
alias mba=start http://mbalib.com/
alias class=start https://open.163.com/ted/
alias �γ�=start https://open.163.com/ted/

rem ======pe=========================
alias peid=%WIN_SHELL_APPS%\peid\peid.exe $*
rem === programe==========
alias turtle=start https://steakovercooked.com/ch/Software.Logo#logo
alias scrach1=start http://open.163.com/movie/2009/8/M/D/M88JJ461P_M88JKFLMD.html 

rem =========it info==================
alias csdn=start https://www.csdn.net/
alias news=start https://www.toutiao.com/
alias opensource=start https://www.oschina.net/
rem alias github=start https://github.com/
alias infoq=start http://www.infoq.com/cn/
alias me=start https://superproxy.github.io/
alias exception=start https://stackoverflow.com/
alias ����=start https://stackoverflow.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias q=start https://stackoverflow.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias whois=start https://www.whois.com/whois/$*
alias alarm=start http://www.cnnvd.org.cn/
rem =========common_dev==================
alias ftp="%WIN_SHELL_APPS%\common_dev\WinSCP\WinSCP.exe" $*
alias st="%WIN_SHELL_APPS%\sublime_text\sublime_text.exe" $*
alias editor="%WIN_SHELL_APPS%\sublime_text\sublime_text.exe" $*
alias ssh="%WIN_SHELL_APPS%\scrt\securcrT\SecureCRSecureFXPortable64\SecureCRTPortable.exe"
alias scrt="%WIN_SHELL_APPS%\scrt\securcrT\SecureCRSecureFXPortable64\SecureCRTPortable.exe"
alias putty="%WIN_SHELL_APPS%\common_dev\putty\putty.exe" $*
alias xshell="%WIN_SHELL_APPS%\common_dev\Xmanager Enterprise4\Xshell.exe" $*
alias xftp="%WIN_SHELL_APPS%\common_dev\Xmanager Enterprise4\Xftp.exe" $*
alias st="%WIN_SHELL_APPS%\Sublime3\sublime_text.exe" $*
alias bc=%WIN_SHELL_APPS%\bc\BCompare.exe $*
alias gvim=%WIN_SHELL_APPS%\vim\vim80\gvim.exe $*
alias vim=%WIN_SHELL_APPS%\vim\vim80\vim.exe $*
alias vscode=%WIN_SHELL_APPS%\vscode\Code.exe $*
rem =========os monitor===============
alias procmon=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
alias processmonitor=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
alias �ļ�����=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
rem =========design_dev===============
alias model=cd %WIN_SHELL_APPS%\design_dev\yEd$Tjava -jar yed.jar
alias yed=cd %WIN_SHELL_APPS%\design_dev\yEd$Tjava -jar yed.jar
rem alias yed=%WIN_SHELL_APPS%\design_dev\yEd\yEd.exe
rem alias arch=%WIN_SHELL_APPS%\design_dev\yWorks\yEd\yEd.exe
alias ea=%WIN_SHELL_APPS%\design_dev\vp\bin\Visual Paradigm for UML 10.0.exe" $*
alias vp=%WIN_SHELL_APPS%\design_dev\vp\bin\Visual Paradigm for UML 10.0.exe" $*
alias uml=%WIN_SHELL_APPS%\design_dev\vp\bin\Visual Paradigm for UML 10.0.exe" $*
alias arch="archi mate3"
alias ui="D:\Program Files (x86)\Axure\Axure RP 8\AxureRP8.exe" $*
alias ps=""


rem ===== source git =================
alias projects=cd /d e:\projects 
alias project=cd /d e:\projects$Tcd $1 
alias apps=cd /d %WIN_SHELL_APPS%
alias app=cd /d %WIN_SHELL_APPS%$Tcd $1 
alias pkg=cd /d %WIN_SHELL_PKG%
alias datas=cd /d %WIN_SHELL_DATA%
alias data=cd /d %WIN_SHELL_DATA%$Tcd $1 
alias source=cd /d e:\projects$Tgit clone https://github.com/$1/$2.git
rem ===== node_dev=================
rem alias node="%WIN_SHELL_APPS%\node_dev\node\node.exe" $*
rem alias npm="%WIN_SHELL_APPS%\node_dev\node\npm.cmd" $*
rem ===== go_dev=================
rem alias go="%WIN_SHELL_APPS%\go\bin\go.exe" $*
alias goland="%WIN_SHELL_APPS%\go_dev\GoLand\bin\goland64.exe" $*
rem ======python_dev=================
rem alias python="%WIN_SHELL_APPS%\python\python.exe" $*
alias pide=run pycharm
alias pide2="%WIN_SHELL_APPS%\python_dev\pycharm\bin\pycharm64.exe"
rem alias pip="%WIN_SHELL_APPS%\python\Scripts\pip.exe" $*
rem alias pip3="%WIN_SHELL_APPS%\python3\Scripts\pip.exe" $*
rem alias python3="%WIN_SHELL_APPS%\python3\python.exe" $*
rem alias python2="%WIN_SHELL_APPS%\python2\python.exe" $*
rem alias pip2="%WIN_SHELL_APPS%\python2\Scripts\pip.exe" $*
rem alias python="%WIN_SHELL_APPS%\python\python.exe" $*
rem =========web_dev===============
alias fiddler=%WIN_SHELL_APPS%\web_dev\fiddler\fiddler.exe
alias burpsuite=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
alias webhacker=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
alias burp=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
alias webstorm="D:\WebStorm 2017.3.3\bin\webstorm64.exe" $*
alias webdev="D:\WebStorm 2017.3.3\bin\webstorm64.exe" $*
alias track=%WIN_SHELL_APPS%\web_dev\httrack\WinHTTrack.exe $*
alias burpsuite=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
alias soapui=%WIN_SHELL_APPS%\web_dev\SmartBear\SoapUI-5.0.0\bin\soapui.exe
alias ab=%WIN_SHELL_APPS%\test_dev\ab\ab.exe $*
rem =========middle_dev===============
alias nginx=cd /d %WIN_SHELL_APPS%\middleware_dev\nginx-1.7.9$Tnginx.exe $*

rem ==============safe_check=================
alias fiddler=%WIN_SHELL_APPS%\web_dev\fiddler\fiddler.exe
alias webhacker=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
alias burp=java -jar %WIN_SHELL_APPS%\web_dev\burpsuite\burpsuite_free_v1.6.32.jar
alias sqlmap=start http://sqlmap.org/
rem alias metasploit=start https://www.metasploit.com/
alias metasploit=start https://www.metasploit.com/
alias nmap=start https://nmap.org/
rem ========java_dev==================
alias java_dev=cd %java_dev_home%
alias jdgui=%WIN_SHELL_APPS%\java_dev\jd-gui\jd-gui.exe
alias jdgui=%WIN_SHELL_APPS%\jd-gui\jd-gui-windows-1.4.0\jd-gui.exe
alias jd-gui=%WIN_SHELL_APPS%\jd-gui\jd-gui-windows-1.4.0\jd-gui.exe
rem alias idea=%java_dev_home%\idea\bin\idea64.exe
alias idea="%WIN_SHELL_APPS%\java_dev\idea\bin\idea64.exe" $*
alias ideakey="%WIN_SHELL_APPS%\java_dev\JBLocalServer\ideakey.exe" 
alias ideap="%java_dev_home%\idea\bin\idea64.exe" e:\projects\$1

alias jprofiler=%WIN_SHELL_APPS%\java_dev\jprofiler\bin\jprofiler.exe
alias visualvm=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe
alias visualvm=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe --console new --jdkhome %JAVA_HOME%
alias vm=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe --console new --jdkhome %JAVA_HOME%
rem alias gc=java -jar gcviewer-1.35-SNAPSHOT.jar -d %WIN_SHELL_APPS%\java_dev
alias gcviewer=cd  %WIN_SHELL_APPS%\java_dev $Tjava -jar gcviewer-1.35-SNAPSHOT.jar
alias gconline=start http://gceasy.io/
alias gc=cd  %WIN_SHELL_APPS%\java_dev\ibmjdk $T%WIN_SHELL_APPS%\java_dev\ibmjdk\startga.bat
alias thread=cd  %WIN_SHELL_APPS%\java_dev\ibmjdk$T %WIN_SHELL_APPS%\java_dev\ibmjdk\startjca.bat
alias heap=cd  %WIN_SHELL_APPS%\java_dev\ibmjdk$T%WIN_SHELL_APPS%\java_dev\ibmjdk\startha.bat
alias mat=%WIN_SHELL_APPS%\java_dev\mat\MemoryAnalyzer.exe

alias btrace=%WIN_SHELL_APPS%\java_dev\visualvm\bin\visualvm.exe
alias dcevm="https://github.com/dcevm/dcevm/releases"
alias onlineJavaIde=start https://gitee.com/puhaiyang/onlineJavaIde

rem ===========db==================
alias h2=cd %WIN_SHELL_APPS%\h2\h2\bin$Th2.bat
rem alias h2=%WIN_SHELL_APPS%\h2\h2\bin\h2w.bat
rem ===========vmm==================
rem alias vmm="%WIN_SHELL_APPS%\vmm\vmm.cmd" $*
rem ======== r_dev===============
alias rstudio="%WIN_SHELL_APPS%\RStudio\bin\RStudio.exe" $*
alias r="%WIN_SHELL_APPS%\RStudio\bin\RStudio.exe" $*
rem ======== android_dev===============
rem ======== arduino_dev===============
alias arduino=%WIN_SHELL_APPS%\soc_dev\arduino\arduino.exe $*
alias adu=%WIN_SHELL_APPS%\soc_dev\arduino\arduino.exe $*


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





