
# modules/networking/vpc/examples/basic/outputs.tf
# Outputs for the basic VPC example

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.subnet_ids
}

/*
**Description**: Exports VPC details for the basic example.

**Use Cases**:
- Verifying VPC deployment.
- Passing subnet IDs to other modules. */