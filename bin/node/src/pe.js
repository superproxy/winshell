parseType



function parseType(file) {
    var utils = require("./utils");
    if(utils.contains(file,"Git")){
        return "inno";
    }
    if(utils.contains(file,"eyefoo")){
        return "nsis";
    }
    return "exe";
}


exports.parseType = parseType;