
var nsisSignatures = [
    '4e00530049005300',//N S I S
    '4e534953',   // NSIS      nsis
];

var innoSignatures = [
    '496e6e6f',   //   Inno   
];

//  496E6E  十六进制查找 
//  https://raw.githubusercontent.com/guelfoweb/peframe/5beta/peframe/signatures/userdb.txt


function parseType(path, callback) {
    var utils = require("./utils");

    var fs = require('fs');
    var pe = require('node-coff-pe');

    var fd = fs.openSync(path, 'r');


    pe.read(fd, function (err, exehdr, coffhdr) {
        try {
            if (err) {
                console.error("path:%path", path);
            }
        }
        catch (e) {
            return;
        }

        // .data
        // .rdata
        // DATA
        var isInstall = false
        if (isInstall == false) {
            pe.getSection(fd, coffhdr, '.data', function (err, data) {
                if (err) throw err;
                // console.log(".data");
                var isInstall = doAction('.data',data, callback);
                if (isInstall == false) {
                    pe.getSection(fd, coffhdr, '.rdata', function (err, data) {
                        if (err) throw err;
                        // console.log(".rdata");
                        var isInstall = doAction(".rdata",data, callback);
                        if (isInstall == false) {
                            pe.getSection(fd, coffhdr, '.ndata', function (err, data) {
                                if (err) throw err;
                                //  console.log(".ndata");
                                var isInstall = doAction('.ndata',data, callback);
                                if (isInstall == false) {
                                    pe.getSection(fd, coffhdr, 'DATA', function (err, data) {
                                        if (err) throw err;
                                        //  console.log("DATA");
                                        var isInstall = doAction('DATA',data, callback);
                                        if (isInstall == false) {
                                            callback("exe");
                                        }
                                    });
                                }
                            });
                        }
                    });
                }
            });
        }


    });
}

var debug = false;
function doAction(section, data, callback) {
    
    if (data == null) {
        console.log("no data");
        return false;
    }

    var s = data.toString("ascii");

    var hex = data.toString("hex");
    if (debug) {
        console.log(s);
        console.log(hex);
    }
    var nsisFlag = isNsis(hex);
    if (nsisFlag) {
        console.log("section:%s", section);
        callback("nsis");
        return true;
    }

    var innoFlag = isInno(hex);
    if (innoFlag) {
        install = true;
        console.log("section:%s", section);
        callback("inno");
        return true;
    }

    return false;
}


function isNsis(hex) {
    // var s = data.toString("ascii");
    // console.log(s);
    // console.log(s.lastIndexOf('Inno'));
    // console.log(s.lastIndexOf('NSIS'));  ////Inno
    // console.log(s.lastIndexOf('nsis'));
    // console.log(s.lastIndexOf('N\0x0S\0x0I\0x0S'));
    // console.log(s.lastIndexOf('n\0x0s\0x0i\0x0s'));

    // console.log("hex:%s", hex);

    // hex.lastIndexOf('4e00530049005300'); //N S I S
    // console.log(hex.lastIndexOf('4e534953'));  // NSIS
    // signatures.forEach((data, index, array) => {
    //     console.log(data, index, array);
    // });
    var nsisFlag = false;
    for (index in nsisSignatures) {
        nsisFlag = hex.lastIndexOf(nsisSignatures[index]) != -1;
        if (nsisFlag) {
            console.log("nsisFlag is true. %s", nsisSignatures[index]);
            return true;
        }
    }

    return false;
}

function isInno(hex) {
    var innoFlag = false;
    for (index in innoSignatures) {
        innoFlag = hex.lastIndexOf(innoSignatures[index]) != -1;
        if (innoFlag) {
            console.log("innoFlag is true. %s", innoSignatures[index]);
            return true;
        }
        return false;
    }
}


exports.parseType = parseType;