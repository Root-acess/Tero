
# modules/compute/ec2/versions.tf
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

**Description**: Pins the AWS provider version to ensure compatibility with the module.

**Use Cases**:
- Preventing version conflicts in multi-module projects.
- Ensuring consistent provider features.

*/