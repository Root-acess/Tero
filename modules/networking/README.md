# Networking Module

This module aggregates AWS VPC and subnets modules for provisioning networking resources.

## Inputs
- `vpc_cidr_block` (string, optional, default: `10.0.0.0/16`): CIDR block for the VPC.
- `subnet_count` (number, optional, default: `2`): Number of subnets to create.
- `env` (string, optional, default: `dev`): Deployment environment.

## Outputs
- `vpc_id`: ID of the VPC.
- `subnet_ids`: List of subnet IDs.

## Usage
```hcl
module "networking" {
  source         = "../../modules/networking"
  vpc_cidr_block = "10.1.0.0/16"
  subnet_count   = 3
  env            = "prod"
}

Examples
See examples/basic/ for a sample implementation.

**Description**: Documents the `networking` module, explaining how to provision VPC and subnets.

**Use Cases**:
- Guiding developers on setting up networking resources.
- Providing a unified interface for network configurations.
- Supporting onboarding with clear examples.
