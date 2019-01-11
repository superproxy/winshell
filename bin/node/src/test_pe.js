// var pe = require("./pe");


// var path = 
// var peType = pe.parseType(path)


//  console.log("peType:%s", peType);

var fs = require('fs');
var pe = require('node-coff-pe');
var path = "D:\\winshell\\pkg\\Wireshark-win64-2.6.6.exe";
// var path = "D:\\winshell\\pkg\\goland-2018.2.exe";
var fd = fs.openSync(path, 'r');



// const rs = fs.createReadStream('c:/11.mp4');   // 文件读取流
// const ws = fs.createWriteStream('c:/cc.mp4');  // 文件写入流
// // rs.pipe(ws);  // 管道

// rs.on('data',function(chunk) {
//     console.log(chunk.length);  // 65536  chunk就是一个Buffer(存放16进制数据的"数组",长度以B字节计算(两个16进制为一个元素))
//       // Node中的Buffer不占用垃圾回收机制中的内存。  Buffer是由C/C++模块维护。  'data'+chunk会在内部自动调用toString()函数。 建议直接返回buffer节省处理字符串的性能开销。
// });

// rs.on('end',function() {
//     console.log('结束啦！');
//     ws.end();
// });


pe.read(fd, function(err, exehdr, coffhdr) {
  if (err) throw err;
//   console.log(exehdr);
//   console.log(coffhdr);
pe.getSection(fd, coffhdr, '.data', function(err, data) {
    if (err) throw err;
     var s = data.toString("ascii");
     console.log(s);
     console.log(s.lastIndexOf('Inno'));  
     console.log(s.lastIndexOf('NSIS'));  ////Inno
     console.log(s.lastIndexOf('nsis')); 
     console.log(s.lastIndexOf('N\0x0S\0x0I\0x0S'));
     console.log(s.lastIndexOf('n\0x0s\0x0i\0x0s'));
     var hex = data.toString("hex");
     console.log("hex:%s", hex);
     console.log(hex.lastIndexOf('4e00530049005300')); //N S I S
     console.log(hex.lastIndexOf('4e534953'));  // NISI
    //  console.log(s.lastIndexOf('\0x4e\0x00\0x53\0x00\0x49\0x00\0x53\0x00')); 
// console.log(json);
    // console.log(data); // could be null, if section not found


  });
});

// var fs = require('fs');
// fs.open(path, 'r', function (err, fd) {
//   var buf = new Buffer(4096);
//   //读取fd文件内容到buf缓存区
//   var nums;
//   do {
//     nums = fs.readSync(fd, buf, 0, 4096, null);
//     var s = buf.toString('ascii');
//     var find = s.lastIndexOf("Inno") != -1;
//     if (!find) {
//       console.log("find: %s", s);
//     }
//   }
//   while (nums == 4096)
// }
// );



