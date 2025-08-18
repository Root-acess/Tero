
# lib/versions.tf
# Specifies required Terraform and provider versions

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.50"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 4.60"
    }
  }
}

/*

**Description**: Ensures compatibility by pinning Terraform and provider versions, aligning with Tero’s future-proof design.

**Use Cases**:
- Preventing version conflicts across projects.
- Ensuring modules use compatible provider features.
- Supporting consistent deployments in CI/CD pipelines. */