
# modules/outputs.tf
# Output values for the top-level module aggregator

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = module.compute.lambda_function_arn
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.compute.eks_cluster_endpoint
}

output "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  value       = module.compute.ecs_cluster_id
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.networking.subnet_ids
}

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.database.rds_endpoint
}

output "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = module.database.dynamodb_table_arn
}

output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = module.security.iam_role_arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.security.kms_key_arn
}

/* 
**Description**: Exports key outputs from all submodules for verification and integration.

**Use Cases**:
- Connecting applications to resources (e.g., Lambda to DynamoDB).
- Verifying deployments with `terraform output`.
- Passing resource details to CI/CD pipelines or other modules. */