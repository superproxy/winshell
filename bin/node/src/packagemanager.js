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

    var utils = require("./utils");
    var url = require("url");
    var fs = require("fs");

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

        var fileType = this.parseFileType(packageUrl);
        action["fileType"] = fileType;
        var fileName = this.parseFileName(packageUrl);
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
        result['version'] = this.parseVersion(version)
        result['action'] = this.parseAction(package, packageUrl);

        console.debug(JSON.stringify(result));

        // var x = JSON.parse(s);
        // console.debug(x);

        // 文件保存 csv文件，一个名称一个 package.csv
        // 或者db文件，检索方便
        this.save(result);
    }
    this.parseVersion = function (version) {
        var v;
        if (version == null || typeof (version) == undefined) {
            v = "latest";
        } else {
            v = version;
        }
        return v;
    }

    this.save = function (packageInfo, fileType = "json") {
        var fileName = packageInfo['package'];
        if (packageInfo['group'] != null) {
            fileName = packageInfo['group'];
        }
        var content;
        if (fileType == "json") {
            content = this.convert2Json(packageInfo);
        }
        else {
            content = this.convert2Csv(packageInfo);
        }
        console.debug(`content:${content}`);
        var env = process.env["WIN_SHELL_DATA"];
        var version = packageInfo["version"];
        var fileDirectory = env + "\\" + fileName;
        var filePath = fileDirectory + "\\" + version + "." + fileType;


        var utils = require('./utils');
        utils.mkdirsSync(fileDirectory);

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
        return content;
    }

    this.convert2Json = function (packageInfo) {
        const content = JSON.stringify(packageInfo);
        return content;
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
        var packageInfo = null;
        // 本地缓存的或者官方站点
        if (typeof (server) == undefined || server == null) {
            packageInfo = this.readPackage(package, version);
            if (packageInfo == null) {
                console.error("no found, package:%s, version:%s,server,%s", package, version, server);
                return;
            }
        }
        else if (server == "github.com") {

        }


        console.log("packageInfo:%s", JSON.stringify(packageInfo));

        var src = packageInfo['url'];
        var out = process.env["WIN_SHELL_PKG"] + "\\" + packageInfo['action']['fileName'];
        packageInfo["target"] = out;

        // 异步问题，嵌套回调函数
        var exists = fs.existsSync(out);
        if (!exists) {
            this.downloadSync(src, out);
        }
        else if (force) {
            console.log("remove and then install ");
            fs.unlinkSync(out);
            this.downloadSync(src, out);
        }
        this.installSync(packageInfo);
    }

    this.installSync = function (packageInfo) {
        console.log("start to install...");
        var fileType = packageInfo['action']['fileType'];
        var file = packageInfo["target"];
        var out = process.env["WIN_SHELL_APPS"] + "\\" + packageInfo['package'];
        if (fileType == "exe" || fileType == "mis") {
            // 执行 exe
            console.log("install action file %s", file);
            const execSync = require('child_process').execSync;
            execSync("start " + file);
        }
        else if (fileType == "zip") {
            console.log("unzip...");
            // unzip    zip里面的格式差别很大，需要区分对待。 一层， 里面两层的。 版本信息保留不保留的问题
            var unzip = require('unzip');
            var fs = require('fs');
            try {
                var readStream = fs.createReadStream(file);
                var writeStream = fs.createWriteStream(out);
                readStream
                    .pipe(unzip.Parse());
                // .pipe(writeStream) 
            } catch (error) {
                console.error(`unzip error: ${error}`);
            }

        }
        else if (fileType == "rar") {
            var Unrar = require('node-unrar');
            var rar = new Unrar(file);
            utils.mkdirsSync(out);
            rar.extract(out, null, function (err) {
                //file extracted successfully.
            });

        }
    }

    this.getProxy = function (protocol) {
        var proxy = null;
        var httpProxy = process.env["http_proxy"];
        var httpsProxy = process.env["https_proxy"];
        console.trace("httproxy:%s", httpProxy);
        if (protocol == "https") {
            if (utils.isNotEmpty(httpsProxy)) {
                proxy = httpsProxy;
            }
        } else {
            if (utils.isNotEmpty(httpProxy)) {
                proxy = httpProxy;
            }
        }
        console.debug("proxy:%s", proxy);
        return proxy;
    }

    /**
     * wget是异步的，需要等待下载完成
     * @param {*} src 
     * @param {*} output 
     */
    this.downloadAction = function (src, output, callback) {
        // 下载，智能生成文件名
        var wget = require('wget-improved');
        const srcUrl = url.parse(src);

        var proxy = this.getProxy(srcUrl.protocol);
        var options = {};

        // bug with proxy
        // options["proxy"] = proxy;

        var download = wget.download(src, output, options);
        download.on('error', function (err) {
            console.log(err);
        });
        download.on('end', function (output) {
            console.log(output);
            callback();
        });
        download.on('progress', function (progress) {
            // console.log(progress);
        });
    }
    /**
     * 使用wget下載
     * @param {} src 
     * @param {*} output 
     * @param {*} callback 
     */
    this.downloadSync = function (src, out) {
        // 下载，智能生成文件名
        // wget bug  1.1.18 验证bug  gnuwin32还没有更新
        // wget --no-check-certificate -O D:\winshell\pkg\ideaIU-2018.2.5.exe https://download.jetbrains.com/idea/ideaIU-2018.2.5.exe
        // var cmd = `wget --no-check-certificate  --secure-protocol=auto -O ${out} ${src}`;

        // curl， -L支撑重定向要不然很多 重定向的文件下载不下来,  
        // curl -L --ssl --output D:\winshell\pkg\ideaIU-2018.2.5.exe 
        // https://download.jetbrains.com/idea/ideaIU-2018.2.5.exe  
        // 常见问题  需要授权认证,文件不存在，代理
        // 解决办法：看返回结果，抓包看交互过程
        var cmd = `curl -L  --ssl --output ${out} ${src}`;
        console.debug("cmd:%s", cmd);
        const execSync = require('child_process').execSync;
        execSync(cmd);
    }

    this.readPackage = function (package, v) {
        var env = process.env["WIN_SHELL_DATA"];
        var fileName = package;
        var fileDirectory = env + "\\" + fileName;
        var version = this.parseVersion(v)
        var filePath = fileDirectory + "\\" + version + ".json";
        console.debug("filepath:%s", filePath);

        var fs = require('fs');
        var content = fs.readFileSync(filePath);
        console.log("content:%s", content);
        return JSON.parse(content);
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

    this.parseFileType = function (packageUrl) {
        if (utils.endsWith(packageUrl, "exe")) {
            console.debug("exe:" + packageUrl);
            fileType = "exe";
        }
        else if (utils.endsWith(packageUrl, "zip")) {
            fileType = "zip";
        }
        else if (utils.endsWith(packageUrl, "rar")) {
            fileType = "rar";
        }
        else if (utils.endsWith(packageUrl, "mis")) {
            fileType = "mis";
        }
        else if (utils.endsWith(packageUrl, "git")) {
            fileType = "git";
        }
        return fileType;
    }

    this.parseFileName = function (packageUrl) {
        var utils = require("./utils");
        var fileName = utils.lastStr(packageUrl, "/");
        return fileName;
    }
}

module.exports = PackageManger;