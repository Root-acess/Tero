
# templates/multi-cloud-project/providers.tf
# Configures Terraform providers for the multi-cloud project

provider "aws" {
  region = var.aws_region
}

provider "azurerm" {
  features {}
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

/*

**Description**: Configures AWS, Azure, and GCP providers for multi-cloud deployments.

**Use Cases**:
- Setting up credentials and regions for multi-cloud resources.
- Ensuring compatibility with multi-cloud modules. */