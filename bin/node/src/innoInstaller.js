
function install(src, target) {
    console.log("inno install action file %s", src);
    const execSync = require('child_process').execSync;
    var cmd = `${src} /VERYSILENT /DIR="${target}"`;  
     // var cmd = `${src} /SILENT /DIR="${target}"`;
    console.log(cmd);
    execSync(cmd);
}

exports.install = install;