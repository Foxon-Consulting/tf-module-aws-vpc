// create VPC
locals {
  full_name = "${var.client}-${var.env_type}"
  tags = merge(var.tags, {
    client   = var.client
    env_type = var.env_type
  })
}

resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = merge(local.tags, {
    Name = local.full_name
  })

}

// create public subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true
  tags = merge(local.tags, {
    Name = "${local.full_name}-public"
  })
}

// create private subnet
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.availability_zone
  tags = merge(var.tags, {
    Name = "${local.full_name}-private"
  })
}

// create secondary private subnet for RDS
resource "aws_subnet" "private_rds" { // Because of limitation: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet_rds_cidr_block
  availability_zone = var.availability_zone_rds
  tags = merge(var.tags, {
    Name = "${local.full_name}-private-rds"
  })
}

// create internet gateway
resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags = merge(var.tags, {
    Name = "${local.full_name}-igw"
  })
}

// create route table for public subnet
resource "aws_route_table" "this" {
  vpc_id = aws_vpc.this.id
  route {
    cidr_block = var.aws_route_table_cidr_block
    gateway_id = aws_internet_gateway.this.id
  }
  tags = merge(var.tags, {
    Name = "${local.full_name}-rt"
  })
}

// associate route table with public subnet
resource "aws_route_table_association" "this" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.this.id
}
