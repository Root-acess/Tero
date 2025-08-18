
# modules/database/versions.tf
# Specifies required Terraform and provider versions for database modules

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

/*

Description: Pins the AWS provider version to ensure compatibility with both `rds` and `dynamodb` modules.

Use Cases:
- Preventing version conflicts across database modules.
- Ensuring provider features are available for RDS and DynamoDB. */