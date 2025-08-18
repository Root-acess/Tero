
# modules/compute/examples/basic/outputs.tf
# Outputs for the basic compute example

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = module.compute.lambda_function_arn
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.compute.eks_cluster_endpoint
}

output "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  value       = module.compute.ecs_cluster_id
}
/*

**Description**: Exports Lambda, EKS, and ECS outputs for verification or integration.

**Use Cases**:
- Verifying compute resource deployment with `terraform output`.
- Passing resource details to applications or other modules.
- Auditing deployed compute resources. */