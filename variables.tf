variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/22"
}

variable "vpc_instance_tenancy" {
  description = "Allowed tenancy of instances launched into the VPC"
  default     = "default"

}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  default     = true
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnets" {
  description = "List of CIDR blocks for private subnets"
  default     = ["10.0.2.0/24", "10.0.3.0/24"]
}

variable "availability_zones" {
  description = "Availability zones"
  default     = ["us-east-1a", "us-east-1a"]
}