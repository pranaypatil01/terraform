resource "aws_security_group" "sg_terraform" {
  name        = "sg_terraform"
  description = "use own sg"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "created-own-security-group"
  }
    ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
   ingress {
    from_port        = 512
    to_port          = 512
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    from_port        = 57
    to_port          = 57
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}



