
# templates/multi-cloud-project/outputs.tf
# Outputs for the multi-cloud Tero project

output "aws_lambda_function_arn" {
  description = "ARN of the AWS Lambda function"
  value       = module.tero.lambda_function_arn
}

output "aws_vpc_id" {
  description = "ID of the AWS VPC"
  value       = module.tero.vpc_id
}

output "aws_subnet_ids" {
  description = "List of AWS subnet IDs"
  value       = module.tero.subnet_ids
}

output "aws_rds_endpoint" {
  description = "Endpoint of the AWS RDS instance"
  value       = module.tero.rds_endpoint
}

output "aws_iam_role_arn" {
  description = "ARN of the AWS IAM role"
  value       = module.tero.iam_role_arn
}

output "aws_kms_key_arn" {
  description = "ARN of the AWS KMS key"
  value       = module.tero.kms_key_arn
}

output "azure_vm_id" {
  description = "ID of the Azure VM"
  value       = azurerm_virtual_machine.main.id
}

output "gcp_instance_self_link" {
  description = "Self-link of the GCP Compute Instance"
  value       = google_compute_instance.main.self_link
}

/*
**Description**: Exports key outputs for multi-cloud resources.

**Use Cases**:
- Verifying multi-cloud resource deployment.
- Passing resource details to applications.
- Auditing deployed infrastructure. */