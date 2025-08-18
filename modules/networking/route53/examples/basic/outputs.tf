
# modules/networking/route53/examples/basic/outputs.tf
# Outputs for the basic Route 53 example

output "zone_id" {
  description = "ID of the Route 53 zone"
  value       = module.route53.zone_id
}

output "record_fqdn" {
  description = "Fully qualified domain name of the record"
  value       = module.route53.record_fqdn
}

/*

**Description**: Exports Route 53 details for the basic example.

**Use Cases**:
- Verifying DNS deployment.
- Integrating with other services. */