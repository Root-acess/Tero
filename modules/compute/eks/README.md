# EKS Module

This module provisions an AWS EKS cluster with a managed node group.

## Inputs
- `vpc_id` (string, required): ID of the VPC.
- `subnet_ids` (list(string), required): List of subnet IDs.
- `cluster_name` (string, required): Name of the EKS cluster.
- `node_group_size` (number, optional, default: `2`): Desired node group size.
- `env` (string, required): Deployment environment.

## Outputs
- `cluster_endpoint`: Endpoint of the EKS cluster.
- `cluster_name`: Name of the EKS cluster.
- `node_group_name`: Name of the node group.

## Usage
```hcl
module "eks" {
  source         = "../../modules/compute/eks"
  vpc_id         = module.network.vpc_id
  subnet_ids     = module.network.subnet_ids
  cluster_name   = "tero-cluster"
  env            = "prod"
}