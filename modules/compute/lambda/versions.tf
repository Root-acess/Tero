
# modules/compute/lambda/versions.tf
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

**Description**: Pins the AWS provider version for Lambda compatibility.

**Use Cases**:
- Ensuring Lambda-specific provider features.
- Avoiding version conflicts. */