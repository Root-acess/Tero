
# templates/basic-project/providers.tf
# Configures Terraform providers for the basic project

provider "aws" {
  region = var.region
}

# Optional: Add Azure and GCP providers for multi-cloud support
# provider "azurerm" {
#   features {}
# }
#
# provider "google" {
#   project = var.gcp_project
#   region  = var.gcp_region
# }

/*

**Description**: Configures the AWS provider with a region variable, with commented-out placeholders for Azure and GCP providers to support multi-cloud setups.

**Use Cases**:
- Setting up provider credentials and regions for AWS deployments.
- Enabling extensibility for multi-cloud projects.
- Ensuring compatibility with Tero modules. */