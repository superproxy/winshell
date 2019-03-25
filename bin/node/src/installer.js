var unpackager = require("./unpackager");
var fs = require("fs");
var utils = require("./utils");
function installSync(packageInfo) {
    console.log("start to install...");
    var fileType = packageInfo['action']['fileType'];
    var src = packageInfo["target"];  //  download path
    var out = packageInfo["installDir"];  // apps path


    if (fileType == "exe") {
        // 执行 exe,支持不同exe判断
        // var utils = require("./utils");
        // utils.mkdirsSync(out);
        var peDetector = require("./peDetector");
        peDetector.parseType(src, function (peType) {
            console.log("peType:%s", peType);
            if (peType == "inno") {
                var innoInstaller = require("./innoInstaller");
                innoInstaller.install(src, out);
            }
            else if (peType == "nsis") {
                var nsisInstaller = require("./nsisInstaller");
                nsisInstaller.install(src, out);
            }
            else {
                console.log("install action file %s", src);
                const execSync = require('child_process').execSync;
                execSync(`"${src}"`);
            }
        });
    }

    else if (fileType == "msi") {
        var msiInstaller = require("./msiInstaller");
        msiInstaller.install(src, out);
    }
    else if (fileType == "tgz" || fileType == "gz") {
        var tgzInstaller = require("./tgzInstaller");
        tgzInstaller.install(src, out);
        var utils = require("./utils");
        var dirWithFile = utils.findFile(out);
        console.log(dirWithFile);
        if (dirWithFile != null && dirWithFile != out) {
            utils.move(dirWithFile, out);
        }
    } else if (fileType == "zip" || fileType == "rar") {
        console.log("unpackager...");
        unpackager.unpackage(src, out, fileType);
        // 测试目录out，找到有file的folder，然后替换。exe可以替换成package.exe，规范化路径!!!
        var utils = require("./utils");
        var dirWithFile = utils.findFile(out);
        console.log(dirWithFile);
        if (dirWithFile != null && dirWithFile != out) {
            utils.move(dirWithFile, out);
        }
    }
}


exports.installSync = installSync;