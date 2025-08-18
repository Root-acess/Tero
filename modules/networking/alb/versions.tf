
# modules/networking/alb/versions.tf
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

**Description**: Pins the AWS provider version for ALB compatibility.

**Use Cases**:
- Ensuring ALB-specific provider features.
- Avoiding version conflicts. */