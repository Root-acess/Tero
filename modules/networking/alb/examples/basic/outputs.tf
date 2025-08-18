
# modules/networking/alb/examples/basic/outputs.tf
# Outputs for the basic ALB example

output "alb_arn" {
  description = "ARN of the ALB"
  value       = module.alb.alb_arn
}

output "dns_name" {
  description = "DNS name of the ALB"
  value       = module.alb.dns_name
}

/*

**Description**: Exports ALB details for the basic example.

**Use Cases**:
- Verifying ALB deployment.
- Integrating with DNS services. */