output "public_ip" {
  value = aws_instance.machine_ex.public_ip
  description = "This is the public IP."
}