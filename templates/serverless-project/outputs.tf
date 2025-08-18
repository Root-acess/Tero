
# templates/serverless-project/outputs.tf
# Outputs for the serverless Tero project

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = module.tero.lambda_function_arn
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.tero.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.tero.subnet_ids
}

output "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = module.tero.dynamodb_table_arn
}

output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = module.tero.iam_role_arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.tero.kms_key_arn
}

/*

**Description**: Exports key outputs for serverless resources.

**Use Cases**:
- Verifying serverless resource deployment.
- Passing resource details to applications.
- Auditing deployed infrastructure. */