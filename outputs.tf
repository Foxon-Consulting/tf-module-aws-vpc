// output vpc id
output "env_type" {
  value       = var.env_type
  description = "value of the environment type"
}

output "vpc_id" {
  value       = aws_vpc.this.id
  description = "value of vpc id"
}

output "vpc_arn" {
  value       = aws_vpc.this.arn
  description = "value of vpc arn"
}

output "vpc_cidr_block" {
  value       = aws_vpc.this.cidr_block
  description = "value of vpc cidr block"
}

output "public_subnet_id" {
  value       = aws_subnet.public.id
  description = "value of the public subnet id"
}

output "public_subnet_cidr_block" {
  value       = aws_subnet.public.cidr_block
  description = "value of the public subnet cidr block"
}

output "private_subnet_id" {
  value       = aws_subnet.private.id
  description = "value of the private subnet id"
}

output "private_subnet_cidr_block" {
  value       = aws_subnet.private.cidr_block
  description = "value of the private subnet cidr block"
}

output "private_subnet_rds_id" {
  value       = aws_subnet.private_rds.id
  description = "value of the private rds subnet id"
}

output "private_subnet_rds_cidr_block" {
  value       = aws_subnet.private_rds.cidr_block
  description = "value of the private rds subnet cidr block"
}

output "availability_zone" {
  value       = aws_subnet.public.availability_zone
  description = "value of the availability zone"
}

output "availability_zone_rds" {
  value       = aws_subnet.private_rds.availability_zone
  description = "value of the availability zone for RDS. It is mandatory to have 2 different AZ to deploy a RDS"
}

output "vpc_enable_dns_hostnames" {
  value       = aws_vpc.this.enable_dns_hostnames
  description = "true if dns hostnames are enabled on the VPC"
}

output "igw_id" {
  value       = aws_internet_gateway.this.id
  description = "value of the internet gateway id"
}

output "igw_arn" {
  value       = aws_internet_gateway.this.arn
  description = "value of the internet gateway arn"
}

output "rta_id" {
  value       = aws_route_table.this.id
  description = "value of the route table id"
}

output "rta_arn" {
  value       = aws_route_table.this.arn
  description = "value of the route table arn"
}
