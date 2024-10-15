resource "aws_subnet" "public-subnets" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnets[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "RSPublicSubnet-${count.index}"
  }

}

resource "aws_subnet" "private-subnets" {
  count                   = length(var.private_subnets)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private_subnets[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = false

  tags = {
    Name = "RSPrivateSubnet-${count.index}"
  }

}