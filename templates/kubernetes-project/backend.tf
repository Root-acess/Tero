
# templates/kubernetes-project/backend.tf
# Configures Terraform backend for state management

terraform {
  backend "s3" {
    bucket         = "tero-kubernetes-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tero-kubernetes-state-lock"
  }
}

/*

**Description**: Configures an S3 backend with DynamoDB locking for state management.

**Use Cases**:
- Managing Terraform state for Kubernetes projects.
- Supporting team collaboration with state locking. */