
# modules/database/dynamodb/examples/basic/outputs.tf
# Outputs for the basic DynamoDB example

output "table_arn" {
  description = "ARN of the DynamoDB table"
  value       = module.dynamodb.table_arn
}

output "table_name" {
  description = "Name of the DynamoDB table"
  value       = module.dynamodb.table_name
}

/* 

**Description**: Exports the DynamoDB table ARN and name for verification or integration with other services in the basic example.

**Use Cases**:
- Verifying the table deployment with `terraform output`.
- Passing table details to other modules or applications (e.g., Lambda functions).
- Auditing deployed resources for compliance or debugging. */