resource "aws_security_group" "bas123" {
  name        = "bas123"
  description = "admin"
  vpc_id      = "vpc-0976cda7bb79e819b"

  ingress {
    description      = "admin"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "bas123"
  }
}