variable "server_port" {
  description = "This defines configurable port for the EC2 instance."
  type = number
}

variable "instance_type" {
  description = "This defines the EC2 instance type."
  type = string
}

variable "tags" {
  description = "This defines the EC2 tags."
  type = map(string)
}

variable "security_group_name" {
  description = "This defines the name of SG."
  type = string
}