
# modules/networking/vpc/examples/basic/main.tf
# Basic example for VPC module

module "vpc" {
  source     = "../../"
  name       = "basic-vpc"
  cidr_block = "10.0.0.0/16"
  azs        = ["us-east-1a", "us-east-1b"]
  enable_nat = false
  env        = "dev"
}

/*

**Description**: A minimal example for deploying a VPC.

**Use Cases**:
- Testing VPC module functionality.
- Demonstrating network setup. */