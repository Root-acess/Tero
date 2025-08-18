```bash
#!/bin/bash
# services/format.sh
# Formats Terraform code for consistency

set -e

source "$(dirname "$0")/helpers.sh"

# Validate Terraform installation
check_terraform

# Change to project directory
PROJECT_DIR="."
if [ -d "../tero.tf" ]; then
  PROJECT_DIR=".."
fi
cd "$PROJECT_DIR"

# Run Terraform fmt
log_info "Formatting Terraform code..."
terraform fmt -recursive

log_success "Successfully formatted Terraform code"
```

**Description**: Runs `terraform fmt` to format all Terraform files recursively, ensuring consistent code style.

**Use Cases**:
- Enforcing Terraform code style guidelines.
- Preparing code for commits or pull requests.
- Integrating with pre-commit hooks or CI/CD pipelines.