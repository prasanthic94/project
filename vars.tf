variable "aws_region" {
  description = "AZ to start the instance in"
  type        = string
  default     = "us-east-1"
}

variable "aws_instance" {
  type = string
  default = "ami-0574da719dca65348"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

