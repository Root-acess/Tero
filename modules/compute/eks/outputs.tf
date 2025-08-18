
# modules/compute/eks/outputs.tf
# Output values for EKS module

output "cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = aws_eks_cluster.eks.endpoint
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.eks.name
}

output "node_group_name" {
  description = "Name of the EKS node group"
  value       = aws_eks_node_group.nodes.node_group_name
}
/*

**Description**: Exports the EKS cluster endpoint and names for use with `kubectl` or other modules.

**Use Cases**:
- Configuring Kubernetes clients to connect to the cluster.
- Passing cluster details to monitoring or CI/CD tools. */