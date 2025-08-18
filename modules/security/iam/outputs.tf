
# modules/security/iam/outputs.tf
# Output values for IAM module

output "role_arn" {
  description = "ARN of the IAM role"
  value       = aws_iam_role.role.arn
}

output "role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.role.name
}

/*

**Description**: Exports the IAM role ARN and name.

**Use Cases**:
- Passing role ARN to other modules (e.g., Lambda, EKS).
- Verifying role creation. */