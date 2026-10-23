module "vpc" {
    source = "../../modules/vpc"
    env = "dev"
    vpc-cidr = "10.0.0.0/16"
    subnet-cidr = "10.0.1.0/24"
    availability-zone = "us-east-1a"
}

module "ec2" {
    source = "../../modules/ec2"
    env = "dev"
    ami-id = "ami-08c46876c64a927b8"
    instance-type = "t3.micro"
    subnet-id = module.vpc.subnet_id
    instance-count = 1
}