
# modules/compute/lambda/outputs.tf
# Output values for Lambda module

output "function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.lambda.arn
}

output "function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.lambda.function_name
}

/*

**Description**: Exports the Lambda function ARN and name.

**Use Cases**:
- Integrating with API Gateway or EventBridge.
- Verifying function deployment. */