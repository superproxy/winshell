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

function lastStr(str, suffix) {
    return str.substr(str.lastIndexOf(suffix) + 1);
}

exports.mkdirsSync = mkdirsSync;
exports.isNotEmpty = isNotEmpty;
exports.isEmpty = isEmpty;
exports.endsWith = endsWith;
exports.lastStr = lastStr;