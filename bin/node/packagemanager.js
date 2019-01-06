function PackageManger() {
    //  create package  package.version  packageUrl  unzip
    // /**
    //  * 智能判断
    //  * @param {*} package 
    //  * @param {*} packageUrl 
    //  */
    // this.create = function (package, packageUrl) {
    //     console.info("create{" + "package:" + package + ", packageUrl:" + packageUrl + "}");
    //     // createGroup("", package, packageUrl);
    //     this.createGroup(null, package, packageUrl, null);
    // }

    this.parseAction = function (package, packageUrl) {
        var action = {
            "download": packageUrl,
            "fileName": packageUrl,
            "type": "none",
            "steps": [
                {
                    "download": packageUrl,
                    "fileName": packageUrl,
                }
            ]
        };
        // if (packageUrl.endsWith("exe")) {
        //     console.debug("exe:" + packageUrl);
        // }
        // else if (packageUrl.endsWith("zip")) {
        //     action["type"]="zip";
        // }
        // else if (packageUrl.endsWith("rar")) {
        //     action["type"]="rar";
        // }
        // else if (packageUrl.endsWith("git")) {
        //     action["type"]="git";
        // }
        return action;

    }

    this.create = function (group, package, version, packageUrl) {
        console.log("creating... " + "group:" + group + ",pakcage:" + package + ",version:" + version + ",packageUrl:" + packageUrl);
        var result = {};
        if (group == null || typeof (group) == undefined) {
            result['group'] = null;
        } else {
            result['group'] = group;
        }
        result['package'] = package;
        result['url'] = packageUrl;
        if (version == null || typeof (version) == undefined) {
            result['version'] = "latest";
        } else {
            result['version'] = version;
        }
        result['action'] = this.parseAction(package, packageUrl);

        console.debug(JSON.stringify(result));

        // var x = JSON.parse(s);
        // console.debug(x);

        // 文件保存 csv文件，一个名称一个 package.csv
        // 或者db文件，检索方便
        this.save(result);
    }

    this.save = function (packageInfo, fileType = "json") {
        var fileName = packageInfo['package'] ; 
        if (packageInfo['group'] != null) {
              fileName = packageInfo['group'];
        }
        var content;
        if(fileType=="json") {
              content = this.convert2Json(packageInfo);
        }
        else {
            content = this.convert2Csv(packageInfo);
        }
        console.debug(`content:${content}`);
        var env = process.env["WIN_SHELL_DATA"];
        var version =packageInfo["version"];
        var fileDirectory = env + "\\" + fileName ;
        var filePath = fileDirectory+ "\\" + version + "." + fileType;


        var utils = require('./utils');
        utils.mkdirs(fileDirectory);

        var fs = require('fs');
        try {
            fs.writeFile(filePath, content, function (err) {
                if (err) {
                    throw err;
                }
                console.debug(filePath + " has been saved.");
            });
        } catch (err) {
            console.error(err);
        }
    }


    this.convert2Csv = function (packageInfo) {
        const Json2csvParser = require('json2csv').Parser;
        const head = ['group', 'package', 'version', 'url', 'action'];
        const json2csvParser = new Json2csvParser({ head, quote: '"' });
        console.debug(`packageInfo:${packageInfo}`);
        const content = json2csvParser.parse(packageInfo);
        console.debug(`content:${content}`);
        return  content;
    }
    this.convert2Json = function (packageInfo) {
        const content = JSON.stringify(packageInfo);
        return  content;
    }



    // install key
    // read key, get url , download url  lang
    //  

    this.install = function (package) {
        console.debug("install:" + `${package}`)
        // 读取 csv
    }

    this.uninstall = function (package) {
        console.debug("uninstall:" + `${package}`)
        // 读取 csv
    }

    //  cmd exapmle
    this.help = function () {
        var usage = {
            "help": "node app.js help",
            "create": "node app.js create git  http://www.baidu.com/git.exe",
            "create": "node app.js create -g java_dev  git  http://www.baidu.com/git.exe -v 1.0.1",
            "install": "node app.js  install git",
            "remove": "node app.js remove  git"
        }
        console.log(usage);
    }
}

module.exports = PackageManger;