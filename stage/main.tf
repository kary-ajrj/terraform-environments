provider "aws" {
  region = "ap-northeast-1"
}

module "instance_port" {
  source = "../modules/"

  server_port = 80
  instance_type = "t2.micro"

  tags = {
    Name="terra-stage-ex"
  }
  security_group_name = "terraform-stage-security-group"
}

resource "aws_default_subnet" "subnet_example" {
  availability_zone ="ap-northeast-1a"
  tags = {
    Name = module.instance_port.public_ip
  }
}