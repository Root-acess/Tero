```bash
#!/bin/bash
# services/deploy.sh
# Deploys Tero infrastructure using Terraform

set -e

source "$(dirname "$0")/helpers.sh"

# Default variables
ENV="dev"
PLAN_FILE="tero.plan"

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

# Change to project directory (assumes script is run from project root or parent)
PROJECT_DIR="."
if [ -d "../tero.tf" ]; then
  PROJECT_DIR=".."
fi
cd "$PROJECT_DIR"

# Create or update terraform.tfvars
echo "environment = \"$ENV\"" > terraform.tfvars

# Run Terraform plan
log_info "Running Terraform plan for environment '$ENV'..."
terraform plan -out="$PLAN_FILE"

# Apply Terraform plan
log_info "Applying Terraform plan..."
terraform apply "$PLAN_FILE"

log_success "Successfully deployed Tero infrastructure for environment '$ENV'"
```

**Description**: Deploys the Tero infrastructure by generating a Terraform plan and applying it, with environment configuration.

**Use Cases**:
- Automating infrastructure deployment for different environments (e.g., dev, prod).
- Ensuring consistent Terraform workflows.
- Integrating with CI/CD pipelines.