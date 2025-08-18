
# modules/networking/versions.tf
# Specifies required Terraform and provider versions for networking modules

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
/*
**Description**: Pins the AWS provider version to ensure compatibility with `vpc` and `subnets` submodules.

**Use Cases**:
- Preventing version conflicts across networking modules.
- Ensuring provider features for VPC and subnets. */