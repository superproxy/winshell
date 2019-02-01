 function unpackage(src, out, fileType) {
        // const execSync = require('child_process').execSync;
        // var cmd  =`tar  xvf ${src}   ${out}`;
        // console.log("unackager cmd:%s", cmd);
        // execSync(cmd);
        const execSync = require('child_process').execSync;
        var fs = require('fs');
        if (fs.existsSync(out)) {
            fs.mkdirSync(out);
        }
        var utils = require("./utils");
        var fileName=utils.lastStr(src,"\\");  // flink-1.7.1-bin-scala_2.11.tar   flink-1.7.1-bin-scala_2.11.tgz
        fileName =fileName.replace("tgz", "tar");

        var cmd =`7za x ${src} -y -r -o${out}`;
        console.log("unackager cmd:%s", cmd);
        execSync(cmd);

        var cmd =`7za x ${out}/${fileName} -y -r -o${out}`
        console.log("unackager cmd:%s", cmd);
        execSync(cmd);


         // 删除tar
         var cmd =`del /Q ${out}\\${fileName}`
         console.log("remove tar:%s", cmd);
         execSync(cmd);


}


 
exports.unpackage = unpackage;
