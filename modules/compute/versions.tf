
# modules/compute/versions.tf
# Specifies required Terraform and provider versions for compute modules

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

/*
**Description**: Pins the AWS provider version to ensure compatibility with `lambda`, `eks`, and `ecs` submodules.

**Use Cases**:
- Preventing version conflicts across compute modules.
- Ensuring provider features for compute resources. */