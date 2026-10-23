variable "vpc-cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "env" {
  description = "The environment tag for the EC2 instance (e.g., dev, staging, prod)"
  type        = string
}

variable "subnet-cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "availability-zone" {
  description = "The availability zone for the subnet"
  type        = string
}