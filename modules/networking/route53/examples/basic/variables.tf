
# modules/networking/route53/examples/basic/variables.tf
# Variables for the basic Route 53 example

variable "zone_name" {
  description = "Name of the DNS zone"
  type        = string
  default     = "example.com"
}

variable "record_name" {
  description = "Name of the DNS record"
  type        = string
  default     = "www"
}

variable "record_type" {
  description = "Type of DNS record"
  type        = string
  default     = "A"
}

variable "ttl" {
  description = "TTL for the DNS record"
  type        = number
  default     = 300
}

variable "record_values" {
  description = "Values for the DNS record"
  type        = list(string)
  default     = ["192.0.2.1"]
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

/*

**Description**: Variables for the basic Route 53 example.

**Use Cases**:
- Customizing the example configuration.
- Simplifying DNS testing. */