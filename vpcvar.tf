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
variable "vpc_subnet"{
type=any
default="10.0.0.0/17"
}
variable "subnet_tag"{
    type=any
    default="own-subnet"
}
variable "ec2_sg"{
    type=any
    default= aws_security_group.sg_terraform
}
