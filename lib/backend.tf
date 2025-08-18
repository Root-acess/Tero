
# lib/backend.tf
# Configures Terraform remote state storage with S3 backend

terraform {
  backend "s3" {
    bucket         = "your-state-bucket" # Replace with your S3 bucket name
    key            = "tero/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}


/*Description**: Defines an S3 backend for storing Terraform state, with encryption and DynamoDB locking for secure, collaborative state management. The `path_relative_to_include()` ensures unique state file paths for different projects.

**Use Cases**:
- Storing Terraform state securely in a centralized location.
- Enabling team collaboration by preventing state conflicts with DynamoDB locks.
- Supporting multi-project setups with dynamic state file paths.*/