# Security Module

This module aggregates AWS IAM and KMS modules for provisioning security resources.

## Inputs
- `iam_role_name` (string, optional, default: `tero-role`): Name of the IAM role.
- `iam_policy_arns` (list(string), optional, default: `["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]`): Policy ARNs to attach.
- `kms_key_alias` (string, optional, default: `alias/tero-key`): Alias for the KMS key.
- `kms_key_description` (string, optional, default: `Tero Framework KMS key`): Description for the KMS key.
- `env` (string, optional, default: `dev`): Deployment environment.

## Outputs
- `iam_role_arn`: ARN of the IAM role.
- `kms_key_arn`: ARN of the KMS key.
- `kms_key_id`: ID of the KMS key.

## Usage
```hcl
module "security" {
  source            = "../../modules/security"
  iam_role_name     = "my-app-role"
  iam_policy_arns   = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
  kms_key_alias     = "alias/my-app-key"
  env               = "prod"
}