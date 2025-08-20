
# test/test_helpers.tf
# Helper Terraform code for testing Tero modules

data "aws_caller_identity" "current" {}

locals {
  test_tags = {
    Environment = var.environment
    Project     = "tero-test"
    Owner       = "test-user"
  }
}

module "test_compute" {
  source              = "../modules/compute/ec2"
  instance_type       = "t2.micro"
  ami                 = "ami-0c55b159cbfafe1f0"
  subnet_id           = aws_subnet.test[0].id
  security_group_ids  = [aws_security_group.test.id]
  tags                = local.test_tags
}

output "test_instance_id" {
  description = "ID of the test EC2 instance"
  value       = module.test_compute.instance_id
}

/*

**Description**: Sets up a test EC2 instance using the `compute/ec2` module with helper locals and outputs.

**Use Cases**:
- Testing specific module functionality (e.g., EC2 provisioning).
- Providing reusable test configurations.
- Integrating with `test_utils.sh` for validation. */