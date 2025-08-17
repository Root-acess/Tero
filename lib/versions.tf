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
