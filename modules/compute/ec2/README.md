# EC2 Module

This module provisions AWS EC2 instances with a security group.

## Inputs
- `vpc_id` (string, required): ID of the VPC.
- `subnet_ids` (list(string), required): List of subnet IDs.
- `instance_type` (string, optional, default: `t3.micro`): EC2 instance type.
- `ami` (string, required): AMI ID for EC2 instances.
- `instance_count` (number, optional, default: `1`): Number of instances.
- `env` (string, required): Deployment environment.

## Outputs
- `instance_ids`: IDs of the created EC2 instances.
- `security_group_id`: ID of the security group.

## Usage
```hcl
module "ec2" {
  source       = "../../modules/compute/ec2"
  vpc_id       = module.network.vpc_id
  subnet_ids   = module.network.subnet_ids
  instance_type = "t3.micro"
  ami          = "ami-1234567890abcdef0"
  env          = "prod"
}