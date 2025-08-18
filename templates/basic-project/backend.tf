
# templates/basic-project/backend.tf
# Configures Terraform backend for state management

terraform {
  backend "s3" {
    bucket         = "tero-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tero-state-lock"
  }
}
/*
**Description**: Configures an S3 backend for Terraform state storage with DynamoDB locking, using placeholder values for the bucket and table.

**Use Cases**:
- Managing Terraform state in a centralized, secure manner.
- Supporting team collaboration with state locking.
- Providing a template for configuring remote backends. */