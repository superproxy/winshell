var PackageManger = require("./packagemanager");
var pm = new PackageManger();

pm.create("go_dev","go",  null,"https://dl.google.com/go/go1.11.4.windows-amd64.msi");
pm.install(null,"go", null, null,false);
// pm.install(null,"douya", null, null,true);