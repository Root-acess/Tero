```bash
#!/bin/bash
# services/destroy.sh
# Cleans up Tero infrastructure by destroying Terraform-managed resources

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

# Destroy infrastructure
log_info "Destroying Tero infrastructure for environment '$ENV'..."
terraform destroy -auto-approve

log_success "Successfully destroyed Tero infrastructure for environment '$ENV'"
```

**Description**: Destroys Terraform-managed resources for a specified environment, automating cleanup.

**Use Cases**:
- Cleaning up temporary or test environments.
- Automating resource teardown in CI/CD pipelines.
- Ensuring no orphaned resources remain.