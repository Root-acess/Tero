
# templates/kubernetes-project/providers.tf
# Configures Terraform providers for the Kubernetes project

provider "aws" {
  region = var.region
}

/*

**Description**: Configures the AWS provider for EKS deployments.

**Use Cases**:
- Setting up AWS credentials and region for EKS.
- Ensuring compatibility with EKS-focused modules. */