

var utils = require("./utils");

function main(argv) {

   // console.log(process.argv);
    // process.argv.forEach((val, index) => {
    //     console.debug(`${index}: ${val}`);
    // });


    var options = {
        "-v": null,
        "-g": null,    // group 
        "-s": null,
        "-f": null,  // force  重新安装，重新下载
        "-exe":null,  // 执行程序文件相对路径,提供action方式,最好是规范目录
        "-uninstall":null, // 反安装, zip自动生成删除目录， exe安装的自己解析
    };

    /**
     * 非可選的參數 pakcage  url  
     */
    var cmd = [];
    var i = 0;
    if (process.argv.length > 0) {
        var skip = false;
        process.argv.forEach(function (arg, index) {
            if (arg == '-v' || arg == '-g' || arg == '-s' ) {
                console.log(process.argv[index + 1]);;
                options[arg] = process.argv[index + 1];
                skip = true; // 跳過後面的參數

            }
            else if ( arg=="-f") {
                options[arg] = "true";
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


    if (action == "update") {
       pm.update();
    }
    /**
     * create
     * TODO:
     * 1.   需要支持pakage version目录格式
     * 2.  action动作支持，配置 exe文件位置，相对目录
     * 3. 删除 注册表获取，zip删除文件夹
     * 4. install安装的时候  xxx.bat文件，运行程序
     */
    else if (action == "create") {
        console.log(`cmd: ${ cmd.length}`);
        if(cmd.length==5) {
            var group = options["-g"];
            var package = cmd[3];
            var url = cmd[4]
            var version = options["-v"];
            pm.create(group, package, version, url);
        }
        else if(cmd.length==6) {
            var group = cmd[3];
            var package = cmd[4];
            var url = cmd[5]
            var version = options["-v"];
            pm.create(group, package, version, url);
        }
    }
    else if (action == "install") {
        var server = options["-s"];
        var group = options["-g"];
        var version = options["-v"];
        var force = utils.isNotEmpty(options["-f"]) && options["-f"]=="true";
        var package = cmd[3];
        pm.install(group,package, version, server,force);
    }
    else if (action == "uninstall") {
        var package = cmd[3];
        pm.uninstall(package);
    }
    else if (action == "get") {
        var package = cmd[3];
        pm.uninstall(package);
    }
    else if (action == "search") {
        var package = cmd[3];
        pm.uninstall(package);
    }
    else if (action == "info") {
        var package = cmd[3];
        pm.info(package);
    }
    else if (action == "run") {
        var package = cmd[3];
        pm.run(package);
    }

}


//app entry
var argv = process.argv;
main(argv);