
# modules/networking/vpc/main.tf
# Provisions a VPC with subnets and optional NAT gateways

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-vpc"
    }
  )
}

resource "aws_subnet" "public" {
  count                   = length(var.azs)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, count.index)
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

  tags = merge(
    local.common_tags,
    {
      Name = "${local.name_prefix}-public-subnet-${count.index + 1}"
    }
  )
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags   = local.common_tags
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = local.common_tags
}

resource "aws_route_table_association" "public" {
  count          = length(var.azs)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

resource "aws_eip" "nat" {
  count = var.enable_nat ? length(var.azs) : 0
  tags  = local.common_tags
}

resource "aws_nat_gateway" "nat" {
  count         = var.enable_nat ? length(var.azs) : 0
  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.public[count.index].id
  tags          = local.common_tags
}

/* 
**Description**: Creates a VPC with public subnets, an internet gateway, and optional NAT gateways for private subnet connectivity.

**Use Cases**:
- Setting up network infrastructure for applications.
- Supporting multi-AZ deployments for high availability.
- Enabling private subnet access via NAT gateways. */