
# modules/security/examples/basic/outputs.tf
# Outputs for the basic security example

output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = module.security.iam_role_arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.security.kms_key_arn
}

output "kms_key_id" {
  description = "ID of the KMS key"
  value       = module.security.kms_key_id
}

/*

**Description**: Exports the IAM role ARN, KMS key ARN, and KMS key ID for verification or integration with other services in the basic example.

**Use Cases**:
- Verifying the deployment of IAM and KMS resources with `terraform output`.
- Passing security resource details to other modules or applications (e.g., Lambda, S3).
- Auditing deployed resources for compliance or debugging. */