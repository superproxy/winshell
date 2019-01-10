

function testFindFile() {
    var utils = require("./utils");
    var out ="D:/winshell/apps/7-Zip/test";
    var filePath = utils.findFile(out);
    console.log(filePath);

    if (filePath != null && filePath != out) {
        utils.move(filePath, out);
    }

}

testFindFile();



