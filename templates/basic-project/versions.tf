
# templates/basic-project/versions.tf
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

**Description**: Pins the AWS provider version to ensure compatibility with the `basic-project` template.

**Use Cases**:
- Preventing version conflicts with Tero modules.
- Ensuring provider features are available. */