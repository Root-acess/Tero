
# modules/security/outputs.tf
# Output values for the security module aggregator

output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = module.iam.role_arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.kms.key_arn
}

output "kms_key_id" {
  description = "ID of the KMS key"
  value       = module.kms.key_id
}

/*

**Description**: Exports key outputs from the `iam` and `kms` modules for use in other modules or verification.

**Use Cases**:
- Passing IAM role or KMS key ARNs to other resources (e.g., Lambda, RDS).
- Verifying security resource deployment with `terraform output`.
- Integrating with CI/CD pipelines or auditing tools. */