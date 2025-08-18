
# modules/security/kms/main.tf
# Provisions a KMS key

resource "aws_kms_key" "key" {
  description = var.key_description
  enable_key_rotation = true

  tags = local.common_tags
}

resource "aws_kms_alias" "alias" {
  name          = var.key_alias
  target_key_id = aws_kms_key.key.key_id
}

/*

**Description**: Creates a KMS key with rotation enabled and an alias for easy reference.

**Use Cases**:
- Encrypting data for S3, RDS, or other services.
- Supporting secure key management in applications.
- Ensuring compliance with encryption policies. */