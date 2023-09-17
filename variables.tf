variable "client" {
  description = "The name of the client"
  type        = string
}

variable "env_type" {
  description = "The type of the environment. Ex: (npe, prd)"
  type        = string
}

variable "tags" {
  description = "The common tags for all resources"
  type        = map(string)
}

variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zone" {
  description = "The availability zone of the VPC"
  type        = string
  default     = "eu-west-1a"
  validation {
    condition     = can(regex("eu-west-1[ab]", var.availability_zone))
    error_message = "The availability zone must be eu-west-1a or eu-west-1b"
  }
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block of the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block of the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_rds_cidr_block" {
  description = "The CIDR block of the second private subnet for RDS"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone_rds" {
  description = "The availability zone of the second RDS subnet"
  type        = string
  default     = "eu-west-1b"
  validation {
    condition     = can(regex("eu-west-1[ab]", var.availability_zone_rds))
    error_message = "The availability zone must be eu-west-1a or eu-west-1b"
  }
}

variable "aws_route_table_cidr_block" {
  description = "The CIDR block of the route table"
  type        = string
  default     = "0.0.0.0/0"
}
