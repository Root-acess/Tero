
# templates/multi-cloud-project/versions.tf
# Specifies required Terraform and provider versions

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0"
    }
  }
}

/*

**Description**: Pins provider versions for AWS, Azure, and GCP.

**Use Cases**:
- Ensuring compatibility with multi-cloud modules.
- Preventing version conflicts. */