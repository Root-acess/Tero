
# modules/security/kms/versions.tf
# Specifies required Terraform and provider versions

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

/*
**Description**: Pins the AWS provider version for KMS compatibility.

**Use Cases**:
- Ensuring KMS-specific provider features.
- Avoiding version conflicts. */