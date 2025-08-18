
# modules/compute/outputs.tf
# Output values for the compute module aggregator

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = module.lambda.function_arn
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  value       = module.ecs.cluster_id
}

/*

**Description**: Exports key outputs from the compute submodules for verification and integration.

**Use Cases**:
- Connecting applications to Lambda, EKS, or ECS resources.
- Verifying compute resource deployment with `terraform output`.
- Passing resource details to other modules or CI/CD pipelines. */