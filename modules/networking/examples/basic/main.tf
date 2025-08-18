
# modules/networking/examples/basic/main.tf
# Basic example for the networking module

module "networking" {
  source         = "../../"
  vpc_cidr_block = "10.0.0.0/16"
  subnet_count   = 2
  env            = "dev"
}
/*

**Description**: Demonstrates a simple deployment of a VPC with subnets, suitable for testing or prototyping.

**Use Cases**:
- Testing the `networking` module in isolation.
- Demonstrating VPC and subnet provisioning.
- Serving as a starting point for developers. */