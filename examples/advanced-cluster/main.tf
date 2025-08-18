```hcl
# examples/advanced-cluster/main.tf
# Advanced infrastructure with EKS, ALB, and monitoring

terraform {
  required_version = ">= 1.5.0"
}

module "network" {
  source = "../../modules/networking/vpc"

  name       = var.vpc_name
  cidr_block = var.vpc_cidr_block
  env        = var.environment
  azs        = var.availability_zones
  enable_nat = true
}

module "cluster" {
  source = "../../modules/compute/eks"

  vpc_id          = module.network.vpc_id
  subnet_ids      = module.network.subnet_ids
  cluster_name    = var.eks_cluster_name
  env             = var.environment
  node_group_size = var.eks_node_group_size
}

module "load_balancer" {
  source = "../../modules/networking/alb"

  vpc_id     = module.network.vpc_id
  subnet_ids = module.network.subnet_ids
  name       = var.alb_name
  env        = var.environment
}

module "security" {
  source = "../../modules/security/baseline"

  vpc_id = module.network.vpc_id
  env    = var.environment
}

module "iam_eks" {
  source = "../../modules/security/iam"

  role_name = "${var.eks_cluster_name}-node-role"
  env       = var.environment
}
```

**Description**: Composes an advanced infrastructure with an EKS cluster, ALB for load balancing, and IAM roles for node groups, demonstrating complex module interactions.

**Use Cases**:
- Deploying production Kubernetes environments.
- Load balancing traffic to containerized applications.
- Setting up secure IAM roles for EKS nodes.