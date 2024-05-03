resource "aws_route_table" "own_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myIGW.id
  }
}
resource "aws_main_route_table_association" "set-to-main" {
  vpc_id         = aws_vpc.main.id
  route_table_id = aws_route_table.own_route_table.id
}
