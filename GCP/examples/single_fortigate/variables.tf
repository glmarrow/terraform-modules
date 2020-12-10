variable "credentials_file_path" {}
variable "service_account" {}
variable "project" {}
variable "name" {}
variable "region" {}
variable "zone" {}
variable "machine" {}
variable "image" {}
variable "license_file" {}
variable "password" {
  type        = string
  default     = "ftntCl0ud"
  description = "FGT Password"
}
# vpc module
variable "vpcs" {}
# subnet module
variable "subnets" {}
variable "subnet_cidrs" {}
