
# modules/security/iam/examples/basic/outputs.tf
# Outputs for the basic IAM example

output "role_arn" {
  description = "ARN of the IAM role"
  value       = module.iam.role_arn
}

output "role_name" {
  description = "Name of the IAM role"
  value       = module.iam.role_name
}
/*

**Description**: Exports IAM role details for the basic example.

**Use Cases**:
- Verifying IAM role deployment.
- Integrating with other modules. */