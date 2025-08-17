# Tero Best Practices

This guide outlines the conventions and standards for using the Tero Framework to ensure consistency, security, and maintainability in your infrastructure.

## 📜 Naming Conventions

- **Resources**: Use `kebab-case` with a prefix indicating the resource type and environment (e.g., `prod-vpc-core`, `dev-ec2-web`).
- **Tags**: Include mandatory tags: `Environment` (e.g., `prod`, `dev`), `Project`, and `Owner`.
- **Modules**: Reference modules with clear, descriptive names (e.g., `module.network`, `module.security`).

Example:
```hcl
resource "aws_vpc" "example" {
  cidr_block = "10.100.0.0/20"
  tags = {
    Name        = "prod-vpc-core"
    Environment = "prod"
    Project     = "core-infra"
    Owner       = "team@your-org.com"
  }
}
```

## 🛠️ Configuration Standards

- **Backend**: Use S3 (or equivalent) for Terraform state with encryption and versioning enabled.
- **Providers**: Define providers in `main.tf` with pinned versions.
- **Modules**: Source modules from `lib/modules` to ensure compatibility.
- **Variables**: Define all inputs in `variables.tf` with descriptions and defaults where applicable.

Example backend configuration:
```hcl
terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
```

## 🔒 Security Practices

- **Least Privilege**: Use Tero’s security modules to generate minimal IAM roles.
- **Encryption**: Enable KMS for all data storage (S3, RDS, etc.).
- **Secrets Management**: Avoid hardcoding secrets; use AWS Secrets Manager or equivalent.
- **Audit Logging**: Enable CloudTrail or equivalent for all accounts.

## 🧪 Testing and Validation

- **Pre-Apply Checks**: Run `terraform plan` to review changes.
- **Validation**: Use Tero’s testing framework (`lib/tests`) to validate configurations.
- **Drift Detection**: Schedule regular `terraform plan` runs to detect drift.
- **Unit Tests**: Test modules in isolation using tools like `terratest`.

Example validation command:
```bash
terraform validate
```

## 📦 Module Usage

- **Reuse Modules**: Always use Tero’s core modules instead of custom resources to ensure consistency.
- **Version Pinning**: Pin module versions in `versions.tf` to avoid breaking changes.
- **Output Usage**: Reference module outputs (e.g., `module.network.vpc_id`) for dependencies.

Example:
```hcl
module "ec2" {
  source     = "lib/modules/compute/ec2"
  vpc_id     = module.network.vpc_id
  subnet_ids = module.network.subnet_ids
}
```

## 🚀 Deployment Workflow

1. Initialize: `terraform init`
2. Plan: `terraform plan -out=tfplan`
3. Review: Inspect the plan output for accuracy.
4. Apply: `terraform apply tfplan`
5. Verify: Use `terraform output` and AWS CLI to confirm resources.

## 🧹 Housekeeping

- **State Management**: Regularly back up Terraform state files.
- **Cleanup**: Destroy unused resources with `terraform destroy`.
- **Documentation**: Update `README.md` in your project with specific configurations.

For further details, see the [Module Reference](module-reference.md) and [Testing Strategies](testing-guide.md).