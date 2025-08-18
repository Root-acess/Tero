
# modules/compute/lambda/examples/basic/main.tf
# Basic example for Lambda module

module "lambda" {
  source        = "../../"
  function_name = "basic-function"
  handler       = "index.handler"
  runtime       = "python3.9"
  filename      = "function.zip" # Replace with actual ZIP file
  env           = "dev"
}

/*

**Description**: A minimal example for deploying a Lambda function.

**Use Cases**:
- Testing Lambda module functionality.
- Demonstrating serverless setup. */