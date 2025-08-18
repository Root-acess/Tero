```bash
#!/bin/bash
# services/init.sh
# Initializes a new Tero project by setting up Terraform and copying a template

set -e

source "$(dirname "$0")/helpers.sh"

# Default template
DEFAULT_TEMPLATE="basic-project"
PROJECT_NAME=""
ENV="dev"

# Parse arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --project-name)
      PROJECT_NAME="$2"
      shift 2
      ;;
    --env)
      ENV="$2"
      shift 2
      ;;
    --template)
      TEMPLATE="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

TEMPLATE=${TEMPLATE:-$DEFAULT_TEMPLATE}

# Validate inputs
if [ -z "$PROJECT_NAME" ]; then
  echo "Error: --project-name is required"
  exit 1
fi

# Check if template exists
if [ ! -d "../templates/$TEMPLATE" ]; then
  echo "Error: Template $TEMPLATE does not exist"
  exit 1
fi

# Create project directory
PROJECT_DIR="../$PROJECT_NAME"
mkdir -p "$PROJECT_DIR"

# Copy template files
cp -r "../templates/$TEMPLATE/." "$PROJECT_DIR/"

# Initialize Terraform
cd "$PROJECT_DIR"
terraform init

# Set environment variable in terraform.tfvars
echo "environment = \"$ENV\"" >> terraform.tfvars

log_success "Initialized Tero project '$PROJECT_NAME' with template '$TEMPLATE' in environment '$ENV'"
```

**Description**: Initializes a new Tero project by copying a template (e.g., `basic-project`), running `terraform init`, and setting the environment variable.

**Use Cases**:
- Bootstrapping new projects with predefined templates.
- Setting up consistent Terraform configurations.
- Automating project initialization for developers.