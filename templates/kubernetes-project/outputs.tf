
# templates/kubernetes-project/outputs.tf
# Outputs for the Kubernetes Tero project

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.tero.eks_cluster_endpoint
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.tero.vpc_id
}

output "subnet_ids" {
  description = "List of subnet IDs"
  value       = module.tero.subnet_ids
}

output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = module.tero.iam_role_arn
}

output "kms_key_arn" {
  description = "ARN of the KMS key"
  value       = module.tero.kms_key_arn
}

/*

**Description**: Exports key outputs for EKS and networking resources.

**Use Cases**:
- Verifying EKS cluster deployment.
- Passing resource details to Kubernetes applications.
- Auditing deployed infrastructure. */