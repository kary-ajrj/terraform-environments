resource "aws_security_group" "sec_gr_ex" {
  name = var.security_group_name
  ingress {
    from_port = var.server_port
    protocol  = "tcp"
    to_port   = var.server_port
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "machine_ex" {
  ami = "ami-06ee4e2261a4dc5c3"
  vpc_security_group_ids = [aws_security_group.sec_gr_ex.id]
  instance_type = var.instance_type
  tags = var.tags
}