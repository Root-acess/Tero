
# modules/networking/route53/main.tf
# Manages Route 53 DNS records

resource "aws_route53_zone" "zone" {
  name = var.zone_name
  tags = local.common_tags
}

resource "aws_route53_record" "record" {
  zone_id = aws_route53_zone.zone.zone_id
  name    = var.record_name
  type    = var.record_type
  ttl     = var.ttl
  records = var.record_values
}

/*

**Description**: Creates a Route 53 hosted zone and DNS record.

**Use Cases**:
- Managing domain names and DNS records.
- Routing traffic to ALB or other resources. */