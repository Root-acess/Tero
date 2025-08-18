
# modules/compute/lambda/examples/basic/outputs.tf
# Outputs for the basic Lambda example

output "function_arn" {
  description = "ARN of the Lambda function"
  value       = module.lambda.function_arn
}

output "function_name" {
  description = "Name of the Lambda function"
  value       = module.lambda.function_name
}

/*

**Description**: Exports Lambda function details for the basic example.

**Use Cases**:
- Verifying Lambda deployment.
- Integrating with other services. */