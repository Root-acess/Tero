
# modules/compute/lambda/main.tf
# Provisions AWS Lambda functions

resource "aws_lambda_function" "lambda" {
  function_name = "${local.name_prefix}-lambda"
  handler       = var.handler
  runtime       = var.runtime
  role          = aws_iam_role.lambda_role.arn
  filename      = var.filename

  source_code_hash = filebase64sha256(var.filename)

  tags = local.common_tags
}

resource "aws_iam_role" "lambda_role" {
  name = "${local.name_prefix}-lambda-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

/*

**Description**: Creates a Lambda function with an IAM role for execution.

**Use Cases**:
- Deploying serverless applications.
- Handling event-driven tasks (e.g., S3 triggers).
- Building cost-efficient microservices. */