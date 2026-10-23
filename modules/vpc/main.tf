resource "aws_vpc" "infra-vpc" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-infra-vpc"
  }
}

resource "aws_subnet" "infra-subnet" {
  vpc_id     = aws_vpc.infra-vpc.id
  cidr_block = var.subnet-cidr
  availability_zone = var.availability-zone

  tags = {
    Name = "${var.env}-infra-subnet"
  }
}

output "subnet_id" {
  value = aws_subnet.infra-subnet.id
  description = "The ID of the created subnet to be used for launching EC2 instances"
}



