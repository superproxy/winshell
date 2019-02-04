var PackageManger = require("./packagemanager");
var pm = new PackageManger();

// pm.create("go_dev","go",  null,"https://dl.google.com/go/go1.11.4.windows-amd64.msi");
// pm.install(null,"go", null, null,false);
// pm.install(null,"douya", null, null,true);

// pm.install(null,"flink", null, null,false);


//  pm.install(null,"EasyBCD", null, null,false);
//  pm.run("sourceinsight");


pm.install(null,"hadoop", null, null,false);

// create maxthon  http://www.maxthon.cn/mx5/dl?p=1  -d maxthon.exe