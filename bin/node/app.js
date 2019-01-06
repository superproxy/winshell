



function main(argv) {

    console.log(process.argv);
    process.argv.forEach((val, index) => {
        console.debug(`${index}: ${val}`);
    });


    var options = {
        "-v": null,
        "-g": null
    };

    var cmd = {};
    var i = 0;
    if (process.argv.length > 0) {
        var skip = false;
        process.argv.forEach(function (arg, index) {
            if (arg == '-v' || arg == '-g') {
                console.log(process.argv[index + 1]);;
                options[arg] = process.argv[index + 1];
                skip = true; // 跳過後面的參數

            }
            else {
                if (skip) {
                    skip = false;
                    return;
                }
                cmd[i++] = arg;
            }
        });
    }

    console.log("options:" + JSON.stringify(options));
    console.log("cmd format:" + JSON.stringify(cmd));



    var action = cmd[2];


    var PackageManger = require("./packagemanager")
    var pm = new PackageManger();

    if (action == "help") {
        pm.help();
    }


    if (action == "create") {
        var group = options["-g"];
        var package = cmd[3];
        var url = cmd[4]
        var version = options["-v"];
        pm.create(group, package, version, url);
    }
    else if (action == "install") {
        var package = cmd[3];
        pm.install(package);
    }
    else if (action == "uninstall") {
        var package = cmd[3];
        pm.uninstall(package);
    }

}


//app entry
main(process.argv);