
function install(src, target) {
    console.log("NullSoft install action file %s", src);
    const execSync = require('child_process').execSync;
    var cmd = `${src} /S /D=${target}`;  
    console.log(cmd);
    execSync(cmd);
}

exports.install = install;