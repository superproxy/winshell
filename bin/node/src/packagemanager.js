function PackageManger() {
    var utils = require("./utils");
    var fs = require("fs");
    var packager = require("./packager");
    var downloader = require("./downloader");
    var installer = require("./installer");

    this.create = function (group, package, version, packageUrl) {
        console.log("creating... " + "group:" + group + ",package:" + package + ",version:" + version + ",packageUrl:" + packageUrl);
        var packageInfo = packager.buildPackageInfo(group, package, version, packageUrl);
        console.debug(JSON.stringify(packageInfo));

        // var x = JSON.parse(s);
        // console.debug(x);

        // 文件保存 csv文件，一个名称一个 package.csv
        // 或者db文件，检索方便
        packager.save(packageInfo);
    }



    // install key
    // read key, get url , download url  lang
    //  

    /**
     * 支持从本地，或者远程获取安装JSON
     * 支持第三方Json  choco  scoop
     * @param {} group 
     * @param {*} package 
     */
    this.install = function (group, package, version, server, force) {
        console.debug("install:group:%s,package:%s, version:%s, server:%s, force:%s", group, package, version, server, force)
        var packageInfo = packager.read(server, group, package, version);
        console.log("packageInfo:%s", JSON.stringify(packageInfo));
        var src = packageInfo['url'];
        var out = packageInfo["target"];
        // packager.buildOutPath(packageInfo);

        // 异步问题，嵌套回调函数
        if (utils.contains("http") || utils.contains("ftp")) {
            var exists = fs.existsSync(out);
            if (!exists) {
                downloader.downloadSync(src, out);
            }
            else if (force) {
                console.log("remove and then install ");
                fs.unlinkSync(out);
                downloader.downloadSync(src, out);
            }
        } else {
            // 本地
            packageInfo["target"] = src;
        }
        installer.installSync(packageInfo);
    }

    this.info = function (package) {
        var packageInfo = packager.read(null, null, package, null);
        console.log("packageInfo:%s", JSON.stringify(packageInfo));
        console.log("cmd: create %s %s %s", packageInfo["group"], packageInfo["package"], packageInfo["url"]);
    }

    this.uninstall = function (package) {
        console.debug("uninstall:" + `${package}`)
    }

    //  cmd exapmle
    this.help = function () {
        var usage = {
            "help": "node app.js help",
            "create": "node app.js create git  http://www.baidu.com/git.exe",
            "create": "node app.js create -g java_dev  git  http://www.baidu.com/git.exe -v 1.0.1",
            "install": "node app.js  install git",
            "remove": "node app.js remove git",
            "info": "node app.js info git",
            "update": "visit https://github.com/superproxy/winshell"
        }
        console.log(usage);
    }
}

module.exports = PackageManger;