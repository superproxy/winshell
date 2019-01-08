 function getProxy (protocol) {
    var proxy = null;
    var httpProxy = process.env["http_proxy"];
    var httpsProxy = process.env["https_proxy"];
    console.trace("httproxy:%s", httpProxy);
    if (protocol == "https") {
        if (utils.isNotEmpty(httpsProxy)) {
            proxy = httpsProxy;
        }
    } else {
        if (utils.isNotEmpty(httpProxy)) {
            proxy = httpProxy;
        }
    }
    console.debug("proxy:%s", proxy);
    return proxy;
}

// /**
//  * wget是异步的，需要等待下载完成
//  * @param {*} src 
//  * @param {*} output 
//  */
//   function downloadAction(src, output, callback) {
//     // 下载，智能生成文件名
//     var wget = require('wget-improved');
//     const srcUrl = url.parse(src);

//     var proxy = this.getProxy(srcUrl.protocol);
//     var options = {};

//     // bug with proxy
//     // options["proxy"] = proxy;

//     var download = wget.download(src, output, options);
//     download.on('error', function (err) {
//         console.log(err);
//     });
//     download.on('end', function (output) {
//         console.log(output);
//         callback();
//     });
//     download.on('progress', function (progress) {
//         // console.log(progress);
//     });
// }
/**
 * 使用wget下載
 * @param {} src 
 * @param {*} output 
 * @param {*} callback 
 */
 function downloadSync(src, out) {
    // 下载，智能生成文件名
    // wget bug  1.1.18 验证bug  gnuwin32还没有更新
    // wget --no-check-certificate -O D:\winshell\pkg\ideaIU-2018.2.5.exe https://download.jetbrains.com/idea/ideaIU-2018.2.5.exe
    // var cmd = `wget --no-check-certificate  --secure-protocol=auto -O ${out} ${src}`;

    // curl， -L支撑重定向要不然很多 重定向的文件下载不下来,  
    // curl -L --ssl --output D:\winshell\pkg\ideaIU-2018.2.5.exe 
    // https://download.jetbrains.com/idea/ideaIU-2018.2.5.exe  
    // 常见问题  需要授权认证,文件不存在，代理
    // 解决办法：看返回结果，抓包看交互过程
    var cmd = `curl -L  --ssl --output ${out} ${src}`;
    console.debug("cmd:%s", cmd);
    const execSync = require('child_process').execSync;
    execSync(cmd);
}

exports.downloadSync=downloadSync;