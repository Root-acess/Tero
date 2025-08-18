
# modules/networking/route53/examples/basic/main.tf
# Basic example for Route 53 module

module "route53" {
  source        = "../../"
  zone_name     = "example.com"
  record_name   = "www"
  record_type   = "A"
  ttl           = 300
  record_values = ["192.0.2.1"] # Replace with actual IP
  env           = "dev"
}

/*

**Description**: A minimal example for deploying a Route 53 record.

**Use Cases**:
- Testing Route 53 module functionality.
- Demonstrating DNS setup. */