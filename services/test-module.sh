```bash
#!/bin/bash
# services/test-module.sh
# Tests a specific Tero module by running its example

set -e

source "$(dirname "$0")/helpers.sh"

# Default variables
MODULE=""
ENV="dev"
EXAMPLE="basic"

# Parse arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --module)
      MODULE="$2"
      shift 2
      ;;
    --env)
      ENV="$2"
      shift 2
      ;;
    --example)
      EXAMPLE="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

# Validate inputs
if [ -z "$MODULE" ]; then
  echo "Error: --module is required"
  exit 1
fi

# Check if module example exists
MODULE_DIR="../modules/$MODULE/examples/$EXAMPLE"
if [ ! -d "$MODULE_DIR" ]; then
  echo "Error: Module example $MODULE_DIR does not exist"
  exit 1
fi

# Validate Terraform installation
check_terraform

# Change to module example directory
cd "$MODULE_DIR"

# Update terraform.tfvars
echo "environment = \"$ENV\"" > terraform.tfvars

# Initialize Terraform
log_info "Initializing Terraform for module '$MODULE' example '$EXAMPLE'..."
terraform init

# Run Terraform plan
log_info "Running Terraform plan..."
terraform plan -out=module.plan

# Apply Terraform plan
log_info "Applying Terraform plan..."
terraform apply -auto-approve module.plan

# Clean up
log_info "Cleaning up test resources..."
terraform destroy -auto-approve

log_success "Successfully tested module '$MODULE' example '$EXAMPLE' in environment '$ENV'"
```

**Description**: Tests a specified Tero module (e.g., `compute`, `networking`) by running its example, applying, and destroying resources.

**Use Cases**:
- Testing individual modules in isolation.
- Verifying module functionality before integration.
- Supporting automated testing in CI/CD pipelines.