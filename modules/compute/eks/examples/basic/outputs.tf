
# modules/compute/eks/examples/basic/outputs.tf
# Outputs for the basic EKS example

output "cluster_endpoint" {
  description = "Endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.cluster_name
}

/*

**Description**: Exports EKS cluster details for the basic example.

**Use Cases**:
- Verifying cluster deployment.
- Configuring `kubectl` with the cluster endpoint. */