```hcl
# examples/advanced-cluster/backend.tf
# Backend configuration for Terraform state

terraform {
  backend "s3" {
    bucket         = "your-state-bucket" # Replace with your bucket name
    key            = "advanced-cluster/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
```

**Description**: Configures an S3 backend for state management, tailored for the advanced cluster example.

**Use Cases**:
- Securely storing Terraform state for the EKS cluster.
- Supporting team collaboration with state locking.