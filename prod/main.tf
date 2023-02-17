provider "aws" {
  region = "ap-northeast-1"
}

module "instance_port" {
  source = "../modules/"

  server_port = 90
  instance_type = "t2.micro"

  tags = {
    Name="terra-prod-ex"
  }

  security_group_name = "terraform-prod-security-group"
}