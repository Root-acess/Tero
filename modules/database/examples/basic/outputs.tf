
# modules/database/examples/basic/outputs.tf
# Outputs for the basic database example

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.database.rds_endpoint
}

output "rds_arn" {
  description = "ARN of the RDS instance"
  value       = module.database.rds_arn
}

output "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = module.database.dynamodb_table_arn
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = module.database.dynamodb_table_name
}

/*
**Description**: Exports RDS and DynamoDB outputs for verification or integration.

**Use Cases**:
- Verifying database resource deployment with `terraform output`.
- Passing database details to applications or other modules.
- Auditing deployed resources. */