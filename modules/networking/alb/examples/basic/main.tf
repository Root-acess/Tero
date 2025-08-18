
# modules/networking/alb/examples/basic/main.tf
# Basic example for ALB module

module "alb" {
  source     = "../../"
  vpc_id     = "vpc-12345678" # Replace with actual VPC ID
  subnet_ids = ["subnet-12345678", "subnet-87654321"] # Replace with actual subnet IDs
  name       = "basic-alb"
  env        = "dev"
}

/*

**Description**: A minimal example for deploying an ALB.

**Use Cases**:
- Testing ALB module functionality.
- Demonstrating load balancer setup. */