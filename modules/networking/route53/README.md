# Route 53 Module

This module manages an AWS Route 53 hosted zone and DNS records.

## Inputs
- `zone_name` (string, required): Name of the DNS zone.
- `record_name` (string, required): Name of the DNS record.
- `record_type` (string, optional, default: `A`): Type of DNS record.
- `ttl` (number, optional, default: `300`): TTL for the record.
- `record_values` (list(string), required): Values for the DNS record.
- `env` (string, required): Deployment environment.

## Outputs
- `zone_id`: ID of the Route 53 zone.
- `record_fqdn`: Fully qualified domain name of the record.

## Usage
```hcl
module "route53" {
  source        = "../../modules/networking/route53"
  zone_name     = "example.com"
  record_name   = "www"
  record_type   = "A"
  ttl           = 300
  record_values = ["192.0.2.1"]
  env           = "prod"
}