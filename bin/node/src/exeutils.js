function exec(cmd) {
    const execSync = require('child_process').execSync;
    console.log(cmd);
    execSync(cmd);
}