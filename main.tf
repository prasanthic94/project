provider "aws" {
  region     = var.aws_region
}

resource "aws_instance" "webapplication1" {
  ami           = var.aws_instance
  instance_type = var.instance_type
  key_name      = "terraform-jenkins"
#   security_groups = [aws_security_group.applcation_sg.name]
#   count = 1
  tags = {
    Name = "webapplication1"
  }
}
# resource "aws_key_pair" "application" {
#     key_name = "application"
#     public_key = tls_private_key.application.public_key_openssh
# }
# resource "tls_private_key" "application" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }
# resource "local_file" "application" {
#     content  = tls_private_key.application.private_key_pem
#     filename = "application"
# }
# resource "aws_security_group" "application_sg" {
#   name        = "application_sg"
#   description = "security group using Terraform"
#   vpc_id      = "vpc-2cb75b51"


#    ingress {
#     description      = "SSH"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
#   ingress {
#     description      = "HTTPS"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#    ingress {
#     description      = "HTTP"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#     ingress {
#     description      = "RDP"
#     from_port        = 3389
#     to_port          = 3389
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#     }

#       ingress {
#     description      = "windows"
#     from_port        = 5985
#     to_port          = 5986
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#     }

#       ingress {
#     description      = "windows"
#     from_port        = 8080
#     to_port          = 8080
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#     }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 65535
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "application_sg"
#   }
# }
