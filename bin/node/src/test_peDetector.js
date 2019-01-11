
// if (utils.contains(path, "Git")) {
//     return "inno";
// }
// if (utils.contains(path, "eyefoo")) {
//     return "nsis";
// }

var peDetector = require("./peDetector");
// var path = "D:\\winshell\\pkg\\Git-2.15.1.2-64-bit.exe";  // inno
// var path = "D:\\winshell\\pkg\\Wireshark-win64-2.6.6.exe"; // nsis
// var path = "D:\\winshell\\pkg\\SuningIM_PC_5.7.0.0_prd.exe"; // inno  data 好特别
// var path = "D:\\winshell\\pkg\\goland-2018.2.exe";  // nsis
// var path = "D:\\winshell\\pkg\\YoudaoDict.exe";  // nsis  rdata
var path = "D:\\winshell\\pkg\\VSCodeSetup-x64-1.25.1.exe";  // nsis  rdata


// 遍历目录，判断目录所有的exe文件格式

peDetector.parseType(path, function (peType) {
  console.log(peType);
});

function testPkgPeType(currentDir) {
  var fs = require("fs");
  
  var file = fs.readdirSync(currentDir);
  var utils = require("./utils");
  file.forEach(function (e) {
    var filePath = currentDir + "\\" + e;
    console.log("filePath:%s", filePath);
    if (utils.endsWith(filePath, "exe")) {
      peDetector.parseType(filePath, function (peType) {
        console.log("filePath:%s, peType:%s", filePath, peType);
      });
    }
  });
}

var currentDir = "D:\\winshell\\pkg";
testPkgPeType(currentDir)





