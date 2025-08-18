
# templates/serverless-project/backend.tf
# Configures Terraform backend for state management

terraform {
  backend "s3" {
    bucket         = "tero-serverless-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tero-serverless-state-lock"
  }
}

/*

**Description**: Configures an S3 backend with DynamoDB locking for state management.

**Use Cases**:
- Managing Terraform state for serverless projects.
- Supporting team collaboration with state locking. */