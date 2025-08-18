```hcl
# examples/advanced-cluster/providers.tf
# Provider configuration for the advanced cluster example

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Project     = "advanced-cluster"
      ManagedBy   = "Tero"
    }
  }
}
```

**Description**: Configures the AWS provider with region and tagging, consistent with Tero’s best practices.

**Use Cases**:
- Setting up AWS for EKS and ALB deployments.
- Ensuring resource tagging for governance.