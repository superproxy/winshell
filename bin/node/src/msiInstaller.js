/**
 *   // HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders
    // HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
    // 执行 exe,支持不同exe判断
 * @param {*} src 
 * @param {*} target 
 */
function install(src, target) {
    console.log("install action file %s", src);
    const execSync = require('child_process').execSync;
    // execSync(`msiexec /i "${src}" /promptrestart /qb  TARGETDIR="${target}"`);

    // msi 还有null soft
    // 在用InstallShield制作安装包的时候我们经常需要用到"TARGETDIR"变量 
    // 通常TARGETDIR是InstallScript工程中使用
    // 而在InstallScript MSI和Basic MSI工程中，安装路径变量是INSTALLDIR。
    var cmd = `msiexec /i "${src}"   INSTALLDIR="${target}" TARGETDIR="${target}"  INSTALLFOLDER="${target}"  DEFAULTPATHC="${target}"  /promptrestart /qb /log install.log`;
    console.log(cmd);
    execSync(cmd);
}

function update(src, target) {
    console.log("install action file %s", src);
    const execSync = require('child_process').execSync;
    execSync(`msiexec /update "${src}"`);
}

function uninstall(src, target) {
    console.log("install action file %s", src);
    const execSync = require('child_process').execSync;
    execSync(`msiexec /uninstall  "${src}"`);
}


exports.install = install;