variable "vpc_tag" {
  type=any
  default="pranay-vpc"
}
variable "vpc_cidr_block"{
    type=any
    default="10.0.0.0/16"
}
variable "IGW_tag"{
    type=any
    default="My-Internet-Gateway"
}
variable "vpc_subnet"{
type=any
default="10.0.0.0/17"
}
variable "subnet_tag"{
    type=any
    default="own-subnet"
}
