
# modules/networking/route53/versions.tf
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

**Description**: Pins the AWS provider version for Route 53 compatibility.

**Use Cases**:
- Ensuring Route 53-specific provider features.
- Avoiding version conflicts. */