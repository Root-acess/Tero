
# modules/database/rds/examples/basic/outputs.tf
# Outputs for the basic RDS example

output "endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.rds.endpoint
}

output "arn" {
  description = "ARN of the RDS instance"
  value       = module.rds.arn
}
