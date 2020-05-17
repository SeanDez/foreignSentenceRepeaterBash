var exec = require('child_process').exec;


/* Executes a shell command
   @param arg1, the command. string
   @param arg2, options (cwd, env, timeout etc)
   @param arg3, callback. 
*/

// const childProcess = exec("pwd", function(err, stdout, stderr) {
//   if (err) {
//     // should have err.code here?  
//   }

//   console.log(stdout);
// });


// // handle the exit
// childProcess.on('exit', function (exitCode) {
//   // use exitCode here
//   console.log('exitCode', exitCode);
// });


console.log('process.argv', process.argv);



