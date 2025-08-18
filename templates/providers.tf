
# templates/providers.tf
# Configures Terraform providers for the default template

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

**Description**: Configures the AWS provider with placeholders for Azure and GCP.

**Use Cases**:
- Setting up provider credentials and regions.
- Enabling extensibility for multi-cloud projects. */