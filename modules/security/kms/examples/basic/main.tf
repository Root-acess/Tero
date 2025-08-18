
# modules/security/kms/examples/basic/main.tf
# Basic example for KMS module

module "kms" {
  source          = "../../"
  key_alias       = "alias/basic-key"
  key_description = "Basic KMS key"
  env             = "dev"
}
/*

**Description**: A minimal example for deploying a KMS key.

**Use Cases**:
- Testing KMS module functionality.
- Demonstrating key setup. */