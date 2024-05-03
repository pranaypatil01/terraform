variable "vpc_tag" {
  type=any
  default="pranay-vpc"
}
variable "vpc_cidr_block"{
    type=any
    default="10.0.0.0/16"
}
variable "My_IGW"{
    type=any
    default="aws_Internet_Gateway.MyIGW"
}
variable "vpc_subnet_1"{
type=any
default="10.0.0.0/17"
}
variable "vpc_subnet_2"{
type=any
default="10.0.0.0/18"
}
variable "subnet_tag"{
    type=any
    default="own-subnet"
}
variable "ec2_sg"{
    type=any
    default= aws_security_group.sg_terraform
}
variable "key_name"{
    type=any
    default= "pranay-key"
}
variable "ec2_AMI"{
    type=any
    default= "ami-0c7217cdde317cfec"
}
variable "ec2_type"{
    type=any
    default= "t2.micro"
}
