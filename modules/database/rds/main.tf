
# modules/database/rds/main.tf
# Provisions an RDS database instance

resource "aws_db_instance" "rds" {
  identifier           = "${local.name_prefix}-rds"
  engine               = var.engine
  instance_class       = var.instance_class
  allocated_storage    = var.allocated_storage
  username             = var.db_username
  password             = var.db_password
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name = aws_db_subnet_group.rds.name
  skip_final_snapshot  = true

  tags = local.common_tags
}

resource "aws_db_subnet_group" "rds" {
  name       = "${local.name_prefix}-rds-subnet-group"
  subnet_ids = var.subnet_ids

  tags = local.common_tags
}

resource "aws_security_group" "rds_sg" {
  vpc_id = var.vpc_id
  name   = "${local.name_prefix}-rds-sg"

  ingress {
    from_port   = var.engine == "postgres" ? 5432 : 3306
    to_port     = var.engine == "postgres" ? 5432 : 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Restrict to VPC CIDR
  }

  tags = local.common_tags
}

/*

**Description**: Creates an RDS instance with a subnet group and security group.

**Use Cases**:
- Deploying relational databases for applications.
- Supporting secure database access within a VPC. */