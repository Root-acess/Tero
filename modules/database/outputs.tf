
# modules/database/outputs.tf
# Output values for the database module aggregator

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.rds.endpoint
}

output "rds_arn" {
  description = "ARN of the RDS instance"
  value       = module.rds.arn
}

output "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = module.dynamodb.table_arn
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = module.dynamodb.table_name
}
/*

**Description**: Exports key outputs from the `rds` and `dynamodb` modules, enabling verification and integration with other modules or tools.

**Use Cases**:
- Connecting applications to RDS or DynamoDB using endpoints or ARNs.
- Verifying database deployments with `terraform output`.
- Passing database details to CI/CD pipelines or other modules. */