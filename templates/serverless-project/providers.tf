
# templates/serverless-project/providers.tf
# Configures Terraform providers for the serverless project

provider "aws" {
  region = var.region
}

/*
**Description**: Configures the AWS provider for serverless deployments.

**Use Cases**:
- Setting up AWS credentials and region for Lambda and DynamoDB.
- Ensuring compatibility with serverless-focused modules. */