provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}


module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami_id        = var.ami
  instance_type = var.instance_type
}
