resource "aws_subnet" "own-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_subnet

  tags = {
    Name = var.subnet_tag
  }
}