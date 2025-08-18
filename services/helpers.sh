```bash
#!/bin/bash
# services/helpers.sh
# Utility functions for Tero automation scripts

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

# Check if Terraform is installed
check_terraform() {
  if ! command -v terraform &> /dev/null; then
    log_error "Terraform is not installed. Please install Terraform to continue."
  fi
}

# Append item to array (simplified for Bash)
append() {
  local -n array=$1
  array+=("$2")
}
```

**Description**: Provides reusable utility functions (logging, Terraform validation, array manipulation) for other scripts in the `services/` folder.

**Use Cases**:
- Standardizing logging across scripts.
- Ensuring Terraform is installed before running commands.
- Supporting array operations for scripts like `init.sh`.