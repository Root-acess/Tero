```hcl
# examples/basic-infra/backend.tf
# Backend configuration for Terraform state

terraform {
  backend "s3" {
    bucket         = "your-state-bucket" # Replace with your bucket name
    key            = "basic-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
```

**Description**: Configures an S3 backend for Terraform state storage, with encryption and locking for secure collaboration.

**Use Cases**:
- Storing Terraform state securely in a remote backend.
- Enabling team collaboration with state locking.