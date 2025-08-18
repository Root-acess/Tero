
# modules/compute/ec2/main.tf
# Provisions EC2 instances with security groups

resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-ec2-${count.index + 1}"
    }
  )
}

resource "aws_security_group" "ec2_sg" {
  vpc_id = var.vpc_id
  name   = "${local.name_prefix}-ec2-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}

/*

**Description**: Creates EC2 instances with a security group allowing HTTP traffic, using variables for customization and tags from `lib/locals.tf`.

**Use Cases**:
- Deploying web servers or application instances.
- Setting up development or test environments.
- Integrating with auto-scaling groups for dynamic workloads.

*/