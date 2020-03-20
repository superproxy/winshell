alias home=cd /d %WIN_SHELL_HOME%\
alias 主目录=cd /d %WIN_SHELL_HOME%\
alias hh=%WIN_SHELL_HOME%\winshell.bat help $*
alias 帮助=%WIN_SHELL_HOME%\winshell.bat help $*
alias open=start $*
alias 目录=start $*
alias shownet=netstat -anto -p TCP
alias showip=netstat -anto -p TCP
alias showhost=hostname
alias ipdns=ipconfig /displaydns
alias dns=nslookup  - 114.114.114.114
alias dns114=nslookup  - 114.114.114.114
alias port=netstat -anto -p TCP | findstr "$1"
alias 设备管理器=devmgmt.msc
alias 设备管理=devmgmt.msc
alias 设备=devmgmt.msc
alias 计算机=compmgmt.msc
alias 控制面板=control
alias 服务=services.msc
alias 磁盘管理=diskmgmt.msc
alias 磁盘管理器=diskmgmt.msc
alias 性能=perfmon.msc
alias 虚拟化=virtmgmt.msc
alias 虚拟机=virtmgmt.msc
alias hyper-v=virtmgmt.msc
alias 共享文件夹=fsmgmt.msc
alias 用户管理=lusrmgr.msc
alias 用户管理=lusrmgr.msc
alias 安全策略=gpedit.msc
alias 防火墙=WF.msc
alias 启动=msconfig
alias 关机=shutdown /s /t 0
alias off=shutdown /s /t 0
alias down=shutdown /s /t 0
alias reboot=shutdown  /r /t 0
alias 重启=shutdown  /r /t 0
alias kill=taskkill /F  /PID $*
alias killpid=taskkill /F  /PID $*
alias 杀进程=taskkill /F  /PID $*
alias 文件句柄=
alias 监控=
alias 网络=
alias 启动服务=net start $* 
alias 启动安装服务=  net start  msiserver
alias firewall=start %WIN_SHELL_APPS%\smc\recover_smc.bat
alias 关闭防火墙=start %WIN_SHELL_APPS%\smc\useeasy.bat
alias stopsmc=start %WIN_SHELL_APPS%\smc\useeasy.bat
alias killsmc=start %WIN_SHELL_APPS%\smc\stopall.bat
alias cpuz=%WIN_SHELL_APPS%/cpuz/cpuz_x64.exe
alias 资源监控=start resmon
alias 分区=%WIN_SHELL_APPS%\diskgenius\DiskGenius.exe
alias dg=%WIN_SHELL_APPS%\diskgenius\DiskGenius.exe
alias hardware="%WIN_SHELL_APPS%\hardware\AIDA64 Extreme\aida64.exe"
alias 硬件="%WIN_SHELL_APPS%\hardware\AIDA64 Extreme\aida64.exe"


rem ===========================hotkey===========================
alias gnu=cd %WIN_SHELL_APPS%\gnu$Tdir
rem alias cygwin=cd /d %WIN_SHELL_APPS%\cygwin\bin$Tmintty.exe
alias cygwin=cd /d %WIN_SHELL_APPS%\cygwin\bin$Tbash.exe
alias utils=cd %WIN_SHELL_APPS%\utils$Tdir
alias shell=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
alias vi=%WIN_SHELL_APPS%\vim\vim80\vim.exe $*
alias es=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
alias 编辑=shell
alias 编辑=%WIN_SHELL_APPS%\vim\vim80\gvim.exe %WIN_SHELL_HOME%\winshell.bat
alias localhost=%WIN_SHELL_APPS%\vim\vim80\gvim.exe c:\windows\system32\drivers\etc\hosts
alias hosts=%WIN_SHELL_APPS%\vim\vim80\gvim.exe c:\windows\system32\drivers\etc\hosts
rem alias hosts=echo $* >>c:\windows\system32\drivers\etc\hosts


rem ============my device=========================
alias my_tvbox=adb connect 192.168.1.2:5555
alias tvbox=adb connect 192.168.1.2:5555
alias 网络盒子=adb connect 192.168.1.2:5555
rem ============common utils=========================
alias cap=%WIN_SHELL_APPS%\utils\SnapShot.exe
alias feiq=%WIN_SHELL_APPS%\common\feiq\feiq.exe
alias fastcopy=%WIN_SHELL_APPS%\common\fastcopy\fastcopy.exe
alias note=%windir%\system32\StikyNot.exe
alias 便签=%windir%\system32\StikyNot.exe
alias save=rundll32.exe powrprof.dll,SetSuspendState Sleep
alias 休眠=rundll32.exe powrprof.dll,SetSuspendState Sleep
alias pp="%WIN_SHELL_APPS%\picpick\picpick.exe"
alias 截图="%WIN_SHELL_APPS%\picpick\picpick.exe"
alias ie="%ProgramFiles%\Internet Explorer\iexplore.exe" $*
alias b=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
alias browser=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
alias 浏览器=%WIN_SHELL_APPS%\Maxthon5\Bin\Maxthon.exe
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
alias 邮件="%WIN_SHELL_APPS%\Foxmail\Foxmail.exe"
alias qqmail=start https://mail.qq.com
alias tc=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
alias tcmd=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
alias 文件管理器=%WIN_SHELL_APPS%\TotalCmd\TOTALCMD.EXE $*
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
alias wxdev="%WIN_SHELL_APPS%\微信web开发者工具\微信web开发者工具.exe"
alias zhihu=start https://www.baidu.com/s?wd=$1++$2site:zhihu.com
alias google=start https://www.google.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias github=start https://github.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias code=start https://github.com/search?q=$1++$2++$3++$4++$5++$6++$7
alias 知乎=start https://www.baidu.com/s?wd=$*%20%20%20site%3Azhihu.com
alias 知道=start https://www.baidu.com/s?wd=$1site:zhihu.com
alias 单词=start http://www.iciba.com/$*
alias dict=start http://www.iciba.com/$*
alias 词典=start http://www.iciba.com/$*
rem alias 图片=start http://image.baidu.com/search/index\?tn=baiduimage\&fm=result\&ie=utf-8\&word=$*
rem === 娱乐==========
alias 眼睛=%WIN_SHELL_APPS%\EyeFoo\eyefoo.exe
alias eye=%WIN_SHELL_APPS%\EyeFoo\eyefoo.exe
alias kugou=%WIN_SHELL_APPS%\Kugou\KuGou.exe $*
alias 音乐=start https://y.qq.com/portal/player.html
alias music=start https://y.qq.com/portal/player.html
alias v=start https://v.qq.com
alias 视频=start https://v.qq.com
alias abc=start https://jingyan.baidu.com/article/7908e85c6eea55af491ad24e.html
alias 抖音=start https://www.huya.com/
alias douyin=start https://www.huya.com/
alias tv=start https://www.huya.com/
alias 旅游=start http://www.tuniu.com/
alias tuniu=start http://www.tuniu.com/
rem alias sn=start http://www.suning.com/
alias 苏宁=start https://search.suning.com/$*/
alias sn=start https://search.suning.com/$*/
alias p=start https://search.suning.com/$*
alias prd=start https://product.suning.com/0000000000/$*.html
alias 京东=start https://www.jd.com/
alias jd=start https://www.jd.com/
alias 天猫=start https://www.tmall.com/
alias tmall=start https://www.tmall.com/
alias 淘宝=start https://www.taobao.com/
alias taobao=start https://www.taobao.com/
alias 地图=start https://www.amap.com/
alias ditu=start https://www.amap.com/
alias map=start https://www.amap.com/
alias gaode=start https://www.amap.com/
alias 下载=start http://www.xdowns.com/
alias sw=start http://www.xdowns.com/
alias os=start http://www.xitongzhijia.net/
alias weather=start http://www.weather.com.cn/weather40d/101190101.shtml
alias 天气=start http://www.weather.com.cn/weather40d/101190101.shtml

rem === search ==========
alias s=start https://www.baidu.com/baidu?word=$1++$2++$3++$4
alias baidu=start https://www.baidu.com/baidu?word=$1++$2++$3++$4
alias 搜索=start https://www.baidu.com/baidu?word=$*
alias 天气=start https://www.baidu.com/baidu?word=$1天气
alias so=start https://www.so.com/s?q=$*
alias 搜索=start https://www.baidu.com/baidu?word=$*
alias wiki=start http://wikipedia.org/
alias mba=start http://mbalib.com/
alias class=start https://open.163.com/ted/
alias 课程=start https://open.163.com/ted/

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
alias 问题=start https://stackoverflow.com/search?q=$1++$2++$3++$4++$5++$6++$7
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
alias 文件引用=%WIN_SHELL_APPS%\processmonitor/Procmon.exe $*
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
echo create      create help
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





