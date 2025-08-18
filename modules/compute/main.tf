
# modules/compute/main.tf
# Module aggregator for compute-related modules

module "lambda" {
  source = "./lambda"

  function_name = var.lambda_function_name
  role_arn      = var.lambda_role_arn
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime
  env           = var.env
}

module "eks" {
  source = "./eks"

  cluster_name = var.eks_cluster_name
  subnet_ids   = var.subnet_ids
  env          = var.env
}

module "ecs" {
  source = "./ecs"

  cluster_name = var.ecs_cluster_name
  env          = var.env
}
/*

**Description**: Aggregates the `lambda`, `eks`, and `ecs` submodules, enabling users to reference the `compute` module (e.g., `source = "../modules/compute"`) while passing variables to submodules.

**Use Cases**:
- Simplifying the composition of compute resources (serverless, containerized, and orchestrated workloads).
- Providing a unified interface for Lambda, EKS, and ECS configurations.
- Supporting diverse compute needs in a single module. */