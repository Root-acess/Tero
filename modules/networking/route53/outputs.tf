
# modules/networking/route53/outputs.tf
# Output values for Route 53 module

output "zone_id" {
  description = "ID of the Route 53 zone"
  value       = aws_route53_zone.zone.zone_id
}

output "record_fqdn" {
  description = "Fully qualified domain name of the record"
  value       = aws_route53_record.record.fqdn
}

/*
**Description**: Exports Route 53 zone ID and record FQDN.

**Use Cases**:
- Integrating with other DNS services.
- Verifying DNS configuration. */