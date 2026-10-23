variable "ami-id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance-type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
}

variable "subnet-id" {
  description = "The subnet ID to launch the EC2 instance in"
  type        = string
}

variable "instance-count" {
  description = "The number of EC2 instances to launch"
  type        = number
}

variable "env" {
  description = "The environment tag for the EC2 instance (e.g., dev, staging, prod)"
  type        = string
}
