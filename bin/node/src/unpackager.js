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

function unpackage(src, out) {
    // unzip的层次 
    const execSync = require('child_process').execSync;
    execSync(`unzip -o ${src} -d ${out}`);
    }
    

// function unrar() {
//     var Unrar = require('node-unrar');
//     var rar = new Unrar(file);
//     utils.mkdirsSync(out);
//     rar.extract(out, null, function (err) {
//         //file extracted successfully.
//     });
// }
exports.unpackage=unpackage;
