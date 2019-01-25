function exec(cmd, options) {
    const execSync = require('child_process').execSync;
    console.log(cmd);
    execSync(cmd);
}


function run(cmd, workdir) {
    // const exec = require('child_process').execFileSync;
    // console.log(cmd);
    // console.log("wordir:%s", workdir);
    // var options = {
    //     "cwd": workdir,
    // }
    // exec(cmd, null, options);


    const exec = require('child_process').execSync;
    console.log(cmd);
    console.log("wordir:%s", workdir);
    var options = {
        "cwd": workdir,
    }
    console.log("options:%s", JSON.stringify(options));
    // exec(cmd, options, function (error, stdout, stderr) { });
    exec(cmd, options);

}


exports.exec = exec;
exports.run = run;