
# modules/security/iam/versions.tf
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
**Description**: Pins the AWS provider version for IAM compatibility.

**Use Cases**:
- Ensuring IAM-specific provider features.
- Avoiding version conflicts. */