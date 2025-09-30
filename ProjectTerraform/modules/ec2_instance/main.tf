provider "aws" {
  region = "us-east-1"

}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
}
