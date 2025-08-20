```bash
#!/bin/bash
# test/test_utils.sh
# Utility functions for testing Tero modules

# Log info message
log_info() {
  echo "[INFO] $1"
}

# Log success message
log_success() {
  echo "[SUCCESS] $1"
}

# Log error message and exit
log_error() {
  echo "[ERROR] $1" >&2
  exit 1
}

# Check if Terraform output exists
check_output() {
  local output_name=$1
  if ! terraform output -json | grep -q "\"${output_name}\""; then
    log_error "Output '${output_name}' not found"
  fi
  log_success "Output '${output_name}' exists"
}

# Run Terraform test
run_test() {
  local dir=$1
  cd "$dir" || log_error "Directory $dir not found"
  terraform init || log_error "Terraform init failed"
  terraform plan -out=test.plan || log_error "Terraform plan failed"
  terraform apply -auto-approve test.plan || log_error "Terraform apply failed"
  check_output "test_instance_id"
  terraform destroy -auto-approve || log_error "Terraform destroy failed"
}
```

**Description**: Provides utility functions for running and validating Terraform tests.

**Use Cases**:
- Automating module testing with `services/test-module.sh`.
- Verifying Terraform outputs.
- Supporting CI/CD testing pipelines.s