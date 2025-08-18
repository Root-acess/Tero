
# modules/compute/eks/versions.tf
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
**Description**: Pins the AWS provider version for EKS module compatibility.

**Use Cases**:
- Ensuring EKS-specific provider features are available.
- Preventing version-related errors. */