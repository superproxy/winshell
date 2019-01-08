var unpackager = require("./unpackager");
function installSync(packageInfo) {
    console.log("start to install...");
    var fileType = packageInfo['action']['fileType'];
    var src = packageInfo["target"];
    var out = process.env["WIN_SHELL_APPS"] + "\\" + packageInfo['package'];
    if (fileType == "exe" || fileType == "mis") {
        // 执行 exe
        console.log("install action file %s", src);
        const execSync = require('child_process').execSync;
        execSync("start " + src);
    }
    else if (fileType == "zip" || fileType=="rar") {
        console.log("unzip...");
        // unzip    zip里面的格式差别很大，需要区分对待。 一层， 里面两层的。 版本信息保留不保留的问题
        unpackager.unpackage(src, out, fileType);
    }
}

exports.installSync = installSync;