
# lib/providers.tf
# Configures cloud providers for Tero Framework

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Project     = var.project_name
      ManagedBy   = "Tero"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id            = var.azure_subscription_id
  client_id                  = var.azure_client_id
  client_secret              = var.azure_client_secret
  tenant_id                  = var.azure_tenant_id
}

provider "google" {
  project = var.gcp_project_id
  region  = var.region
}


/**Description**: Sets up providers for AWS, Azure, and GCP with variables for region, credentials, and tagging. AWS includes default tags for governance, aligning with Tero’s best practices.

**Use Cases**:
- Standardizing provider configurations across projects.
- Ensuring resource tagging for cost allocation and compliance.
- Supporting multi-cloud deployments with a unified interface.*/