
# modules/compute/ec2/examples/basic/main.tf
# Basic example for EC2 module

module "ec2" {
  source       = "../../"
  vpc_id       = "vpc-12345678" # Replace with actual VPC ID
  subnet_ids   = ["subnet-12345678"] # Replace with actual subnet IDs
  instance_type = "t3.micro"
  ami          = "ami-1234567890abcdef0" # Replace with valid AMI ID
  instance_count = 1
  env          = "dev"
}

/*

**Description**: A minimal example showing how to use the EC2 module with sample inputs.

**Use Cases**:
- Demonstrating module usage for quick prototyping.
- Testing the module in isolation.
*/