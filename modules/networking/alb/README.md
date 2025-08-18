# ALB Module

This module provisions an AWS Application Load Balancer.

## Inputs
- `vpc_id` (string, required): ID of the VPC.
- `subnet_ids` (list(string), required): List of subnet IDs.
- `name` (string, required): Name of the ALB.
- `env` (string, required): Deployment environment.

## Outputs
- `alb_arn`: ARN of the ALB.
- `dns_name`: DNS name of the ALB.

## Usage
```hcl
module "alb" {
  source     = "../../modules/networking/alb"
  vpc_id     = module.network.vpc_id
  subnet_ids = module.network.subnet_ids
  name       = "app-alb"
  env        = "prod"
}