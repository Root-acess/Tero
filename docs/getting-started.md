# Getting Started with Tero

This guide walks you through installing and deploying your first infrastructure using the Tero Framework. By the end, you'll have a production-ready VPC and security baseline deployed.

## Prerequisites

Before you begin, ensure you have the following:

- **Terraform**: Version >= 1.5.0 installed. Download from [terraform.io](https://www.terraform.io/downloads.html).
- **AWS CLI**: Configured with valid credentials. Follow [AWS CLI setup](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).
- **Git**: Installed for cloning the Tero repository.
- A valid AWS account with permissions to create VPCs, subnets, and IAM roles.

## Step 1: Initialize Your Project

1. Create a new directory for your infrastructure:
   ```bash
   mkdir my-enterprise-infra && cd my-enterprise-infra
   ```

2. Clone the Tero core library:
   ```bash
   git clone https://github.com/your-org/tero.git lib
   ```

3. Copy the standard project template:
   ```bash
   cp -r lib/templates/standard-project/* .
   ```

This sets up a pre-configured project structure with best practices for Terraform state management and module organization.

## Step 2: Configure Your Infrastructure

Create a `main.tf` file to define your infrastructure. Here's a minimal example to deploy a VPC and security baseline:

```hcl
# main.tf
terraform {
  required_version = ">= 1.5.0"
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "lib/modules/networking/vpc"

  name       = "core-network"
  cidr_block = "10.100.0.0/20"
  env        = "prod"
  azs        = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

module "security" {
  source = "lib/modules/security/baseline"

  vpc_id = module.network.vpc_id
}
```

Replace `your-terraform-state-bucket` with your S3 bucket for Terraform state.

## Step 3: Deploy the Infrastructure

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the planned changes:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply -auto-approve
   ```

This deploys a VPC with subnets across three availability zones and a security baseline with IAM roles and security groups.

## Step 4: Verify the Deployment

Check the deployed VPC:
```bash
terraform output vpc_id
aws ec2 describe-vpcs --vpc-ids $(terraform output -raw vpc_id)
```

The AWS CLI command should return details about your newly created VPC.

## Step 5: Next Steps

- Explore the [Module Reference](module-reference.md) for additional modules like EC2, RDS, or Lambda.
- Review the [Best Practices](best-practices.md) guide for naming conventions and tagging.
- Learn about testing with the [Testing Strategies](testing-guide.md) guide.
- Check the [Security Policy](security-policy.md) for compliance details.

## Troubleshooting

- **Terraform init fails**: Ensure the Tero library was cloned correctly and the `lib` directory exists.
- **AWS permission errors**: Verify your AWS CLI credentials have sufficient permissions.
- **State bucket issues**: Confirm the S3 bucket exists and is accessible.

For additional help, contact [support@your-org.com](mailto:support@your-org.com) or open an issue on the [Tero GitHub repository](https://github.com/your-org/tero).