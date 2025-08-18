
# modules/compute/eks/examples/basic/main.tf
# Basic example for EKS module

module "eks" {
  source         = "../../"
  vpc_id         = "vpc-12345678" # Replace with actual VPC ID
  subnet_ids     = ["subnet-12345678", "subnet-87654321"] # Replace with actual subnet IDs
  cluster_name   = "basic-cluster"
  node_group_size = 2
  env            = "dev"
}

/*

**Description**: A minimal example for deploying an EKS cluster.

**Use Cases**:
- Testing EKS module functionality.
- Learning EKS setup with minimal configuration. */