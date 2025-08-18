```hcl
# examples/advanced-cluster/outputs.tf
# Output values for the advanced cluster example

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.network.vpc_id
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.cluster.cluster_endpoint
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = module.load_balancer.dns_name
}

output "security_group_id" {
  description = "ID of the default security group"
  value       = module.security.security_group_id
}

output "iam_role_arn" {
  description = "ARN of the EKS node group IAM role"
  value       = module.iam_eks.iam_role_arn
}
```

**Description**: Exports critical outputs like the EKS cluster endpoint and ALB DNS name, enabling verification and integration with external tools.

**Use Cases**:
- Accessing the EKS endpoint for kubectl configuration.
- Using the ALB DNS name for application routing.
- Auditing IAM roles for security compliance.