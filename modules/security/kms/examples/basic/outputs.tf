
# modules/security/kms/examples/basic/outputs.tf
# Outputs for the basic KMS example

output "key_arn" {
  description = "ARN of the KMS key"
  value       = module.kms.key_arn
}

output "key_id" {
  description = "ID of the KMS key"
  value       = module.kms.key_id
}

/*

**Description**: Exports KMS key details for the basic example.

**Use Cases**:
- Verifying KMS key deployment.
- Integrating with other resources. */