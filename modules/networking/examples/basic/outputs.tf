
# modules/networking/examples/basic/outputs.tf
# Outputs for the basic networking example

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.networking.subnet_ids
}

/*

**Description**: Exports VPC and subnet outputs for verification or integration.

**Use Cases**:
- Verifying network resource deployment with `terraform output`.
- Passing VPC and subnet IDs to other modules (e.g., RDS, EKS).
- Auditing deployed network resources. */