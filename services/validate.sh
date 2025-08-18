```bash
#!/bin/bash
# services/validate.sh
# Validates Terraform syntax and configuration

set -e

source "$(dirname "$0")/helpers.sh"

# Default variables
ENV="dev"

# Parse arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --env)
      ENV="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

# Validate Terraform installation
check_terraform

# Change to project directory
PROJECT_DIR="."
if [ -d "../tero.tf" ]; then
  PROJECT_DIR=".."
fi
cd "$PROJECT_DIR"

# Update terraform.tfvars
echo "environment = \"$ENV\"" > terraform.tfvars

# Initialize Terraform
log_info "Initializing Terraform..."
terraform init

# Validate Terraform configuration
log_info "Validating Terraform configuration..."
terraform validate

log_success "Terraform configuration is valid for environment '$ENV'"
```

**Description**: Runs `terraform init` and `terraform validate` to ensure the Terraform configuration is syntactically correct and properly configured.

**Use Cases**:
- Verifying Terraform configuration before deployment.
- Catching syntax errors early in development.
- Integrating with CI/CD pipelines for validation.