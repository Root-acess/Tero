```hcl
# examples/basic-infra/outputs.tf
# Output values for the basic infrastructure example

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.network.vpc_id
}

output "ec2_instance_ids" {
  description = "IDs of the EC2 instances"
  value       = module.compute.instance_ids
}

output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.database.endpoint
}

output "security_group_id" {
  description = "ID of the default security group"
  value       = module.security.security_group_id
}
```

**Description**: Exports key values from the modules, such as VPC ID, EC2 instance IDs, and RDS endpoint, for verification or use in other configurations.

**Use Cases**:
- Verifying deployment outputs (e.g., `terraform output vpc_id`).
- Passing outputs to other modules or CI/CD pipelines.
- Debugging or auditing deployed resources.