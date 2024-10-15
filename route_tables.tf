resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
  tags = {
    Name = "RSPublicRouteTable"
  }
}

resource "aws_route_table_association" "public-subnets-route-table-association" {
  count          = length(var.public_subnets)
  subnet_id      = aws_subnet.public-subnets[count.index].id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    Name = "RSPrivateRouteTable"
  }

}

resource "aws_route_table_association" "private-subnets-route-table-association" {
  count          = length(var.private_subnets)
  subnet_id      = aws_subnet.private-subnets[count.index].id
  route_table_id = aws_route_table.private-route-table.id
}