variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
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
  type        = string
  default     = ""
  description = "Azure subscription ID"
}

variable "azure_client_id" {
  type        = string
  default     = ""
  description = "Azure service principal app ID"
}

variable "azure_client_secret" {
  type        = string
  sensitive   = true
  default     = ""
  description = "Azure service principal password"
}

variable "azure_tenant_id" {
  type        = string
  default     = ""
  description = "Azure tenant ID"
}
