
# modules/security/kms/outputs.tf
# Output values for KMS module

output "key_arn" {
  description = "ARN of the KMS key"
  value       = aws_kms_key.key.arn
}

output "key_id" {
  description = "ID of the KMS key"
  value       = aws_kms_key.key.key_id
}

output "alias_name" {
  description = "Alias of the KMS key"
  value       = aws_kms_alias.alias.name
}

/*

**Description**: Exports the KMS key ARN, ID, and alias.

**Use Cases**:
- Integrating with resources requiring encryption (e.g., S3, RDS).
- Verifying KMS key creation. */