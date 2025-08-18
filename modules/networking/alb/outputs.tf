
# modules/networking/alb/outputs.tf
# Output values for ALB module

output "alb_arn" {
  description = "ARN of the ALB"
  value       = aws_lb.alb.arn
}

output "dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.alb.dns_name
}

/*
**Description**: Exports ALB ARN and DNS name.

**Use Cases**:
- Integrating with Route 53 or DNS records.
- Verifying ALB deployment. */