resource "aws_instance" "infra-instance" {
  ami           = var.ami-id
  instance_type = var.instance-type
  subnet_id     = var.subnet-id
  count         = var.instance-count

  tags = {
    Name = "${var.env}-infra-${count.index + 1}"
    Env  = var.env
  }
}
