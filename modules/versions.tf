
# modules/versions.tf
# Specifies required Terraform and provider versions for all modules

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

/*
**Description**: Pins the AWS provider version to ensure compatibility across all submodules.

**Use Cases**:
- Preventing version conflicts across modules. 
- Ensuring provider features are available for all resources. */