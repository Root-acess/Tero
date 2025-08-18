
# templates/kubernetes-project/versions.tf
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

**Description**: Pins the AWS provider version for EKS deployments.

**Use Cases**:
- Ensuring compatibility with EKS modules.
- Preventing version conflicts. */