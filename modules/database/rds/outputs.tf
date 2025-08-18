
# modules/database/rds/outputs.tf
# Output values for RDS module

output "endpoint" {
  description = "Endpoint of the RDS instance"
  value       = aws_db_instance.rds.endpoint
}

output "arn" {
  description = "ARN of the RDS instance"
  value       = aws_db_instance.rds.arn
}

/*

**Description**: Exports RDS endpoint and ARN.

**Use Cases**:
- Connecting applications to the database.
- Verifying RDS deployment. */