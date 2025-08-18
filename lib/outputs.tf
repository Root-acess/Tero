
# lib/outputs.tf
# Global output values for Tero Framework

output "region" {
  description = "The AWS/GCP region used for deployment"
  value       = var.region
}

output "environment" {
  description = "The deployment environment"
  value       = var.environment
}

output "project_name" {
  description = "The project name used for tagging"
  value       = var.project_name
}

/*
**Description**: Exports global variables like region, environment, and project name for use in CI/CD pipelines, debugging, or cross-project referencing.

**Use Cases**:
- Verifying configuration settings (e.g., `terraform output region`).
- Passing global values to other tools or scripts.
- Auditing project metadata for compliance. */