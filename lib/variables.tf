
# lib/variables.tf
# Global variables for Tero Framework

variable "region" {
  description = "AWS/GCP deployment region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, stage, or prod"
  }
}

variable "project_name" {
  description = "Project name for resource tagging"
  type        = string
  default     = "tero-project"
}

# Azure variables
variable "azure_subscription_id" {
  description = "Azure subscription ID"
  type        = string
  default     = ""
}

variable "azure_client_id" {
  description = "Azure service principal app ID"
  type        = string
  default     = ""
}

variable "azure_client_secret" {
  description = "Azure service principal password"
  type        = string
  sensitive   = true
  default     = ""
}

variable "azure_tenant_id" {
  description = "Azure tenant ID"
  type        = string
  default     = ""
}

# GCP variables
variable "gcp_project_id" {
  description = "GCP project ID"
  type        = string
  default     = ""
}
/*

**Description**: Defines global variables for region, environment, project name, and provider-specific credentials. Includes validation for environment and sensitive handling for secrets.

**Use Cases**:
- Providing consistent inputs across modules and projects.
- Enforcing environment standards (dev/stage/prod).
- Securely managing cloud credentials for multi-cloud setups. */