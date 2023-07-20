variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone of the VPC"
  type        = string
  default     = "eu-west-1a"
}

variable "vpc_isprd" {
  description = "If a VPC is prd or noprd"
  type        = bool
  default     = false
}

variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = "10.0.0.0/16"
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

variable "private_rds_subnet_cidr_block" {
  description = "The CIDR block of the second private subnet for RDS"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone_rds" {
  description = "The availability zone of the second RDS subnet"
  type        = string
  default     = "eu-west-1b"
}
