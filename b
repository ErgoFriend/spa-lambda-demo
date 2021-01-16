lambda-api        | 2021-01-16 04:29:47,395 | Found one Lambda function with name 'GreetFunction'
lambda-api        | 2021-01-16 04:29:47,395 | Invoking main (go1.x)
lambda-api        | 2021-01-16 04:29:47,395 | No environment variables found for function 'GreetFunction'
lambda-api        | 2021-01-16 04:29:47,395 | Environment variables overrides data is standard format
lambda-api        | 2021-01-16 04:29:47,395 | Loading AWS credentials from session with profile 'None'
lambda-api        | 2021-01-16 04:29:47,421 | Resolving code path. Cwd=/home/kasu/github/spa-lambda-demo/sam/, CodeUri=api/greet
lambda-api        | 2021-01-16 04:29:47,422 | Resolved absolute path to code is /home/kasu/github/spa-lambda-demo/sam/api/greet
lambda-api        | 2021-01-16 04:29:47,422 | Code /home/kasu/github/spa-lambda-demo/sam/api/greet is not a zip/jar file
lambda-api        | 2021-01-16 04:29:47,444 | Skip pulling image and use local one: amazon/aws-sam-cli-emulation-image-go1.x:rapid-1.15.0.
lambda-api        |
lambda-api        | 2021-01-16 04:29:47,444 | Mounting /home/kasu/github/spa-lambda-demo/sam/api/greet as /var/task:ro,delegated inside runtime container
lambda-api        | 2021-01-16 04:29:47,728 | Starting a timer for 5 seconds for function 'GreetFunction'
lambda-api        | 2021-01-16 04:29:48,631 | Cleaning all decompressed code dirs
lambda-api        | 2021-01-16 04:29:48,631 | No response from invoke container for GreetFunction
lambda-api        | 2021-01-16 04:29:48,631 | Invalid lambda response received: Lambda response must be valid json
lambda-api        | 2021-01-16 04:29:48 172.21.0.1 - - [16/Jan/2021 04:29:48] "GET /greet HTTP/1.1" 502 -
lambda-api        | 2021-01-16 04:29:48 172.21.0.1 - - [16/Jan/2021 04:29:48] "GET /favicon.ico HTTP/1.1" 403 -