
# modules/networking/main.tf
# Module aggregator for networking-related modules

module "vpc" {
  source = "./vpc"

  cidr_block = var.vpc_cidr_block
  env        = var.env
}

module "subnets" {
  source = "./subnets"

  vpc_id       = module.vpc.vpc_id
  subnet_count = var.subnet_count
  env          = var.env
}

/*

**Description**: Aggregates the `vpc` and `subnets` submodules, enabling users to reference the `networking` module (e.g., `source = "../modules/networking"`) while passing variables.

**Use Cases**:
- Simplifying the composition of VPC and subnet resources.
- Providing a unified interface for network configurations.
- Supporting network setups for other modules (e.g., RDS, EKS). */