function PackageManger() {
    var utils = require("./utils");
    var fs = require("fs");
    var packager = require("./packager");
    var downloader = require("./downloader");
    var installer = require("./installer");

 

    this.parseAction = function (package, packageUrl) {
        var action = {
            "download": packageUrl,
            "fileName": packageUrl,
            "fileType": "none",
            "steps": [
                {
                    "download": packageUrl,
                    "fileName": packageUrl,
                }
            ]
        };

        var fileType = packager.parseFileType(packageUrl);
        action["fileType"] = fileType;
        var fileName = packager.parseFileName(packageUrl);
        action["fileName"] = fileName;

        console.log("action:%s", JSON.stringify(action));
        return action;

    }

    this.create = function (group, package, version, packageUrl) {
        console.log("creating... " + "group:" + group + ",package:" + package + ",version:" + version + ",packageUrl:" + packageUrl);
        var result = {};
        if (group == null || typeof (group) == undefined) {
            result['group'] = null;
        } else {
            result['group'] = group;
        }
        result['package'] = package;
        result['url'] = packageUrl;
        result['version'] = packager.parseVersion(version)
        result['action'] = this.parseAction(package, packageUrl);

        console.debug(JSON.stringify(result));

        // var x = JSON.parse(s);
        // console.debug(x);

        // 文件保存 csv文件，一个名称一个 package.csv
        // 或者db文件，检索方便
        packager.save(result);
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
        var packageInfo=packager.read(server,group, package, version);
        console.log("packageInfo:%s", JSON.stringify(packageInfo));
        var src = packageInfo['url'];
        var out = process.env["WIN_SHELL_PKG"] + "\\" + packageInfo['action']['fileName'];
        packageInfo["target"] = out;

        // 异步问题，嵌套回调函数
        var exists = fs.existsSync(out);
        if (!exists) {
            downloader.downloadSync(src, out);
        }
        else if (force) {
            console.log("remove and then install ");
            fs.unlinkSync(out);
            downloader.downloadSync(src, out);
        }
        installer.installSync(packageInfo);
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
            "remove": "node app.js remove  git",
            "update": "visit https://github.com/superproxy/winshell"
        }
        console.log(usage);
    }
}

module.exports = PackageManger;