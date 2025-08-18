
# modules/security/versions.tf
# Specifies required Terraform and provider versions for security modules

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

/*
**Description**: Pins the AWS provider version to ensure compatibility with `iam` and `kms` modules.

**Use Cases**:
- Preventing version conflicts across security modules.
- Ensuring provider features are available for IAM and KMS. */