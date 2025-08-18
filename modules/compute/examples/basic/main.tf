
# modules/compute/examples/basic/main.tf
# Basic example for the compute module

module "compute" {
  source               = "../../"
  lambda_function_name = "basic-lambda"
  lambda_role_arn      = var.lambda_role_arn
  lambda_handler       = "index.handler"
  lambda_runtime       = "nodejs20.x"
  eks_cluster_name     = "basic-eks"
  subnet_ids           = var.subnet_ids
  ecs_cluster_name     = "basic-ecs"
  env                  = "dev"
}

/*
**Description**: Demonstrates a simple deployment of Lambda, EKS, and ECS resources, suitable for testing or prototyping.

**Use Cases**:
- Testing the `compute` module in isolation.
- Demonstrating combined Lambda, EKS, and ECS provisioning.
- Serving as a starting point for developers. */