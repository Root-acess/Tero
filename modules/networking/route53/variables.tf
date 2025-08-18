
# modules/networking/route53/variables.tf
# Input variables for Route 53 module

variable "zone_name" {
  description = "Name of the DNS zone"
  type        = string
}

variable "record_name" {
  description = "Name of the DNS record"
  type        = string
}

variable "record_type" {
  description = "Type of DNS record (e.g., A, CNAME)"
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
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

/*

**Description**: Defines inputs for the Route 53 module.

**Use Cases**:
- Customizing DNS configurations.
- Supporting various record types. */