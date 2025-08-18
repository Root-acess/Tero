
# modules/security/iam/examples/basic/main.tf
# Basic example for IAM module

module "iam" {
  source        = "../../"
  role_name     = "basic-role"
  policy_arns   = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  env           = "dev"
}

/*

**Description**: A minimal example for deploying an IAM role.

**Use Cases**:
- Testing IAM module functionality.
- Demonstrating role setup. */