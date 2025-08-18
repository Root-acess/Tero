# Compute Module

This module aggregates AWS Lambda, EKS, and ECS modules for provisioning compute resources.

## Inputs
- `lambda_function_name` (string, optional, default: `tero-lambda`): Name of the Lambda function.
- `lambda_role_arn` (string, optional, default: `""`): ARN of the IAM role for Lambda.
- `lambda_handler` (string, optional, default: `index.handler`): Handler for the Lambda function.
- `lambda_runtime` (string, optional, default: `nodejs20.x`): Runtime for the Lambda function.
- `eks_cluster_name` (string, optional, default: `tero-eks`): Name of the EKS cluster.
- `subnet_ids` (list(string), optional, default: `[]`): List of subnet IDs for EKS.
- `ecs_cluster_name` (string, optional, default: `tero-ecs`): Name of the ECS cluster.
- `env` (string, optional, default: `dev`): Deployment environment.

## Outputs
- `lambda_function_arn`: ARN of the Lambda function.
- `eks_cluster_endpoint`: Endpoint of the EKS cluster.
- `ecs_cluster_id`: ID of the ECS cluster.

## Usage
```hcl
module "compute" {
  source               = "../../modules/compute"
  lambda_function_name = "my-lambda"
  lambda_role_arn      = module.security.iam_role_arn
  eks_cluster_name     = "my-eks"
  subnet_ids           = module.networking.subnet_ids
  ecs_cluster_name     = "my-ecs"
  env                  = "prod"
}