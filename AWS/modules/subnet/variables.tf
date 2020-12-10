
variable "aws_region" {
  description = "The AWS region to use"
}

variable "customer_prefix" {
  description = "Customer Prefix to apply to all resources"
}

variable "environment" {
  description = "The Tag Environment in the S3 tag"
}

variable "vpc_id" {
  description = "VPC ID for subnet"
}

variable "availability_zone" {
    description = "AZ for Subnet"
}

variable "subnet_cidr" {
    description = "CIDR for the subnet"
}

variable "subnet_description" {
    description = "Description for the subnet tag"
}

variable "public_route" {
  description = "Boolean to associate this subnet with Public Route Table"
  default     = 0
}

variable "public_route_table_id" {
  description = "Public Route Table Id"
  default     = null
}


