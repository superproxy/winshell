var unpackager = require("./unpackager");
var fs = require("fs");
var utils = require("./utils");
function installSync(packageInfo) {
    console.log("start to install...");
    var fileType = packageInfo['action']['fileType'];
    var src = packageInfo["target"];
    var out = process.env["WIN_SHELL_APPS"] + "\\" + packageInfo['package'];
    if (fileType == "exe" || fileType == "mis") {
        // 执行 exe,支持不同exe判断
        console.log("install action file %s", src);
        const execSync = require('child_process').execSync;
        execSync("start " + src);
    }
    else if (fileType == "zip" || fileType == "rar") {
        console.log("unpackager...");

        unpackager.unpackage(src, out, fileType);
        // 测试目录out，找到有file的folder，然后替换。exe可以替换成package.exe，规范化路径

        var targetDir = utils.findFile(out);
        if (targetDir != null && targetDir != out) {

    
            fs.rmdir(targetDir);
        }


    }
}





exports.installSync = installSync;