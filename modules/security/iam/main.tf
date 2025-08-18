
# modules/security/iam/main.tf
# Provisions an IAM role with attached policies

resource "aws_iam_role" "role" {
  name = "${local.name_prefix}-${var.role_name}"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com" # Default for EC2, can be overridden
      }
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  count      = length(var.policy_arns)
  role       = aws_iam_role.role.name
  policy_arn = var.policy_arns[count.index]
}

/*
**Description**: Creates an IAM role with a customizable assume role policy and attaches specified policies.

**Use Cases**:
- Granting permissions to EC2, Lambda, or other services.
- Managing access control for applications.
- Supporting secure resource access in multi-service architectures.

*/