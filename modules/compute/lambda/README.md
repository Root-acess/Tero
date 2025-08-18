# Lambda Module

This module provisions an AWS Lambda function with an IAM role.

## Inputs
- `function_name` (string, required): Name of the Lambda function.
- `handler` (string, required): Lambda function handler.
- `runtime` (string, optional, default: `python3.9`): Lambda runtime.
- `filename` (string, required): Path to deployment package.
- `env` (string, required): Deployment environment.

## Outputs
- `function_arn`: ARN of the Lambda function.
- `function_name`: Name of the Lambda function.

## Usage
```hcl
module "lambda" {
  source        = "../../modules/compute/lambda"
  function_name = "my-function"
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  filename      = "function.zip"
  env           = "prod"
}