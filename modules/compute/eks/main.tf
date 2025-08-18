
# modules/compute/eks/main.tf
# Provisions an EKS cluster with node groups

resource "aws_eks_cluster" "eks" {
  name     = "${local.name_prefix}-eks"
  role_arn = aws_iam_role.eks_role.arn
  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.eks_sg.id]
  }

  tags = local.common_tags
}

resource "aws_eks_node_group" "nodes" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "${local.name_prefix}-nodes"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = var.subnet_ids
  scaling_config {
    desired_size = var.node_group_size
    max_size     = var.node_group_size + 2
    min_size     = 1
  }

  tags = local.common_tags
}

resource "aws_iam_role" "eks_role" {
  name = "${local.name_prefix}-eks-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "eks_policy" {
  role       = aws_iam_role.eks_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role" "eks_node_role" {
  name = "${local.name_prefix}-eks-node-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "eks_node_policy" {
  role       = aws_iam_role.eks_node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_security_group" "eks_sg" {
  vpc_id = var.vpc_id
  name   = "${local.name_prefix}-eks-sg"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}
/*

**Description**: Creates an EKS cluster with a managed node group, IAM roles, and a security group for Kubernetes control plane access.

**Use Cases**:
- Deploying containerized applications with Kubernetes.
- Setting up scalable, production-grade clusters.
- Integrating with CI/CD for container deployments.
*/