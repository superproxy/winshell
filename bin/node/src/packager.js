var utils = require("./utils");


function getPkgDir() {
    return process.env["WIN_SHELL_PKG"];
}

function getAppDir() {
    return process.env["WIN_SHELL_APPS"];
}

function getDataDir() {
    return process.env["WIN_SHELL_DATA"];
}

function read(server, group, package, version) {
    var packageInfo = null;
    // 本地缓存的或者官方站点
    if (typeof (server) == undefined || server == null) {
        packageInfo = readLocal(package, version);
        if (packageInfo == null) {
            console.error("no found, package:%s, version:%s,server,%s", package, version, server);
        }
        else {
            packageInfo["target"] = getPkgDir() + "\\" + packageInfo['action']['fileName'];
            if (utils.isNotEmpty(packageInfo["group"])) {
                packageInfo["target"] = getPkgDir() + "\\" + packageInfo['group'] + "\\" + packageInfo['action']['fileName'];
            }
            packageInfo["installDir"] = getAppDir() + "\\" + packageInfo['package'];
            if (utils.isNotEmpty(packageInfo["group"])) {
                packageInfo["installDir"] = getAppDir() + "\\" + packageInfo['group'] + "\\" + packageInfo['package'];
            }
        }
    }
    else if (server == "github.com") {
    }
    return packageInfo;
}


function readLocal(package, v) {
    var dataDir = getDataDir();
    var fileName = package;
    var fileDirectory = dataDir + "\\" + fileName;
    var version = parseVersion(v)
    var filePath = fileDirectory + "\\" + version + ".json";
    console.debug("filepath:%s", filePath);

    var fs = require('fs');
    var content = fs.readFileSync(filePath);
    console.log("content:%s", content);
    return JSON.parse(content);
}

function parseAction(package, packageUrl) {
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

    var fileType = parseFileType(packageUrl);
    action["fileType"] = fileType;
    var fileName = parseFileName(packageUrl);
    action["fileName"] = fileName;

    console.log("action:%s", JSON.stringify(action));
    return action;

}

function parseVersion(version) {
    var v;
    if (version == null || typeof (version) == undefined) {
        v = "latest";
    } else {
        v = version;
    }
    return v;
}

function buildPackageInfo(group, package, version, packageUrl) {
    var result = {};
    if (group == null || typeof (group) == undefined) {
        result['group'] = null;
    } else {
        result['group'] = group;
    }
    result['package'] = package;
    result['url'] = packageUrl;
    result['version'] = parseVersion(version)
    result['action'] = parseAction(package, packageUrl);
    return result;
}


function save(packageInfo, fileType = "json") {
    var fileName = packageInfo['package'];
    // if (packageInfo['group'] != null) {
    //     fileName = packageInfo['group'];
    // }
    var content;
    if (fileType == "json") {
        content = convert2Json(packageInfo);
    }
    else {
        content = convert2Csv(packageInfo);
    }
    console.debug(`content:${content}`);
    var env = getDataDir();
    var version = packageInfo["version"];
    var fileDirectory = env + "\\" + fileName;
    var filePath = fileDirectory + "\\" + version + "." + fileType;


    utils.mkdirsSync(fileDirectory);

    var fs = require('fs');
    // 强制写入
    fs.writeFileSync(filePath, content);
}



//   function convert2Csv(packageInfo) {
//     const Json2csvParser = require('json2csv').Parser;
//     const head = ['group', 'package', 'version', 'url', 'action'];
//     const json2csvParser = new Json2csvParser({ head, quote: '"' });
//     console.debug(`packageInfo:${packageInfo}`);
//     const content = json2csvParser.parse(packageInfo);
//     console.debug(`content:${content}`);
//     return content;
// }

function convert2Json(packageInfo) {
    const content = JSON.stringify(packageInfo);
    return content;
}


function parseFileType(packageUrl) {
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
    else if (utils.endsWith(packageUrl, "msi")) {
        fileType = "msi";
    }
    else if (utils.endsWith(packageUrl, "git")) {
        fileType = "git";
    }

    else {
        fileType = utils.lastStr(packageUrl, ".");
    }
    return fileType;
}

function parseFileName(packageUrl) {
    var fileName = utils.lastStr(packageUrl, "/");
    return fileName;
}

function parseFileName(packageUrl) {
    var fileName = utils.lastStr(packageUrl, "/");
    return fileName;
}


exports.parseFileName = parseFileName;
exports.convert2Json = convert2Json;
exports.save = save;
exports.read = read;
exports.parseVersion = parseVersion;
exports.parseFileType = parseFileType;
exports.parseAction = parseAction;
exports.buildPackageInfo = buildPackageInfo;

