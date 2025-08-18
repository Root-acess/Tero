
# modules/networking/outputs.tf
# Output values for the networking module aggregator

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.subnets.subnet_ids
}

/*
**Description**: Exports VPC and subnet outputs for verification or integration.

**Use Cases**:
- Passing VPC and subnet IDs to other modules (e.g., RDS, EKS).
- Verifying network resource deployment with `terraform output`.
- Supporting network integration in CI/CD pipelines. */