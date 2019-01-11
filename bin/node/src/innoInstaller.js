/**
 * Inno Setup is a free installer for Windows programs by Jordan Russell and Martijn Laan. First introduced in 1997, 
 * Inno Setup today rivals and even surpasses many commercial installers in feature set and stabi
 * @param {*} src 
 * @param {*} target 
 */
function install(src, target) {
    console.log("inno install action file %s", src);
    const execSync = require('child_process').execSync;
    var cmd = `${src} /VERYSILENT /DIR="${target}"`;  
    console.log(cmd);
    execSync(cmd);
}

exports.install = install;