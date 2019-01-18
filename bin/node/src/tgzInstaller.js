 function install (src, out, fileType) {
        var tgzUnpackager  = require("./tgzUnpackager")
        tgzUnpackager.unpackage(src,out);
        // bin目录 
}


 
exports.install = install;
