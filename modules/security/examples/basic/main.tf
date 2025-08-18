
# modules/security/examples/basic/main.tf
# Basic example for the security module aggregator

module "security" {
  source            = "../../"
  iam_role_name     = "basic-security-role"
  iam_policy_arns   = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  kms_key_alias     = "alias/basic-security-key"
  kms_key_description = "Basic KMS key for security example"
  env               = "dev"
}

/*
**Description**: Demonstrates a simple deployment of the `security` module, provisioning an IAM role and a KMS key with minimal configuration, suitable for testing or prototyping.

**Use Cases**:
- Testing the aggregated `security` module in isolation.
- Demonstrating combined IAM and KMS resource provisioning.
- Serving as a starting point for developers new to Tero. */