
# modules/examples/basic/outputs.tf
# Outputs for the basic Tero example

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = module.tero.lambda_function_arn
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.tero.eks_cluster_endpoint
}

output "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  value       = module.tero.ecs_cluster_id
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.tero.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.tero.subnet_ids
}

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.tero.rds_endpoint
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

**Description**: Exports key outputs from the top-level module for verification and integration.

**Use Cases**:
- Verifying resource deployment with `terraform output`.
- Passing resource details to applications or other modules.
- Auditing deployed resources. */