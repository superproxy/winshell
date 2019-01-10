var fs = require("fs");
var path = require("path");

//递归创建目录 异步方法
function mkdirs(dirname, callback) {
    fs.exists(dirname, function (exists) {
        if (exists) {
            return;
        } else {
            //console.log(path.dirname(dirname));
            mkdirs(path.dirname(dirname), function () {
                fs.mkdir(dirname, callback);
            });
        }
    });
}

//递归创建目录 同步方法
function mkdirsSync(dirname) {
    //console.log(dirname);
    if (fs.existsSync(dirname)) {
        return true;
    } else {
        if (mkdirsSync(path.dirname(dirname))) {
            fs.mkdirSync(dirname);
            return true;
        }
    }
}

function isEmpty(str) {
    return typeof (str) == undefined || str == null || str == ""
}
function isNotEmpty(str) {
    return !isEmpty(str);
}

function endsWith(str, suffix) {
    return str.indexOf(suffix, str.length - suffix.length) !== -1;
}

function contains(str, suffix) {
    return str.indexOf(suffix) !== -1;
}

function lastStr(str, suffix) {
    return str.substr(str.lastIndexOf(suffix) + 1);
}


function getDeep(path) {
    var file = readDirSync(path);
}

var fs = require("fs");



/**
 * 第一个非空的目录
 * @param {}} path 
 */
function findFile(path) {
    var thisDirecotrys = new Array();
    thisDirecotrys.push(path);

    while (thisDirecotrys.length > 0) {
        var currentDir = thisDirecotrys.shift();
        console.log(" currentDir: " + currentDir +" is processing");
        var file = fs.readdirSync(currentDir);
        var dirWithFiles = null;
        console.log("the file numbers of current dir: %s", file.length);
        if (file.length > 1) {
            // return currentDir; // 多个目录不处理
        }
        file.forEach(function (e) {
            var fileInfo = fs.statSync(currentDir + "/" + e)
            if (fileInfo.isDirectory()) {
                thisDirecotrys.push(currentDir + "/" + e);
            } else {
                console.log("file: " + currentDir + "/" + e)
                dirWithFiles = currentDir;
                // return;
            }
        });
        if (dirWithFiles != null) {
            return dirWithFiles;
        }
    }
    return null;
}

function move(src, dest) {
    const execSync = require('child_process').execSync;
    // 移动文件
    var cmd = `move /Y  ${src}\\*  ${dest}`
    console.log("cmd:%s", cmd);
    execSync(cmd);

    // 移动目录
    var file = fs.readdirSync(src);
    file.forEach(function (e) {
        var path = src + "/" + e;
        var fileInfo = fs.statSync(path)
        if (fileInfo.isDirectory()) {
            var cmd = `move /Y  ${path}  ${dest}`
            console.log("cmd:%s", cmd);
            execSync(cmd);
        }
    });

    // fs.unlinkSync(src);
}

exports.mkdirsSync = mkdirsSync;
exports.isNotEmpty = isNotEmpty;
exports.isEmpty = isEmpty;
exports.endsWith = endsWith;
exports.lastStr = lastStr;
exports.move = move;
exports.findFile = findFile;
exports.contains = contains;