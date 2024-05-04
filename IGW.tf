resource "aws_internet_gateway" "myIGW" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.IGW_tag
  }
}
