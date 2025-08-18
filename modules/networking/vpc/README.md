# VPC Module

This module provisions an AWS VPC with public subnets and optional NAT gateways.

## Inputs
- `name` (string, required): Name of the VPC.
- `cidr_block` (string, required): CIDR block for the VPC.
- `azs` (list(string), required): List of availability zones.
- `enable_nat` (bool, optional, default: `false`): Enable NAT gateways.
- `env` (string, required): Deployment environment.

## Outputs
- `vpc_id`: ID of the created VPC.
- `subnet_ids`: IDs of the public subnets.
- `route_table_ids`: IDs of the route tables.

## Usage
```hcl
module "vpc" {
  source     = "../../modules/networking/vpc"
  name       = "core-vpc"
  cidr_block = "10.0.0.0/16"
  azs        = ["us-east-1a", "us-east-1b"]
  env        = "prod"
}