variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/22"
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