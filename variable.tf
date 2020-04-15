variable "aws_access_key" {
  default = "ACCESS KEY"
}

variable "aws_secret_key" {
  default = "SECRET KEY"
}

variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default     = "ap-south-1"
}

variable "ami" {
  description = "Ubuntu Linux"
  default     = "ami-01b8d0884f38e37b4"
}


variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

resource "aws_key_pair" "my_aws_key" {
  key_name   = "aws-key"
  public_key = file("my_aws_key.pub")
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default     = "install_docker_machine_compose.sh"
}

variable "ssh_private_key" {
  description = "File location of the ssh private key"
  default     = "Absolute path for your SSH private KEY"
}

