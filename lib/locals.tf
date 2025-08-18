
# lib/locals.tf
# Local values for Tero Framework

locals {
  # Common tags for all resources
  common_tags = {
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Tero"
  }

  # Standard naming prefix
  name_prefix = "${var.project_name}-${var.environment}"

  # Default CIDR block for VPCs if not specified
  default_vpc_cidr = "10.0.0.0/16"

  # AWS account ID from data source
  aws_account_id = data.aws_caller_identity.current.account_id

  # Conditional Azure resource group name
  azure_rg_name = var.azure_subscription_id != "" ? data.azurerm_resource_group.default[0].name : ""

  # GCP project ID
  gcp_project_id = var.gcp_project_id != "" ? data.google_project.current[0].project_id : ""
}

/*

**Description**: Defines reusable local values like common tags, naming prefixes, and computed values from data sources, simplifying module configurations.

**Use Cases**:
- Standardizing resource names and tags across modules.
- Simplifying complex expressions (e.g., `local.name_prefix` in resource names).
- Conditionally handling multi-cloud configurations.  */