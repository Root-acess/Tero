
# modules/compute/ec2/outputs.tf
# Output values for EC2 module

output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = aws_instance.ec2[*].id
}

output "security_group_id" {
  description = "ID of the EC2 security group"
  value       = aws_security_group.ec2_sg.id
}

/*

**Description**: Exports EC2 instance IDs and security group ID for use in other modules or verification.

**Use Cases**:
- Passing instance IDs to monitoring or load balancer modules.
- Verifying deployment with `terraform output`.
*/