
# templates/kubernetes-project/main.tf
# Main Terraform configuration for a Kubernetes Tero project

module "tero" {
  source = "../../modules"

  # Compute configurations (EKS only)
  eks_cluster_name = var.eks_cluster_name
  subnet_ids       = module.tero.subnet_ids

  # Networking configurations
  vpc_cidr_block = var.vpc_cidr_block
  subnet_count   = var.subnet_count

  # Security configurations
  iam_role_name       = var.iam_role_name
  iam_policy_arns     = var.iam_policy_arns
  kms_key_alias       = var.kms_key_alias
  kms_key_description = var.kms_key_description

  # Environment
  env = var.environment
}

/*

**Description**: Configures an EKS-focused project with networking and security resources.

**Use Cases**:
- Bootstrapping Kubernetes-based applications.
- Supporting EKS cluster deployments.
- Simplifying networking and security setup for EKS. */