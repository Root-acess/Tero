```hcl
# examples/basic-infra/providers.tf
# Provider configuration for the basic infrastructure example

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Project     = "basic-infra"
      ManagedBy   = "Tero"
    }
  }
}
```

**Description**: Configures the AWS provider with the region variable and default tags for consistency with Tero’s best practices.

**Use Cases**:
- Setting up AWS as the cloud provider.
- Ensuring resources are tagged for cost tracking and compliance.