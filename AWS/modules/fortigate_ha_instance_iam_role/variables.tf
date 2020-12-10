
variable "aws_region" {
  description = "The AWS region to use"
  default = "us-west-2"
}

variable "environment" {
  description = "The Tag Environment in the S3 tag"
  default = "stage"
}

variable "customer_prefix" {
  description = "Customer Prefix to apply to all resources"
}
