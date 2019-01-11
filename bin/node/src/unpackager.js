// function unzip() {
//     var unzip = require('unzip');
//     var fs = require('fs');
//     try {
//         var readStream = fs.createReadStream(file);
//         var writeStream = fs.createWriteStream(out);
//         readStream
//             .pipe(unzip.Parse())
//             .pipe(writeStream);
//     } catch (error) {
//         console.error(`unzip error: ${error}`);
//     }
// }
/**
 * zip里面的格式差别很大，需要区分对待。 一层， 里面两层的。 版本信息保留不保留的问题
 */
function unpackage(src, out, fileType) {
    // unzip的层次
    if (fileType == "zip") {
        const execSync = require('child_process').execSync;
        execSync(`unzip -o ${src} -d ${out}`);
    }
    else if (fileType == "rar") {
        const execSync = require('child_process').execSync;
        var fs = require('fs');
        if (fs.exists(out)) {
            fs.mkdirSync(out);
        }
        execSync(`unrar x -o+ ${src} ${out}`);
    }
}


// function unrar() {
//     var Unrar = require('node-unrar');
//     var rar = new Unrar(file);
//     utils.mkdirsSync(out);
//     rar.extract(out, null, function (err) {
//         //file extracted successfully.
//     });
// }
exports.unpackage = unpackage;
