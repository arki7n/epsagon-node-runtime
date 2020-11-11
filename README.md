
Nodejs version 15.2.0 Custom node runtime for AWS Lambda. 100% compatible with AWS's runtime, with some additional features:

* Use handlers from layers: to use a handler, use the full path as a handler.


Steps to Use:

1. Create new function with option : Provide Custom Runtime on AMAZON LINUX 2
2. Attach the give layer or create your own from above Repo.  
  AWS Layer Version ARN: `:aws:lambda:us-east-1:741365237744:layer:runtime-nodejs15-2-0:1`
3. Create index.js file in the lambda code.

```
const { exec } = require('child_process');


exports.handler = function (event, context) {
	exec('node -v', (error, stdout, stderr) => {
      if (error) {
        console.error(`exec error: ${error}`);
        return;
      }
      console.log(`stdout: ${stdout}`);
      console.error(`stderr: ${stderr}`);
    });
};
```

4. Update handler in lambda configuration as: index.handler from hello.handler

## Follow me on [https://twitter.com/arki7n](https://twitter.com/arki7n)
