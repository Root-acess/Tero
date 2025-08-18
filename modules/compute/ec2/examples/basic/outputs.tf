
# modules/compute/ec2/examples/basic/outputs.tf
# Outputs for the basic EC2 example

output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = module.ec2.instance_ids
}

output "security_group_id" {
  description = "ID of the EC2 security group"
  value       = module.ec2.security_group_id
}

/*
**Description**: Exports the EC2 module’s outputs for the basic example, enabling verification.

**Use Cases**:
- Checking deployment results with `terraform output`.
- Passing outputs to other conf*/