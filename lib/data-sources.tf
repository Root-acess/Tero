
# lib/data-sources.tf
# Shared data sources for Tero Framework

# Fetch the latest Amazon Linux 2 AMI for AWS
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Fetch the current AWS caller identity
data "aws_caller_identity" "current" {}

# Fetch the default VPC (if needed)
data "aws_vpc" "default" {
  default = true
}

# Fetch Azure resource group (if applicable)
data "azurerm_resource_group" "default" {
  count = var.azure_subscription_id != "" ? 1 : 0
  name  = "tero-default-rg"
}

# Fetch GCP project details
data "google_project" "current" {
  count       = var.gcp_project_id != "" ? 1 : 0
  project_id  = var.gcp_project_id
}

/*

**Description**: Defines data sources to dynamically retrieve resources like AMIs, account IDs, or default VPCs, reducing hardcoding and enhancing flexibility.

**Use Cases**:
- Dynamically selecting the latest AMI for EC2 instances.
- Retrieving account or project details for IAM policies or tagging.
- Supporting conditional resource queries for multi-cloud setups.  */