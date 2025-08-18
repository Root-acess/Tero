
# modules/security/main.tf
# Module aggregator for security-related modules

module "iam" {
  source = "./iam"

  role_name      = var.iam_role_name
  policy_arns    = var.iam_policy_arns
  env            = var.env
}

module "kms" {
  source = "./kms"

  key_alias      = var.kms_key_alias
  key_description = var.kms_key_description
  env            = var.env
}


**Description**: Aggregates the `iam` and `kms` modules, enabling users to reference the `security` module as a single entry point (e.g., `source = "../modules/security"`) while passing variables to the underlying modules.

**Use Cases**:
- Simplifying the composition of security resources in a project.
- Providing a unified interface for IAM and KMS configurations.
- Supporting secure infrastructure setups with minimal configuration.